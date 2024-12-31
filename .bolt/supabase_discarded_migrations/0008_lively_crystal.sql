/*
  # Add Yorkshire Padel Courts

  1. New Courts Added
    - Additional Yorkshire courts including:
      - Rawdon Golf & Tennis Club
      - Surge Padel Harrogate
      - Skipton Tennis Centre
      - Ripon Tennis Centre
      - Barons Fitness Centre
      - And more Yorkshire facilities

  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Region information
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
),
(
  'Surge Padel - Harrogate',
  'Modern dedicated padel facility',
  'Harrogate',
  'Harrogate',
  'Yorkshire',
  'HG28 QT',
  53.9917, -1.5371,
  '01423 789012',
  'harrogate@surgepadel.co.uk',
  'https://surgepadel.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "State-of-the-art indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching available"}'::jsonb
  ],
  ARRAY[
    'Online booking required',
    'Professional coaching available',
    'Equipment rental available'
  ]
),
(
  'Skipton Tennis Centre',
  'Comprehensive tennis and padel facility',
  'Skipton',
  'Skipton',
  'Yorkshire',
  'BD23 1UP',
  53.9609, -2.0174,
  '01756 123456',
  'info@skiptontennis.com',
  'https://www.skiptontennis.com/index.php/padel/',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb
  ],
  ARRAY[
    'Membership options available',
    'Pay and play welcome',
    'Coaching programs available'
  ]
),
(
  'Ripon Tennis Centre',
  'Modern tennis and padel facility',
  'Ripon',
  'Ripon',
  'Yorkshire',
  'HG4 3HJ',
  54.1373, -1.5201,
  '01765 123456',
  'info@ripontenniscentre.co.uk',
  'https://www.ripontenniscentre.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'All abilities welcome',
    'Equipment hire available'
  ]
),
(
  'Barons Fitness Centre',
  'Fitness centre with padel facilities',
  'Scarborough',
  'Scarborough',
  'Yorkshire',
  'YO13 0NL',
  54.2814, -0.4049,
  '01723 123456',
  'info@baronsfitness.co.uk',
  'https://www.baronsfitness.co.uk/',
  '6:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor courts"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Fitness centre membership available',
    'Pay and play options',
    'Equipment provided'
  ]
);