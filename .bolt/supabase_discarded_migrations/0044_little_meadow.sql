INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'PadelStars Bracknell',
  'Modern padel facility in Bracknell',
  'Bracknell',
  'Bracknell',
  'Berkshire',
  'RG42 4EX',
  51.4201, -0.7501,
  '01344 123456',
  'bracknell@padelstars.co.uk',
  'https://padelstars.co.uk/padelstars-bracknell/',
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
),
(
  'Stoke Park',
  'Luxury sports club with padel facilities',
  'Stoke Poges',
  'Stoke Poges',
  'Buckinghamshire',
  'SL2 4PG',
  51.5401, -0.5901,
  '01753 717171',
  'info@stokepark.com',
  'https://www.stokepark.com',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Luxury setting',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Great Missenden LTC',
  'Traditional tennis club with padel courts',
  'Great Missenden',
  'Great Missenden',
  'Buckinghamshire',
  'HP16 0DG',
  51.7001, -0.7101,
  '01494 123456',
  'info@gmltc.com',
  'https://www.gmltc.com/',
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