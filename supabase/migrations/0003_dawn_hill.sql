/*
  # Add amenities and rules to courts table

  1. Changes
    - Add `amenities` column as JSONB array to store court amenities
    - Add `rules` column as text array to store court rules
    
  2. Data Structure
    - amenities: Array of objects with id, name, icon, and description
    - rules: Array of strings
*/

ALTER TABLE courts 
ADD COLUMN IF NOT EXISTS amenities jsonb[] DEFAULT '{}',
ADD COLUMN IF NOT EXISTS rules text[] DEFAULT '{}';

-- Update existing court with amenities and rules
UPDATE courts
SET 
  amenities = ARRAY[
    '{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "3 climate-controlled indoor courts"}'::jsonb,
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "2 premium outdoor courts"}'::jsonb,
    '{"id": "equipment", "name": "Equipment Rental", "icon": "BadgePercent", "description": "Professional rackets and balls available"}'::jsonb,
    '{"id": "coaching", "name": "Professional Coaching", "icon": "GraduationCap", "description": "Certified instructors for all levels"}'::jsonb,
    '{"id": "changing-rooms", "name": "Changing Rooms", "icon": "Door", "description": "Modern facilities with showers"}'::jsonb,
    '{"id": "parking", "name": "Free Parking", "icon": "ParkingCircle", "description": "Ample parking space available"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "Refreshments and light meals"}'::jsonb,
    '{"id": "wifi", "name": "Free Wi-Fi", "icon": "Wifi", "description": "High-speed internet throughout"}'::jsonb
  ],
  rules = ARRAY[
    'Appropriate sports attire and clean court shoes required',
    'Maximum 4 players per court',
    'Court bookings are for 1-hour slots',
    'Cancel at least 24 hours in advance for full refund',
    'No food or drinks on court except water',
    'Please arrive 10 minutes before your booking',
    'Follow all safety guidelines and court etiquette',
    'Respect other players and maintain appropriate noise levels'
  ]
WHERE id IN (SELECT id FROM courts LIMIT 1);