/*
  # Add West Lothian and Fife Padel Courts
  
  1. Data Population
    - Add West Lothian court (Xcite Bathgate)
    - Add Fife court (Elie Sports Club)
    
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
  'Xcite Bathgate',
  'Modern leisure facility with padel courts',
  'Bathgate',
  'Bathgate',
  'West Lothian',
  'EH48 4LA',
  55.9021, -3.6401,
  '01506 237910',
  'info@westlothianleisure.com',
  'https://www.westlothianleisure.com/venues/xcite/xcite-bathgate/',
  '6:30 AM - 9:30 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "fitness", "name": "Fitness Centre", "icon": "Dumbbell", "description": "Full fitness facilities"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Elie Sports Club',
  'Coastal sports club with padel facilities',
  'Elie',
  'Elie',
  'Fife',
  'KY9 1AS',
  56.1901, -2.8201,
  '01333 330955',
  'info@eliesportsclub.co.uk',
  'https://clubspark.lta.org.uk/ElieSportsClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Coastal location courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Scenic coastal location',
    'Club membership available',
    'Equipment rental'
  ]
);