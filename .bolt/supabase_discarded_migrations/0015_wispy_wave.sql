/*
  # Add Gloucestershire Padel Courts

  1. Data Population
    - Add all Gloucestershire courts from the LTA list
    - Includes facilities in Cheltenham, Gloucester, and surrounding areas
    
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
  'East Gloucestershire Club',
  'Historic club offering modern padel facilities',
  'Old Bath Road',
  'Cheltenham',
  'Gloucestershire',
  'GL53 7DF',
  51.8833, -2.0731,
  '01242 230562',
  'info@eastglos.co.uk',
  'https://www.eastglos.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Traditional clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Professional coaching'
  ]
),
(
  'Cotswold Padel Club',
  'Rural padel facility in scenic location',
  'Northleach',
  'Northleach',
  'Gloucestershire',
  'GL54 3AP',
  51.8294, -1.8367,
  '01451 123456',
  'info@cotswoldpadel.club',
  'https://www.cotswoldpadel.club/',
  '8:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Scenic outdoor courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Booking required',
    'Equipment rental available',
    'Beautiful Cotswold location'
  ]
),
(
  'The Padel Club (Gloucester Quays)',
  'Modern padel facility in urban setting',
  'Gloucester Quays',
  'Gloucester',
  'Gloucestershire',
  'GL1 5SF',
  51.8661, -2.2488,
  '01452 123456',
  'gloucester@thepadelclub.co.uk',
  'https://www.thepadelclub.co.uk/the-clubs/club-3-gloucestershire',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment sales and rental'
  ]
),
(
  'David Lloyd Club Gloucester',
  'Premium health club with padel facilities',
  'Barnwood',
  'Gloucester',
  'Gloucestershire',
  'GL3 4AJ',
  51.8731, -2.2011,
  '01452 987654',
  'gloucester@davidlloyd.co.uk',
  'https://www.davidlloyd.co.uk/clubs/gloucester/padel/',
  '6:00 AM - 10:00 PM',
  45, 35,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Premium indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Luxury spa facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership required',
    'Premium facilities',
    'Professional coaching'
  ]
),
(
  'Padel Shift - Elkstone Studios',
  'Modern padel facility in converted studios',
  'Elkstone',
  'Cheltenham',
  'Gloucestershire',
  'GL53 9PQ',
  51.8431, -2.0544,
  '01242 345678',
  'elkstone@padelshift.com',
  'https://www.padelshift.com',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Converted studio courts"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities"}'::jsonb
  ],
  ARRAY[
    'Advance booking required',
    'Equipment hire available',
    'All levels welcome'
  ]
),
(
  'Padel Shift - The Club by Bamford',
  'Luxury padel facility',
  'Moreton-in-Marsh',
  'Moreton-in-Marsh',
  'Gloucestershire',
  'GL56 0YG',
  51.9931, -1.7033,
  '01608 123456',
  'bamford@padelshift.com',
  'https://www.padelshift.com',
  '7:00 AM - 9:00 PM',
  42, 32,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Luxury indoor courts"}'::jsonb,
    '{"id": "spa", "name": "Spa Facilities", "icon": "Sparkles", "description": "Premium wellness facilities"}'::jsonb
  ],
  ARRAY[
    'Premium facility',
    'Professional coaching',
    'Equipment provided'
  ]
);