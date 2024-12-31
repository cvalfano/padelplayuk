import fetch from 'node-fetch';
import * as cheerio from 'cheerio';
import type { RawCourtData } from './types';

const REGIONS = [
  'london',
  'south-east',
  'south-west',
  'east-england',
  'west-midlands',
  'east-midlands',
  'yorkshire',
  'north-west',
  'north-east',
  'wales',
  'scotland',
  'northern-ireland'
] as const;

export async function scrapeLTACourts(): Promise<RawCourtData[]> {
  const baseUrl = 'https://www.lta.org.uk/play/ways-to-play/padel/padel-courts-in-britain/';
  const courts: RawCourtData[] = [];

  for (const region of REGIONS) {
    console.log(`Scraping ${region}...`);
    const url = `${baseUrl}${region}`;
    
    try {
      const response = await fetch(url);
      const html = await response.text();
      const $ = cheerio.load(html);

      $('.venue-card').each((_, element) => {
        const name = $(element).find('.venue-name').text().trim();
        const address = $(element).find('.venue-address').text().trim();
        const [street, city, postcode] = parseAddress(address);
        const website = $(element).find('.venue-website').attr('href');
        const phone = $(element).find('.venue-phone').text().trim();
        
        // Extract coordinates from map data
        const mapData = $(element).find('.venue-map').data();
        const lat = parseFloat(mapData?.lat || '0');
        const lng = parseFloat(mapData?.lng || '0');

        if (name && address) {
          courts.push({
            name,
            address: street,
            city,
            postcode,
            coordinates: { lat, lng },
            website,
            phone
          });
        }
      });

      // Add delay to avoid rate limiting
      await new Promise(resolve => setTimeout(resolve, 1000));
    } catch (error) {
      console.error(`Error scraping ${region}:`, error);
    }
  }

  return courts;
}

function parseAddress(address: string): [string, string, string] {
  const parts = address.split(',').map(part => part.trim());
  const postcode = parts.pop() || '';
  const city = parts.pop() || '';
  const street = parts.join(', ');
  return [street, city, postcode];
}