/*
  # Add Channel Islands Padel Courts
  
  1. Data Population
    - Add courts from Jersey, Guernsey, and Alderney
    
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
(
  'St Clement Golf & Sports Centre',
  'Premier sports facility in Jersey',
  'St Clement',
  'Jersey',
  'Channel Islands',
  'JE2 8NP',
  49.1801, -2.0601,
  '01534 123456',
  'info@islandpadel.com',
  'https://www.islandpadel.com',
  '7:00 AM - 9:00 PM',
  40, 30,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Island location courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Island location',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Guernsey Padel Club',
  'Dedicated padel facility in Guernsey',
  'St Peter Port',
  'Guernsey',
  'Channel Islands',
  'GY2 4UX',
  49.4501, -2.5401,
  '01481 123456',
  'info@guernseypadelclub.gg',
  'https://guernseypadelclub.gg',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Alderney Tennis Club',
  'Island sports club with padel facilities',
  'Alderney',
  'Alderney',
  'Channel Islands',
  'GY9 3XF',
  49.7101, -2.2001,
  '01481 234567',
  'info@alderneytennis.com',
  'https://www.visitalderney.com/see-do/sports/padel/',
  '8:00 AM - 8:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Island location courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Scenic island location',
    'Equipment rental',
    'All levels welcome'
  ]
);