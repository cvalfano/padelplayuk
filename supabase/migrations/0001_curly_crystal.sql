/*
  # Create courts table

  1. New Tables
    - `courts`
      - `id` (uuid, primary key)
      - `name` (text)
      - `description` (text)
      - `image` (text)
      - `images` (text array)
      - `address` (text)
      - `city` (text)
      - `postcode` (text)
      - `lat` (double precision)
      - `lng` (double precision)
      - `phone` (text)
      - `email` (text)
      - `website` (text)
      - `hours` (text)
      - `peak_price` (integer)
      - `off_peak_price` (integer)
      - `created_at` (timestamp with time zone)
      - `updated_at` (timestamp with time zone)

  2. Security
    - Enable RLS on `courts` table
    - Add policies for public read access
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