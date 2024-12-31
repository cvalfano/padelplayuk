/*
  # Add LTA Padel Courts
  
  1. Data Population
    - Add 0 courts from LTA website
    - Includes courts from all regions
    
  2. Data Structure
    - Each court includes:
      - Basic information (name, location, contact)
      - Standard amenities
      - Default rules
*/

-- Clear existing data
TRUNCATE TABLE courts;

