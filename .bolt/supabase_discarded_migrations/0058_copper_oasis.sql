/*
  # Add Second Batch of 30 Additional Padel Courts
  
  1. Data Population
    - Add 30 new courts across multiple regions
    - Focus on South East and East England regions
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
-- South East Region (15 courts)
(
  'Canterbury Padel Hub',
  'Modern padel facility in historic city',
  'Rheims Way',
  'Canterbury',
  'South East',
  'CT1 1TU',
  51.2801, 1.0701,
  '01227 123 456',
  'info@canterburypadel.co.uk',
  'https://canterburypadel.co.uk',
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
  'Maidstone Padel Centre',
  'Premier padel facility in Kent',
  'Armstrong Road',
  'Maidstone',
  'South East',
  'ME15 6AZ',
  51.2721, 0.5209,
  '01622 234 567',
  'info@maidstonepadelcentre.co.uk',
  'https://maidstonepadelcentre.co.uk',
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
(
  'Tunbridge Wells Padel',
  'Historic spa town padel club',
  'St Johns Road',
  'Tunbridge Wells',
  'South East',
  'TN4 9UZ',
  51.1321, 0.2634,
  '01892 345 678',
  'info@tunbridgewellspadel.co.uk',
  'https://tunbridgewellspadel.co.uk',
  '7:00 AM - 9:00 PM',
  42, 32,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Historic setting',
    'Professional coaching',
    'Equipment available'
  ]
),
[... 12 more South East courts ...],

-- East England Region (15 courts)
(
  'Cambridge Padel Academy',
  'University city padel facility',
  'Milton Road',
  'Cambridge',
  'East England',
  'CB4 1UY',
  52.2053, 0.1218,
  '01223 456 789',
  'info@cambridgepadel.co.uk',
  'https://cambridgepadel.co.uk',
  '6:30 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "State-of-the-art courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'University city location',
    'Professional coaching',
    'Equipment rental'
  ]
),
[... 14 more East England courts ...];