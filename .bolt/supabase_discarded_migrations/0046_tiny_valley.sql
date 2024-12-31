INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Diss Heywood Tennis Club',
  'Community tennis club with modern padel facilities',
  'Diss',
  'Diss',
  'Norfolk',
  'IP22 4DB',
  52.3701, 1.1101,
  '01379 123456',
  'info@disstennis.co.uk',
  'https://clubspark.lta.org.uk/DissTennisPadelClub/Padel',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching available'
  ]
),
(
  'Royal Norwich',
  'Premium golf club with padel facilities',
  'Weston Longville',
  'Norwich',
  'Norfolk',
  'NR9 5JE',
  52.6801, 1.1401,
  '01603 123456',
  'info@royalnorwich.co.uk',
  'https://www.royalnorwich.co.uk/padel/',
  '7:00 AM - 9:00 PM',
  40, 30,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Golf club courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Premium facilities"}'::jsonb
  ],
  ARRAY[
    'Golf club setting',
    'Premium facilities',
    'Equipment rental'
  ]
),
(
  'Blazing Padels',
  'Modern dedicated padel facility',
  'Norwich',
  'Norwich',
  'Norfolk',
  'NR10 4SB',
  52.7201, 1.2801,
  '01603 234567',
  'info@blazingpadels.com',
  'https://www.blazingpadels.com/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
);