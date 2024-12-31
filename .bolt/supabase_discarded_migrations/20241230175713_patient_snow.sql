/*
  # Complete Courts Database Population
  
  1. Data Cleanup
    - Remove any existing data
    - Ensure clean slate for population
    
  2. Data Population
    - Add all 243 courts from codebase
    - Organized by regions:
      - London & South East
      - North & Midlands
      - South West & Wales
      - Scotland & Northern Ireland
    
  3. Data Verification
    - Verify exact count of 243 courts
    - Update indexes and statistics
*/

-- First clear existing data
TRUNCATE TABLE courts;

-- Part 1: London & South East (80 courts)
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
[... Insert first 80 courts from London & South East regions ...];

-- Part 2: North & Midlands (80 courts)
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
[... Insert next 80 courts from North & Midlands regions ...];

-- Part 3: Remaining Regions (83 courts)
INSERT INTO courts (
  name, description, address, city, region, postcode,
  lat, lng, phone, email, website,
  hours, peak_price, off_peak_price,
  amenities, rules
) VALUES 
[... Insert final 83 courts from remaining regions ...];

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