import React from 'react';
import { MapPin, Phone, Clock } from 'lucide-react';
import { Link } from 'react-router-dom';
import { formatPhoneNumber } from '../utils/formatters';

interface CourtCardProps {
  id: string;
  name: string;
  image: string;
  location: string;
  phone: string;
  hours: string;
}

export default function CourtCard({ id, name, image, location, phone, hours }: CourtCardProps) {
  return (
    <Link 
      to={`/courts/${id}`}
      className="block bg-white rounded-lg shadow-md overflow-hidden transition-transform hover:scale-105"
    >
      <div className="relative h-48">
        <img
          src={image}
          alt={name}
          className="w-full h-full object-cover"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent" />
      </div>
      
      <div className="p-4">
        <h3 className="text-xl font-semibold text-gray-900 mb-2">{name}</h3>
        <div className="space-y-2">
          <div className="flex items-center text-gray-600">
            <MapPin className="h-4 w-4 mr-2 flex-shrink-0" />
            <span className="line-clamp-1">{location}</span>
          </div>
          <div className="flex items-center text-gray-600">
            <Phone className="h-4 w-4 mr-2 flex-shrink-0" />
            <span>{formatPhoneNumber(phone)}</span>
          </div>
          <div className="flex items-center text-gray-600">
            <Clock className="h-4 w-4 mr-2 flex-shrink-0" />
            <span className="line-clamp-1">{hours}</span>
          </div>
        </div>
        <div className="mt-4 w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 transition-colors text-center">
          View Details
        </div>
      </div>
    </Link>
  );
}