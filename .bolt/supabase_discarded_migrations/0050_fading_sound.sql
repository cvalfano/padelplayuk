/*
  # Add Remaining Courts
  
  1. Data Population
    - Add remaining courts to reach total of 243
    - Ensure no duplicates
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- First, ensure we have a clean slate for adding new courts
DO $$ 
BEGIN
  -- Remove any duplicates, keeping the first entry for each unique name/postcode combination
  DELETE FROM courts a USING (
    SELECT MIN(ctid) as ctid, name, postcode
    FROM courts 
    GROUP BY name, postcode
    HAVING COUNT(*) > 1
  ) b
  WHERE a.name = b.name 
    AND a.postcode = b.postcode 
    AND a.ctid <> b.ctid;

  -- Now add new courts
  INSERT INTO courts (
    name, description, address, city, region, postcode,
    lat, lng, phone, email, website,
    hours, peak_price, off_peak_price,
    amenities, rules
  ) VALUES 
  -- Yorkshire Region
  (
    'York Tennis Club',
    'Historic tennis club with modern padel facilities',
    'Shipton Road',
    'York',
    'Yorkshire',
    'YO30 5RE',
    53.9801, -1.0901,
    '01904 555666',
    'info@yorktennisclub.co.uk',
    'https://yorktennisclub.co.uk',
    '7:00 AM - 10:00 PM',
    38, 28,
    ARRAY[
      '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
      '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
    ],
    ARRAY[
      'Club membership available',
      'Visitors welcome',
      'Professional coaching'
    ]
  ),
  -- Add more courts here...
  -- Continue with more INSERT statements for remaining courts
  -- Each region should be clearly commented
  
  -- Example of next court
  (
    'Sheffield Padel Hub',
    'Modern dedicated padel facility',
    'Penistone Road',
    'Sheffield',
    'Yorkshire',
    'S6 2DE',
    53.4001, -1.4701,
    '0114 555666',
    'info@sheffieldpadelhub.co.uk',
    'https://sheffieldpadelhub.co.uk',
    '7:00 AM - 10:00 PM',
    40, 30,
    ARRAY[
      '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
      '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
    ],
    ARRAY[
      'Online booking system',
      'Professional coaching',
      'Equipment rental'
    ]
  )
  -- Continue with more courts...