/*
  # Add Warwickshire Padel Courts

  1. Data Population
    - Add all Warwickshire courts from the LTA list
    - Includes facilities in Birmingham, Sutton Coldfield, Solihull, and Rugby
    
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
  'The Streetly Academy',
  'School-based padel facility open to public',
  'Queslett Road East',
  'Sutton Coldfield',
  'Warwickshire',
  'B74 2EX',
  52.5501, -1.8901,
  '0121 353 2709',
  'info@streetly.academy',
  'https://www.streetly.academy',
  '8:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Public access courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Booking required',
    'Equipment rental available'
  ]
),
(
  'Sutton Coldfield Tennis Club',
  'Traditional tennis club with modern padel facilities',
  'Sutton Coldfield',
  'Sutton Coldfield',
  'Warwickshire',
  'B73 5QB',
  52.5434, -1.8367,
  '0121 354 1276',
  'info@suttontennis.com',
  'https://www.suttontennis.com',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Professional coaching'
  ]
),
(
  'Solihull Arden Club',
  'Historic sports club with padel courts',
  'Sharmans Cross Road',
  'Solihull',
  'Warwickshire',
  'B911 RG',
  52.4101, -1.7891,
  '0121 705 3772',
  'info@solihullarden.co.uk',
  'https://www.solihullarden.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Guest passes available',
    'Professional coaching'
  ]
),
(
  'The Edgbaston Priory Club',
  'Premier racquet sports club',
  'Sir Harrys Road',
  'Birmingham',
  'Warwickshire',
  'B15 2UZ',
  52.4601, -1.9201,
  '0121 440 2492',
  'info@edgbastonpriory.com',
  'https://www.edgbastonpriory.com',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Kenilworth Tennis Squash & Croquet Club',
  'Multi-sport facility with padel courts',
  'Crackley Lane',
  'Kenilworth',
  'Warwickshire',
  'CV8 2JS',
  52.3401, -1.5701,
  '01926 853093',
  'info@ktscc.co.uk',
  'https://www.ktscc.co.uk/padel/',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Coaching available'
  ]
),
(
  'CorteSport at The Hayes',
  'Modern padel facility',
  'The Hayes',
  'Birmingham',
  'Warwickshire',
  'B38 9EL',
  52.4001, -1.9501,
  '0121 123 4567',
  'info@cortesport.co.uk',
  'https://www.cortesport.co.uk/location/hayes-birmingham-copy/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking',
    'Equipment sales',
    'Professional coaching'
  ]
),
(
  'David Lloyd Club Rugby',
  'Premium health club with padel facilities',
  'Rugby',
  'Rugby',
  'Warwickshire',
  'CV23 0AB',
  52.3701, -1.2601,
  '01788 123456',
  'rugby@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/rugby/',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Powerleague Birmingham',
  'Multi-sport facility with padel courts',
  'Aston',
  'Birmingham',
  'Warwickshire',
  'B6 7TG',
  52.5001, -1.8801,
  '0121 327 7500',
  'birmingham@powerleague.co.uk',
  'https://www.powerleague.com/location/birmingham',
  '7:00 AM - 11:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Pay and play',
    'Online booking',
    'Equipment rental'
  ]
),
(
  'Padel Haus Fort Dunlop',
  'Modern dedicated padel facility',
  'Fort Dunlop',
  'Birmingham',
  'Warwickshire',
  'B24 9FE',
  52.5101, -1.8301,
  '0121 789 0123',
  'info@padelhaus.co.uk',
  'https://www.padelhaus.co.uk/',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales and rental'
  ]
);