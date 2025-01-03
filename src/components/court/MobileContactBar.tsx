import React from 'react';
import { theme } from '../../utils/theme';
import { useScrollVisibility } from '../../hooks/useScrollVisibility';

interface MobileContactBarProps {
  website?: string | null;
}

export default function MobileContactBar({ website }: MobileContactBarProps) {
  const isVisible = useScrollVisibility('contact-section');
  
  if (!website) return null;

  return (
    <div 
      className={`
        fixed bottom-0 left-0 right-0 lg:hidden z-50
        transition-transform duration-300
        ${isVisible ? 'translate-y-0' : 'translate-y-full'}
      `}
    >
      <div className="bg-dark/80 backdrop-blur-sm border-t border-white/10 px-4 py-3">
        <div className="flex items-center justify-between">
          <div className="text-white font-medium">
            Book your court today
          </div>
          <a
            href={website}
            target="_blank"
            rel="noopener noreferrer"
            className={`${theme.button.primary} ${theme.button.base}`}
          >
            Contact Host
          </a>
        </div>
      </div>
    </div>
  );
}