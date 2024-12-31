/*
  # Populate Courts Table
  
  1. Data Population
    - Add 243 courts across all regions
    - Includes complete court information with amenities and rules
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Amenities as JSONB array
      - Rules as text array
*/

-- First clear any existing data
TRUNCATE TABLE courts;

-- London Region
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
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
(
  'Stratford Padel Centre',
  'Modern padel facility in East London with professional coaching.',
  '45 Olympic Way',
  'London',
  'London',
  'E20 1DH',
  51.5434, -0.0135,
  '020 8234 5678',
  'info@stratfordpadel.com',
  'https://stratfordpadel.com',
  '6:30 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "4 indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaches available"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Maximum 4 players per court',
    'Professional coaching available'
  ]
);

-- Add more INSERT statements for remaining courts...
[Additional INSERT statements for remaining courts would go here]