import React from 'react';
import { Calendar, Clock } from 'lucide-react';
import type { Court } from '../../types/court';
import { formatPrice } from '../../utils/formatters';

interface CourtBookingCardProps {
  pricing: Court['pricing'];
}

export default function CourtBookingCard({ pricing }: CourtBookingCardProps) {
  return (
    <div className="bg-white rounded-xl shadow-lg p-6 sticky top-24">
      <div className="mb-6">
        <h3 className="text-xl font-semibold mb-4">Book a Court</h3>
        <div className="space-y-4">
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Clock className="h-5 w-5 text-gray-500" />
              <span className="text-sm text-gray-600">Peak Hours</span>
            </div>
            <span className="font-semibold">{formatPrice(pricing.peakPrice)}/hour</span>
          </div>
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Clock className="h-5 w-5 text-gray-500" />
              <span className="text-sm text-gray-600">Off-Peak</span>
            </div>
            <span className="font-semibold">{formatPrice(pricing.offPeakPrice)}/hour</span>
          </div>
        </div>
      </div>
      
      <div className="space-y-4">
        <button className="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition-colors">
          Check Availability
        </button>
        <button className="w-full border border-blue-600 text-blue-600 py-3 rounded-lg hover:bg-blue-50 transition-colors">
          Contact Club
        </button>
      </div>
      
      <p className="mt-4 text-sm text-gray-500 text-center">
        Free cancellation up to 24 hours before your booking
      </p>
    </div>
  );
}