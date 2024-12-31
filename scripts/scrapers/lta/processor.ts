import type { LTAVenue } from './types';
import type { Database } from '../../../types/supabase';
import { generateEmail } from './utils';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

const DEFAULT_AMENITIES = [
  {
    id: 'padel-courts',
    name: 'Padel Courts',
    icon: 'Tennis',
    description: 'Professional padel courts'
  },
  {
    id: 'parking',
    name: 'Parking',
    icon: 'ParkingCircle',
    description: 'On-site parking available'
  }
];

const DEFAULT_RULES = [
  'Appropriate sports attire required',
  'Maximum 4 players per court',
  'Please arrive 10 minutes before your booking'
];

export function processVenues(venues: LTAVenue[]): Omit<CourtInsert, 'id'>[] {
  return venues.map(venue => ({
    name: venue.name,
    description: `Padel courts located in ${venue.city}`,
    address: venue.address,
    city: venue.city,
    region: venue.region,
    postcode: venue.postcode,
    lat: venue.coordinates.lat,
    lng: venue.coordinates.lng,
    phone: venue.phone || '0000 000 000',
    email: generateEmail(venue.name),
    website: venue.website || null,
    hours: '7:00 AM - 10:00 PM',
    peak_price: 40,
    off_peak_price: 30,
    amenities: DEFAULT_AMENITIES,
    rules: DEFAULT_RULES
  }));
}