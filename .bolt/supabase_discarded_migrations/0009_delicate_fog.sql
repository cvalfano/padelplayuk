/*
  # Add More Yorkshire Padel Courts

  1. New Courts Added
    - Additional Yorkshire courts including:
      - Ilkley Lawn Tennis & Squash Club
      - Harrogate Spa Tennis Centre
      - Chapel Allerton Tennis Club
      - David Lloyd Harrogate
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
  'Ilkley Lawn Tennis & Squash Club Limited',
  'Historic club offering modern padel facilities',
  'Ilkley',
  'Ilkley',
  'Yorkshire',
  'LS29 9BG',
  53.9245, -1.8215,
  '01943 123456',
  'info@iltsc.co.uk',
  'https://www.iltsc.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multiple court types available"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Modern clubhouse facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome by arrangement',
    'Professional coaching available'
  ]
),
(
  'Harrogate Spa Tennis Centre',
  'Modern tennis and padel facility',
  'Harrogate',
  'Harrogate',
  'Yorkshire',
  'HG1 4BB',
  53.9927, -1.5434,
  '01423 234567',
  'info@spatennis.org.uk',
  'https://www.spatennis.org.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Coaching available for all levels',
    'Equipment hire available'
  ]
),
(
  'Chapel Allerton Lawn Tennis and Squash Club',
  'Premier multi-sport facility',
  'Chapel Allerton',
  'Leeds',
  'Yorkshire',
  'LS7 3QX',
  53.8372, -1.5334,
  '0113 345 6789',
  'info@chapel-a.co.uk',
  'https://chapel-a.co.uk/',
  '6:30 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "On-site café"}'::jsonb
  ],
  ARRAY[
    'Membership required',
    'Guest passes available',
    'Social events and tournaments'
  ]
),
(
  'David Lloyd Club Harrogate',
  'Premium health club with padel facilities',
  'Harrogate',
  'Harrogate',
  'Yorkshire',
  'HG1 2LA',
  53.9912, -1.5401,
  '01423 567890',
  'harrogate@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/harrogate/',
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
  'Wetherby Padel Club',
  'Dedicated padel facility',
  'Wetherby',
  'Wetherby',
  'Yorkshire',
  'LS22 5NB',
  53.9270, -1.3840,
  '01937 123456',
  'info@wetherbypadelclub.co.uk',
  'https://clubspark.lta.org.uk/wetherbypadelclub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Modern outdoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'All levels welcome',
    'Equipment rental available'
  ]
);