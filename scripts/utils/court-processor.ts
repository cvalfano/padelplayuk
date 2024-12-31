import type { RawCourtData, ProcessedCourtData } from './types';

const DEFAULT_AMENITIES = [
  {
    id: 'indoor-courts',
    name: 'Indoor Courts',
    icon: 'Warehouse',
    description: 'Climate-controlled indoor courts'
  },
  {
    id: 'parking',
    name: 'Free Parking',
    icon: 'ParkingCircle',
    description: 'Ample parking space'
  },
  {
    id: 'changing-rooms',
    name: 'Changing Rooms',
    icon: 'Door',
    description: 'Modern facilities with showers'
  }
];

const DEFAULT_RULES = [
  'Appropriate sports attire required',
  'Maximum 4 players per court',
  'Please arrive 10 minutes before your booking'
];

export function processCourtData(rawCourts: RawCourtData[]): ProcessedCourtData[] {
  return rawCourts.map(court => ({
    name: court.name,
    description: `Padel courts located in ${court.city}`,
    address: court.address,
    city: court.city,
    postcode: court.postcode,
    lat: court.coordinates.lat,
    lng: court.coordinates.lng,
    phone: court.phone || generateDefaultPhone(),
    email: generateEmail(court.name),
    website: court.website || null,
    hours: '7:00 AM - 10:00 PM',
    peak_price: 40,
    off_peak_price: 30,
    amenities: DEFAULT_AMENITIES,
    rules: DEFAULT_RULES
  }));
}

function generateEmail(name: string): string {
  return `info@${name.toLowerCase().replace(/[^a-z0-9]/g, '')}.com`;
}

function generateDefaultPhone(): string {
  return '0000 000 000';
}