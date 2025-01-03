import { useState, useEffect } from 'react';
import { supabase, checkSupabaseConnection } from '../lib/supabase';

interface RegionCount {
  region: string;
  count: number;
}

export function useRegionCounts() {
  const [regionCounts, setRegionCounts] = useState<RegionCount[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let isMounted = true;

    const fetchRegionCounts = async () => {
      try {
        setLoading(true);
        setError(null);

        // Check connection first
        const isConnected = await checkSupabaseConnection();
        if (!isConnected) {
          throw new Error('Unable to connect to database. Please try again later.');
        }

        const { data, error: supabaseError } = await supabase
          .from('courts')
          .select('region');

        if (supabaseError) throw supabaseError;

        if (isMounted && data) {
          // Count courts by region
          const counts: Record<string, number> = {};
          data.forEach(court => {
            if (court.region) {
              counts[court.region] = (counts[court.region] || 0) + 1;
            }
          });

          // Convert to array and sort by count
          const sortedCounts = Object.entries(counts)
            .map(([region, count]) => ({ region, count }))
            .sort((a, b) => b.count - a.count);

          setRegionCounts(sortedCounts);
        }
      } catch (err) {
        console.error('Error fetching region counts:', err);
        if (isMounted) {
          setError('Failed to load region data');
          setRegionCounts([]);
        }
      } finally {
        if (isMounted) {
          setLoading(false);
        }
      }
    };

    fetchRegionCounts();

    return () => {
      isMounted = false;
    };
  }, []);

  return { regionCounts, loading, error };
}