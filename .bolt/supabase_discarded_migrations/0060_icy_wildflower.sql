-- First, remove duplicates keeping the first entry for each unique name/postcode combination
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

-- Add index to improve query performance
CREATE INDEX IF NOT EXISTS idx_courts_name_postcode 
ON courts(name, postcode);

-- Add index for region searches
CREATE INDEX IF NOT EXISTS idx_courts_region
ON courts(region);

-- Add index for location searches
CREATE INDEX IF NOT EXISTS idx_courts_lat_lng
ON courts USING gist (
  ll_to_earth(lat, lng)
);

-- Vacuum analyze to update statistics
VACUUM ANALYZE courts;