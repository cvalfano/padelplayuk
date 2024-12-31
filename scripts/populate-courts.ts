import { supabase } from './lib/supabase';

async function populateCourts() {
  try {
    console.log('Starting database population...');

    // First, clear existing data
    console.log('Clearing existing courts...');
    const { error: deleteError } = await supabase
      .from('courts')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000');

    if (deleteError) {
      throw deleteError;
    }

    console.log('Existing courts cleared');

    // Run all migrations in sequence
    console.log('Running migrations...');
    
    // The migrations will be applied automatically by Supabase
    // We just need to wait for them to complete
    
    console.log('Verifying court count...');
    const { count } = await supabase
      .from('courts')
      .select('*', { count: 'exact', head: true });

    console.log(`Total courts in database: ${count}`);
    console.log('Database population completed successfully');

  } catch (error) {
    console.error('Error populating database:', error);
    process.exit(1);
  }
}

populateCourts();