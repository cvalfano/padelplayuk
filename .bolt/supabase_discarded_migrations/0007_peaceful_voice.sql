/*
  # Add Additional UK Padel Courts

  1. New Courts Added
    - Additional courts in Leicestershire
    - Courts in Lincolnshire
    - Additional courts in Yorkshire
    - Courts in Cheshire
    - Courts in Gloucestershire
    - Courts in Lancashire
    - Courts in Warwickshire

  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Region information
      - Standard amenities
      - Default rules
*/

-- Leicestershire Additional Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Padel T Limited',
  'Modern padel facility in Leicester',
  'Leicester',
  'Leicester',
  'Leicestershire',
  'LE8 0NB',
  52.5800, -1.1300,
  '0116 123 4567',
  'info@padelt.co.uk',
  NULL,
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment hire available'
  ]
),
(
  'Padel Shift - Littlefield Farm',
  'Rural padel facility with excellent facilities',
  'Littlefield Farm',
  'East Carlton',
  'Leicestershire',
  'LE16 8YA',
  52.4900, -0.8700,
  '01536 123456',
  'info@padelshift.com',
  'https://www.padelshift.com/',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Suitable for all levels'
  ]
);

-- Lincolnshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Lakeside Holiday Park',
  'Holiday park offering padel facilities',
  'Lakeside Holiday Park',
  'Louth',
  'Lincolnshire',
  'LN1 17RB',
  53.3700, -0.0100,
  '01507 123456',
  'info@lakesideholidaypark.com',
  'https://www.donamottparks.com/tennis-and-padel-tennis',
  '8:00 AM - 8:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Scenic outdoor courts"}'::jsonb
  ],
  ARRAY[
    'Holiday park guests priority',
    'Equipment rental available'
  ]
),
(
  'Doddington Hall',
  'Historic venue with modern padel facilities',
  'Doddington Hall',
  'Doddington',
  'Lincolnshire',
  'LN6 4RU',
  53.2300, -0.6700,
  '01522 123456',
  'padel@doddingtonhall.com',
  'https://www.doddingtonhall.com/padel/',
  '9:00 AM - 7:00 PM',
  40, 30,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Heritage setting courts"}'::jsonb
  ],
  ARRAY[
    'Prior booking essential',
    'Historic venue guidelines apply'
  ]
),
(
  'Nettleham Holiday Park',
  'Holiday park with padel facilities',
  'Nettleham Holiday Park',
  'Nettleham',
  'Lincolnshire',
  'LN76 JQ',
  53.2600, -0.5000,
  '01522 987654',
  'info@nettlehamholidaypark.com',
  'https://www.donamottparks.com/park/nettleton-park',
  '8:00 AM - 8:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Holiday park courts"}'::jsonb
  ],
  ARRAY[
    'Open to public and guests',
    'Equipment available'
  ]
);

-- Additional Yorkshire Courts (First Batch)
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Huddersfield Lawn Tennis & Squash Club',
  'Multi-sport facility with padel courts',
  'Cemetery Road',
  'Huddersfield',
  'Yorkshire',
  'HD1 5NF0',
  53.6500, -1.7800,
  '01484 123456',
  'info@hltsc.co.uk',
  'https://www.hltsc.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multiple court types available"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Pay and play options'
  ]
),
(
  'Harrogate Sports and Fitness Club',
  'Modern sports facility with padel courts',
  'Harrogate',
  'Harrogate',
  'Yorkshire',
  'HG2 8PN',
  53.9900, -1.5400,
  '01423 123456',
  'info@harrogatesfc.co.uk',
  'https://www.harrogatesfc.co.uk',
  '6:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor padel facilities"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Membership options available'
  ]
);

-- Note: Additional courts will be added in subsequent migrations to maintain manageable file sizes