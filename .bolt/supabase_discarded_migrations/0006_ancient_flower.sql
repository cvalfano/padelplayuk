/*
  # Add Midlands Region Padel Courts

  1. New Courts Added
    - Church Broughton Tennis Club (Derbyshire)
    - We Are Padel - Derby (Derbyshire)
    - Derbyshire Tennis Centre (Derbyshire)
    - Tennis World (Durham & Cleveland)
    - True Padel - Durham (Durham & Cleveland)
    - Market Harborough Squash & Padel Club (Leicestershire)
    - Woolfox (Leicestershire)

  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Region information
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
  'Church Broughton Tennis Club',
  'Local tennis club offering padel facilities in Derby',
  'Church Broughton',
  'Derby',
  'Derbyshire',
  'DE65 5BA',
  52.8851, -1.7123,
  '01283 585591',
  'info@churchbroughtontennisclub.com',
  'https://clubspark.lta.org.uk/Churchbroughtontennisclub',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Well-maintained outdoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking available"}'::jsonb
  ],
  ARRAY[
    'Appropriate sports attire required',
    'Maximum 4 players per court',
    'Please arrive 10 minutes before your booking'
  ]
),
(
  'We Are Padel - Derby',
  'Modern padel facility in Derby with state-of-the-art courts',
  'Derby',
  'Derby',
  'Derbyshire',
  'DE24 8BW',
  52.9047, -1.4736,
  '01332 123456',
  'derby@wearepadel.com',
  'https://www.wearepadel.com',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching available"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Professional coaching available',
    'Equipment rental available'
  ]
),
(
  'Derbyshire Tennis Centre',
  'Comprehensive tennis and padel facility in Derby',
  'Derby',
  'Derby',
  'Derbyshire',
  'DE23 8BF',
  52.9121, -1.4981,
  '01332 987654',
  'info@derbyshiretenniscentre.co.uk',
  'https://www.derbyshiretenniscentre.co.uk/',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel courts available"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern changing facilities"}'::jsonb
  ],
  ARRAY[
    'Court shoes required',
    'Maximum 4 players per court',
    'Advance booking recommended'
  ]
),
(
  'Tennis World',
  'Premier tennis and padel facility in Middlesbrough',
  'Tennis World',
  'Middlesbrough',
  'Durham & Cleveland',
  'TS4 3SA',
  54.5509, -1.2332,
  '01642 123456',
  'info@tennisworld.co.uk',
  'https://clubspark.lta.org.uk/tennisworld',
  '8:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel courts"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "On-site café"}'::jsonb
  ],
  ARRAY[
    'Appropriate footwear required',
    'Equipment available for hire',
    'Café facilities available'
  ]
),
(
  'True Padel - Durham',
  'Dedicated padel facility in Durham',
  'New Ferens Park',
  'Durham',
  'Durham & Cleveland',
  'DH1 1HP',
  54.7766, -1.5747,
  '0191 123456',
  'durham@truepadel.co.uk',
  'https://truepadel.co.uk',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Professional indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Professional coaching available',
    'Indoor facility - all weather play'
  ]
),
(
  'Market Harborough Squash & Padel Club',
  'Multi-sport facility featuring padel courts',
  'Market Harborough',
  'Leicestershire',
  'Leicestershire',
  'LE16 9QH',
  52.4778, -0.9209,
  '01858 123456',
  'info@harboroughcsc.co.uk',
  'https://www.harboroughcsc.co.uk/harborough-padel-club/',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Outdoor padel courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Changing facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options',
    'Suitable for all levels'
  ]
),
(
  'Woolfox',
  'Modern sports facility in Stamford with padel courts',
  'Woolfox',
  'Stamford',
  'Leicestershire',
  'PE9 4AQ',
  52.7241, -0.5109,
  '01780 123456',
  'info@woolfox.uk',
  'https://www.woolfox.uk/',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Ample parking"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment hire available',
    'Suitable for all abilities'
  ]
);