/*
  # Add Lancashire Padel Courts
  
  1. Data Population
    - Add Lancashire courts
    - Includes facilities from Manchester, Liverpool, and surrounding areas
    
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
  'Ribble Valley Tennis Centre',
  'Modern tennis facility with padel courts',
  'Clitheroe',
  'Clitheroe',
  'Lancashire',
  'BB7 3LA',
  53.8701, -2.3901,
  '01200 123456',
  'info@ribblevalleytennis.co.uk',
  'https://clubspark.lta.org.uk/ribblevalleytenniscentre',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'All levels welcome',
    'Equipment rental available'
  ]
),
(
  'Formby Village Padel Club',
  'Dedicated padel facility in Formby',
  'Formby',
  'Formby',
  'Lancashire',
  'L37 3HA',
  53.5601, -3.0701,
  '01704 123456',
  'info@formbyvillagepadel.com',
  'https://www.formbyvillagepadel.com/',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking',
    'Professional coaching',
    'Equipment sales'
  ]
),
(
  'Pure Padel - Manchester City Centre',
  'Modern city centre padel facility',
  'Manchester',
  'Manchester',
  'Lancashire',
  'M3 1LE',
  53.4801, -2.2501,
  '0161 234 5678',
  'manchester@purepadelclubs.co.uk',
  'https://www.purepadelclubs.co.uk/pure-padel-manchester/',
  '6:00 AM - 10:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "City centre courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Central location',
    'Premium facilities',
    'Professional coaching'
  ]
);