import React from 'react';

export default function Footer() {
  return (
    <footer className="bg-dark border-t border-white/10">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
        <div className="flex flex-col sm:flex-row justify-between items-center gap-4">
          <div className="text-white/70">
            © 2024 Padel Play UK
          </div>
          
          <div>
            <img 
              src="https://github.com/cvalfano/padelplayuk/blob/main/images/logo.png?raw=true" 
              alt="Padel Play UK"
              className="h-8 w-auto"
            />
          </div>
          
          <div>
            <span className="text-white/70">hello@padelplay.uk</span>
          </div>
        </div>
      </div>
    </footer>
  );
}