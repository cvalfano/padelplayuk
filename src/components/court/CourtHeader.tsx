import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, Share } from 'lucide-react';
import { theme } from '../../utils/theme';

interface CourtHeaderProps {
  name: string;
}

export default function CourtHeader({ name }: CourtHeaderProps) {
  const [showCopyConfirmation, setShowCopyConfirmation] = React.useState(false);

  const handleShare = async () => {
    try {
      await navigator.clipboard.writeText(window.location.href);
      setShowCopyConfirmation(true);
      setTimeout(() => setShowCopyConfirmation(false), 2000);
    } catch (error) {
      console.error('Error copying to clipboard:', error);
    }
  };

  return (
    <div className="pt-12 pb-8">
      <Link 
        to="/locations"
        className={`${theme.button.secondary} inline-flex items-center gap-2 mb-8`}
      >
        <ArrowLeft className="h-5 w-5" />
        Back to Locations
      </Link>
      
      <div className="flex justify-between items-start">
        <h1 className={theme.text.heading}>{name}</h1>
        <div className="relative">
          <button 
            onClick={handleShare}
            className={`${theme.button.secondary} p-2 rounded-full relative`}
            aria-label="Share"
          >
            {showCopyConfirmation ? (
              <span className="text-green-400">Copied!</span>
            ) : (
              <Share className="h-5 w-5" />
            )}
          </button>
          {showCopyConfirmation && (
            <div className="absolute right-0 top-full mt-2 bg-dark/90 text-white text-sm py-1 px-3 rounded shadow-lg whitespace-nowrap">
              Link copied!
            </div>
          )}
        </div>
      </div>
    </div>
  );
}