import React from 'react';
import { AlertCircle } from 'lucide-react';

export default function DisclaimerMessage() {
  return (
    <div className="mt-4 lg:mb-16 p-4 bg-[#060836]/40 rounded-lg border border-white/10 backdrop-blur-sm flex items-start gap-3">
      <AlertCircle className="h-5 w-5 text-white/70 flex-shrink-0 mt-0.5" />
      <p className="text-white/70 text-sm">
        Some information may be inaccurate. Please verify with the club and{' '}
        <a 
          href="mailto:hello@padelplay.uk" 
          className="text-[#E1FF5E] hover:underline"
        >
          contact us
        </a>{' '}
        if you notice any issues, and we'll update accordingly.
      </p>
    </div>
  );
}