/*
  # Add region column to courts table
  
  1. Schema Changes
    - Add region column to courts table for geographical categorization
    - Safe operation that preserves existing data
    - Handles case where column might already exist
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