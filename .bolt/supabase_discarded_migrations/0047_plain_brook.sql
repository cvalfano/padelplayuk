INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Northampton County Lawn Tennis Club',
  'Historic tennis club with modern padel facilities',
  'Church Way',
  'Northampton',
  'Northamptonshire',
  'NN1 4NW',
  52.2401, -0.8901,
  '01604 123456',
  'info@ncltc.co.uk',
  'https://clubspark.lta.org.uk/NorthamptonCountyLTC',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Professional coaching'
  ]
),
(
  'Jet Padel Club',
  'Modern dedicated padel facility',
  'Kettering',
  'Kettering',
  'Northamptonshire',
  'NN15 6XB',
  52.3901, -0.7201,
  '01536 123456',
  'info@jetpadel.co.uk',
  'https://www.jetpadel.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Smash Padel Oxford',
  'Premier padel facility in Oxford',
  'Oxford',
  'Oxford',
  'Oxfordshire',
  'OX4 2RD',
  51.7401, -1.2101,
  '01865 123456',
  'info@smashpadeloxford.co.uk',
  'https://www.smashpadeloxford.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment rental',
    'All levels welcome'
  ]
);