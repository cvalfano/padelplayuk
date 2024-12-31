/*
  # Add Northern Ireland Padel Courts
  
  1. Data Population
    - Add Belfast courts
    - Add Lisburn courts
    - Add Bangor courts
    
  2. Data Structure
    - Each court includes standard amenities and rules
    - Focuses on Northern Ireland region
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Belfast Padel Club',
  'Premier padel facility in Belfast',
  'Belfast',
  'Belfast',
  'Northern Ireland',
  'BT9 5AB',
  54.5801, -5.9301,
  '028 9012 3456',
  'info@belfastpadel.com',
  'https://belfastpadel.com',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales'
  ]
),
(
  'David Lloyd Belfast',
  'Premium health club with padel facilities',
  'Upper Lisburn Road',
  'Belfast',
  'Northern Ireland',
  'BT10 0NR',
  54.5601, -5.9801,
  '028 9062 6555',
  'belfast@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/belfast/',
  '6:00 AM - 10:00 PM',
  42, 32,
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
  'Bangor Aurora',
  'Modern leisure complex with padel courts',
  'Valentine Road',
  'Bangor',
  'Northern Ireland',
  'BT20 4TH',
  54.6601, -5.6701,
  '028 9127 0271',
  'info@aurorabangor.com',
  'https://www.better.org.uk/leisure-centre/ards-and-north-down/bangor-aurora',
  '6:30 AM - 9:30 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'All levels welcome'
  ]
);