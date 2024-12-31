import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import type { Database } from '../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface UseCourtOptions {
  page: number;
  pageSize: number;
  searchQuery?: string;
  regions?: string[];
  filters?: string[];
}

export function useCourts({ page, pageSize, searchQuery, regions, filters }: UseCourtOptions) {
  const [courts, setCourts] = useState<Court[]>([]);
  const [totalCourts, setTotalCourts] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCourts = async () => {
      try {
        setLoading(true);
        
        let query = supabase
          .from('courts')
          .select('*', { count: 'exact' });

        // Apply search filter
        if (searchQuery) {
          query = query.or(`name.ilike.%${searchQuery}%,city.ilike.%${searchQuery}%`);
        }

        // Apply region filters
        if (regions && regions.length > 0) {
          query = query.in('region', regions);
        }

        // Apply pagination
        const start = (page - 1) * pageSize;
        query = query
          .order('name')
          .range(start, start + pageSize - 1);

        const { data, error: supabaseError, count } = await query;

        if (supabaseError) throw supabaseError;

        setCourts(data || []);
        if (count !== null) setTotalCourts(count);
        
      } catch (err) {
        console.error('Error fetching courts:', err);
        setError('Failed to load courts');
      } finally {
        setLoading(false);
      }
    };

    fetchCourts();
  }, [page, pageSize, searchQuery, regions?.join(','), filters?.join(',')]);

  return { courts, totalCourts, loading, error };
}