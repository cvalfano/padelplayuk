import React from 'react';
import { getStaticMapUrl } from '../../utils/mapbox';
import type { Database } from '../../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtMapProps {
  location: Court;
  className?: string;
}

export default function CourtMap({ location, className = '' }: CourtMapProps) {
  if (!location?.lat || !location?.lng) {
    return null;
  }

  const mapUrl = getStaticMapUrl(location.lng, location.lat, 800, 600);

  return (
    <div className={`${className} overflow-hidden rounded-lg`}>
      <img
        src={mapUrl}
        alt={`Map location for ${location.name}`}
        className="w-full h-full object-cover"
      />
    </div>
  );
}