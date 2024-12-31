import React from 'react';
import { MapPin, Phone } from 'lucide-react';
import { Link } from 'react-router-dom';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';
import { formatPhoneNumber } from '../../utils/formatters';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtListProps {
  courts: Court[];
  onCourtSelect: (court: Court) => void;
}

export default function CourtList({ courts, onCourtSelect }: CourtListProps) {
  return (
    <div className="h-full bg-dark">
      <div className="p-4">
        <h2 className={`${theme.text.heading} mb-4`}>
          Available Courts ({courts.length})
        </h2>
        <div className="space-y-4">
          {courts.map((court) => (
            <div
              key={court.id}
              className={`${theme.card.base} ${theme.card.hover} p-4 cursor-pointer`}
              onClick={() => onCourtSelect(court)}
            >
              <h3 className={theme.text.heading}>{court.name}</h3>
              <div className="mt-2 space-y-1">
                <div className="flex items-center text-white/70">
                  <MapPin className="h-4 w-4 mr-2" />
                  <span className="text-sm">{court.address}</span>
                </div>
                <div className="flex items-center text-white/70">
                  <Phone className="h-4 w-4 mr-2" />
                  <span className="text-sm">{formatPhoneNumber(court.phone)}</span>
                </div>
              </div>
              <Link
                to={`/courts/${court.id}`}
                className={`mt-3 text-sm ${theme.text.secondary} hover:text-white block`}
              >
                View Details
              </Link>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}