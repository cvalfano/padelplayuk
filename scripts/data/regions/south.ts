import type { Database } from '../../../types/supabase';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

export const southCourts: Omit<CourtInsert, 'id'>[] = [
  {
    name: 'We Are Padel Brighton',
    description: 'State-of-the-art padel facility on the south coast',
    address: 'Brighton Sports Complex',
    city: 'Brighton',
    region: 'South East',
    postcode: 'BN1 9PW',
    lat: 50.8429,
    lng: -0.1313,
    phone: '01273 123456',
    email: 'brighton@wearepadel.com',
    website: 'https://wearepadel.com/brighton',
    hours: '7:00 AM - 10:00 PM',
    peak_price: 45,
    off_peak_price: 35,
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
      'Advance booking required',
      'Coaching sessions available',
      'Café facilities on-site'
    ]
  },
  {
    name: 'Southampton Padel Academy',
    description: 'Professional padel facility with coaching programs',
    address: '78 Marina Way',
    city: 'Southampton',
    region: 'South East',
    postcode: 'SO14 3DH',
    lat: 50.8965,
    lng: -1.3968,
    phone: '023 8071 9012',
    email: 'info@southamptonpadel.com',
    website: 'https://southamptonpadel.com',
    hours: '7:00 AM - 9:30 PM',
    peak_price: 38,
    off_peak_price: 28,
    amenities: [
      {
        id: 'outdoor-courts',
        name: 'Outdoor Courts',
        icon: 'Sun',
        description: '4 outdoor courts'
      },
      {
        id: 'coaching',
        name: 'Professional Coaching',
        icon: 'GraduationCap',
        description: 'Expert coaching available'
      }
    ],
    rules: [
      'Weather dependent play',
      'Coaching bookings available',
      'Equipment rental on site'
    ]
  }
];