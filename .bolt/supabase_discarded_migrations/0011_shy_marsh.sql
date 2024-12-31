/*
  # Add Yorkshire Padel Courts - Batch 3

  1. New Courts Added
    - David Lloyd Club York
    - Wakefield Padel Club
    - Ecclesall Lawn Tennis Club
    - Scarborough Rugby Union Football Club
    - Hallamshire T&SC
    - Slazenger Padel Clubs - Leeds
    - Hillsborough Park

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
  'David Lloyd Club York',
  'Premium health club with padel facilities',
  'Hull Road',
  'York',
  'Yorkshire',
  'YO10 3LG',
  53.9505, -1.0461,
  '01904 123456',
  'york@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/york/club-facilities/tennis/',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury spa facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities available',
    'Professional coaching offered'
  ]
),
(
  'Wakefield Padel Club',
  'Dedicated padel facility in Wakefield',
  'Wakefield',
  'Wakefield',
  'Yorkshire',
  'WF1 3RR',
  53.6833, -1.4977,
  '01924 123456',
  'info@wakefieldpadel.com',
  'https://wakefieldsportsclub.com/padel/',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Modern outdoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment rental available',
    'All levels welcome'
  ]
),
(
  'Ecclesall Lawn Tennis Club',
  'Historic club with modern padel facilities',
  'Sheffield',
  'Sheffield',
  'Yorkshire',
  'S11 9HP',
  53.3647, -1.5051,
  '0114 123 4567',
  'info@ecclesallltc.co.uk',
  'https://clubspark.lta.org.uk/EcclesallLawnTennisClub/Padel',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching programs available'
  ]
),
(
  'Scarborough Rugby Union Football Club',
  'Multi-sport facility with padel courts',
  'Scarborough',
  'Scarborough',
  'Yorkshire',
  'YO13 0NL',
  54.2814, -0.4049,
  '01723 987654',
  'info@scarboroughrugby.co.uk',
  'https://www.scarboroughrugby.co.uk/',
  '8:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Sports club facilities"}'::jsonb
  ],
  ARRAY[
    'Open to public',
    'Equipment hire available',
    'Booking essential'
  ]
),
(
  'Hallamshire T&SC',
  'Traditional sports club with padel facilities',
  'Sheffield',
  'Sheffield',
  'Yorkshire',
  'S11 8TE',
  53.3705, -1.5088,
  '0114 266 5950',
  'info@hallamshire.com',
  NULL,
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Guest passes available',
    'Professional coaching'
  ]
),
(
  'Slazenger Padel Clubs - Leeds',
  'Brand new padel facility in Leeds',
  'Leeds',
  'Leeds',
  'Yorkshire',
  'LS14 2AL',
  53.8321, -1.4636,
  '0113 987 6543',
  'leeds@slazengerpadelclubs.com',
  'https://www.slazengerpadelclubs.com/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Equipment available for purchase',
    'Coaching sessions available'
  ]
),
(
  'Hillsborough Park',
  'Public park padel facility',
  'Hillsborough',
  'Sheffield',
  'Yorkshire',
  'S6 2AA',
  53.4070, -1.5001,
  '0114 234 5678',
  'info@hillsboroughpadel.com',
  'https://courtside.uk/about/build/projects/hillsborough',
  '8:00 AM - 8:00 PM',
  32, 22,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Public park courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Public parking"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Pay and play',
    'Suitable for all levels'
  ]
);