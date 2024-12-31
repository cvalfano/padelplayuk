import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import Map, { Marker, Popup, NavigationControl } from 'react-map-gl';
import MapControls from '../components/map/MapControls';
import CourtList from '../components/map/CourtList';
import MapMarker from '../components/shared/MapMarker';
import { supabase } from '../lib/supabase';
import { theme } from '../utils/theme';
import { MAPBOX_STYLE } from '../utils/constants';
import type { Database } from '../types/supabase';
import 'mapbox-gl/dist/mapbox-gl.css';

type Court = Database['public']['Tables']['courts']['Row'];

export default function MapPage() {
  const [courts, setCourts] = useState<Court[]>([]);
  const [loading, setLoading] = useState(true);
  const [isListView, setIsListView] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCourt, setSelectedCourt] = useState<Court | null>(null);
  const [viewport, setViewport] = useState({
    latitude: 54.5,
    longitude: -2,
    zoom: 5.5
  });
  const navigate = useNavigate();

  useEffect(() => {
    const fetchCourts = async () => {
      try {
        const { data, error } = await supabase
          .from('courts')
          .select('*');

        if (error) throw error;
        setCourts(data || []);
      } catch (error) {
        console.error('Error fetching courts:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchCourts();
  }, []);

  const filteredCourts = courts.filter(court => 
    court.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
    court.city.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const handleCourtSelect = useCallback((court: Court) => {
    setSelectedCourt(court);
    setViewport({
      latitude: court.lat,
      longitude: court.lng,
      zoom: 14
    });
  }, []);

  if (loading) {
    return (
      <div className="min-h-screen bg-dark flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-white" />
      </div>
    );
  }

  return (
    <div className="h-[calc(100vh-4rem)] bg-dark relative">
      {/* Search Controls */}
      <div className="absolute top-0 left-0 right-0 z-10 bg-dark/80 backdrop-blur-sm border-b border-white/10">
        <div className="max-w-7xl mx-auto px-4 py-4">
          <MapControls
            onSearchChange={setSearchQuery}
            onViewToggle={() => setIsListView(!isListView)}
            isListView={isListView}
          />
        </div>
      </div>

      <div className="h-full pt-[72px] flex">
        {/* List View */}
        {isListView && (
          <div className="w-full md:w-96 h-full border-r border-white/10 overflow-y-auto">
            <CourtList 
              courts={filteredCourts}
              onCourtSelect={handleCourtSelect}
            />
          </div>
        )}

        {/* Map View */}
        <div className="flex-1 h-full">
          <Map
            {...viewport}
            onMove={evt => setViewport(evt.viewState)}
            mapStyle={`mapbox://styles/mapbox/${MAPBOX_STYLE}`}
            mapboxAccessToken={import.meta.env.VITE_MAPBOX_TOKEN}
            style={{ width: '100%', height: '100%' }}
          >
            <NavigationControl position="top-right" />
            
            {filteredCourts.map((court) => (
              <Marker
                key={court.id}
                latitude={court.lat}
                longitude={court.lng}
                anchor="bottom"
                onClick={e => {
                  e.originalEvent.stopPropagation();
                  handleCourtSelect(court);
                }}
              >
                <MapMarker />
              </Marker>
            ))}

            {selectedCourt && (
              <Popup
                latitude={selectedCourt.lat}
                longitude={selectedCourt.lng}
                anchor="bottom"
                onClose={() => setSelectedCourt(null)}
                closeButton={false}
                className="rounded-lg overflow-hidden"
                offset={25}
              >
                <div className={`${theme.card.base} p-4 min-w-[200px]`}>
                  <h3 className={`${theme.text.heading} mb-2`}>{selectedCourt.name}</h3>
                  <p className={`${theme.text.secondary} text-sm mb-4`}>
                    {selectedCourt.city}, {selectedCourt.postcode}
                  </p>
                  <button
                    onClick={() => navigate(`/courts/${selectedCourt.id}`)}
                    className={`${theme.button.primary} ${theme.button.base} w-full text-center text-sm py-2`}
                  >
                    View Details
                  </button>
                </div>
              </Popup>
            )}
          </Map>
        </div>
      </div>
    </div>
  );
}