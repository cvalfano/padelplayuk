import type { LTAVenue } from './lta-types';
import { writeFileSync } from 'fs';
import { join } from 'path';

const DEFAULT_AMENITIES = [
  {
    id: 'padel-courts',
    name: 'Padel Courts',
    icon: 'Tennis',
    description: 'Professional padel courts'
  },
  {
    id: 'parking',
    name: 'Parking',
    icon: 'ParkingCircle',
    description: 'On-site parking available'
  }
];

const DEFAULT_RULES = [
  'Appropriate sports attire required',
  'Maximum 4 players per court',
  'Please arrive 10 minutes before your booking'
];

export function generateMigration(venues: LTAVenue[]): void {
  const sql = `/*
  # Add LTA Padel Courts
  
  1. Data Population
    - Add ${venues.length} courts from LTA website
    - Includes courts from all regions
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Clear existing data
TRUNCATE TABLE courts;

${venues.map(venue => generateInsertStatement(venue)).join('\n')}`;

  const migrationPath = join(process.cwd(), 'supabase/migrations/0009_add_lta_courts.sql');
  writeFileSync(migrationPath, sql);
}

function generateInsertStatement(venue: LTAVenue): string {
  return `
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES (
  '${escapeSql(venue.name)}',
  'Padel courts located in ${escapeSql(venue.city)}',
  '${escapeSql(venue.address)}',
  '${escapeSql(venue.city)}',
  '${escapeSql(venue.region)}',
  '${escapeSql(venue.postcode)}',
  ${venue.coordinates.lat},
  ${venue.coordinates.lng},
  ${venue.phone ? `'${escapeSql(venue.phone)}'` : 'NULL'},
  '${generateEmail(venue.name)}',
  ${venue.website ? `'${escapeSql(venue.website)}'` : 'NULL'},
  '7:00 AM - 10:00 PM',
  40,
  30,
  ARRAY[${DEFAULT_AMENITIES.map(a => `'${JSON.stringify(a)}'::jsonb`).join(', ')}],
  ARRAY[${DEFAULT_RULES.map(r => `'${escapeSql(r)}'`).join(', ')}]
);`;
}

function escapeSql(str: string): string {
  return str.replace(/'/g, "''");
}

function generateEmail(name: string): string {
  return `info@${name.toLowerCase().replace(/[^a-z0-9]/g, '')}.com`;
}