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
          className={`${theme.button.secondary} ${theme.button.base} inline-flex items-center text-sm whitespace-nowrap`}
        >
          View all
          <ArrowRight className="ml-2 h-5 w-5" />
        </Link>
      </div>
      
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {loading ? (
          // Loading skeleton
          Array.from({ length: 12 }).map((_, index) => (
            <div key={index} className="animate-pulse">
              <div className="flex items-center gap-3">
                <div className="w-3 h-3 rounded-full bg-white/10"></div>
                <div className="h-6 bg-white/10 rounded w-32"></div>
              </div>
              <div className="mt-2 ml-6 h-4 bg-white/10 rounded w-16"></div>
            </div>
          ))
        ) : (
          regionCounts.map(({ region, count }) => (
            <Link
              key={region}
              to={`/locations?region=${encodeURIComponent(region)}`}
              className="group"
            >
              <div className="flex items-center gap-3">
                <div className="w-3 h-3 rounded-full bg-white/20 group-hover:bg-white transition-colors"></div>
                <span className={`${theme.text.primary} font-medium group-hover:text-white transition-colors`}>
                  {region}
                </span>
              </div>
              <div className="mt-1 ml-6">
                <span className={`text-sm ${theme.text.secondary} group-hover:text-white/70 transition-colors`}>
                  {count} {count === 1 ? 'club' : 'clubs'}
                </span>
              </div>
            </Link>
          ))
        )}
      </div>
    </div>
  );
}