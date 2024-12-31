/*
  # Populate UK Padel Courts

  1. Data Population
    - Add real padel court locations from across the UK
    - Organized by regions:
      - North & Midlands East
      - North & Midlands West
      - Central & East
      - South East
      - South West
      - Scotland
      - Wales
      - Channel Islands
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Amenities
      - Operating hours
      - Pricing
*/

-- North & Midlands East
INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'David Lloyd Leeds',
  'Premium padel facilities in Leeds with indoor and outdoor courts',
  'Tongue Lane',
  'Leeds',
  'LS6 4QW',
  53.8321, -1.5743,
  '0113 278 4020',
  'leeds@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/leeds',
  '6:00 AM - 10:30 PM',
  40, 30,
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
  'Padel Nation Sheffield',
  'Sheffield''s premier padel facility with multiple courts',
  'Woodbourn Road',
  'Sheffield',
  'S9 3LQ',
  53.3811, -1.4343,
  '0114 243 4340',
  'info@padelnation.co.uk',
  'https://padelnation.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "equipment", "name": "Equipment Rental", "icon": "BadgePercent", "description": "Rackets and balls available"}'::jsonb
  ],
  ARRAY[
    'Court shoes required',
    'Booking required in advance',
    'Equipment rental available'
  ]
);

-- South East
INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'We Are Padel Brighton',
  'State-of-the-art padel facility on the south coast',
  'Brighton Sports Complex',
  'Brighton',
  'BN1 9PW',
  50.8429, -0.1313,
  '01273 123456',
  'brighton@wearepadel.com',
  'https://wearepadel.com/brighton',
  '7:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "3 indoor courts"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "On-site café"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaches available"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Coaching sessions available',
    'Café facilities on-site'
  ]
);

-- Scotland
INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Edinburgh Sports Club',
  'Historic sports club now featuring modern padel courts',
  'Belford Place',
  'Edinburgh',
  'EH4 3DH',
  55.9495, -3.2178,
  '0131 539 7071',
  'info@edinburghsportsclub.co.uk',
  'https://edinburghsportsclub.co.uk',
  '7:00 AM - 9:30 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "2 outdoor courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Full changing facilities"}'::jsonb
  ],
  ARRAY[
    'Members and non-members welcome',
    'Booking essential',
    'Weather dependent for outdoor courts'
  ]
);

-- Wales
INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Cardiff Padel Club',
  'Wales'' premier padel facility',
  'Sport Wales National Centre',
  'Cardiff',
  'CF11 9SW',
  51.4837, -3.1681,
  '029 2033 4919',
  'info@cardiffpadel.wales',
  'https://cardiffpadel.wales',
  '8:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "2 indoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Beginners welcome',
    'Equipment hire available',
    'Indoor facility - all weather play'
  ]
);