import React from 'react';
import { X } from 'lucide-react';

interface MenuIconProps {
  isOpen: boolean;
}

export default function MenuIcon({ isOpen }: MenuIconProps) {
  return (
    <div className="relative w-6 h-6">
      {/* Dots Grid */}
      <div className={`
        absolute inset-0 grid grid-cols-2 gap-1.5
        transition-all duration-300 ease-in-out
        ${isOpen ? 'opacity-0 rotate-90 scale-0' : 'opacity-100 rotate-0 scale-100'}
      `}>
        <div className="w-1.5 h-1.5 rounded-full bg-current" />
        <div className="w-1.5 h-1.5 rounded-full bg-current" />
        <div className="w-1.5 h-1.5 rounded-full bg-current" />
        <div className="w-1.5 h-1.5 rounded-full bg-current" />
      </div>

      {/* Close Icon */}
      <div className={`
        absolute inset-0 flex items-center justify-center
        transition-all duration-300 ease-in-out
        ${isOpen ? 'opacity-100 rotate-0 scale-100' : 'opacity-0 -rotate-90 scale-0'}
      `}>
        <X className="w-6 h-6" />
      </div>
    </div>
  );
}