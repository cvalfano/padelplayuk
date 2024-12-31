/*
  # Add Yorkshire Padel Courts
  
  1. Data Population
    - Add remaining Yorkshire courts
    - Includes facilities from Leeds, Harrogate, Sheffield, and other areas
    
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
  'Huddersfield Lawn Tennis & Squash Club',
  'Multi-sport facility with modern padel courts',
  'Cemetery Road',
  'Huddersfield',
  'Yorkshire',
  'HD1 5NF0',
  53.6500, -1.7800,
  '01484 123456',
  'info@hltsc.co.uk',
  'https://www.hltsc.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multiple court types available"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Professional coaching'
  ]
),
(
  'Harrogate Sports and Fitness Club',
  'Modern sports facility with padel courts',
  'Harrogate',
  'Harrogate',
  'Yorkshire',
  'HG2 8PN',
  53.9900, -1.5400,
  '01423 123456',
  'info@harrogatesfc.co.uk',
  'https://www.harrogatesfc.co.uk',
  '6:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Membership options available',
    'Professional coaching'
  ]
),
(
  'Rawdon Golf, Lawn Tennis & Padel Club',
  'Multi-sport facility offering premium padel courts',
  'Mill Lane',
  'Leeds',
  'Yorkshire',
  'LS19 6BB',
  53.8472, -1.6827,
  '0113 250 4466',
  'info@rgltc.com',
  'https://www.rgltc.com',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Advance booking required'
  ]
);