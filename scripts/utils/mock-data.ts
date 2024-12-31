import type { RawCourtData } from './types';

export const MOCK_COURTS: RawCourtData[] = [
  {
    name: 'Manchester Tennis & Padel Club',
    address: 'Riverside Complex',
    city: 'Manchester',
    postcode: 'M16 0QW',
    coordinates: {
      lat: 53.4631,
      lng: -2.2714
    },
    phone: '0161 123 4567',
    website: 'https://manchesterpadel.co.uk'
  },
  {
    name: 'Bristol Padel Centre',
    address: 'Sports Quarter',
    city: 'Bristol',
    postcode: 'BS1 5TZ',
    coordinates: {
      lat: 51.4545,
      lng: -2.5879
    },
    phone: '0117 987 6543',
    website: 'https://bristolpadel.co.uk'
  },
  {
    name: 'Newcastle Padel Hub',
    address: '15 Sports Way',
    city: 'Newcastle',
    postcode: 'NE1 4BN',
    coordinates: {
      lat: 54.9783,
      lng: -1.6178
    },
    phone: '0191 234 5678',
    website: 'https://newcastlepadel.co.uk'
  },
  {
    name: 'Glasgow Padel Academy',
    address: '45 Court Road',
    city: 'Glasgow',
    postcode: 'G1 1XQ',
    coordinates: {
      lat: 55.8642,
      lng: -4.2518
    },
    phone: '0141 345 6789',
    website: 'https://glasgowpadel.co.uk'
  }
];