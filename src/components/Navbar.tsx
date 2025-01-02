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
        <div className="flex justify-between items-center h-20">
          {/* Logo */}
          <div className="flex items-center gap-8">
            <Link to="/" className="flex items-center">
              <img 
                src="https://github.com/cvalfano/padelplayuk/blob/main/images/logo-horizontal.png?raw=true" 
                alt="Padel Play UK"
                className="h-12 w-auto"
              />
            </Link>

            {/* Desktop Navigation */}
            <div className="hidden md:flex items-center space-x-6">
              {navigation.map((item) => {
                const isActive = location.pathname === item.href;
                return (
                  <Link
                    key={item.name}
                    to={item.href}
                    className={`
                      relative px-2 py-2 text-base font-medium
                      transition-colors duration-200 ease-in-out
                      ${isActive ? 'text-white' : 'text-white/70 hover:text-white'}
                    `}
                  >
                    {item.name}
                    <span className={`
                      absolute bottom-0 left-0 w-full h-0.5 bg-[#E1FF5E]
                      transform transition-transform duration-200 ease-in-out
                      ${isActive ? 'scale-x-100' : 'scale-x-0'}
                    `} />
                  </Link>
                );
              })}
            </div>
          </div>

          {/* Mobile Navigation */}
          <div className="absolute left-1/2 -translate-x-1/2 h-20 flex items-center md:hidden">
            <div className="flex items-center space-x-3">
              {navigation.map((item) => {
                const isActive = location.pathname === item.href;
                return (
                  <Link
                    key={item.name}
                    to={item.href}
                    className={`
                      relative px-2 py-2 text-sm font-medium
                      transition-colors duration-200 ease-in-out
                      ${isActive ? 'text-white' : 'text-white/70 hover:text-white'}
                    `}
                  >
                    {item.name}
                    <span className={`
                      absolute bottom-0 left-0 w-full h-0.5 bg-[#E1FF5E]
                      transform transition-transform duration-200 ease-in-out
                      ${isActive ? 'scale-x-100' : 'scale-x-0'}
                    `} />
                  </Link>
                );
              })}
            </div>
          </div>

          {/* Menu Button */}
          <button
            onClick={() => setIsMenuOpen(!isMenuOpen)}
            className="p-2 text-white/70 hover:text-white transition-colors duration-200"
            aria-label="Toggle menu"
          >
            <MenuIcon isOpen={isMenuOpen} />
          </button>
        </div>
      </div>

      <SideMenu isOpen={isMenuOpen} onClose={() => setIsMenuOpen(false)} />
    </nav>
  );
}