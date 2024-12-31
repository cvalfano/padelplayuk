/*
  # Add Essex, Kent, and Surrey Padel Courts

  1. Data Population
    - Add courts from Essex region
    - Add courts from Kent region
    - Add courts from Surrey region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Essex Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Chigwell',
  'Premium health club with padel facilities',
  'Roding Lane',
  'Chigwell',
  'Essex',
  'IG7 6BQ',
  51.6201, 0.0801,
  '020 8500 8500',
  'chigwell@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/chigwell/',
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
  'Thorpe Bay Lawn Tennis Club',
  'Traditional club with modern padel facilities',
  'Thorpe Bay Gardens',
  'Southend-on-Sea',
  'Essex',
  'SS1 3NW',
  51.5301, 0.7801,
  '01702 582753',
  'info@thorpebayltc.co.uk',
  'https://clubspark.lta.org.uk/ThorpeBayLawnTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Seaside clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coastal location'
  ]
);

-- Kent Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Dartford',
  'Premium health club with padel facilities',
  'Darenth Road',
  'Dartford',
  'Kent',
  'DA1 1NJ',
  51.4401, 0.2201,
  '01322 289100',
  'dartford@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/dartford/',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Canterbury Padel Club',
  'Dedicated padel facility',
  'Canterbury',
  'Canterbury',
  'Kent',
  'CT1 3TQ',
  51.2801, 1.0801,
  '01227 123456',
  'info@canterburypadel.co.uk',
  'https://clubspark.lta.org.uk/CanterburyPadelClub',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment sales and rental',
    'All levels welcome'
  ]
);

-- Surrey Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Purley',
  'Premium health club with padel facilities',
  'Brighton Road',
  'Purley',
  'Surrey',
  'CR8 4DB',
  51.3301, -0.1201,
  '020 8668 3400',
  'purley@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/purley/',
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
  'Surbiton Racket & Fitness Club',
  'Historic club with modern padel facilities',
  'Berrylands',
  'Surbiton',
  'Surrey',
  'KT5 8JT',
  51.3901, -0.2901,
  '020 8399 1594',
  'info@surbiton.org',
  'https://www.surbiton.org',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Historic venue',
    'Professional coaching'
  ]
),
(
  'Oxshott Village Sports Club',
  'Community sports club with padel courts',
  'Steels Lane',
  'Oxshott',
  'Surrey',
  'KT22 0RF',
  51.3201, -0.3701,
  '01372 843652',
  'info@oxshottvillagesports.com',
  'https://www.oxshottvillagesports.com',
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
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes