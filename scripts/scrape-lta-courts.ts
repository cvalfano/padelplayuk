import { scrapeLTACourts } from './utils/lta-scraper';
import { generateMigration } from './utils/migration-generator';

async function main() {
  try {
    console.log('Scraping LTA website for court data...');
    const venues = await scrapeLTACourts();
    
    console.log(`Found ${venues.length} courts`);
    console.log('Generating migration file...');
    
    generateMigration(venues);
    
    console.log('Migration file generated successfully');
    console.log(`Total courts added: ${venues.length}`);
  } catch (error) {
    console.error('Error:', error);
    process.exit(1);
  }
}

main();