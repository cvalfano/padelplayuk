import type { Court } from '../types/court';

export const mockCourt: Court = {
  id: "london-padel-club",
  name: "London Padel Club",
  description: "Experience padel tennis at its finest in our state-of-the-art facility. Located in the heart of Greenwich, London Padel Club offers premium courts suitable for players of all levels. Our club features both indoor and outdoor courts, professional coaching, and a vibrant community of padel enthusiasts.",
  image: "https://images.unsplash.com/photo-1554068865-24cecd4e34b8?auto=format&fit=crop&q=80&w=1000",
  images: [
    "https://images.unsplash.com/photo-1554068865-24cecd4e34b8?auto=format&fit=crop&q=80&w=1000",
    "https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?auto=format&fit=crop&q=80&w=1000",
    "https://images.unsplash.com/photo-1621974839223-c2ace03bc755?auto=format&fit=crop&q=80&w=1000",
    "https://images.unsplash.com/photo-1626224583764-f87db24ac4ea?auto=format&fit=crop&q=80&w=1000",
    "https://images.unsplash.com/photo-1627160678418-6e0fab8dae9b?auto=format&fit=crop&q=80&w=1000"
  ],
  location: {
    address: "123 Padel Street",
    city: "Greenwich, London",
    postcode: "SE10 8EW",
    coordinates: {
      lat: 51.4834,
      lng: -0.0064
    }
  },
  contact: {
    phone: "020 1234 5678",
    email: "info@londonpadelclub.com",
    website: "https://londonpadelclub.com"
  },
  hours: "7:00 AM - 10:00 PM",
  amenities: [
    {
      id: "indoor-courts",
      name: "Indoor Courts",
      icon: "Warehouse",
      description: "3 climate-controlled indoor courts"
    },
    {
      id: "outdoor-courts",
      name: "Outdoor Courts",
      icon: "Sun",
      description: "2 premium outdoor courts"
    },
    {
      id: "equipment",
      name: "Equipment Rental",
      icon: "BadgePercent",
      description: "Professional rackets and balls available"
    },
    {
      id: "coaching",
      name: "Professional Coaching",
      icon: "GraduationCap",
      description: "Certified instructors for all levels"
    },
    {
      id: "changing-rooms",
      name: "Changing Rooms",
      icon: "Door",
      description: "Modern facilities with showers"
    },
    {
      id: "parking",
      name: "Free Parking",
      icon: "ParkingCircle",
      description: "Ample parking space available"
    },
    {
      id: "cafe",
      name: "Café",
      icon: "Coffee",
      description: "Refreshments and light meals"
    },
    {
      id: "wifi",
      name: "Free Wi-Fi",
      icon: "Wifi",
      description: "High-speed internet throughout"
    }
  ],
  pricing: {
    peakHours: "Weekdays 5PM-10PM & Weekends",
    peakPrice: 40,
    offPeakHours: "Weekdays 7AM-5PM",
    offPeakPrice: 30
  },
  rules: [
    "Appropriate sports attire and clean court shoes required",
    "Maximum 4 players per court",
    "Court bookings are for 1-hour slots",
    "Cancel at least 24 hours in advance for full refund",
    "No food or drinks on court except water",
    "Please arrive 10 minutes before your booking",
    "Follow all safety guidelines and court etiquette",
    "Respect other players and maintain appropriate noise levels"
  ]
};