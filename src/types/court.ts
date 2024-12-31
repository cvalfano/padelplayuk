export interface Court {
  id: string;
  name: string;
  description: string;
  image: string;
  images: string[];
  location: {
    address: string;
    city: string;
    postcode: string;
    coordinates: {
      lat: number;
      lng: number;
    };
  };
  contact: {
    phone: string;
    email: string;
    website?: string;
  };
  hours: string;
  amenities: {
    id: string;
    name: string;
    icon: string;
    description?: string;
  }[];
  pricing: {
    peakHours: string;
    peakPrice: number;
    offPeakHours: string;
    offPeakPrice: number;
  };
  rules: string[];
}