import { supabase } from './lib/supabase';

async function verifyCourts() {
  try {
    console.log('Verifying court data...');
    
    // Get total count
    const { count, error: countError } = await supabase
      .from('courts')
      .select('*', { count: 'exact', head: true });
      
    if (countError) throw countError;
    
    console.log(`Total courts in database: ${count}`);
    
    // Get count by region
    const { data: regionCounts, error: regionError } = await supabase
      .from('courts')
      .select('region')
      .then(res => {
        const counts: Record<string, number> = {};
        res.data?.forEach(court => {
          counts[court.region] = (counts[court.region] || 0) + 1;
        });
        return { data: counts };
      });
      
    if (regionError) throw regionError;
    
    console.log('\nCourts by region:');
    Object.entries(regionCounts)
      .sort(([,a], [,b]) => b - a)
      .forEach(([region, count]) => {
        console.log(`${region}: ${count} courts`);
      });

    // Verify data integrity
    const { data: courts, error: courtsError } = await supabase
      .from('courts')
      .select('*');

    if (courtsError) throw courtsError;

    // Check for required fields
    const missingFields = courts?.filter(court => {
      return !court.name || !court.address || !court.city || 
             !court.postcode || !court.lat || !court.lng;
    });

    if (missingFields?.length) {
      console.error('\nFound courts with missing required fields:', missingFields);
      process.exit(1);
    }

    console.log('\nAll courts have required fields ✓');
    
  } catch (error) {
    console.error('Error verifying courts:', error);
    process.exit(1);
  }
}

verifyCourts();