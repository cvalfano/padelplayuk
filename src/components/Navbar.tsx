import React, { useState } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { theme } from '../utils/theme';
import SideMenu from './SideMenu';
import MenuIcon from './shared/MenuIcon';

export default function Navbar() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const location = useLocation();

  const navigation = [
    { name: 'Locations', href: '/locations' },
    { name: 'Map', href: '/map' },
    { name: 'Blog', href: '/blog' },
  ];

  return (
    <nav className="bg-dark border-b border-white/10">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between h-16">
          <div className="flex items-center gap-8">
            <Link to="/" className="flex items-center">
              <img 
                src="https://github.com/cvalfano/padelplayuk/blob/main/images/logo.png?raw=true" 
                alt="Padel Play UK"
                className="h-8 w-auto"
              />
            </Link>

            <div className="flex items-center space-x-4">
              {navigation.map((item) => {
                const isActive = location.pathname === item.href;
                return (
                  <Link
                    key={item.name}
                    to={item.href}
                    className={`${
                      isActive
                        ? 'text-white border-b-2 border-white'
                        : 'text-white/70 hover:text-white'
                    } px-3 py-2 text-base font-medium`}
                  >
                    {item.name}
                  </Link>
                );
              })}
            </div>
          </div>

          <button
            onClick={() => setIsMenuOpen(true)}
            className="p-2 text-white/70 hover:text-white"
            aria-label="Open menu"
          >
            <MenuIcon />
          </button>
        </div>
      </div>

      <SideMenu isOpen={isMenuOpen} onClose={() => setIsMenuOpen(false)} />
    </nav>
  );
}