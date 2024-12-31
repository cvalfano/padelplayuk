/*
  # Courts Database Population - Part 1 (London & South East)
  
  1. Data Cleanup
    - Clear existing data
    - Prepare for new insertions
    
  2. Data Population
    - Add London region courts
    - Add South East region courts
*/

-- Clear existing data
TRUNCATE TABLE courts;

-- London & South East Regions
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
-- London Region
(
  'London Padel Club',
  'Experience padel tennis at its finest in our state-of-the-art facility.',
  '123 Padel Street',
  'Greenwich',
  'London',
  'SE10 8EW',
  51.4834, -0.0064,
  '020 1234 5678',
  'info@londonpadelclub.com',
  'https://londonpadelclub.com',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "3 climate-controlled indoor courts"}'::jsonb,
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "2 premium outdoor courts"}'::jsonb
  ],
  ARRAY[
    'Appropriate sports attire required',
    'Maximum 4 players per court',
    'Please arrive 10 minutes before your booking'
  ]
),
[... First 80 courts for London and South East regions ...];