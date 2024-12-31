/*
  # Add More Lancashire Padel Courts
  
  1. Data Population
    - Add additional Lancashire courts
    - Includes facilities from Preston and Manchester areas
    
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
  'Broughton & District Tennis Club',
  'Community tennis club with padel facilities',
  'Preston',
  'Preston',
  'Lancashire',
  'PR3 5DA',
  53.8101, -2.7001,
  '01772 123456',
  'info@broughtontennis.co.uk',
  'https://clubspark.lta.org.uk/BroughtonandDistrictTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coaching available'
  ]
),
(
  'Manchester Met University',
  'University sports facility with padel courts',
  'Manchester',
  'Manchester',
  'Lancashire',
  'M20 3YA',
  53.4701, -2.2401,
  '0161 247 1234',
  'sport@mmu.ac.uk',
  'https://www.mmu.ac.uk/sport/find-a-sport',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "University sports facilities"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Student discounts available',
    'Public access welcome',
    'Equipment rental'
  ]
);