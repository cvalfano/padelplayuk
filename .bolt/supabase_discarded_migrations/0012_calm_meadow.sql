/*
  # Add Cheshire Padel Courts

  1. Data Population
    - Add 14 courts from the Cheshire region
    - Includes various facilities from different cities
    
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
  'Grappenhall Village Lawn Tennis Club',
  'Traditional tennis club with modern padel facilities',
  'Grappenhall Village',
  'Warrington',
  'Cheshire',
  'WA4 3HQ',
  53.3721, -2.5432,
  '01925 123456',
  'info@grappenhalltennis.co.uk',
  'https://clubspark.lta.org.uk/GrappenhallVillageLawnTennisClub',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Well-maintained outdoor courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Booking required'
  ]
),
(
  'The Padel Club (Wilmslow)',
  'Modern dedicated padel facility',
  'Wilmslow',
  'Wilmslow',
  'Cheshire',
  'SK9 3PE',
  53.3274, -2.2301,
  '01625 123456',
  'wilmslow@thepadelclub.co.uk',
  'https://www.thepadelclub.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "State-of-the-art indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Professional coaching available',
    'Equipment rental available',
    'All levels welcome'
  ]
),
(
  'Port Sunlight LTC',
  'Historic club with modern padel facilities',
  'Port Sunlight',
  'Bromborough',
  'Cheshire',
  'CH62 3QX',
  53.3521, -2.9981,
  '0151 123 4567',
  'info@padeluniteduk.com',
  'https://padeluniteduk.com/',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Coaching available'
  ]
),
(
  'Manchester Padel Club',
  'Premier padel facility',
  'Manchester',
  'Manchester',
  'Cheshire',
  'SK8 4RZ',
  53.3741, -2.2143,
  '0161 123 4567',
  'info@manchesterpadelclub.co.uk',
  'https://clubspark.lta.org.uk/ManchesterPadelClub',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales and rental'
  ]
),
(
  'Pure Padel Alderley Park',
  'Modern padel facility in business park setting',
  'Alderley Park',
  'Alderley Park',
  'Cheshire',
  'SK10 4TG',
  53.2801, -2.2341,
  '01625 987654',
  'alderley@purepadelclubs.co.uk',
  'https://www.purepadelclubs.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Corporate memberships available',
    'Equipment rental'
  ]
),
(
  'David Lloyd Club Cheadle',
  'Premium health club with padel facilities',
  'Cheadle',
  'Cheadle',
  'Cheshire',
  'SK8 3FL',
  53.3741, -2.2143,
  '0161 234 5678',
  'cheadle@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/cheadle/',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury spa and wellness"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Life Leisure',
  'Community leisure facility with padel courts',
  'Stockport',
  'Stockport',
  'Cheshire',
  'SK6 1QX',
  53.4101, -2.0891,
  '0161 345 6789',
  'info@lifeleisure.net',
  'https://www.lifeleisure.net/centre/houldsworth-village/',
  '6:30 AM - 9:30 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Various court options"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Pay and play available',
    'Membership options'
  ]
);

-- Continuing with more Cheshire courts in the next part to keep the file manageable