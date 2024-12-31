import React from 'react';
import { MapPin } from 'lucide-react';

interface MapMarkerProps {
  onClick?: () => void;
  className?: string;
}

export default function MapMarker({ onClick, className = '' }: MapMarkerProps) {
  return (
    <div 
      className={`bg-[#030015] p-1.5 rounded-full cursor-pointer shadow-lg transform-gpu hover:scale-110 transition-all duration-200 ${className}`}
      onClick={onClick}
    >
      <MapPin 
        className="h-5 w-5 text-white fill-white hover:text-blue-400 hover:fill-blue-400 transition-colors" 
        strokeWidth={1.5}
      />
    </div>
  );
}