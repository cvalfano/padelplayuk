export function parseAddress(address: string): [string, string, string] {
  const parts = address.split(',').map(part => part.trim());
  const postcode = parts.pop() || '';
  const city = parts.pop() || '';
  const street = parts.join(', ');
  return [street, city, postcode];
}

export function generateEmail(name: string): string {
  return `info@${name.toLowerCase().replace(/[^a-z0-9]/g, '')}.com`;
}

export function delay(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}