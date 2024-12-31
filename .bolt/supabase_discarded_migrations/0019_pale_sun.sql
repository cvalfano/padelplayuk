/*
  # Add Cambridge and Hertfordshire Padel Courts

  1. Data Population
    - Add courts from Cambridgeshire region
    - Add courts from Hertfordshire region
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Cambridgeshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'St Ives Golf Club (Game4Padel)',
  'Golf club offering premium padel facilities',
  'St Ives Golf Club',
  'St Ives',
  'Cambridgeshire',
  'PE27 4AD',
  52.3301, -0.0701,
  '01480 499000',
  'info@stivesgolfclub.co.uk',
  'https://www.game4padel.com/st-ives-golf-club',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Golf club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Equipment rental available'
  ]
);

-- Hertfordshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Club Bushey',
  'Premium health club with padel facilities',
  'Bushey',
  'Watford',
  'Hertfordshire',
  'WD23 2DL',
  51.6401, -0.3701,
  '020 8950 8833',
  'bushey@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/bushey',
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
  'BETTER Gosling Tennis Centre',
  'Community tennis centre with padel courts',
  'Welwyn Garden City',
  'Welwyn Garden City',
  'Hertfordshire',
  'AL8 6XE',
  51.8001, -0.2001,
  '01707 331056',
  'info@better.org.uk',
  'https://www.game4padel.com/gosling-sports-park',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Pay and play',
    'Coaching available'
  ]
),
(
  'Broxbourne Sports Club',
  'Multi-sport facility with padel courts',
  'Mill Lane Close',
  'Broxbourne',
  'Hertfordshire',
  'EN10 7BA',
  51.7471, -0.0201,
  '01992 466574',
  'info@broxbournesportsclub.co.uk',
  'https://www.matchi.se/facilities/game4padelbroxbourne',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Equipment rental'
  ]
),
(
  'Bishops Stortford Lawn Tennis Club',
  'Traditional tennis club with modern padel facilities',
  'Bishops Stortford',
  'Bishops Stortford',
  'Hertfordshire',
  'CM23 2TD',
  51.8701, 0.1601,
  '01279 654463',
  'info@bsltc.co.uk',
  'http://www.bsltc.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching programs'
  ]
),
(
  'North London Padel Club',
  'Dedicated padel facility',
  'Watford',
  'Watford',
  'Hertfordshire',
  'WD23 2TD',
  51.6501, -0.3801,
  '020 8950 1234',
  'info@northlondonpadel.com',
  'https://padeluniteduk.com/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes