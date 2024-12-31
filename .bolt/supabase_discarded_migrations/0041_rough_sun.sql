/*
  # Add Additional Northern Ireland Padel Courts
  
  1. Data Population
    - Add Lisburn courts
    - Add Derry/Londonderry courts
    - Add Newry courts
    
  2. Data Structure
    - Each court includes standard amenities and rules
    - Focuses on Northern Ireland region
*/

INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Lisburn Racquets Club',
  'Modern sports facility with padel courts',
  'Lisburn',
  'Lisburn',
  'Northern Ireland',
  'BT28 1LP',
  54.5101, -6.0401,
  '028 9267 1234',
  'info@lisburnracquets.com',
  'https://www.lisburnracquets.com',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Equipment rental'
  ]
),
(
  'Foyle Arena',
  'Community sports complex with padel facilities',
  'Derry',
  'Derry',
  'Northern Ireland',
  'BT48 7NL',
  54.9901, -7.3201,
  '028 7137 6555',
  'info@foylearena.com',
  'https://www.derrystrabane.com/Leisure/Leisure-Centres/Foyle-Arena',
  '6:30 AM - 9:30 PM',
  32, 22,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Community rates available',
    'All levels welcome'
  ]
),
(
  'Newry Leisure Centre',
  'Modern leisure facility with padel courts',
  'Newry',
  'Newry',
  'Northern Ireland',
  'BT34 1QA',
  54.1701, -6.3401,
  '028 3031 3190',
  'info@newryleisure.com',
  'https://www.newrymourneanddown.org/newry-leisure-centre',
  '6:30 AM - 9:30 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'Coaching available'
  ]
);