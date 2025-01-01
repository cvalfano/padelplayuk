import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';

interface RegionCount {
  region: string;
  count: number;
}

export function useRegionCounts() {
  const [regionCounts, setRegionCounts] = useState<RegionCount[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchRegionCounts = async () => {
      try {
        const { data, error } = await supabase
          .from('courts')
          .select('region');

        if (error) throw error;

        // Count courts by region
        const counts: Record<string, number> = {};
        data?.forEach(court => {
          if (court.region) {
            counts[court.region] = (counts[court.region] || 0) + 1;
          }
        });

        // Convert to array and sort by count
        const sortedCounts = Object.entries(counts)
          .map(([region, count]) => ({ region, count }))
          .sort((a, b) => b.count - a.count);

        setRegionCounts(sortedCounts);
      } catch (error) {
        console.error('Error fetching region counts:', error);
        setRegionCounts([]);
      } finally {
        setLoading(false);
      }
    };

    fetchRegionCounts();
  }, []);

  return { regionCounts, loading };
}