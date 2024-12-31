/*
  # Add Initial Court Data
  
  1. Data Population
    - Add initial set of padel courts across UK regions
    - Include detailed amenities and rules for each court
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Region information
      - Standard amenities
      - Default rules
*/

-- Create the courts table if it doesn't exist
CREATE TABLE IF NOT EXISTS courts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  address text NOT NULL,
  city text NOT NULL,
  region text NOT NULL,
  postcode text NOT NULL,
  lat double precision NOT NULL,
  lng double precision NOT NULL,
  phone text NOT NULL,
  email text NOT NULL,
  website text,
  hours text NOT NULL,
  peak_price integer NOT NULL,
  off_peak_price integer NOT NULL,
  amenities jsonb[],
  rules text[],
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE courts ENABLE ROW LEVEL SECURITY;

-- Add public read access policy
CREATE POLICY "Allow public read access"
  ON courts
  FOR SELECT
  TO public
  USING (true);

-- Insert London Padel Club
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES (
  'London Padel Club',
  'Experience padel tennis at its finest in our state-of-the-art facility.',
  '123 Padel Street',
  'Greenwich',
  'London',
  'SE10 8EW',
  51.4834, -0.0064,
  '020 1234 5678',
  'info@londonpadelclub.com',
  'https://londonpadelclub.com',
  '7:00 AM - 10:00 PM',
  40, 30,
  ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "3 climate-controlled indoor courts"}'::jsonb,
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "2 premium outdoor courts"}'::jsonb,
    '{"id": "equipment", "name": "Equipment Rental", "icon": "BadgePercent", "description": "Professional rackets and balls available"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Certified instructors for all levels"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities with showers"}'::jsonb,
    '{"id": "parking", "name": "Free Parking", "icon": "ParkingCircle", "description": "Ample parking space available"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "Refreshments and light meals"}'::jsonb,
    '{"id": "wifi", "name": "Free Wi-Fi", "icon": "Wifi", "description": "High-speed internet throughout"}'::jsonb
  ],
  ARRAY[
    'Appropriate sports attire and clean court shoes required',
    'Maximum 4 players per court',
    'Court bookings are for 1-hour slots',
    'Cancel at least 24 hours in advance for full refund',
    'No food or drinks on court except water',
    'Please arrive 10 minutes before your booking',
    'Follow all safety guidelines and court etiquette',
    'Respect other players and maintain appropriate noise levels'
  ]
);

-- Insert David Lloyd Leeds
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES (
  'David Lloyd Leeds',
  'Premium padel facilities in Leeds with indoor and outdoor courts',
  'Tongue Lane',
  'Leeds',
  'Yorkshire',
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
);

-- Insert We Are Padel Brighton
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES (
  'We Are Padel Brighton',
  'State-of-the-art padel facility on the south coast',
  'Brighton Sports Complex',
  'Brighton',
  'South East',
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