/*
  # Add More Cheshire Padel Courts

  1. Data Population
    - Add remaining Cheshire courts from the LTA list
    - Includes facilities from Altrincham, Ellesmere Port, Wirral, and more
    
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
  'Hale Country Club & Spa',
  'Premium health club with padel facilities',
  'Clay Lane',
  'Altrincham',
  'Cheshire',
  'WA15 7AF',
  53.3774, -2.3500,
  '0161 904 5939',
  'info@halecountryclub.co.uk',
  'https://www.halecountryclub.co.uk/fitness/padel',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury spa facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities available',
    'Professional coaching offered'
  ]
),
(
  'David Lloyd Club Cheshire Oaks',
  'Premium health club with padel facilities',
  'Stanney Lane',
  'Ellesmere Port',
  'Cheshire',
  'CH65 9JN',
  53.2862, -2.8982,
  '0151 356 7777',
  'cheshireoaks@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/cheshire-oaks/',
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
  'Heswall Lawn Tennis Club',
  'Traditional tennis club with modern padel facilities',
  'Quarry Road East',
  'Wirral',
  'Cheshire',
  'CH60 6RB',
  53.3278, -3.0977,
  '0151 342 3669',
  'info@heswallltc.co.uk',
  'https://clubspark.lta.org.uk/HeswallLawnTennisClub',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching available'
  ]
),
(
  'The Hook Club',
  'Modern sports facility with padel courts',
  'Mottram Hall',
  'Mottram Hall',
  'Cheshire',
  'SK10 4QT',
  53.3003, -2.1500,
  '01625 828135',
  'info@thehookclub.co.uk',
  'https://www.thehookclub.co.uk/',
  '7:00 AM - 9:00 PM',
  40, 30,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment available',
    'All levels welcome'
  ]
),
(
  'Padel Club@Hartford Golf',
  'Golf club with padel facilities',
  'Hartford',
  'Hartford',
  'Cheshire',
  'CW8 3AP',
  53.2437, -2.5437,
  '01606 871162',
  'info@padelclubhartford.co.uk',
  'https://www.padelclubhartford.co.uk/',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Golf club padel courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Open to public',
    'Equipment rental',
    'Coaching available'
  ]
),
(
  'CPASE Health Club',
  'Health club with padel facilities',
  'Knutsford',
  'Knutsford',
  'Cheshire',
  'WA16 7RN',
  53.3047, -2.3766,
  '01565 652012',
  'info@cpase.co.uk',
  'https://cpase.co.uk/padel-park/',
  '6:30 AM - 9:30 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Health club facilities"}'::jsonb
  ],
  ARRAY[
    'Health club membership available',
    'Pay and play options',
    'Professional coaching'
  ]
),
(
  'Dunham Forest Golf Club',
  'Golf club with padel facilities',
  'Dunham Forest',
  'Altrincham',
  'Cheshire',
  'WA14 4TY',
  53.3831, -2.3978,
  '0161 928 2605',
  'info@dunhamforest.com',
  'https://www.dunhamforest.com/padel/',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Golf club padel courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Golf club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Equipment rental'
  ]
);