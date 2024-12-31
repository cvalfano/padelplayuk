import React from 'react';
import { AlertCircle } from 'lucide-react';
import { theme } from '../../utils/theme';

export default function DisclaimerMessage() {
  return (
    <div className={`mt-4 p-4 ${theme.card.base} flex items-start gap-3`}>
      <AlertCircle className="h-5 w-5 text-white/70 flex-shrink-0 mt-0.5" />
      <p className={`${theme.text.secondary} text-sm`}>
        Some information may be inaccurate. Please verify with the club and contact us if you notice any issues, and we'll update accordingly.
      </p>
    </div>
  );
}