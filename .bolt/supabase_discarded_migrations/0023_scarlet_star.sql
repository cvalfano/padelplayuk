/*
  # Add Devon and Cornwall Padel Courts

  1. Data Population
    - Add courts from Devon region
    - Add courts from Cornwall region
    - Add courts from Somerset region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Devon Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Exeter Golf and Country Club',
  'Premium sports club with padel facilities',
  'Topsham Road',
  'Exeter',
  'Devon',
  'EX2 7AE',
  50.7101, -3.4901,
  '01392 874139',
  'info@exetergcc.co.uk',
  'https://www.exetergcc.co.uk',
  '6:30 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Plymouth Life Centre',
  'Modern community sports facility',
  'Mayflower Drive',
  'Plymouth',
  'Devon',
  'PL2 3DG',
  50.3861, -4.1427,
  '01752 606900',
  'info@plymouthlifecentre.co.uk',
  'https://www.everyoneactive.com/centre/plymouth-life-centre/',
  '6:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'Coaching available'
  ]
);

-- Cornwall Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Falmouth Sports Club',
  'Community sports club with padel facilities',
  'Tregenver Road',
  'Falmouth',
  'Cornwall',
  'TR11 2PA',
  50.1501, -5.0801,
  '01326 375353',
  'info@falmouthsports.co.uk',
  'https://www.falmouthsports.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Coastal location courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coastal setting'
  ]
),
(
  'Newquay Padel Club',
  'Beachside padel facility',
  'Pentire Headland',
  'Newquay',
  'Cornwall',
  'TR7 1NX',
  50.4201, -5.1001,
  '01637 123456',
  'info@newquaypadel.co.uk',
  'https://clubspark.lta.org.uk/NewquayPadelClub',
  '8:00 AM - 8:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Beachfront courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Scenic location',
    'Equipment rental',
    'All levels welcome'
  ]
);

-- Somerset Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Bath Sports and Leisure Centre',
  'Modern community facility with padel courts',
  'North Parade Road',
  'Bath',
  'Somerset',
  'BA2 4ET',
  51.3801, -2.3501,
  '01225 486905',
  'info@better.org.uk',
  'https://www.better.org.uk/leisure-centre/bath/bath-sports-and-leisure-centre',
  '6:30 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'Coaching available'
  ]
),
(
  'Taunton Padel Club',
  'Dedicated padel facility',
  'Taunton',
  'Taunton',
  'Somerset',
  'TA1 2RW',
  51.0201, -3.1001,
  '01823 123456',
  'info@tauntonpadel.co.uk',
  'https://clubspark.lta.org.uk/TauntonPadelClub',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment rental',
    'All levels welcome'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes