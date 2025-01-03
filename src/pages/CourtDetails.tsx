import React from 'react';
import { useParams, Navigate } from 'react-router-dom';
import { useCourtData } from '../hooks/useCourtData';
import CourtHeader from '../components/court/CourtHeader';
import CourtInfo from '../components/court/CourtInfo';
import CourtAmenities from '../components/court/CourtAmenities';
import CourtRules from '../components/court/CourtRules';
import CourtLocationDetails from '../components/court/CourtLocationDetails';
import DisclaimerMessage from '../components/shared/DisclaimerMessage';
import MobileContactBar from '../components/court/MobileContactBar';
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
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pb-20 lg:pb-0">
        <CourtHeader name={court.name} />
        
        <div className="lg:grid lg:grid-cols-3 lg:gap-5">
          <div className="lg:col-span-2">
            <div className="space-y-5">
              <CourtInfo court={court} />
              <div className="hidden lg:block">
                <div className="space-y-0">
                  <CourtAmenities amenities={court.amenities || []} />
                  <CourtRules rules={court.rules || []} />
                  <DisclaimerMessage />
                </div>
              </div>
              <div className="lg:hidden">
                <CourtAmenities amenities={court.amenities || []} />
              </div>
            </div>
          </div>
          
          <div className="hidden lg:block lg:col-span-1">
            <div className="sticky top-24">
              <CourtLocationDetails location={court} />
            </div>
          </div>
        </div>

        <div id="contact-section" className="lg:hidden mt-5 space-y-5">
          <CourtLocationDetails location={court} />
          <CourtRules rules={court.rules || []} />
          <DisclaimerMessage />
        </div>

        <MobileContactBar website={court.website} />
      </div>
    </div>
  );
}