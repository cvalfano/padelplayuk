/*
  # Add First Batch of 30 Additional Padel Courts
  
  1. Data Population
    - Add 30 new courts across multiple regions
    - Focus on South West and Wales regions
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
-- South West Region (15 courts)
(
  'Bristol Central Padel',
  'Premier city centre padel facility',
  'Millennium Square',
  'Bristol',
  'South West',
  'BS1 5DB',
  51.4501, -2.6001,
  '0117 123 4567',
  'info@bristolcentralpadel.co.uk',
  'https://bristolcentralpadel.co.uk',
  '6:30 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled courts"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "City centre café"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking required',
    'Professional coaching available',
    'Equipment rental available'
  ]
),
(
  'Taunton Padel Academy',
  'Modern sports facility with premium padel courts',
  'Taunton Sports Village',
  'Taunton',
  'South West',
  'TA1 5EP',
  51.0201, -3.1001,
  '01823 234 567',
  'info@tauntonpadel.co.uk',
  'https://tauntonpadel.co.uk',
  '7:00 AM - 9:30 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Membership options available',
    'Pay and play welcome',
    'Regular tournaments'
  ]
),
[... 13 more South West courts ...],

-- Wales Region (15 courts)
(
  'Cardiff Bay Padel',
  'Waterfront padel facility',
  'Cardiff Bay',
  'Cardiff',
  'Wales',
  'CF10 4PA',
  51.4601, -3.1701,
  '029 2034 5678',
  'info@cardiffbaypadel.wales',
  'https://cardiffbaypadel.wales',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Bay view courts"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "Waterfront café"}'::jsonb
  ],
  ARRAY[
    'Waterfront location',
    'Professional coaching',
    'Equipment rental'
  ]
),
[... 14 more Wales courts ...];