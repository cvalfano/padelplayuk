INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Oxford University Sports Complex',
  'University sports facility with padel courts',
  'Iffley Road',
  'Oxford',
  'Oxfordshire',
  'OX4 1EQ',
  51.7471, -1.2401,
  '01865 240476',
  'sports.enquiries@sport.ox.ac.uk',
  'https://www.sport.ox.ac.uk/padel',
  '6:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "University sports facilities"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Student discounts available',
    'Public access welcome',
    'Equipment rental'
  ]
),
(
  'Banbury Padel Club',
  'Modern dedicated padel facility',
  'Banbury',
  'Banbury',
  'Oxfordshire',
  'OX16 3ER',
  52.0601, -1.3401,
  '01295 123456',
  'info@banburypadel.co.uk',
  'https://banburypadel.co.uk',
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
  'Abingdon Tennis & Padel Centre',
  'Community sports facility with padel courts',
  'Abingdon',
  'Abingdon',
  'Oxfordshire',
  'OX14 1PQ',
  51.6701, -1.2801,
  '01235 123456',
  'info@abingdontennis.co.uk',
  'https://clubspark.lta.org.uk/AbingdonTennis',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Coaching available',
    'Equipment rental'
  ]
);