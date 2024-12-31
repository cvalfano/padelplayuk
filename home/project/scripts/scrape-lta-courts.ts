import { scrapeLTACourts } from './utils/lta-scraper';
import { processCourtData } from './utils/court-processor';
import { writeFileSync } from 'fs';
import { join } from 'path';

async function generateMigration() {
  try {
    console.log('Scraping LTA website for court data...');
    const rawCourts = await scrapeLTACourts();
    
    console.log(`Found ${rawCourts.length} courts`);
    console.log('Processing court data...');
    
    const processedCourts = processCourtData(rawCourts);
    
    // Generate SQL migration
    const sql = `/*
  # Add LTA Padel Courts
  
  1. Data Population
    - Add ${processedCourts.length} courts from LTA website
    - Includes courts from all regions
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

${processedCourts.map(court => `
INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES (
  '${court.name.replace(/'/g, "''")}',
  '${court.description.replace(/'/g, "''")}',
  '${court.address.replace(/'/g, "''")}',
  '${court.city.replace(/'/g, "''")}',
  '${court.postcode}',
  ${court.lat},
  ${court.lng},
  '${court.phone}',
  '${court.email}',
  ${court.website ? `'${court.website}'` : 'NULL'},
  '${court.hours}',
  ${court.peak_price},
  ${court.off_peak_price},
  ARRAY[
    '${court.amenities.map(a => JSON.stringify(a)).join("'::jsonb, '")}'::jsonb
  ],
  ARRAY[
    '${court.rules.join("', '")}'
  ]
);`).join('\n')}`;

    // Save migration file
    const migrationPath = join(process.cwd(), 'supabase/migrations/0002_add_lta_courts.sql');
    writeFileSync(migrationPath, sql);
    
    console.log('Migration file generated successfully at:', migrationPath);
    console.log(`Total courts added: ${processedCourts.length}`);
  } catch (error) {
    console.error('Error generating migration:', error);
  }
}

generateMigration();