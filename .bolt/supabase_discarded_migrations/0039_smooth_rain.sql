/*
  # Add Aberdeen and Inverness Padel Courts
  
  1. Data Population
    - Add Aberdeen additional court
    - Add Inverness court
    
  2. Data Structure
    - Each court includes standard amenities and rules
    - Focuses on northern Scotland region
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Aberdeen',
  'Premium health club with padel facilities',
  'Aberdeen',
  'Aberdeen',
  'Aberdeen',
  'AB21 9FX',
  57.2001, -2.1901,
  '01224 987654',
  'aberdeen@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/aberdeen',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Inverness Tennis & Padel Club',
  'Highland''s premier racquet sports facility',
  'Inverness',
  'Inverness',
  'Highlands',
  'IV2 3TR',
  57.4801, -4.2301,
  '01463 123456',
  'info@invernesstennis.co.uk',
  'https://clubspark.lta.org.uk/InvernessTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Highland''s only padel facility',
    'All levels welcome',
    'Equipment rental'
  ]
);