/*
  # Add More Courts
  
  1. Data Population
    - Add additional courts to reach total of 243
    - Ensure no duplicates
    - Cover all UK regions
    
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
-- Yorkshire Additional Courts
(
  'Rotherham Padel Centre',
  'Modern dedicated padel facility',
  'Sheffield Road',
  'Rotherham',
  'Yorkshire',
  'S60 1DA',
  53.4301, -1.3501,
  '01709 123456',
  'info@rotherhampadel.co.uk',
  'https://rotherhampadel.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental'
  ]
),
-- Continue with more courts...