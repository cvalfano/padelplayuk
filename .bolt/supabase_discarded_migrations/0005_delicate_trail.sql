/*
  # Add Manchester and Bristol Padel Courts
  
  1. New Courts
    - Manchester Tennis & Padel Club
      - Indoor courts with full facilities
      - Located in Riverside Complex
    - Bristol Padel Centre
      - Modern facility with outdoor courts
      - Located in Sports Quarter
    
  2. Data Structure
    - Full court information including:
      - Contact details
      - Location data
      - Operating hours
      - Pricing
      - Amenities
      - Rules
*/

INSERT INTO courts (
  name, description, address, city, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
(
  'Manchester Tennis & Padel Club',
  'Premier padel facility in Manchester with multiple courts',
  'Riverside Complex',
  'Manchester',
  'M16 0QW',
  53.4631, -2.2714,
  '0161 123 4567',
  'info@manchesterpadel.co.uk',
  'https://manchesterpadel.co.uk',
  '7:00 AM - 10:00 PM',
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
  'Bristol Padel Centre',
  'Modern padel facility in the heart of Bristol',
  'Sports Quarter',
  'Bristol',
  'BS1 5TZ',
  51.4545, -2.5879,
  '0117 987 6543',
  'play@bristolpadel.co.uk',
  'https://bristolpadel.co.uk',
  '6:30 AM - 9:30 PM',
  38, 28,
  ARRAY[
    '{"id": "outdoor-courts", "name": "Outdoor Courts", "icon": "Sun", "description": "Premium outdoor courts"}'::jsonb,
    '{"id": "equipment", "name": "Equipment Rental", "icon": "BadgePercent", "description": "Professional equipment available"}'::jsonb,
    '{"id": "cafe", "name": "Café", "icon": "Coffee", "description": "On-site refreshments"}'::jsonb
  ],
  ARRAY[
    'Court shoes required',
    'Equipment rental available',
    'Weather dependent for outdoor courts'
  ]
);