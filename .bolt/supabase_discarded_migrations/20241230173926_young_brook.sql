-- Create the courts table with proper structure
CREATE TABLE IF NOT EXISTS courts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  image text,
  images text[],
  address text NOT NULL,
  city text NOT NULL,
  region text,
  postcode text NOT NULL,
  lat double precision NOT NULL,
  lng double precision NOT NULL,
  phone text NOT NULL,
  email text NOT NULL,
  website text,
  hours text NOT NULL,
  peak_price integer NOT NULL,
  off_peak_price integer NOT NULL,
  amenities jsonb[] DEFAULT '{}',
  rules text[] DEFAULT '{}',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE courts ENABLE ROW LEVEL SECURITY;

-- Add public read access policy
CREATE POLICY "Allow public read access"
  ON courts
  FOR SELECT
  TO public
  USING (true);

-- Add necessary indexes
CREATE INDEX IF NOT EXISTS idx_courts_name_postcode 
ON courts(name, postcode);

CREATE INDEX IF NOT EXISTS idx_courts_region
ON courts(region);

CREATE INDEX IF NOT EXISTS idx_courts_lat_lng
ON courts USING gist (
  ll_to_earth(lat, lng)
);