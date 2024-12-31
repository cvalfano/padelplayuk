/*
  # Add Sussex and Hampshire Padel Courts

  1. Data Population
    - Add courts from Sussex region
    - Add courts from Hampshire region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Sussex Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Brighton',
  'Premium health club with padel facilities',
  'Brighton Marina',
  'Brighton',
  'Sussex',
  'BN2 5UF',
  50.8141, -0.1021,
  '01273 123456',
  'brighton@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/brighton/',
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
  'Eastbourne Padel Club',
  'Dedicated padel facility by the sea',
  'Royal Parade',
  'Eastbourne',
  'Sussex',
  'BN22 7AQ',
  50.7701, 0.2901,
  '01323 123456',
  'info@eastbournepadel.co.uk',
  'https://clubspark.lta.org.uk/EastbournePadelClub',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Seafront courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Coastal location',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Worthing Tennis & Padel Club',
  'Traditional club with modern padel facilities',
  'Titnore Way',
  'Worthing',
  'Sussex',
  'BN13 3RT',
  50.8301, -0.4201,
  '01903 123456',
  'info@worthingtennis.com',
  'https://clubspark.lta.org.uk/WorthingTennisClub',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Modern clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching programs'
  ]
);

-- Hampshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Southampton Padel Club',
  'Modern padel facility in Southampton',
  'Wide Lane',
  'Southampton',
  'Hampshire',
  'SO18 2HW',
  50.9301, -1.3601,
  '023 8076 5432',
  'info@southamptonpadel.co.uk',
  'https://southamptonpadel.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental'
  ]
),
(
  'Portsmouth Tennis Centre',
  'Community facility with padel courts',
  'Alex Way',
  'Portsmouth',
  'Hampshire',
  'PO2 9PB',
  50.8201, -1.0601,
  '023 9266 0589',
  'info@portsmouthtennis.co.uk',
  'https://www.better.org.uk/leisure-centre/portsmouth/portsmouth-tennis-centre',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Pay and play',
    'Coaching available'
  ]
),
(
  'Winchester Racquets & Fitness',
  'Premium sports facility with padel courts',
  'Bereweeke Road',
  'Winchester',
  'Hampshire',
  'SO22 6AJ',
  51.0701, -1.3201,
  '01962 864256',
  'info@winchesterracquets.co.uk',
  'https://www.winchesterracquets.co.uk',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Basingstoke Sports Centre',
  'Community sports centre with padel facilities',
  'Festival Place',
  'Basingstoke',
  'Hampshire',
  'RG21 7LE',
  51.2601, -1.0871,
  '01256 326331',
  'info@basingstokesports.com',
  'https://www.basingstokesports.com',
  '6:30 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'All levels welcome'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes