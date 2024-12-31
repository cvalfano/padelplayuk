// Format phone numbers consistently
export function formatPhoneNumber(phone: string): string {
  return phone.replace(/(\d{3})(\d{4})(\d{4})/, '$1 $2 $3');
}

// Format currency with proper symbol and decimals
export function formatPrice(price: number, currency: string = '£'): string {
  return `${currency}${price.toFixed(2)}`;
}

// Format address components into a single string
export function formatAddress(address: string, city: string, postcode: string): string {
  return `${address}, ${city}, ${postcode}`;
}