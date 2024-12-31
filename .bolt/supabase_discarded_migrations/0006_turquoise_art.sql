/*
  # Create courts table and setup security

  1. New Tables
    - `courts` table with all necessary columns for padel court data
    
  2. Security
    - Enable RLS
    - Add policy for public read access
    
  3. Timestamps
    - Add automatic timestamp handling
*/

-- Drop existing objects if they exist
DROP TRIGGER IF EXISTS update_courts_updated_at ON courts;
DROP FUNCTION IF EXISTS update_updated_at_column();
DROP TABLE IF EXISTS courts;

-- Create the courts table
CREATE TABLE courts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  region text NOT NULL,
  address text NOT NULL,
  city text NOT NULL,
  postcode text NOT NULL,
  lat double precision NOT NULL,
  lng double precision NOT NULL,
  phone text NOT NULL,
  email text NOT NULL,
  website text,
  hours text NOT NULL DEFAULT '7:00 AM - 10:00 PM',
  peak_price integer NOT NULL DEFAULT 40,
  off_peak_price integer NOT NULL DEFAULT 30,
  amenities jsonb[] DEFAULT ARRAY[]::jsonb[],
  rules text[] DEFAULT ARRAY[]::text[],
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE courts ENABLE ROW LEVEL SECURITY;

-- Create policy for public read access
DROP POLICY IF EXISTS "Allow public read access" ON courts;
CREATE POLICY "Allow public read access"
  ON courts
  FOR SELECT
  TO public
  USING (true);

-- Create updated_at trigger function
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger for updated_at
CREATE TRIGGER update_courts_updated_at
  BEFORE UPDATE ON courts
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();