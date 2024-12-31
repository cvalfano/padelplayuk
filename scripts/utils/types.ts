export interface RawCourtData {
  name: string;
  address: string;
  city: string;
  postcode: string;
  coordinates: {
    lat: number;
    lng: number;
  };
  website?: string;
  phone?: string;
}

export interface ProcessedCourtData {
  name: string;
  description: string;
  address: string;
  city: string;
  postcode: string;
  lat: number;
  lng: number;
  phone: string;
  email: string;
  website: string | null;
  hours: string;
  peak_price: number;
  off_peak_price: number;
  amenities: Array<{
    id: string;
    name: string;
    icon: string;
    description: string;
  }>;
  rules: string[];
}