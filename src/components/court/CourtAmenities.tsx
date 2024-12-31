import React from 'react';
import * as Icons from 'lucide-react';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtAmenitiesProps {
  amenities: Court['amenities'];
}

export default function CourtAmenities({ amenities }: CourtAmenitiesProps) {
  if (!amenities || amenities.length === 0) {
    return null;
  }

  return (
    <div className="py-8 border-b border-white/10">
      <h2 className={`${theme.text.heading} text-2xl mb-6`}>What this place offers</h2>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        {amenities.map((amenity) => {
          const IconComponent = Icons[amenity.icon as keyof typeof Icons] || Icons.HelpCircle;
          return (
            <div key={amenity.id} className="flex items-center gap-4">
              <IconComponent className="h-6 w-6 text-white/70" />
              <div>
                <p className={theme.text.primary}>{amenity.name}</p>
                {amenity.description && (
                  <p className={`text-sm ${theme.text.secondary}`}>{amenity.description}</p>
                )}
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}