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

  if (!id) {
    return <Navigate to="/locations" replace />;
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-dark flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white" />
      </div>
    );
  }

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
        
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-5">
          <div className="lg:col-span-2">
            <div className="space-y-5">
              <CourtInfo court={court} />
              
              <div className="lg:hidden">
                <div className="h-[300px] mb-5">
                  <CourtMap 
                    location={court}
                    className="h-full w-full rounded-lg overflow-hidden"
                  />
                </div>
                <CourtLocationDetails location={court} />
              </div>

              <CourtAmenities amenities={court.amenities || []} />
              <CourtRules rules={court.rules || []} />
            </div>
          </div>
          
          <div className="hidden lg:block lg:col-span-1">
            <div className="sticky top-24 space-y-5">
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