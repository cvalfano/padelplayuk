import React from 'react';
import { useParams, Navigate } from 'react-router-dom';
import { useCourtData } from '../hooks/useCourtData';
import CourtHeader from '../components/court/CourtHeader';
import CourtInfo from '../components/court/CourtInfo';
import CourtAmenities from '../components/court/CourtAmenities';
import CourtMap from '../components/court/CourtMap';
import CourtRules from '../components/court/CourtRules';
import CourtLocationDetails from '../components/court/CourtLocationDetails';
import { theme } from '../utils/theme';

export default function CourtDetails() {
  const { id } = useParams<{ id: string }>();
  const { court, loading, error } = useCourtData(id || '');

  // Early return if no ID
  if (!id) {
    return <Navigate to="/locations" replace />;
  }

  // Loading state
  if (loading) {
    return (
      <div className="min-h-screen bg-dark flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white" />
      </div>
    );
  }

  // Error or no court found
  if (error || !court) {
    return (
      <div className="min-h-screen bg-dark flex items-center justify-center">
        <div className="text-center">
          <h2 className={`text-2xl ${theme.text.heading} mb-2`}>
            {error || 'Court not found'}
          </h2>
          <p className={theme.text.secondary}>
            The court you're looking for might have been moved or deleted.
          </p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-dark">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <CourtHeader name={court.name} />
        
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2">
            <CourtInfo court={court} />
            <CourtAmenities amenities={court.amenities || []} />
            <CourtRules rules={court.rules || []} />
          </div>
          
          <div className="lg:col-span-1">
            <div className="sticky top-24 space-y-6">
              <div className="h-[300px]">
                <CourtMap 
                  location={court}
                  className="h-full w-full rounded-lg overflow-hidden"
                />
              </div>
              <CourtLocationDetails location={court} />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}