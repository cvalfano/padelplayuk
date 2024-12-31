import fetch from 'node-fetch';
import * as cheerio from 'cheerio';
import { BASE_URL, REGIONS } from './constants';
import { parseAddress, delay } from './utils';
import type { LTAVenue, Region } from './types';

async function scrapeRegion(region: Region): Promise<LTAVenue[]> {
  const venues: LTAVenue[] = [];
  const url = `${BASE_URL}${region.url}/`;
  
  try {
    const response = await fetch(url);
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }
    
    const html = await response.text();
    const $ = cheerio.load(html);
    
    $('.venue-card').each((_, element) => {
      const name = $(element).find('h3').text().trim();
      const address = $(element).find('address').text().trim();
      const [street, city, postcode] = parseAddress(address);
      const website = $(element).find('a[href^="http"]').attr('href');
      const phone = $(element).find('.phone').text().trim();
      
      const lat = parseFloat($(element).attr('data-lat') || '0');
      const lng = parseFloat($(element).attr('data-lng') || '0');
      
      if (name && address) {
        venues.push({
          name,
          address: street,
          city,
          region: region.name,
          postcode,
          coordinates: { lat, lng },
          website,
          phone
        });
      }
    });
  } catch (error) {
    console.error(`Error scraping ${region.name}:`, error);
  }
  
  return venues;
}

export async function scrapeLTACourts(): Promise<LTAVenue[]> {
  const venues: LTAVenue[] = [];
  
  for (const region of REGIONS) {
    console.log(`Scraping ${region.name}...`);
    const regionVenues = await scrapeRegion(region);
    venues.push(...regionVenues);
    
    // Add delay between requests to avoid rate limiting
    await delay(1000);
  }
  
  return venues;
}