/*
  # Add Final Yorkshire Padel Courts
  
  1. Data Population
    - Add remaining Yorkshire courts
    - Includes facilities from Leeds, Sheffield, and other areas
    
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
  'Barons Fitness Centre',
  'Modern fitness centre with padel facilities',
  'Scarborough',
  'Scarborough',
  'Yorkshire',
  'YO13 0NL',
  54.2814, -0.4049,
  '01723 123456',
  'info@baronsfitness.co.uk',
  'https://www.baronsfitness.co.uk/',
  '6:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor courts"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Fitness centre membership available',
    'Pay and play options',
    'Equipment provided'
  ]
),
(
  'Hallamshire T&SC',
  'Traditional sports club with padel facilities',
  'Sheffield',
  'Sheffield',
  'Yorkshire',
  'S11 8TE',
  53.3705, -1.5088,
  '0114 266 5950',
  'info@hallamshire.com',
  NULL,
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Guest passes available',
    'Professional coaching'
  ]
),
(
  'Slazenger Padel Clubs - Leeds',
  'Brand new padel facility in Leeds',
  'Leeds',
  'Leeds',
  'Yorkshire',
  'LS14 2AL',
  53.8321, -1.4636,
  '0113 987 6543',
  'leeds@slazengerpadelclubs.com',
  'https://www.slazengerpadelclubs.com/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment available for purchase',
    'Coaching sessions available'
  ]
);