import React, { useState } from 'react';
import LocationsFilters from './LocationsFilters';
import { theme } from '../../utils/theme';

interface MobileFiltersProps {
  onSearch: (query: string) => void;
  onFilterChange: (filters: string[]) => void;
  onRegionChange: (regions: string[]) => void;
  activeFilters: string[];
  selectedRegions: string[];
  initialRegion?: string | null;
}

export default function MobileFilters({ 
  onSearch, 
  onFilterChange,
  onRegionChange,
  activeFilters,
  selectedRegions,
  initialRegion
}: MobileFiltersProps) {
  const [isExpanded, setIsExpanded] = useState(false);

  return (
    <div className="fixed bottom-0 left-0 right-0 lg:hidden z-50">
      <div 
        className={`
          fixed inset-0 bg-black/50 backdrop-blur-sm transition-opacity
          ${isExpanded ? 'opacity-100' : 'opacity-0 pointer-events-none'}
        `}
        onClick={() => setIsExpanded(false)}
      />
      
      <div className="relative bg-[#060836] border-t border-white/10">
        <div className="max-w-7xl mx-auto px-4 py-4">
          <button
            onClick={() => setIsExpanded(!isExpanded)}
            className={`w-full ${theme.button.primary} ${theme.button.base}`}
          >
            <span className="font-medium">
              {isExpanded ? 'Close' : 'Filters'}
            </span>
          </button>
        </div>
        
        <div 
          className={`
            absolute bottom-full left-0 right-0 transition-all duration-300 
            bg-[#060836] border-t border-white/10
            ${isExpanded ? 'max-h-[70vh]' : 'max-h-0'}
          `}
          style={{ 
            overflowY: isExpanded ? 'auto' : 'hidden',
            scrollbarWidth: 'none',
            msOverflowStyle: 'none'
          }}
        >
          <div className="px-4 py-6">
            <LocationsFilters
              onSearch={onSearch}
              onFilterChange={onFilterChange}
              onRegionChange={onRegionChange}
              activeFilters={activeFilters}
              selectedRegions={selectedRegions}
              initialRegion={initialRegion}
            />
          </div>
        </div>
      </div>
    </div>
  );
}