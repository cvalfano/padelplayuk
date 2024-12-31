/*
  # Add Welsh Padel Courts
  
  1. Data Population
    - Add courts from Cardiff, Swansea, and other Welsh regions
    
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
  'Windsor Lawn Tennis Club',
  'Historic club with modern padel facilities',
  'Penarth',
  'Penarth',
  'Wales',
  'CF64 3JJ',
  51.4301, -3.1701,
  '029 2070 1234',
  'info@penarthwindsor.co.uk',
  'https://clubspark.lta.org.uk/PenarthWindsor',
  '7:00 AM - 9:00 PM',
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
  'The Welsh Padel Centre',
  'Wales'' premier padel facility',
  'Cwmbran',
  'Cwmbran',
  'Wales',
  'NP44 2DZ',
  51.6401, -3.0201,
  '01633 123456',
  'info@welshpadel.com',
  'https://www.welshpadel.com/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Pure Padel Swansea',
  'Modern padel facility in Swansea',
  'Swansea',
  'Swansea',
  'Wales',
  'SA5 7HR',
  51.6301, -3.9401,
  '01792 123456',
  'swansea@purepadel.com',
  'https://www.purepadelswansea.com/',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Online booking',
    'Professional coaching',
    'Equipment rental'
  ]
);