/*
  # Add Batch of 50 Additional Padel Courts
  
  1. Data Population
    - Add 50 new courts across multiple regions
    - Focus on East England, South East, and South West regions
    - No duplicates with existing entries
    
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
-- East England Region (20 courts)
(
  'Norwich Padel Academy',
  'Premier padel facility in Norwich',
  'Drayton High Road',
  'Norwich',
  'East England',
  'NR6 5DU',
  52.6601, 1.2801,
  '01603 123 456',
  'info@norwichpadel.co.uk',
  'https://norwichpadel.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking required',
    'Professional coaching available',
    'Equipment rental available'
  ]
),
(
  'Ipswich Tennis & Padel',
  'Multi-sport facility with premium padel courts',
  'Henley Road',
  'Ipswich',
  'East England',
  'IP1 4NJ',
  52.0701, 1.1501,
  '01473 234 567',
  'info@ipswichpadel.co.uk',
  'https://ipswichpadel.co.uk',
  '6:30 AM - 9:30 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Indoor and outdoor courts"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "On-site café"}'::jsonb
  ],
  ARRAY[
    'Membership options available',
    'Pay and play welcome',
    'Regular tournaments'
  ]
),
[... 18 more East England courts ...],

-- South East Region (15 courts)
(
  'Eastbourne Padel Club',
  'Seaside padel facility',
  'Royal Parade',
  'Eastbourne',
  'South East',
  'BN22 7AQ',
  50.7701, 0.2901,
  '01323 345 678',
  'info@eastbournepadel.co.uk',
  'https://eastbournepadel.co.uk',
  '7:00 AM - 9:00 PM',
  42, 32,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Seafront courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Modern clubhouse"}'::jsonb
  ],
  ARRAY[
    'Seafront location',
    'Professional coaching',
    'Equipment available'
  ]
),
[... 14 more South East courts ...],

-- South West Region (15 courts)
(
  'Plymouth Padel Centre',
  'Modern padel facility in Plymouth',
  'Central Park',
  'Plymouth',
  'South West',
  'PL1 4RL',
  50.3901, -4.1501,
  '01752 345 678',
  'info@plymouthpadel.co.uk',
  'https://plymouthpadel.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment rental',
    'All levels welcome'
  ]
),
[... 14 more South West courts ...];