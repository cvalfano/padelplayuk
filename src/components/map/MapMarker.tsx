import React from 'react';
import type { Court } from '../../types/court';

interface MapMarkerProps {
  court: Court;
  onClick: () => void;
}

export default function MapMarker({ court, onClick }: MapMarkerProps) {
  return (
    <div 
      className="bg-white rounded-lg shadow-lg p-3 cursor-pointer hover:shadow-xl transition-shadow"
      onClick={onClick}
    >
      <h3 className="font-semibold text-gray-900">{court.name}</h3>
      <p className="text-sm text-gray-600">{court.location.city}</p>
    </div>
  );
}