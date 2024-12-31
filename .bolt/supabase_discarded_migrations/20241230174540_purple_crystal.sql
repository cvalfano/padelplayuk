-- First, remove all duplicates
WITH duplicates AS (
  SELECT id, name, postcode,
    ROW_NUMBER() OVER (
      PARTITION BY name, postcode
      ORDER BY created_at
    ) as row_num
  FROM courts
)
DELETE FROM courts
WHERE id IN (
  SELECT id 
  FROM duplicates 
  WHERE row_num > 1
);

-- Add missing indexes if they don't exist
CREATE INDEX IF NOT EXISTS idx_courts_name_postcode 
ON courts(name, postcode);

CREATE INDEX IF NOT EXISTS idx_courts_region
ON courts(region);

CREATE INDEX IF NOT EXISTS idx_courts_lat_lng
ON courts USING gist (
  ll_to_earth(lat, lng)
);

-- Update table statistics
ANALYZE courts;

-- Verify the count
DO $$
DECLARE
  court_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO court_count FROM courts;
  
  -- If we don't have exactly 243 courts, raise an exception
  IF court_count != 243 THEN
    RAISE EXCEPTION 'Expected 243 courts, but found %', court_count;
  END IF;
END $$;