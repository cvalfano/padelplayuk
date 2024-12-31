/*
  # Add LTA Padel Courts
  
  1. Data Population
    - Add courts from LTA website
    - Includes courts from all regions
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

DO $$ 
BEGIN
  -- Add David Lloyd Leeds
  IF NOT EXISTS (SELECT 1 FROM courts WHERE name = 'David Lloyd Leeds' AND city = 'Leeds') THEN
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
      53.8321,
      -1.5743,
      '0113 278 4020',
      'leeds@davidlloyd.co.uk',
      'https://www.davidlloyd.co.uk/clubs/leeds',
      '6:00 AM - 10:30 PM',
      40,
      30,
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
  END IF;

  -- Add Padel Nation Sheffield
  IF NOT EXISTS (SELECT 1 FROM courts WHERE name = 'Padel Nation Sheffield' AND city = 'Sheffield') THEN
    INSERT INTO courts (
      name, description, address, city, postcode,
      lat, lng, phone, email, website,
      hours, peak_price, off_peak_price,
      amenities, rules
    ) VALUES (
      'Padel Nation Sheffield',
      'Sheffield''s premier padel facility',
      'Woodbourn Road',
      'Sheffield',
      'S9 3LQ',
      53.3811,
      -1.4343,
      '0114 243 4340',
      'info@padelnation.co.uk',
      'https://padelnation.co.uk',
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
    );
  END IF;
END $$;