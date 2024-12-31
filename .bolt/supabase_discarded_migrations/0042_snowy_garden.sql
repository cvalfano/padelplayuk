/*
  # Add Additional Courts
  
  1. Data Population
    - Add Project Padel Newcastle
    - Add Lexus Nottingham Tennis Centre
    - Add David Lloyd Club West Bridgford
    
  2. Data Structure
    - Each court includes standard amenities and rules
    - Focuses on Northumberland and Nottinghamshire regions
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Project Padel',
  'Modern dedicated padel facility in Newcastle',
  'Newcastle on Tyne',
  'Newcastle',
  'Northumberland',
  'NE12 9SZ',
  55.0101, -1.5801,
  '0191 123 4567',
  'info@projectpadel.co.uk',
  'https://playtomic.io/project-padel-newcastle/be103486-61ba-42fa-b440-7d410e9538f3',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment sales and rental',
    'Professional coaching'
  ]
),
(
  'Lexus Nottingham Tennis Centre',
  'Premier tennis and padel facility',
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
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
);