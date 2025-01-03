import React, { useState, useEffect } from 'react';
import { Search, ChevronDown } from 'lucide-react';
import FilterOption from './FilterOption';
import { theme } from '../../utils/theme';
import { regions } from '../../constants/regions';

interface LocationsFiltersProps {
  onSearch: (query: string) => void;
  onFilterChange: (filters: string[]) => void;
  onRegionChange: (regions: string[]) => void;
  activeFilters: string[];
  selectedRegions: string[];
  initialRegion?: string | null;
}

export default function LocationsFilters({ 
  onSearch, 
  onFilterChange,
  onRegionChange,
  activeFilters,
  selectedRegions,
  initialRegion
}: LocationsFiltersProps) {
  const [openSections, setOpenSections] = useState<string[]>(['search', 'regions']);

  // Set initial region if provided
  useEffect(() => {
    if (initialRegion && !selectedRegions.includes(initialRegion)) {
      onRegionChange([initialRegion]);
    }
  }, [initialRegion]);

  const toggleSection = (section: string) => {
    setOpenSections(prev => 
      prev.includes(section) 
        ? prev.filter(s => s !== section)
        : [...prev, section]
    );
  };

  const handleRegionToggle = (region: string) => {
    if (region === 'all') {
      onRegionChange([]);
      return;
    }
    
    const newRegions = selectedRegions.includes(region)
      ? selectedRegions.filter(r => r !== region)
      : [...selectedRegions, region];
    onRegionChange(newRegions);
  };

  return (
    <div className="w-full lg:w-72 space-y-6">
      <h2 className={`${theme.text.heading} mb-4`}>Filters</h2>
      
      <div className="space-y-4">
        {/* Search Section */}
        <div className="pb-4 border-b border-white/10">
          <button
            onClick={() => toggleSection('search')}
            className="flex items-center justify-between w-full py-2 text-left font-medium text-white"
          >
            Search
            <ChevronDown
              className={`h-5 w-5 text-white/50 transition-transform ${
                openSections.includes('search') ? 'transform rotate-180' : ''
              }`}
            />
          </button>
          
          {openSections.includes('search') && (
            <div className="mt-2">
              <div className="relative">
                <input
                  type="text"
                  placeholder="Search locations..."
                  className={`${theme.input.base} w-full pr-10`}
                  onChange={(e) => onSearch(e.target.value)}
                />
                <Search className="absolute right-3 top-2.5 h-5 w-5 text-white/50" />
              </div>
            </div>
          )}
        </div>

        {/* Regions Section */}
        <div className="pb-4 border-b border-white/10">
          <button
            onClick={() => toggleSection('regions')}
            className="flex items-center justify-between w-full py-2 text-left font-medium text-white"
          >
            Regions
            <ChevronDown
              className={`h-5 w-5 text-white/50 transition-transform ${
                openSections.includes('regions') ? 'transform rotate-180' : ''
              }`}
            />
          </button>
          
          {openSections.includes('regions') && (
            <div className="mt-2 space-y-1">
              <FilterOption
                id="all"
                label="All Regions"
                checked={selectedRegions.length === 0}
                onChange={() => handleRegionToggle('all')}
              />
              {regions.map((region) => (
                <FilterOption
                  key={region}
                  id={region}
                  label={region}
                  checked={selectedRegions.includes(region)}
                  onChange={() => handleRegionToggle(region)}
                />
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}