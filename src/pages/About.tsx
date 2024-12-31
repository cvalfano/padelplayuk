import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';
import { theme } from '../utils/theme';

export default function About() {
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
          <h1 className={theme.text.heading}>About Padel Play UK</h1>
        </div>

        <div className="space-y-8">
          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Our Mission</h2>
            <p className={theme.text.secondary}>
              Padel Play UK is dedicated to making padel tennis accessible to everyone in the United Kingdom. 
              We provide a comprehensive platform for discovering and accessing padel courts across the country, 
              helping to grow this exciting sport in the UK.
            </p>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>What We Offer</h2>
            <div className="space-y-4">
              <p className={theme.text.secondary}>
                Our platform offers:
              </p>
              <ul className="list-disc pl-6 space-y-2">
                <li className={theme.text.secondary}>
                  A comprehensive directory of padel courts across the UK
                </li>
                <li className={theme.text.secondary}>
                  Detailed information about each venue, including facilities and pricing
                </li>
                <li className={theme.text.secondary}>
                  Easy-to-use search and filtering options
                </li>
                <li className={theme.text.secondary}>
                  Interactive map for finding courts near you
                </li>
              </ul>
            </div>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Join Our Community</h2>
            <p className={theme.text.secondary}>
              We're building a community of padel enthusiasts across the UK. Whether you're a 
              beginner or an experienced player, we welcome you to join us in growing this 
              fantastic sport.
            </p>
          </section>
        </div>
      </div>
    </div>
  );
}