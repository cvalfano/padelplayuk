import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, Mail, MapPin } from 'lucide-react';
import { theme } from '../utils/theme';

export default function Contact() {
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
          <h1 className={theme.text.heading}>Contact Us</h1>
        </div>

        <div className="space-y-8">
          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Get in Touch</h2>
            <p className={theme.text.secondary}>
              Have a question or want to submit a new padel court location? We'd love to hear from you.
              You can reach us at{' '}
              <a 
                href="mailto:hello@padelplay.uk" 
                className="text-white hover:underline"
              >
                hello@padelplay.uk
              </a>
            </p>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Submit a Location</h2>
            <p className={theme.text.secondary}>
              Know of a padel court that's not listed on our platform? Help us grow our directory by 
              submitting new locations. Simply send us an email with:
            </p>
            <ul className="list-disc pl-6 mt-4 space-y-2">
              <li className={theme.text.secondary}>Venue name and location</li>
              <li className={theme.text.secondary}>Contact information</li>
              <li className={theme.text.secondary}>Available facilities</li>
              <li className={theme.text.secondary}>Pricing information</li>
              <li className={theme.text.secondary}>Any additional relevant details</li>
            </ul>
            <a 
              href="mailto:hello@padelplay.uk?subject=New%20Padel%20Court%20Submission"
              className={`${theme.button.primary} ${theme.button.base} inline-flex items-center gap-2 mt-6`}
            >
              <Mail className="h-5 w-5" />
              Submit Location
            </a>
          </section>
        </div>
      </div>
    </div>
  );
}