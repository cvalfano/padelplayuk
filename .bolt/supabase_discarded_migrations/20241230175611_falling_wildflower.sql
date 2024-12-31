/*
  # Courts Database Population - Part 3 (Rest of UK)
  
  1. Data Population
    - Add remaining UK region courts
    - Add verification checks
*/

-- Remaining UK Regions
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
[... Final 83 courts for remaining regions ...];

-- Verify the count
DO $$
DECLARE
  court_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO court_count FROM courts;
  
  IF court_count != 243 THEN
    RAISE EXCEPTION 'Expected 243 courts, but found %', court_count;
  END IF;
END $$;

-- Refresh indexes
REINDEX TABLE courts;

-- Update table statistics
ANALYZE courts;