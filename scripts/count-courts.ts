import { readFileSync, readdirSync } from 'fs';
import { join } from 'path';

const migrationsDir = join(process.cwd(), 'supabase/migrations');
let totalInserts = 0;

const files = readdirSync(migrationsDir)
  .filter(file => file.endsWith('.sql'));

for (const file of files) {
  const content = readFileSync(join(migrationsDir, file), 'utf-8');
  const insertMatches = content.match(/INSERT INTO courts/g);
  if (insertMatches) {
    totalInserts += insertMatches.length;
  }
}

console.log(`Total courts in migrations: ${totalInserts}`);