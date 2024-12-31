/*
  # Add Berkshire and Buckinghamshire Padel Courts

  1. Data Population
    - Add courts from Berkshire region
    - Add courts from Buckinghamshire region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Berkshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Fairmont Windsor Park',
  'Luxury hotel with premium padel facilities',
  'Fairmont Windsor Park',
  'Englefield',
  'Berkshire',
  'TW20 0YL',
  51.4301, -0.6201,
  '01784 535555',
  'info@fairmontwindsor.com',
  'https://www.fairmont.com/windsor-park/',
  '7:00 AM - 9:00 PM',
  45, 35,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Hotel guests priority',
    'Premium facilities',
    'Equipment provided'
  ]
),
(
  'The Barnes at Wellington',
  'Modern padel facility in country setting',
  'Wellington College',
  'Reading',
  'Berkshire',
  'RG7 2BT',
  51.3701, -0.8301,
  '0118 123 4567',
  'info@wellingtonbarns.co.uk',
  'https://wellingtonbarns.co.uk/padel/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Equipment rental available',
    'All levels welcome'
  ]
),
(
  'The Padel Hub SL2',
  'Dedicated padel facility',
  'Slough',
  'Slough',
  'Berkshire',
  'SL2 5DT',
  51.5101, -0.5901,
  '01753 123456',
  'info@padelhub.uk',
  'https://www.padelhub.uk/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales'
  ]
);

-- Buckinghamshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'UK PADEL @ Holmer Green Padel',
  'Community padel facility',
  'Holmer Green',
  'High Wycombe',
  'Buckinghamshire',
  'HP15 6UF',
  51.6701, -0.7201,
  '01494 123456',
  'info@holmergreenpadel.co.uk',
  'https://clubspark.lta.org.uk/Holmergreenpadel',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Community courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'All levels welcome',
    'Equipment rental'
  ]
),
(
  'Chesham 1879 (Game4Padel)',
  'Historic club with modern padel facilities',
  'Chesham',
  'Chesham',
  'Buckinghamshire',
  'HP5 2JU',
  51.7051, -0.6101,
  '01494 784457',
  'info@chesham1879.com',
  'https://www.game4padel.com/chesham-1879',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multiple court types"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Historic venue',
    'Professional coaching'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes