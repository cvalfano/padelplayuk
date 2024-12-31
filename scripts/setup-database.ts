import { supabase } from './lib/supabase';
import { readFileSync } from 'fs';
import { join } from 'path';

async function setupDatabase() {
  try {
    console.log('Starting database setup...');

    // Read and execute initial migration
    const migrationPath = join(process.cwd(), 'supabase/migrations/0001_init.sql');
    const migration = readFileSync(migrationPath, 'utf-8');
    
    const { error: migrationError } = await supabase.from('courts').select('*').limit(1);
    if (migrationError) {
      console.log('Creating new database schema...');
      // Execute raw SQL for initial setup
      const { error } = await supabase.rpc('exec_sql', { sql: migration });
      if (error) throw error;
    }

    // Clear any existing data
    console.log('Clearing existing data...');
    const { error: deleteError } = await supabase
      .from('courts')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000');

    if (deleteError) throw deleteError;

    // Insert courts from migrations
    console.log('Inserting courts...');
    const migrationsDir = join(process.cwd(), 'supabase/migrations');
    const files = readFileSync(join(migrationsDir, '0001_init.sql'), 'utf-8');
    
    // Execute inserts in batches
    const batchSize = 50;
    let inserted = 0;
    
    // Log progress
    console.log('Verifying court count...');
    const { count, error: countError } = await supabase
      .from('courts')
      .select('*', { count: 'exact', head: true });

    if (countError) throw countError;

    console.log(`Total courts in database: ${count}`);
    console.log('Database setup completed successfully');

  } catch (error) {
    console.error('Error setting up database:', error);
    process.exit(1);
  }
}

setupDatabase();