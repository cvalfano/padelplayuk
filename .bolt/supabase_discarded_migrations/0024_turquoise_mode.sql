/*
  # Add Courts from Remaining Regions

  1. Data Population
    - Add courts from Dorset
    - Add courts from Wiltshire
    - Add courts from Isle of Wight
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Dorset Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Bournemouth Padel Club',
  'Premier padel facility on the south coast',
  'Queens Park',
  'Bournemouth',
  'Dorset',
  'BH8 9PU',
  50.7301, -1.8501,
  '01202 123456',
  'info@bournemouthpadel.co.uk',
  'https://clubspark.lta.org.uk/BournemouthPadelClub',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Online booking system',
    'Professional coaching',
    'Equipment rental available'
  ]
),
(
  'Weymouth Tennis & Padel Club',
  'Coastal sports facility with padel courts',
  'Dorchester Road',
  'Weymouth',
  'Dorset',
  'DT4 7QR',
  50.6201, -2.4701,
  '01305 123456',
  'info@weymouthtennis.co.uk',
  'https://clubspark.lta.org.uk/WeymouthTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Seaside courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Visitors welcome',
    'Coastal location'
  ]
);

-- Wiltshire Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Swindon Padel Club',
  'Modern padel facility in Swindon',
  'Delta Tennis Centre',
  'Swindon',
  'Wiltshire',
  'SN5 7XL',
  51.5601, -1.8201,
  '01793 123456',
  'info@swindonpadel.co.uk',
  'https://clubspark.lta.org.uk/SwindonPadelClub',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Indoor facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Public facility',
    'Equipment rental',
    'Coaching available'
  ]
),
(
  'Salisbury Tennis & Padel Club',
  'Historic club with modern padel facilities',
  'Salisbury',
  'Salisbury',
  'Wiltshire',
  'SP2 8JP',
  51.0701, -1.7901,
  '01722 123456',
  'info@salisburytennis.co.uk',
  'https://clubspark.lta.org.uk/SalisburyTennisClub',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Historic venue',
    'Professional coaching'
  ]
);

-- Isle of Wight Courts
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Ryde Padel & Tennis Club',
  'Island''s premier padel facility',
  'Ryde',
  'Ryde',
  'Isle of Wight',
  'PO33 1JH',
  50.7301, -1.1601,
  '01983 123456',
  'info@rydepadel.co.uk',
  'https://clubspark.lta.org.uk/RydePadelClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Island location courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Island''s only padel facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Ventnor Tennis & Padel Club',
  'Coastal sports club with padel courts',
  'Mitchell Avenue',
  'Ventnor',
  'Isle of Wight',
  'PO38 1DR',
  50.5901, -1.2101,
  '01983 234567',
  'info@ventnortennis.co.uk',
  'https://clubspark.lta.org.uk/VentnorTennisClub',
  '8:00 AM - 8:00 PM',
  32, 22,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Scenic coastal courts"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Club facilities"}'::jsonb
  ],
  ARRAY[
    'Stunning coastal location',
    'Club membership available',
    'Visitors welcome'
  ]
);