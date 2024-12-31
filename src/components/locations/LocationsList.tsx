import React from 'react';
import CourtCard from './CourtCard';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface LocationsListProps {
  courts: Court[];
  loading: boolean;
}

export default function LocationsList({ courts, loading }: LocationsListProps) {
  if (loading) {
    return (
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 animate-pulse">
        {[...Array(12)].map((_, i) => (
          <div key={i} className={`${theme.card.base} h-64`}></div>
        ))}
      </div>
    );
  }

  if (courts.length === 0) {
    return (
      <div className="text-center py-12">
        <p className={theme.text.secondary}>No courts found matching your criteria</p>
      </div>
    );
  }

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      {courts.map((court) => (
        <CourtCard
          key={court.id}
          id={court.id}
          name={court.name}
          location={`${court.city}, ${court.postcode}`}
          coordinates={{
            lat: court.lat,
            lng: court.lng
          }}
        />
      ))}
    </div>
  );
}