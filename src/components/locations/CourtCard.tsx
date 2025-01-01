import React from 'react';
import { MapPin } from 'lucide-react';
import { Link } from 'react-router-dom';
import MapPreview from './MapPreview';

interface CourtCardProps {
  id: string;
  name: string;
  location: string;
  coordinates: {
    lat: number;
    lng: number;
  };
}

export default function CourtCard({ id, name, location, coordinates }: CourtCardProps) {
  return (
    <Link 
      to={`/courts/${id}`}
      className="
        group block bg-[#080B3C] rounded-lg overflow-hidden
        transition-all duration-300 ease-out
        hover:shadow-2xl hover:shadow-white/5
        hover:translate-y-[-4px]
      "
    >
      <div className="aspect-[16/9] overflow-hidden">
        <MapPreview 
          coordinates={coordinates}
          name={name}
          className="transform transition-transform duration-300 group-hover:scale-105"
        />
      </div>
      <div className="p-6">
        <h3 className="text-lg font-bold text-white group-hover:text-white/90 transition-colors">
          {name}
        </h3>
        <div className="flex items-center mt-3">
          <MapPin className="h-4 w-4 mr-2 flex-shrink-0 text-white/70 group-hover:text-white/90 transition-colors" />
          <span className="text-sm text-white/70 group-hover:text-white/90 transition-colors">
            {location}
          </span>
        </div>
      </div>
    </Link>
  );
}