import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, Search, MapPin, Mail, ArrowRight } from 'lucide-react';
import { theme } from '../utils/theme';

export default function HowItWorks() {
  return (
    <div className="min-h-screen bg-dark py-8">
      <div className="max-w-3xl mx-auto px-4 sm:px-6">
        <div className="mb-8">
          <Link 
            to="/"
            className={`${theme.button.secondary} inline-flex items-center gap-2 mb-6`}
          >
            <ArrowLeft className="h-5 w-5" />
            Back to Home
          </Link>
          <h1 className={theme.text.heading}>How It Works</h1>
        </div>

        <div className="space-y-12">
          <section>
            <div className="flex items-center gap-4 mb-4">
              <div className={`${theme.card.base} p-3`}>
                <Search className="h-6 w-6" />
              </div>
              <h2 className={`${theme.text.heading} text-2xl`}>Find Courts</h2>
            </div>
            <p className={theme.text.secondary}>
              Use our search functionality to find padel courts in your area. Filter by location, 
              amenities, and pricing to find the perfect court for your needs. You can view courts 
              in a list or on our interactive map.
            </p>
          </section>

          <section>
            <div className="flex items-center gap-4 mb-4">
              <div className={`${theme.card.base} p-3`}>
                <MapPin className="h-6 w-6" />
              </div>
              <h2 className={`${theme.text.heading} text-2xl`}>View Details</h2>
            </div>
            <p className={theme.text.secondary}>
              Each court listing includes detailed information about the venue, including:
            </p>
            <ul className="list-disc pl-6 mt-4 space-y-2">
              <li className={theme.text.secondary}>Contact information and directions</li>
              <li className={theme.text.secondary}>Available facilities and amenities</li>
              <li className={theme.text.secondary}>Pricing for peak and off-peak hours</li>
              <li className={theme.text.secondary}>Court rules and requirements</li>
            </ul>
          </section>

          <section>
            <div className="flex items-center gap-4 mb-4">
              <div className={`${theme.card.base} p-3`}>
                <Mail className="h-6 w-6" />
              </div>
              <h2 className={`${theme.text.heading} text-2xl`}>Book Your Court</h2>
            </div>
            <p className={theme.text.secondary}>
              Once you've found your preferred court, you can contact the venue directly through 
              the provided contact information. Many venues offer online booking systems through 
              their websites, while others accept bookings by phone or email.
            </p>
          </section>

          <section className="bg-[#080B3C] rounded-lg p-6">
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Own a Padel Court?</h2>
            <p className={`${theme.text.secondary} mb-6`}>
              Help us grow the padel community by adding your court to our directory. Submit your court details 
              and we'll review and list it on Padel Play UK.
            </p>
            <Link
              to="/list-court"
              className={`${theme.button.primary} ${theme.button.base} inline-flex items-center`}
            >
              List your court
              <ArrowRight className="ml-2 h-5 w-5" />
            </Link>
          </section>
        </div>
      </div>
    </div>
  );
}