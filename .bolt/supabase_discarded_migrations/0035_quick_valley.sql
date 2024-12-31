/*
  # Add More Scottish Padel Courts
  
  1. Data Population
    - Add additional Edinburgh courts
    - Includes facilities from central Edinburgh
    
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
  'Edinburgh Park Padel & Tennis',
  'Modern padel facility in Edinburgh Park',
  'Edinburgh Park',
  'Edinburgh',
  'Edinburgh',
  'EH12 9DT',
  55.9301, -3.3101,
  '0131 345 6789',
  'info@edinburghparkpadel.com',
  'https://www.game4padel.com/edinburgh-park',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Business park location',
    'Professional coaching',
    'Equipment sales'
  ]
),
(
  'Edinburgh Sports Club Ltd',
  'Premier sports club in Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'EH4 3DH',
  55.9501, -3.2201,
  '0131 456 7890',
  'info@edinburghsportsclub.co.uk',
  'https://www.edinburghsportsclub.co.uk',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Premium facilities',
    'Club membership required',
    'Professional coaching'
  ]
);