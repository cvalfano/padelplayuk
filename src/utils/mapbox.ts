import { MAPBOX_STYLE } from './constants';

const mapboxToken = import.meta.env.VITE_MAPBOX_TOKEN;

export function getStaticMapUrl(lng: number, lat: number, width: number, height: number): string {
  // Custom marker with black background and white fill
  const marker = encodeURIComponent(`pin-l+ffffff(${lng},${lat})`);
  const overlay = encodeURIComponent(`pin-l-circle+000000(${lng},${lat})`);
  
  return `https://api.mapbox.com/styles/v1/mapbox/${MAPBOX_STYLE}/static/${overlay},${marker}/${lng},${lat},14/${width}x${height}@2x?access_token=${mapboxToken}`;
}