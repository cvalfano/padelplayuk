import React from 'react';
import { MapPin, Navigation, Map } from 'lucide-react';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';
import { formatAddress } from '../../utils/formatters';
import CourtMap from './CourtMap';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtLocationDetailsProps {
  location: Court;
  showMap?: boolean;
}

export default function CourtLocationDetails({ location, showMap = true }: CourtLocationDetailsProps) {
  if (!location?.lat || !location?.lng) {
    return null;
  }

  const googleMapsUrl = `https://www.google.com/maps/dir/?api=1&destination=${location.lat},${location.lng}`;
  const appleMapsUrl = `http://maps.apple.com/?daddr=${location.lat},${location.lng}`;

  return (
    <div className={`${theme.card.base}`}>
      {showMap && (
        <div className="p-4">
          <div className="aspect-[21/9] w-full rounded-lg overflow-hidden">
            <CourtMap location={location} className="h-full w-full" />
          </div>
        </div>
      )}
      
      <div className="p-6 space-y-6">
        <div className="flex items-start gap-2">
          <MapPin className="h-5 w-5 mt-1 text-white/70 flex-shrink-0" />
          <p className={theme.text.secondary}>
            {formatAddress(location.address, location.city, location.postcode)}
          </p>
        </div>

        <div className="flex flex-col gap-2">
          <a
            href={googleMapsUrl}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-2 text-white hover:text-[#E1FF5E] transition-colors duration-200"
          >
            <Navigation className="h-4 w-4" />
            <span>Directions in Google Maps</span>
          </a>
          <a
            href={appleMapsUrl}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-2 text-white hover:text-[#E1FF5E] transition-colors duration-200"
          >
            <Map className="h-4 w-4" />
            <span>Directions in Apple Maps</span>
          </a>
        </div>

        {location.website && (
          <a
            href={location.website}
            target="_blank"
            rel="noopener noreferrer" 
            className={`w-full ${theme.button.primary} ${theme.button.base} text-center block`}
          >
            Contact Host
          </a>
        )}
      </div>
    </div>
  );
}