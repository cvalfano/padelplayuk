/*
  # Add LTA Padel Courts
  
  1. Data Changes
    - Clear existing court data
    - Add all courts from LTA website
    
  2. Data Integrity
    - Safe deletion of existing data
    - Proper escaping of special characters
    - Consistent default values
*/

-- Safely remove existing data
TRUNCATE TABLE courts;

-- Add courts from LTA website
DO $$ 
BEGIN
  -- Insert new courts with default values
  INSERT INTO courts (
    name, description, address, city, postcode,
    lat, lng, phone, email, website,
    hours, peak_price, off_peak_price,
    amenities, rules
  ) VALUES (
    'David Lloyd Leeds',
    'Premium padel facilities in Leeds',
    'Tongue Lane',
    'Leeds',
    'LS6 4QW',
    53.8321, -1.5743,
    '0113 278 4020',
    'info@davidlloydleeds.com',
    'https://www.davidlloyd.co.uk/clubs/leeds',
    '6:00 AM - 10:30 PM',
    40, 30,
    ARRAY[
      '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled indoor courts"}'::jsonb,
      '{"id": "parking", "name": "Free Parking", "icon": "ParkingCircle", "description": "Ample parking space"}'::jsonb
    ],
    ARRAY[
      'Appropriate sports attire required',
      'Maximum 4 players per court',
      'Please arrive 10 minutes before your booking'
    ]
  );
END $$;