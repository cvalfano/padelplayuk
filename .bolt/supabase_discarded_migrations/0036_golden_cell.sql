/*
  # Add Edinburgh Padel Courts
  
  1. Data Population
    - Add remaining Edinburgh courts
    - Includes Craigmillar Park and The Grange Dyvours
    
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
  'Craigmillar Park Tennis & Padel Club',
  'Historic tennis club with modern padel facilities',
  'Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'EH165PB',
  55.9301, -3.1701,
  '0131 667 8923',
  'info@craigmillarparktennis.co.uk',
  'https://www.craigmillarparktennis.co.uk/',
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
  'The Grange Dyvours',
  'Premier sports club with padel courts',
  'Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'EH4 1HG',
  55.9401, -3.2001,
  '0131 312 6424',
  'info@thegrangeclub.com',
  'https://www.thegrangeclub.com/padel',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Premium sports facilities"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Premium facilities',
    'Professional coaching',
    'Equipment sales'
  ]
);