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
      <input
        type="checkbox"
        checked={checked}
        onChange={() => onChange(id)}
        className="h-4 w-4 bg-white/10 border-white/20 rounded text-white focus:ring-white/40"
      />
      <span className={theme.text.secondary}>{label}</span>
    </label>
  );
}