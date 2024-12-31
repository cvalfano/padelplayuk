/*
  # Add Nottinghamshire Padel Courts
  
  1. Data Population
    - Add Nottinghamshire courts
    - Includes facilities from Nottingham and surrounding areas
    
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