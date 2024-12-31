import { scrapeLTACourts } from './scrapers/lta/scraper';
import { processVenues } from './scrapers/lta/processor';
import { supabase } from './lib/supabase';

async function main() {
  try {
    console.log('Scraping LTA website for court data...');
    const venues = await scrapeLTACourts();
    
    console.log(`Found ${venues.length} courts`);
    console.log('Processing venue data...');
    
    const courts = processVenues(venues);
    
    console.log('Inserting courts into database...');
    const { data, error } = await supabase
      .from('courts')
      .insert(courts)
      .select();

    if (error) {
      throw error;
    }

    console.log(`Successfully inserted ${data.length} courts`);
  } catch (error) {
    console.error('Error:', error);
    process.exit(1);
  }
}

main();