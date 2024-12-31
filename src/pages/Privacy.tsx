import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';
import { theme } from '../utils/theme';

export default function Privacy() {
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
          <h1 className={theme.text.heading}>Privacy Policy</h1>
        </div>

        <div className="space-y-8">
          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Overview</h2>
            <p className={theme.text.secondary}>
              At Padel Play UK, we take your privacy seriously. This policy outlines how we handle 
              information when you use our website.
            </p>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Data Collection</h2>
            <p className={theme.text.secondary}>
              We use Google Analytics to understand how visitors interact with our website. This helps us 
              improve our service and user experience. The information collected includes:
            </p>
            <ul className="list-disc pl-6 mt-4 space-y-2">
              <li className={theme.text.secondary}>Pages visited and time spent on each page</li>
              <li className={theme.text.secondary}>Device and browser information</li>
              <li className={theme.text.secondary}>Geographic location (country/city level)</li>
              <li className={theme.text.secondary}>Referral sources</li>
            </ul>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Your Rights</h2>
            <p className={theme.text.secondary}>
              You can opt out of Google Analytics tracking by using browser extensions or privacy settings. 
              We don't collect any personal information unless you explicitly provide it (such as when 
              contacting us via email).
            </p>
          </section>

          <section>
            <h2 className={`${theme.text.heading} text-2xl mb-4`}>Contact</h2>
            <p className={theme.text.secondary}>
              If you have any questions about our privacy practices, please contact us at{' '}
              <a href="mailto:hello@padelplay.uk" className="text-white hover:underline">
                hello@padelplay.uk
              </a>
            </p>
          </section>
        </div>
      </div>
    </div>
  );
}