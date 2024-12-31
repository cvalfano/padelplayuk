import { londonCourts } from './regions/london';
import { northCourts } from './regions/north';
import { southCourts } from './regions/south';
import type { Database } from '../../types/supabase';

type CourtInsert = Database['public']['Tables']['courts']['Insert'];

export const initialCourts: Omit<CourtInsert, 'id'>[] = [
  ...londonCourts,
  ...northCourts,
  ...southCourts
];