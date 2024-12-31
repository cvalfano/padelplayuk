/*
  # Add Dundee and Perth Padel Courts
  
  1. Data Population
    - Add Dundee courts
    - Add Perth courts
    
  2. Data Structure
    - Each court includes standard amenities and rules
    - Focuses on specific region for maintainability
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Dundee Tennis & Padel Club',
  'Premier racquet sports facility in Dundee',
  'Dundee',
  'Dundee',
  'Dundee',
  'DD2 1PW',
  56.4701, -2.9701,
  '01382 123456',
  'info@dundeetennis.co.uk',
  'https://clubspark.lta.org.uk/DundeeTennisClub',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Modern clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Professional coaching'
  ]
),
(
  'Perth Padel Centre',
  'Modern dedicated padel facility',
  'Perth',
  'Perth',
  'Perth & Kinross',
  'PH1 5HS',
  56.3901, -3.4301,
  '01738 123456',
  'info@perthpadel.co.uk',
  'https://perthpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment sales',
    'All levels welcome'
  ]
);