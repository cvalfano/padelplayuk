import type { Database } from '../../../types/supabase';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

export const northCourts: Omit<CourtInsert, 'id'>[] = [
  {
    name: 'David Lloyd Leeds',
    description: 'Premium padel facilities in Leeds with indoor and outdoor courts',
    address: 'Tongue Lane',
    city: 'Leeds',
    region: 'Yorkshire',
    postcode: 'LS6 4QW',
    lat: 53.8321,
    lng: -1.5743,
    phone: '0113 278 4020',
    email: 'leeds@davidlloyd.co.uk',
    website: 'https://www.davidlloyd.co.uk/clubs/leeds',
    hours: '6:00 AM - 10:30 PM',
    peak_price: 40,
    off_peak_price: 30,
    amenities: [
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
      }
    ],
    rules: [
      'Appropriate sports attire required',
      'Maximum 4 players per court',
      'Please arrive 10 minutes before your booking'
    ]
  },
  {
    name: 'Manchester Padel Hub',
    description: 'Premier padel facility in the heart of Manchester',
    address: '123 Sport Street',
    city: 'Manchester',
    region: 'North West',
    postcode: 'M1 7ED',
    lat: 53.4808,
    lng: -2.2426,
    phone: '0161 789 0123',
    email: 'info@manchesterpadel.com',
    website: 'https://manchesterpadel.com',
    hours: '7:00 AM - 10:00 PM',
    peak_price: 42,
    off_peak_price: 32,
    amenities: [
      {
        id: 'indoor-courts',
        name: 'Indoor Courts',
        icon: 'Warehouse',
        description: '3 indoor courts'
      },
      {
        id: 'cafe',
        name: 'Café',
        icon: 'Coffee',
        description: 'On-site café'
      }
    ],
    rules: [
      'Court shoes required',
      'Maximum 4 players per court',
      'Café available for players'
    ]
  }
];