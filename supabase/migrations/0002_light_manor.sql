/*
  # Create courts table

  1. New Tables
    - `courts`
      - `id` (uuid, primary key)
      - `name` (text)
      - `description` (text, nullable)
      - `image` (text, nullable)
      - `images` (text array, nullable)
      - `address` (text)
      - `city` (text)
      - `postcode` (text)
      - `lat` (double precision)
      - `lng` (double precision)
      - `phone` (text)
      - `email` (text)
      - `website` (text, nullable)
      - `hours` (text)
      - `peak_price` (integer)
      - `off_peak_price` (integer)
      - `created_at` (timestamptz)
      - `updated_at` (timestamptz)

  2. Security
    - Enable RLS on courts table
    - Add policy for public read access
*/

CREATE TABLE IF NOT EXISTS courts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  image text,
  images text[],
  address text NOT NULL,
  city text NOT NULL,
  postcode text NOT NULL,
  lat double precision NOT NULL,
  lng double precision NOT NULL,
  phone text NOT NULL,
  email text NOT NULL,
  website text,
  hours text NOT NULL,
  peak_price integer NOT NULL,
  off_peak_price integer NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE courts ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public read access"
  ON courts
  FOR SELECT
  TO public
  USING (true);

-- Add some sample data
INSERT INTO courts (
  name,
  description,
  image,
  images,
  address,
  city,
  postcode,
  lat,
  lng,
  phone,
  email,
  website,
  hours,
  peak_price,
  off_peak_price
) VALUES (
  'London Padel Club',
  'Experience padel tennis at its finest in our state-of-the-art facility.',
  'https://images.unsplash.com/photo-1554068865-24cecd4e34b8?auto=format&fit=crop&q=80&w=1000',
  ARRAY[
    'https://images.unsplash.com/photo-1554068865-24cecd4e34b8?auto=format&fit=crop&q=80&w=1000',
    'https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?auto=format&fit=crop&q=80&w=1000',
    'https://images.unsplash.com/photo-1621974839223-c2ace03bc755?auto=format&fit=crop&q=80&w=1000'
  ],
  '123 Padel Street',
  'Greenwich',
  'SE10 8EW',
  51.4834,
  -0.0064,
  '020 1234 5678',
  'info@londonpadelclub.com',
  'https://londonpadelclub.com',
  '7:00 AM - 10:00 PM',
  40,
  30
);