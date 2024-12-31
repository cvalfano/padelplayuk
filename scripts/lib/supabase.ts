import { createClient } from '@supabase/supabase-js';
import type { Database } from '../../types/supabase';

// Direct values for Node.js scripts
const supabaseUrl = 'https://oidgqnrplqwfsjhsdwdi.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9pZGdxbnJwbHF3ZnNqaHNkd2RpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQ4ODI0NzgsImV4cCI6MjA1MDQ1ODQ3OH0.cPZWeJUfFgmAqll8aWNEZuQkU2I4PK5E3GOXjxesbvw';

export const supabase = createClient<Database>(supabaseUrl, supabaseAnonKey);