import React from 'react';
import { getStaticMapUrl } from '../../utils/mapbox';

interface MapPreviewProps {
  coordinates: {
    lat: number;
    lng: number;
  };
  name: string;
  className?: string;
}

export default function MapPreview({ coordinates, name, className = '' }: MapPreviewProps) {
  const mapUrl = getStaticMapUrl(coordinates.lng, coordinates.lat, 400, 300);
  
  return (
    <div className="w-full h-full relative">
      <img
        src={mapUrl}
        alt={`Map location for ${name}`}
        className={`w-full h-full object-cover ${className}`}
      />
    </div>
  );
}