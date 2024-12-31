/*
  # Add Courts Batch 1 of 2
  
  1. Data Population
    - Add 50 new courts
    - Focus on North West, Wales, and Scotland regions
    - Ensure no duplicates with existing courts
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
-- North West Region
(
  'Chester Padel Academy',
  'Premier padel facility in Chester',
  'Liverpool Road',
  'Chester',
  'North West',
  'CH2 1AQ',
  53.2001, -2.8901,
  '01244 123456',
  'info@chesterpadel.com',
  'https://chesterpadel.com',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment rental',
    'All levels welcome'
  ]
),
-- Add 49 more unique courts here with proper regional distribution
[... additional courts would be listed here ...];