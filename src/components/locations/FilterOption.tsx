import React from 'react';
import { theme } from '../../utils/theme';

interface FilterOptionProps {
  id: string;
  label: string;
  checked: boolean;
  onChange: (id: string) => void;
}

export default function FilterOption({ id, label, checked, onChange }: FilterOptionProps) {
  return (
    <label className="flex items-center space-x-3 py-1 px-2 rounded-lg hover:bg-white/5">
      <div className="relative flex items-center">
        <input
          type="checkbox"
          checked={checked}
          onChange={() => onChange(id)}
          className="
            appearance-none w-4 h-4 border-2 border-[#E1FF5E] rounded
            checked:border-[#E1FF5E] checked:bg-transparent
            focus:outline-none focus:ring-2 focus:ring-[#E1FF5E]/20
            transition-colors duration-200
          "
        />
        {checked && (
          <svg
            className="absolute w-4 h-4 pointer-events-none"
            viewBox="0 0 16 16"
            fill="none"
            stroke="#E1FF5E"
            strokeWidth="2"
          >
            <polyline points="4 8 7 11 12 5" />
          </svg>
        )}
      </div>
      <span className="text-white/70">{label}</span>
    </label>
  );
}