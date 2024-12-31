/*
  # Add Additional Yorkshire Padel Courts
  
  1. Data Population
    - Continue adding Yorkshire courts
    - Includes facilities from various locations across Yorkshire
    
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
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
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
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'All abilities welcome',
    'Equipment hire available'
  ]
);