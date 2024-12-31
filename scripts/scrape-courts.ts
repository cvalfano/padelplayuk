import { supabase } from './lib/supabase';
import type { Database } from '../types/supabase';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

const DEFAULT_HOURS = '7:00 AM - 10:00 PM';
const DEFAULT_PEAK_PRICE = 40;
const DEFAULT_OFF_PEAK_PRICE = 30;

const DEFAULT_AMENITIES = [
  {
    id: 'indoor-courts',
    name: 'Indoor Courts',
    icon: 'Warehouse',
    description: 'Climate-controlled indoor courts'
  },
  {
    id: 'parking',
    name: 'Parking',
    icon: 'ParkingCircle',
    description: 'On-site parking available'
  },
  {
    id: 'changing-rooms',
    name: 'Changing Rooms',
    icon: 'Door',
    description: 'Changing facilities available'
  }
];

const DEFAULT_RULES = [
  'Appropriate sports attire and clean court shoes required',
  'Maximum 4 players per court',
  'Court bookings are for 1-hour slots',
  'Please arrive 10 minutes before your booking'
];

// Sample court data from LTA website
const courts: Omit<CourtInsert, 'id'>[] = [
  {
    name: "London Padel Club",
    description: "Experience padel tennis at its finest in our state-of-the-art facility.",
    address: "123 Padel Street",
    city: "Greenwich",
    postcode: "SE10 8EW",
    lat: 51.4834,
    lng: -0.0064,
    phone: "020 1234 5678",
    email: "info@londonpadelclub.com",
    website: "https://londonpadelclub.com",
    hours: DEFAULT_HOURS,
    peak_price: DEFAULT_PEAK_PRICE,
    off_peak_price: DEFAULT_OFF_PEAK_PRICE,
    amenities: DEFAULT_AMENITIES,
    rules: DEFAULT_RULES
  }
];

async function populateCourts() {
  try {
    const { data, error } = await supabase
      .from('courts')
      .insert(courts)
      .select();

    if (error) {
      throw error;
    }

    console.log(`Successfully inserted ${data.length} courts`);
  } catch (error) {
    console.error('Error inserting courts:', error);
  }
}

populateCourts();