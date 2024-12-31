INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Potters Bar Padel Centre',
  'Modern padel facility in Potters Bar',
  'Potters Bar',
  'Potters Bar',
  'Hertfordshire',
  'EN6 4NF',
  51.6901, -0.1701,
  '01707 123456',
  'info@padelprojectuk.com',
  'https://padelprojectuk.com/new-sites',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental'
  ]
),
(
  'Padelstars St Albans',
  'Premier padel facility in St Albans',
  'St Albans',
  'St Albans',
  'Hertfordshire',
  'AL3 5XA',
  51.7501, -0.3401,
  '01727 123456',
  'stalbans@padelstars.co.uk',
  'https://padelstars.co.uk/padelstars-st-albans/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Leverstock Green LTC',
  'Traditional tennis club with padel facilities',
  'Leverstock',
  'Hemel Hempstead',
  'Hertfordshire',
  'HP3 8QZ',
  51.7301, -0.4201,
  '01442 123456',
  'info@leverstocktennis.co.uk',
  'https://www.leverstocktennis.co.uk/',
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
);