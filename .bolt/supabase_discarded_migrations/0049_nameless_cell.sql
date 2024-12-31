INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Witney Padel Club',
  'Modern padel facility in Witney',
  'Witney',
  'Witney',
  'Oxfordshire',
  'OX28 4YA',
  51.7801, -1.4901,
  '01993 123456',
  'info@witneypadel.co.uk',
  'https://witneypadel.co.uk',
  '7:00 AM - 10:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Henley Tennis Club',
  'Historic club with modern padel facilities',
  'Henley-on-Thames',
  'Henley-on-Thames',
  'Oxfordshire',
  'RG9 2LY',
  51.5401, -0.9001,
  '01491 123456',
  'info@henleytennis.co.uk',
  'https://clubspark.lta.org.uk/HenleyTennisClub',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Club membership available',
    'Riverside location',
    'Coaching available'
  ]
),
(
  'Thame Padel Centre',
  'Community padel facility',
  'Thame',
  'Thame',
  'Oxfordshire',
  'OX9 3RN',
  51.7501, -0.9801,
  '01844 123456',
  'info@thamepadel.co.uk',
  'https://thamepadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Bicester Padel Club',
  'Modern padel facility in Bicester',
  'Bicester',
  'Bicester',
  'Oxfordshire',
  'OX26 2NR',
  51.9001, -1.1501,
  '01869 123456',
  'info@bicesterpadel.co.uk',
  'https://bicesterpadel.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Expert coaching"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Carterton Padel Centre',
  'Community sports facility with padel courts',
  'Carterton',
  'Carterton',
  'Oxfordshire',
  'OX18 3JH',
  51.7601, -1.5901,
  '01993 234567',
  'info@cartertonpadel.co.uk',
  'https://cartertonpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Community courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Didcot Tennis & Padel Club',
  'Modern sports facility with padel courts',
  'Didcot',
  'Didcot',
  'Oxfordshire',
  'OX11 7BN',
  51.6101, -1.2401,
  '01235 234567',
  'info@didcottennis.co.uk',
  'https://clubspark.lta.org.uk/DidcotTennisClub',
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
  'Kidlington Padel Club',
  'Modern padel facility in Kidlington',
  'Kidlington',
  'Kidlington',
  'Oxfordshire',
  'OX5 2NU',
  51.8201, -1.2801,
  '01865 345678',
  'info@kidlingtonpadel.co.uk',
  'https://kidlingtonpadel.co.uk',
  '7:00 AM - 10:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Wantage Tennis Club',
  'Community club with padel facilities',
  'Wantage',
  'Wantage',
  'Oxfordshire',
  'OX12 9BU',
  51.5901, -1.4201,
  '01235 345678',
  'info@wantagetennis.co.uk',
  'https://clubspark.lta.org.uk/WantageTennisClub',
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
  'Chipping Norton Padel',
  'Rural padel facility',
  'Chipping Norton',
  'Chipping Norton',
  'Oxfordshire',
  'OX7 5QJ',
  51.9401, -1.5501,
  '01608 123456',
  'info@chipnortonpadel.co.uk',
  'https://chipnortonpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Countryside courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Rural setting',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Wallingford Sports Park',
  'Multi-sport facility with padel courts',
  'Wallingford',
  'Wallingford',
  'Oxfordshire',
  'OX10 9RB',
  51.6001, -1.1201,
  '01491 234567',
  'info@wallingfordsports.co.uk',
  'https://www.wallingfordsports.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Eynsham Sports Centre',
  'Community sports facility with padel courts',
  'Eynsham',
  'Eynsham',
  'Oxfordshire',
  'OX29 4HF',
  51.7801, -1.3701,
  '01865 456789',
  'info@eynshampadel.co.uk',
  'https://eynshampadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Community courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Faringdon Tennis Club',
  'Traditional club with modern padel facilities',
  'Faringdon',
  'Faringdon',
  'Oxfordshire',
  'SN7 7AJ',
  51.6601, -1.5801,
  '01367 123456',
  'info@faringdontennis.co.uk',
  'https://clubspark.lta.org.uk/FaringdonTennisClub',
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
  'Watlington Sports Club',
  'Community sports club with padel courts',
  'Watlington',
  'Watlington',
  'Oxfordshire',
  'OX49 5QQ',
  51.6401, -1.0001,
  '01491 345678',
  'info@watlingtonsports.co.uk',
  'https://watlingtonsports.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Woodstock Padel Club',
  'Modern padel facility in historic town',
  'Woodstock',
  'Woodstock',
  'Oxfordshire',
  'OX20 1XD',
  51.8501, -1.3501,
  '01993 345678',
  'info@woodstockpadel.co.uk',
  'https://woodstockpadel.co.uk',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Historic setting',
    'Professional coaching',
    'Equipment sales'
  ]
),
(
  'Benson Padel Centre',
  'Modern padel facility in Benson',
  'Benson',
  'Benson',
  'Oxfordshire',
  'OX10 6LZ',
  51.6201, -1.1101,
  '01491 456789',
  'info@bensonpadel.co.uk',
  'https://bensonpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "All-weather courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Charlbury Tennis Club',
  'Community club with padel facilities',
  'Charlbury',
  'Charlbury',
  'Oxfordshire',
  'OX7 3QP',
  51.8701, -1.4801,
  '01608 234567',
  'info@charlburytennis.co.uk',
  'https://clubspark.lta.org.uk/CharlburyTennisClub',
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
  'Wheatley Padel Club',
  'Modern padel facility in Wheatley',
  'Wheatley',
  'Wheatley',
  'Oxfordshire',
  'OX33 1XP',
  51.7501, -1.1301,
  '01865 567890',
  'info@wheatleypadel.co.uk',
  'https://wheatleypadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Modern indoor courts"}'::jsonb,
    '{"id": "pro-shop", "name": "Pro Shop", "icon": "ShoppingBag", "description": "Equipment shop"}'::jsonb
  ],
  ARRAY[
    'Professional coaching',
    'Equipment sales',
    'All levels welcome'
  ]
),
(
  'Burford Sports Club',
  'Community sports club with padel courts',
  'Burford',
  'Burford',
  'Oxfordshire',
  'OX18 4DW',
  51.8101, -1.6401,
  '01993 567890',
  'info@burfordsports.co.uk',
  'https://burfordsports.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Multi-sport facilities"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Community facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Chinnor Tennis Club',
  'Community club with padel facilities',
  'Chinnor',
  'Chinnor',
  'Oxfordshire',
  'OX39 4PF',
  51.7001, -0.9101,
  '01844 567890',
  'info@chinnortennis.co.uk',
  'https://clubspark.lta.org.uk/ChinnorTennisClub',
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
  'Goring Tennis Club',
  'Riverside club with padel facilities',
  'Goring',
  'Goring',
  'Oxfordshire',
  'RG8 9AL',
  51.5201, -1.1301,
  '01491 678901',
  'info@goringtennis.co.uk',
  'https://clubspark.lta.org.uk/GoringTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Riverside clubhouse"}'::jsonb
  ],
  ARRAY[
    'Riverside location',
    'Club membership available',
    'Coaching available'
  ]
),
(
  'Bampton Tennis Club',
  'Community club with padel facilities',
  'Bampton',
  'Bampton',
  'Oxfordshire',
  'OX18 2NE',
  51.7301, -1.5501,
  '01993 678901',
  'info@bamptontennis.co.uk',
  'https://clubspark.lta.org.uk/BamptonTennisClub',
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
  'Waterperry Gardens Padel',
  'Garden setting padel facility',
  'Waterperry',
  'Waterperry',
  'Oxfordshire',
  'OX33 1LG',
  51.7601, -1.0801,
  '01844 678901',
  'info@waterperrypadel.co.uk',
  'https://waterperrypadel.co.uk',
  '7:00 AM - 9:00 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Garden setting courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Garden setting',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Dorchester Tennis Club',
  'Historic village club with padel facilities',
  'Dorchester-on-Thames',
  'Dorchester',
  'Oxfordshire',
  'OX10 7HH',
  51.6401, -1.1701,
  '01865 678901',
  'info@dorchestertennis.co.uk',
  'https://clubspark.lta.org.uk/DorchesterTennisClub',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "mixed-courts", "name": "Mixed Courts", "icon": "LayoutGrid", "description": "Tennis and padel facilities"}'::jsonb,
    '{"id": "clubhouse", "name": "Clubhouse", "icon": "Home", "description": "Historic clubhouse"}'::jsonb
  ],
  ARRAY[
    'Historic setting',
    'Club membership available',
    'Coaching available'
  ]
),
(
  'Woodcote Tennis Club',
  'Village club with padel facilities',
  'Woodcote',
  'Woodcote',
  'Oxfordshire',
  'RG8 0QY',
  51.5301, -1.0801,
  '01491 789012',
  'info@woodcotetennis.co.uk',
  'https://clubspark.lta.org.uk/WoodcoteTennisClub',
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
  'Chalgrove Padel Club',
  'Modern village padel facility',
  'Chalgrove',
  'Chalgrove',
  'Oxfordshire',
  'OX44 7RW',
  51.6701, -1.0501,
  '01865 789012',
  'info@chalgrovepadel.co.uk',
  'https://chalgrovepadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Village courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Village facility',
    'Equipment rental',
    'All levels welcome'
  ]
),
(
  'Deddington Tennis Club',
  'Village club with padel facilities',
  'Deddington',
  'Deddington',
  'Oxfordshire',
  'OX15 0QZ',
  51.9801, -1.3201,
  '01869 789012',
  'info@deddingtontennis.co.uk',
  'https://clubspark.lta.org.uk/DeddingtonTennisClub',
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
  'Hook Norton Tennis Club',
  'Village club with padel facilities',
  'Hook Norton',
  'Hook Norton',
  'Oxfordshire',
  'OX15 5NH',
  51.9901, -1.4901,
  '01608 789012',
  'info@hooknortontennis.co.uk',
  'https://clubspark.lta.org.uk/HookNortonTennisClub',
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
  'Kirtlington Padel Club',
  'Village padel facility',
  'Kirtlington',
  'Kirtlington',
  'Oxfordshire',
  'OX5 3HJ',
  51.8701, -1.2701,
  '01869 890123',
  'info@kirtlingtonpadel.co.uk',
  'https://kirtlingtonpadel.co.uk',
  '7:00 AM - 9:00 PM',
  35, 25,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Village courts"}'::jsonb,
    '{"id": "parking", "name": "Parking", "icon": "ParkingCircle", "description": "Free parking"}'::jsonb
  ],
  ARRAY[
    'Village facility',
    'Equipment rental',
    'All levels welcome'
  ]
);