export interface LTAVenue {
  name: string;
  address: string;
  city: string;
  region: string;
  postcode: string;
  coordinates: {
    lat: number;
    lng: number;
  };
  phone?: string;
  website?: string;
}

export interface Region {
  id: string;
  name: string;
  url: string;
}