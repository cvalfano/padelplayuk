/*
  # Add region column to courts table
  
  1. Schema Changes
    - Add region column to store the geographical region of each court
    
  2. Data Structure
    - region: text column to store region names (e.g., "London", "South East", etc.)
*/

-- Add region column if it doesn't exist
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'courts' AND column_name = 'region'
  ) THEN
    ALTER TABLE courts ADD COLUMN region text;
  END IF;
END $$;