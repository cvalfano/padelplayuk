/*
  # Add Nottinghamshire Padel Courts

  1. New Courts Added
    - Nottingham Padel Centre
    - David Lloyd West Bridgford
    - Lexus Nottingham Tennis Centre
    - World Padel Academy Mansfield

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
  'Nottingham Padel Centre',
  'Dedicated padel facility in Nottingham',
  'Nottingham',
  'Nottingham',
  'Nottinghamshire',
  'NG2 3HJ',
  52.9367, -1.1397,
  '0115 123 4567',
  'info@nottinghampadelcentre.com',
  'https://nottinghampadelcentre.com/en',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching available"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Professional coaching available',
    'Equipment rental available'
  ]
),
(
  'David Lloyd Club West Bridgford',
  'Premium health club with padel facilities',
  'West Bridgford',
  'West Bridgford',
  'Nottinghamshire',
  'NG2 7HX',
  52.9289, -1.1308,
  '0115 234 5678',
  'westbridgford@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/nottingham-west-bridgford/',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury spa and wellness"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities available',
    'Professional coaching offered'
  ]
),
(
  'Lexus Nottingham Tennis Centre',
  'Comprehensive tennis and padel facility',
  'University Boulevard',
  'Nottingham',
  'Nottinghamshire',
  'NG7 2QH',
  52.9423, -1.1889,
  '0115 876 1600',
  'info@nottinghamtenniscentre.co.uk',
  'https://www.nottinghamtenniscentre.co.uk/padel/',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Coaching programs available',
    'Equipment hire available'
  ]
),
(
  'World Padel Academy - WPA Mansfield',
  'Dedicated padel academy',
  'Mansfield',
  'Mansfield',
  'Nottinghamshire',
  'NG18 1RR',
  53.1397, -1.1972,
  '01623 123456',
  'mansfield@worldpadelacademy.uk',
  'https://worldpadelacademy.uk/',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional training courts"}'::jsonb,
    '{"id": "academy", "name": "Academy", "icon": "GraduationCap", "description": "Professional training programs"}'::jsonb
  ],
  ARRAY[
    'Academy programs available',
    'All skill levels welcome',
    'Equipment provided for training'
  ]
);