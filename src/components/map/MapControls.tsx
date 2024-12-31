import React from 'react';
import { Search, MapPin, List } from 'lucide-react';
import { theme } from '../../utils/theme';

interface MapControlsProps {
  onSearchChange: (query: string) => void;
  onViewToggle: () => void;
  isListView: boolean;
}

export default function MapControls({ onSearchChange, onViewToggle, isListView }: MapControlsProps) {
  return (
    <div className="flex gap-4 items-center">
      <div className="flex-1 max-w-xl relative">
        <input
          type="text"
          placeholder="Search locations..."
          className={`${theme.input.base} w-full pl-10`}
          onChange={(e) => onSearchChange(e.target.value)}
        />
        <Search className="absolute left-3 top-2.5 h-5 w-5 text-white/50" />
      </div>
      
      <button
        onClick={onViewToggle}
        className={`${theme.button.secondary} p-2 rounded-lg`}
        title={isListView ? "Show map" : "Show list"}
      >
        {isListView ? <MapPin className="h-5 w-5" /> : <List className="h-5 w-5" />}
      </button>
    </div>
  );
}