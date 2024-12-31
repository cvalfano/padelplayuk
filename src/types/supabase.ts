export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

interface Amenity {
  id: string;
  name: string;
  icon: string;
  description?: string;
}

export interface Database {
  public: {
    Tables: {
      courts: {
        Row: {
          id: string
          name: string
          description: string | null
          image: string | null
          images: string[] | null
          address: string
          city: string
          postcode: string
          lat: number
          lng: number
          phone: string
          email: string
          website: string | null
          hours: string
          peak_price: number
          off_peak_price: number
          created_at: string
          updated_at: string
          amenities: Amenity[] | null
          rules: string[] | null
        }
        Insert: {
          id?: string
          name: string
          description?: string | null
          image?: string | null
          images?: string[] | null
          address: string
          city: string
          postcode: string
          lat: number
          lng: number
          phone: string
          email: string
          website?: string | null
          hours: string
          peak_price: number
          off_peak_price: number
          created_at?: string
          updated_at?: string
          amenities?: Amenity[] | null
          rules?: string[] | null
        }
        Update: {
          id?: string
          name?: string
          description?: string | null
          image?: string | null
          images?: string[] | null
          address?: string
          city?: string
          postcode?: string
          lat?: number
          lng?: number
          phone?: string
          email?: string
          website?: string | null
          hours?: string
          peak_price?: number
          off_peak_price?: number
          created_at?: string
          updated_at?: string
          amenities?: Amenity[] | null
          rules?: string[] | null
        }
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
  }
}