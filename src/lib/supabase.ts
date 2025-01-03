import { createClient } from '@supabase/supabase-js';
import type { Database } from '../types/supabase';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error('Missing Supabase environment variables. Please connect to Supabase first.');
}

export const supabase = createClient<Database>(supabaseUrl, supabaseAnonKey);

// Helper to check connection status
export async function checkSupabaseConnection() {
  try {
    const { error } = await supabase.from('courts').select('id').limit(1);
    return !error;
  } catch {
    return false;
  }
}