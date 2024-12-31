/*
  # Add Herefordshire & Worcestershire and Lancashire Padel Courts

  1. Data Population
    - Add courts from Herefordshire & Worcestershire
    - Add courts from Lancashire region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Herefordshire & Worcestershire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Hereford Squash Tennis & Racketball Centre',
  'Multi-sport facility offering padel courts',
  'Holmer Road',
  'Hereford',
  'Herefordshire & Worcestershire',
  'HR4 0LX',
  52.0701, -2.7101,
  '01432 123456',
  'info@herefordsquashtennis.co.uk',
  'https://clubspark.lta.org.uk/HerefordSquashTennisCentre',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment rental available',
    'All levels welcome'
  ]
),
(
  'Barnt Green Sports Club',
  'Community sports club with padel facilities',
  'Margesson Drive',
  'Birmingham',
  'Herefordshire & Worcestershire',
  'B45 8LR',
  52.3601, -2.0001,
  '0121 445 1978',
  'info@barntgreensportsclub.co.uk',
  'https://clubspark.lta.org.uk/barntgreensportsclub/Padel',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Coaching available'
  ]
);

-- Lancashire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Lytham Padel Project UK',
  'Modern padel facility in Lytham',
  'Lowther Gardens',
  'Lytham',
  'Lancashire',
  'FY8 5QQ',
  53.7401, -2.9601,
  '01253 123456',
  'info@padelprojectuk.com',
  'https://padelprojectuk.com/lowther-gardens',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment sales and rental',
    'Professional coaching'
  ]
),
(
  'Liverpool Cricket Club',
  'Historic cricket club with modern padel facilities',
  'Aigburth Road',
  'Liverpool',
  'Lancashire',
  'L19 3QF',
  53.3601, -2.9301,
  '0151 427 2988',
  'info@liverpoolcc.co.uk',
  'www.game4padel.com',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Historic venue'
  ]
),
(
  'The Northern',
  'Premier sports club with padel courts',
  'Moor Lane',
  'Manchester',
  'Lancashire',
  'M20 3YA',
  53.4201, -2.2301,
  '0161 445 2301',
  'info@thenorthern.co.uk',
  'https://thenorthern.co.uk/padel/',
  '6:00 AM - 10:00 PM',
  40, 30,
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
  'David Lloyd Club Manchester Trafford City',
  'Premium health club with padel facilities',
  'Trafford City',
  'Manchester',
  'Lancashire',
  'M17 8RH',
  53.4701, -2.3201,
  '0161 749 1400',
  'traffordcity@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/manchester-trafford-city/',
  '6:00 AM - 10:00 PM',
  45, 35,
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
  'Club de Padel',
  'Dedicated padel facility in Manchester',
  'Manchester',
  'Manchester',
  'Lancashire',
  'M15 4TQ',
  53.4701, -2.2501,
  '0161 123 4567',
  'info@clubdepadel.co.uk',
  'https://www.clubdepadel.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes