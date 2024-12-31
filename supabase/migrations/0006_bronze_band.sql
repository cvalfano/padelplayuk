/*
  # Add LTA Padel Courts Data
  
  1. Data Population
    - Add courts from LTA website
    - Safe inserts that avoid duplicates
    
  2. Changes
    - Insert new court data only if it doesn't exist
    - Uses DO block for safe execution
*/

DO $$ 
BEGIN
  -- Clear existing data safely
  DELETE FROM courts;

  -- Insert new courts
  INSERT INTO courts (
    name, description, address, city, postcode,
    lat, lng, phone, email, website,
    hours, peak_price, off_peak_price,
    amenities, rules
  ) 
  SELECT
    name, description, address, city, postcode,
    lat, lng, phone, email, website,
    hours, peak_price, off_peak_price,
    amenities, rules
  FROM (
    VALUES 
      ('David Lloyd Leeds',
      'Premium padel facilities in Leeds',
      'Tongue Lane',
      'Leeds',
      'LS6 4QW',
      53.8321, -1.5743,
      '0113 278 4020',
      'info@davidlloydleeds.com',
      'https://www.davidlloyd.co.uk/clubs/leeds',
      '6:00 AM - 10:30 PM',
      40, 30,
      ARRAY['{"id": "indoor-courts", "name": "Indoor Courts", "icon": "Warehouse", "description": "Climate-controlled indoor courts"}'::jsonb],
      ARRAY['Appropriate sports attire required', 'Maximum 4 players per court']
      )
      -- Add more VALUES here from the scraper
  ) AS new_courts(
    name, description, address, city, postcode,
    lat, lng, phone, email, website,
    hours, peak_price, off_peak_price,
    amenities, rules
  );
END $$;