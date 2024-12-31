/*
  # Add Scottish Padel Courts
  
  1. Data Population
    - Add courts from Aberdeen, Ayrshire, Edinburgh, Glasgow, and other Scottish regions
    
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
  'Aberdeen Tennis Centre',
  'Premier tennis and padel facility in Aberdeen',
  'Aberdeen Sports Village',
  'Aberdeen',
  'Aberdeen',
  'AB23 8BL',
  57.1701, -2.0901,
  '01224 123456',
  'info@sportaberdeen.co.uk',
  'https://www.sportaberdeen.co.uk/venues/aberdeen-tennis-centre',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment rental available',
    'Professional coaching'
  ]
),
(
  'Strikers Indoor Padel (Aberdeen)',
  'Modern indoor padel facility',
  'Bridge of Don',
  'Aberdeen',
  'Aberdeen',
  'AB23 8EE',
  57.1801, -2.0801,
  '01224 234567',
  'info@strikersfootball.com',
  'https://www.strikersfootball.com/strikers-indoor-padel/',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb
  ],
  ARRAY[
    'Indoor facility',
    'All weather play',
    'Equipment available'
  ]
),
(
  'West of Scotland Padel',
  'Premier padel facility in Ayrshire',
  'Stevenston',
  'Ayrshire',
  'Ayrshire',
  'KA20 3LR',
  55.6401, -4.7501,
  '01294 123456',
  'info@wospadel.co.uk',
  'http://wospadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb
  ],
  ARRAY[
    'Online booking',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Thistle Padel Club',
  'Edinburgh''s premier padel facility',
  'Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'EH14 1JF',
  55.9201, -3.2801,
  '0131 123 4567',
  'info@thistlepadel.com',
  'https://thistlepadel.com',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Game4Padel | GOLF IT',
  'Modern padel facility in Glasgow',
  'Glasgow',
  'Glasgow',
  'Glasgow',
  'G33 1HA',
  55.8701, -4.2301,
  '0141 123 4567',
  'glasgow@game4padel.com',
  'https://www.game4padel.com/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment rental',
    'Professional coaching'
  ]
);