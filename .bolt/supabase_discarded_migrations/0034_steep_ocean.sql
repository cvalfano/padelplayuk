/*
  # Add Scottish Padel Courts
  
  1. Data Population
    - Add courts from East Ayrshire and Edinburgh regions
    - Includes facilities from Kimarnock and Edinburgh areas
    
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
  'Kimarnock Tennis Club',
  'Traditional tennis club with modern padel facilities',
  'Howard Park',
  'Kilmarnock',
  'East Ayrshire',
  'KA1 1SB',
  55.6101, -4.4901,
  '01563 123456',
  'info@kilmarnocktennis.co.uk',
  'https://clubspark.lta.org.uk/KTCHowardPark',
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
  'Barnton Park LTC',
  'Historic club with modern padel courts',
  'Edinburgh',
  'Edinburgh',
  'Edinburgh',
  'EH4 6JF',
  55.9601, -3.2801,
  '0131 234 5678',
  'info@barntonpark.co.uk',
  'https://clubspark.lta.org.uk/BarntonParkLTC/Coaching/Camps',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multiple court types"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Coaching programs',
    'Equipment rental'
  ]
);