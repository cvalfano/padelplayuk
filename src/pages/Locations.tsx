import React, { useState, useEffect } from 'react';
import { useSearchParams } from 'react-router-dom';
import LocationsFilters from '../components/locations/LocationsFilters';
import MobileFilters from '../components/locations/MobileFilters';
import LocationsList from '../components/locations/LocationsList';
import Pagination from '../components/locations/Pagination';
import { useCourts } from '../hooks/useCourts';
import { theme } from '../utils/theme';

const COURTS_PER_PAGE = 12;

export default function Locations() {
  const [searchParams] = useSearchParams();
  const regionParam = searchParams.get('region');
  
  const [searchQuery, setSearchQuery] = useState('');
  const [activeFilters, setActiveFilters] = useState<string[]>([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [selectedRegions, setSelectedRegions] = useState<string[]>(
    regionParam ? [regionParam] : []
  );

  // Reset page when filters change
  useEffect(() => {
    setCurrentPage(1);
  }, [searchQuery, selectedRegions.join(','), activeFilters.join(',')]);

  const { courts, totalCourts, loading, error } = useCourts({
    page: currentPage,
    pageSize: COURTS_PER_PAGE,
    searchQuery,
    regions: selectedRegions,
    filters: activeFilters
  });

  const totalPages = Math.ceil(totalCourts / COURTS_PER_PAGE);

  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  if (error) {
    return (
      <div className="min-h-screen bg-dark flex items-center justify-center">
        <div className="text-center">
          <h2 className={`text-2xl ${theme.text.heading} mb-2`}>
            Oops! Something went wrong
          </h2>
          <p className={theme.text.secondary}>{error}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-dark py-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-8">
          <h1 className={theme.text.heading}>Find Padel Courts</h1>
          <p className={`mt-4 text-lg ${theme.text.secondary}`}>
            {selectedRegions.length === 1
              ? `Discover ${totalCourts} padel courts in ${selectedRegions[0]}`
              : `Discover ${totalCourts} padel courts across the UK`}
          </p>
        </div>

        <div className="flex flex-col lg:flex-row gap-8">
          <div className="hidden lg:block">
            <LocationsFilters
              onSearch={setSearchQuery}
              onFilterChange={setActiveFilters}
              onRegionChange={setSelectedRegions}
              activeFilters={activeFilters}
              selectedRegions={selectedRegions}
              initialRegion={regionParam}
            />
          </div>

          <div className="flex-1">
            <LocationsList courts={courts} loading={loading} />
            
            <Pagination
              currentPage={currentPage}
              totalPages={totalPages}
              onPageChange={handlePageChange}
            />
          </div>
        </div>
      </div>

      <MobileFilters
        onSearch={setSearchQuery}
        onFilterChange={setActiveFilters}
        onRegionChange={setSelectedRegions}
        activeFilters={activeFilters}
        selectedRegions={selectedRegions}
        initialRegion={regionParam}
      />
    </div>
  );
}