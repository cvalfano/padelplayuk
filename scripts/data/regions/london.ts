import type { Database } from '../../../types/supabase';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

export const londonCourts: Omit<CourtInsert, 'id'>[] = [
  {
    name: 'London Padel Club',
    description: 'Experience padel tennis at its finest in our state-of-the-art facility.',
    address: '123 Padel Street',
    city: 'Greenwich',
    region: 'London',
    postcode: 'SE10 8EW',
    lat: 51.4834,
    lng: -0.0064,
    phone: '020 1234 5678',
    email: 'info@londonpadelclub.com',
    website: 'https://londonpadelclub.com',
    hours: '7:00 AM - 10:00 PM',
    peak_price: 40,
    off_peak_price: 30,
    amenities: [
      {
        id: 'indoor-courts',
        name: 'Indoor Courts',
        icon: 'Warehouse',
        description: '3 climate-controlled indoor courts'
      },
      {
        id: 'outdoor-courts',
        name: 'Outdoor Courts',
        icon: 'Sun',
        description: '2 premium outdoor courts'
      }
    ],
    rules: [
      'Appropriate sports attire required',
      'Maximum 4 players per court',
      'Please arrive 10 minutes before your booking'
    ]
  },
  {
    name: 'Stratford Padel Centre',
    description: 'Modern padel facility in East London with professional coaching.',
    address: '45 Olympic Way',
    city: 'London',
    region: 'London',
    postcode: 'E20 1DH',
    lat: 51.5434,
    lng: -0.0135,
    phone: '020 8234 5678',
    email: 'info@stratfordpadel.com',
    website: 'https://stratfordpadel.com',
    hours: '6:30 AM - 10:00 PM',
    peak_price: 45,
    off_peak_price: 35,
    amenities: [
      {
        id: 'indoor-courts',
        name: 'Indoor Courts',
        icon: 'Warehouse',
        description: '4 indoor courts'
      },
      {
        id: 'coaching',
        name: 'Professional Coaching',
        icon: 'GraduationCap',
        description: 'Expert coaches available'
      }
    ],
    rules: [
      'Booking required',
      'Maximum 4 players per court',
      'Professional coaching available'
    ]
  }
];