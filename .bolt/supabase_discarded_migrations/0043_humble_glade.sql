INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'UK PADEL @ The South Buckinghamshire Golf Course',
  'Premium golf club with modern padel facilities',
  'Stoke Poges',
  'Stoke Poges',
  'Berkshire',
  'SL2 4PJ',
  51.5501, -0.5801,
  '01753 123456',
  'info@ukpadel.org',
  'https://hgpadel.ukpadel.org/Pages/11-uk_padel_clubs',
  '7:00 AM - 9:00 PM',
  40, 30,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Golf club courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Golf club setting',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Padelstars Reading',
  'Modern dedicated padel facility',
  'Sonning',
  'Reading',
  'Berkshire',
  'RG4 6ST',
  51.4701, -0.9101,
  '0118 123 4567',
  'reading@padelstars.co.uk',
  'https://padelstars.co.uk/padelstars-reading/',
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
  'Padel Maidenhead Ltd',
  'Premier padel facility in Maidenhead',
  'Maidenhead',
  'Maidenhead',
  'Berkshire',
  'SL6 1BN',
  51.5201, -0.7201,
  '01628 123456',
  'info@padelberkshire.com',
  'https://padelberkshire.com/padel-maidenhead/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental'
  ]
);