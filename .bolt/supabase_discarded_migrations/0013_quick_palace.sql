/*
  # Add More Cheshire Padel Courts

  1. Data Population
    - Add additional courts from the Cheshire region
    - Includes facilities from Chester, Macclesfield, and surrounding areas
    
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
  'Chester Racquet Club',
  'Premier racquet sports facility in Chester',
  'Cheshire View',
  'Chester',
  'Cheshire',
  'CH3 7QN',
  53.2001, -2.8931,
  '01244 123456',
  'info@chesterracquetclub.com',
  'https://www.chesterracquetclub.com',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment and accessories"}'::jsonb
  ],
  ARRAY[
    'Membership available',
    'Pay and play welcome',
    'Professional coaching'
  ]
),
(
  'Macclesfield Leisure Centre',
  'Community leisure facility with padel courts',
  'Priory Lane',
  'Macclesfield',
  'Cheshire',
  'SK10 4AF',
  53.2591, -2.1252,
  '01625 383981',
  'info@everybody.org.uk',
  'https://everybody.org.uk/centres/macclesfield-leisure-centre/',
  '6:30 AM - 9:30 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern changing facilities"}'::jsonb
  ],
  ARRAY[
    'Community rates available',
    'Equipment hire',
    'Beginners welcome'
  ]
),
(
  'Northwich Padel Club',
  'Dedicated padel facility in Northwich',
  'Chester Way',
  'Northwich',
  'Cheshire',
  'CW9 5QJ',
  53.2615, -2.5147,
  '01606 123456',
  'info@northwichpadel.co.uk',
  'https://northwichpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Coaching available',
    'All abilities welcome'
  ]
),
(
  'Congleton Leisure Centre',
  'Modern leisure facility with padel courts',
  'Worrall Street',
  'Congleton',
  'Cheshire',
  'CW12 1DT',
  53.1647, -2.2131,
  '01260 123456',
  'info@everybody.org.uk',
  'https://everybody.org.uk/centres/congleton-leisure-centre/',
  '6:30 AM - 9:30 PM',
  32, 22,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Modern gym"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Membership options',
    'Equipment provided'
  ]
),
(
  'Nantwich Tennis Club',
  'Traditional club with modern padel facilities',
  'Nantwich',
  'Nantwich',
  'Cheshire',
  'CW5 5LS',
  53.0671, -2.5221,
  '01270 123456',
  'info@nantwichtennisclub.co.uk',
  'https://clubspark.lta.org.uk/NantwichTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Social events'
  ]
);