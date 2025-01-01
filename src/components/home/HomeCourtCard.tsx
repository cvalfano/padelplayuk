import React from 'react';
import { MapPin } from 'lucide-react';
import { Link } from 'react-router-dom';
import MapPreview from '../locations/MapPreview';

interface HomeCourtCardProps {
  id: string;
  name: string;
  location: string;
  coordinates: {
    lat: number;
    lng: number;
  };
}

export default function HomeCourtCard({ id, name, location, coordinates }: HomeCourtCardProps) {
  return (
    <Link 
      to={`/courts/${id}`}
      className="block bg-[#080B3C] rounded-lg overflow-hidden transition-all duration-300 hover:scale-[1.02] hover:shadow-xl"
    >
      <div className="aspect-[16/9]">
        <MapPreview 
          coordinates={coordinates}
          name={name}
        />
      </div>
      <div className="p-4">
        <h3 className="text-lg font-bold text-white">{name}</h3>
        <div className="flex items-center text-white/70 mt-2">
          <MapPin className="h-4 w-4 mr-2 flex-shrink-0" />
          <span className="text-sm">{location}</span>
        </div>
      </div>
    </Link>
  );
}