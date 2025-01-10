import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight } from 'lucide-react';
import { theme } from '../../utils/theme';
import { useRegionCounts } from '../../hooks/useRegionCounts';
import { regions } from '../../constants/regions';

interface RegionsSectionProps {
  viewAllButtonClasses: string;
}

export default function RegionsSection({ viewAllButtonClasses }: RegionsSectionProps) {
  const { regionCounts, loading, error } = useRegionCounts();

  // Create a map of all regions with count 0
  const allRegionsMap = Object.fromEntries(
    regions.map(region => [region, 0])
  );

  // Update counts from actual data if available
  if (!error && regionCounts) {
    regionCounts.forEach(({ region, count }) => {
      if (allRegionsMap.hasOwnProperty(region)) {
        allRegionsMap[region] = count;
      }
    });
  }

  // Convert back to array format
  const completeRegionCounts = Object.entries(allRegionsMap)
    .map(([region, count]) => ({ region, count }));

  return (
    <div className="max-w-7xl mx-auto px-3 sm:px-8 pb-16">
      <div className="flex items-center justify-between mb-12">
        <div>
          <span className="text-sm uppercase tracking-wider text-white/50 block mb-2">REGIONS</span>
          <h2 className={`${theme.text.heading} text-xl sm:text-3xl`}>Explore by Region</h2>
        </div>
        <Link
          to="/locations"
          className={viewAllButtonClasses}
        >
          View all
          <ArrowRight className="ml-2 h-5 w-5 transform transition-transform duration-200 group-hover:translate-x-1" />
        </Link>
      </div>
      
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
        {loading ? (
          Array.from({ length: 12 }).map((_, index) => (
            <div key={index} className="animate-pulse">
              <div className="flex items-center gap-3">
                <div className="w-3 h-3 rounded-full bg-white/10"></div>
                <div className="h-6 bg-white/10 rounded w-32"></div>
              </div>
              <div className="mt-2 ml-6 h-4 bg-white/10 rounded w-16"></div>
            </div>
          ))
        ) : error ? (
          <div className="col-span-full">
            {completeRegionCounts.map(({ region }) => (
              <Link
                key={region}
                to={`/locations?region=${encodeURIComponent(region)}`}
                className="group block mb-4"
              >
                <div className="flex items-center gap-3">
                  <div className="w-3 h-3 rounded-full bg-white/20 group-hover:bg-[#E1FF5E] transition-colors"></div>
                  <span className="text-white/90 font-medium group-hover:text-white transition-colors">
                    {region}
                  </span>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          completeRegionCounts.map(({ region, count }) => (
            <Link
              key={region}
              to={`/locations?region=${encodeURIComponent(region)}`}
              className="group"
            >
              <div className="flex items-center gap-3">
                <div className="w-3 h-3 rounded-full bg-white/20 group-hover:bg-[#E1FF5E] transition-colors"></div>
                <span className="text-white/90 font-medium group-hover:text-white transition-colors">
                  {region}
                </span>
              </div>
              <div className="mt-1 ml-6">
                <span className="text-sm text-white/70 group-hover:text-white/90 transition-colors">
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