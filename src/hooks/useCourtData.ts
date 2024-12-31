import { useState, useEffect } from 'react';
import type { Database } from '../types/supabase';
import { supabase } from '../lib/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface UseCourtDataReturn {
  court: Court | null;
  loading: boolean;
  error: string | null;
}

export function useCourtData(courtId: string): UseCourtDataReturn {
  const [court, setCourt] = useState<Court | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCourt = async () => {
      try {
        setLoading(true);
        
        const { data, error: supabaseError } = await supabase
          .from('courts')
          .select('*')
          .eq('id', courtId)
          .single();

        if (supabaseError) {
          throw supabaseError;
        }

        if (data) {
          setCourt(data);
        } else {
          setError('Court not found');
        }
      } catch (err) {
        setError('Failed to fetch court data');
        console.error('Error fetching court:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchCourt();
  }, [courtId]);

  return { court, loading, error };
}