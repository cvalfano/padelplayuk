import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight } from 'lucide-react';
import { theme } from '../../utils/theme';
import { useRegionCounts } from '../../hooks/useRegionCounts';

export default function RegionsSection() {
  const { regionCounts, loading } = useRegionCounts();

  return (
    <div className="max-w-7xl mx-auto px-3 sm:px-8 pb-16">
      <div className="flex items-center justify-between mb-12">
        <div>
          <span className="text-sm uppercase tracking-wider text-white/50 block mb-2">REGIONS</span>
          <h2 className={`${theme.text.heading} text-xl sm:text-3xl`}>Explore by Region</h2>
        </div>
        <Link
          to="/locations"
          className="group inline-flex items-center text-sm border-2 border-white text-white hover:bg-white hover:text-dark rounded-full px-4 py-2 transition-all duration-200"
        >
          View all
          <ArrowRight className="ml-2 h-5 w-5 transform transition-transform duration-200 group-hover:translate-x-1" />
        </Link>
      </div>
      
      {/* Rest of the component remains the same */}
    </div>
  );
}