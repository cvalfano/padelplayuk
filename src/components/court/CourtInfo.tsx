import React from 'react';
import { Globe, Mail } from 'lucide-react';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtInfoProps {
  court: Court;
}

export default function CourtInfo({ court }: CourtInfoProps) {
  return (
    <div className="py-5 border-b border-white/10">
      <div className="space-y-4">
        <div className="flex flex-col gap-2">
          {court.website && (
            <div className="flex items-center">
              <Globe className="h-5 w-5 mr-2 text-white/70" />
              <a 
                href={court.website} 
                className="text-white hover:text-[#E1FF5E] transition-colors duration-200"
              >
                {court.website}
              </a>
            </div>
          )}
          <div className="flex items-center">
            <Mail className="h-5 w-5 mr-2 text-white/70" />
            <a 
              href={`mailto:${court.email}`} 
              className="text-white hover:text-[#E1FF5E] transition-colors duration-200"
            >
              {court.email}
            </a>
          </div>
        </div>
        {court.description && (
          <p className={theme.text.secondary}>{court.description}</p>
        )}
      </div>
    </div>
  );
}