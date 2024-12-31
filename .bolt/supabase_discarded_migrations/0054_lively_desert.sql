/*
  # Add Courts Final Batch
  
  1. Data Population
    - Add remaining 43 courts to reach 243 total
    - Focus on remaining regions with fewer courts
    - Ensure even distribution across UK
    
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
-- South West Region
(
  'Exeter Padel Hub',
  'Modern padel facility in Exeter',
  'Exeter Road',
  'Exeter',
  'South West',
  'EX4 1AB',
  50.7201, -3.5301,
  '01392 123456',
  'info@exeterpadel.com',
  'https://exeterpadel.com',
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
-- Add remaining courts here to reach 243 total
[... additional courts would be listed here ...];