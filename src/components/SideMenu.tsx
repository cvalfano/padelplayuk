import React from 'react';
import { X } from 'lucide-react';
import { Link } from 'react-router-dom';
import { theme } from '../utils/theme';

interface SideMenuProps {
  isOpen: boolean;
  onClose: () => void;
}

const menuItems = [
  { name: 'About', href: '/about' },
  { name: 'How It Works', href: '/how-it-works' },
  { name: 'List Your Court', href: '/list-court' }
];

export default function SideMenu({ isOpen, onClose }: SideMenuProps) {
  return (
    <>
      <div 
        className={`
          fixed inset-0 bg-black/30 backdrop-blur-sm transition-opacity z-40
          ${isOpen ? 'opacity-100' : 'opacity-0 pointer-events-none'}
        `} 
        onClick={onClose}
      />
      
      <div className={`
        fixed inset-y-0 right-0 w-full sm:w-96 bg-dark/60 transform transition-transform z-50
        border-l border-white/10 backdrop-blur-xl
        ${isOpen ? 'translate-x-0' : 'translate-x-full'}
      `}>
        <div className="flex-1 p-6">
          <div className="flex justify-end mb-8">
            <button
              onClick={onClose}
              className="text-white/70 hover:text-white p-2 transition-colors"
            >
              <X className="h-6 w-6" />
            </button>
          </div>
          
          <div className="space-y-4">
            {menuItems.map((item) => (
              <Link
                key={item.name}
                to={item.href}
                className={`
                  block px-4 py-3 text-lg font-medium rounded-lg
                  text-white/70 hover:bg-white/10 hover:text-white
                  transition-all duration-200
                `}
                onClick={onClose}
              >
                {item.name}
              </Link>
            ))}
          </div>
        </div>

        <div className="p-6 border-t border-white/10">
          <p className="text-white/50 text-sm text-center">
            © 2024 Padel Play UK
          </p>
        </div>
      </div>
    </>
  );
}