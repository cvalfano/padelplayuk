/*
  # Add Region Column
  
  1. Schema Changes
    - Add region column to courts table
    - Column will store geographical region names (e.g., "London", "South East")
    
  2. Changes
    - Add nullable text column 'region'
    - Safe operation - doesn't affect existing data
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