/*
  # Add Newcastle and Glasgow Padel Courts
  
  1. New Courts
    - Newcastle Padel Hub
    - Glasgow Padel Academy
    
  2. Data Structure
    - Basic information (name, location, contact)
    - Standard amenities
    - Default rules
*/

INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Newcastle Padel Hub',
  'Modern padel facility in the heart of Newcastle',
  '15 Sports Way',
  'Newcastle',
  'NE1 4BN',
  54.9783,
  -1.6178,
  '0191 234 5678',
  'info@newcastlepadel.co.uk',
  'https://newcastlepadel.co.uk',
  '7:00 AM - 10:00 PM',
  35,
  25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Free Parking", "icon": "ParkingCircle", "description": "Ample parking space"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities with showers"}'::jsonb
  ],
  ARRAY[
    'Appropriate sports attire required',
    'Maximum 4 players per court',
    'Please arrive 10 minutes before your booking'
  ]
),
(
  'Glasgow Padel Academy',
  'Premier padel facility in Glasgow with professional coaching',
  '45 Court Road',
  'Glasgow',
  'G1 1XQ',
  55.8642,
  -4.2518,
  '0141 345 6789',
  'info@glasgowpadel.co.uk',
  'https://glasgowpadel.co.uk',
  '7:00 AM - 10:00 PM',
  38,
  28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Free Parking", "icon": "ParkingCircle", "description": "Ample parking space"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities with showers"}'::jsonb
  ],
  ARRAY[
    'Appropriate sports attire required',
    'Maximum 4 players per court',
    'Please arrive 10 minutes before your booking'
  ]
);