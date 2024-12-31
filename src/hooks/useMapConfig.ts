import { useState, useEffect } from 'react';
import { DEFAULT_MAP_CENTER, DEFAULT_MAP_ZOOM } from '../utils/constants';

interface MapConfig {
  center: { lat: number; lng: number };
  zoom: number;
}

export function useMapConfig(coordinates?: { lat: number; lng: number }) {
  const [config, setConfig] = useState<MapConfig>({
    center: DEFAULT_MAP_CENTER,
    zoom: DEFAULT_MAP_ZOOM,
  });

  useEffect(() => {
    if (coordinates) {
      setConfig({
        center: coordinates,
        zoom: DEFAULT_MAP_ZOOM,
      });
    }
  }, [coordinates]);

  return config;
}