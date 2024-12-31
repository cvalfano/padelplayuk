// Validate email format
export function isValidEmail(email: string): boolean {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

// Validate UK phone number format
export function isValidUKPhone(phone: string): boolean {
  const phoneRegex = /^(\+44|0)\d{10}$/;
  return phoneRegex.test(phone);
}

// Validate UK postcode format
export function isValidUKPostcode(postcode: string): boolean {
  const postcodeRegex = /^[A-Z]{1,2}\d[A-Z\d]? ?\d[A-Z]{2}$/i;
  return postcodeRegex.test(postcode);
}