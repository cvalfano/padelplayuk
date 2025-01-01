import React, { useEffect, useState } from 'react';
import { ArrowRight } from 'lucide-react';
import { Link } from 'react-router-dom';
import HomeCourtCard from '../components/home/HomeCourtCard';
import RegionsSection from '../components/home/RegionsSection';
import { supabase } from '../lib/supabase';
import { theme } from '../utils/theme';
import type { Database } from '../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

export default function Home() {
  const [recentCourts, setRecentCourts] = useState<Court[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchRecentCourts = async () => {
      try {
        const { data } = await supabase
          .from('courts')
          .select('*')
          .order('created_at', { ascending: false })
          .limit(3);

        if (data) {
          setRecentCourts(data);
        }
      } catch (error) {
        console.error('Error fetching recent courts:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchRecentCourts();
  }, []);

  return (
    <div className="min-h-screen bg-dark">
      {/* Hero Section */}
      <div className="max-w-7xl mx-auto px-3 sm:px-8 py-8">
        <div className="bg-[#080B3C] rounded-lg overflow-hidden">
          <div className="relative h-[400px] bg-cover bg-center"
            style={{
              backgroundImage: `linear-gradient(rgba(3, 0, 21, 0.7), rgba(3, 0, 21, 0.7)), url('https://plus.unsplash.com/premium_photo-1708692919464-b5608dd10542?q=80&w=2070&auto=format&fit=crop')`
            }}
          >
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="text-center px-4">
                <h1 className="text-4xl md:text-6xl lg:text-7xl font-black tracking-tight mb-8">
                  Discover Padel Courts<br />Across the UK
                </h1>
                <Link
                  to="/locations"
                  className="group inline-flex items-center text-lg bg-white text-dark hover:bg-white/90 font-bold rounded-full py-2 px-6 transition-all duration-200"
                >
                  Explore locations
                  <ArrowRight className="ml-2 h-5 w-5 transform transition-transform duration-200 group-hover:translate-x-1" />
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Recently Added Section */}
      <div className="max-w-7xl mx-auto px-3 sm:px-8 pb-16">
        <div className="flex items-center justify-between mb-12">
          <div>
            <span className="text-sm uppercase tracking-wider text-white/50 block mb-2">LOCATIONS</span>
            <h2 className={`${theme.text.heading} text-xl sm:text-3xl`}>Recently Added</h2>
          </div>
          <Link
            to="/locations"
            className="group inline-flex items-center text-sm border-2 border-white text-white hover:bg-white hover:text-dark rounded-full px-4 py-2 transition-all duration-200"
          >
            View all
            <ArrowRight className="ml-2 h-5 w-5 transform transition-transform duration-200 group-hover:translate-x-1" />
          </Link>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {loading ? (
            <div className="col-span-3 flex justify-center py-12">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white" />
            </div>
          ) : (
            recentCourts.map((court) => (
              <HomeCourtCard
                key={court.id}
                id={court.id}
                name={court.name}
                location={`${court.city}, ${court.postcode}`}
                coordinates={{
                  lat: court.lat,
                  lng: court.lng
                }}
              />
            ))
          )}
        </div>
      </div>

      {/* Regions Section */}
      <RegionsSection />
    </div>
  );
}