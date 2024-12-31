/*
  # Add Norfolk and Suffolk Padel Courts

  1. Data Population
    - Add courts from Norfolk region
    - Add courts from Suffolk region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Norfolk Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'East Anglia Tennis & Squash Club',
  'Premier racquet sports facility in Norwich',
  'Lime Tree Road',
  'Norwich',
  'Norfolk',
  'NR2 2NQ',
  52.6301, 1.2801,
  '01603 453532',
  'info@eatsc.co.uk',
  'https://www.eatsc.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Professional coaching'
  ]
),
(
  'Lynnsport',
  'Community sports facility with padel courts',
  'Greenpark Avenue',
  'Kings Lynn',
  'Norfolk',
  'PE30 2NB',
  52.7601, 0.4201,
  '01553 818001',
  'info@alivewestnorfolk.co.uk',
  'https://www.alivewestnorfolk.co.uk/alive-lynnsport/',
  '6:30 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'Coaching available'
  ]
);

-- Suffolk Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Ipswich',
  'Premium health club with padel facilities',
  'Ransomes Europark',
  'Ipswich',
  'Suffolk',
  'IP3 9QU',
  52.0501, 1.2001,
  '01473 320123',
  'ipswich@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/ipswich/',
  '6:00 AM - 10:00 PM',
  45, 35,
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
  'Bury St Edmunds Padel Club',
  'Dedicated padel facility',
  'Bury St Edmunds',
  'Bury St Edmunds',
  'Suffolk',
  'IP33 2EX',
  52.2401, 0.7101,
  '01284 123456',
  'info@burypadel.co.uk',
  'https://clubspark.lta.org.uk/BuryStEdmundsPadelClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Felixstowe Ferry Golf Club',
  'Golf club with padel facilities',
  'Ferry Road',
  'Felixstowe',
  'Suffolk',
  'IP11 9RY',
  51.9601, 1.3401,
  '01394 286834',
  'info@felixstowegolf.co.uk',
  'https://www.felixstowegolf.co.uk/padel/',
  '7:00 AM - 8:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Coastal location courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Golf club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Scenic coastal location'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes