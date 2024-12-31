import React from 'react';
import { Share, Heart } from 'lucide-react';

interface CourtHeroProps {
  name: string;
  images: string[];
}

export default function CourtHero({ name, images }: CourtHeroProps) {
  return (
    <div className="relative">
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 h-[400px] md:h-[500px]">
        <div className="md:col-span-2 h-full">
          <img
            src={images[0]}
            alt={name}
            className="w-full h-full object-cover rounded-l-lg"
          />
        </div>
        <div className="hidden md:grid grid-rows-2 gap-4 h-full">
          <img
            src={images[1]}
            alt={`${name} view`}
            className="w-full h-full object-cover"
          />
          <img
            src={images[2]}
            alt={`${name} view`}
            className="w-full h-full object-cover"
          />
        </div>
        <div className="hidden md:grid grid-rows-2 gap-4 h-full">
          <img
            src={images[3]}
            alt={`${name} view`}
            className="w-full h-full object-cover rounded-tr-lg"
          />
          <img
            src={images[4]}
            alt={`${name} view`}
            className="w-full h-full object-cover rounded-br-lg"
          />
        </div>
      </div>
      
      <div className="absolute top-6 right-6 flex gap-2">
        <button className="bg-white rounded-full p-2 hover:bg-gray-100 transition-colors">
          <Share className="h-5 w-5" />
        </button>
        <button className="bg-white rounded-full p-2 hover:bg-gray-100 transition-colors">
          <Heart className="h-5 w-5" />
        </button>
      </div>
    </div>
  );
}