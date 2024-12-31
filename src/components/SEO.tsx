import React from 'react';
import { Helmet } from 'react-helmet-async';

interface SEOProps {
  title?: string;
  description?: string;
  image?: string;
  url?: string;
}

export default function SEO({ 
  title = 'Padel Play UK - Find and Book Padel Courts',
  description = 'Discover padel courts across the UK. Find, compare and book courts near you. Join the fastest growing racquet sport community in Britain.',
  image = 'https://plus.unsplash.com/premium_photo-1707862953516-9dd3032b69a8?w=1200&auto=format&fit=crop&q=60',
  url = 'https://padelplay.uk'
}: SEOProps) {
  const siteTitle = title.includes('Padel Play UK') ? title : `${title} | Padel Play UK`;
  
  return (
    <Helmet>
      <title>{siteTitle}</title>
      <meta name="description" content={description} />

      {/* Open Graph / Facebook */}
      <meta property="og:type" content="website" />
      <meta property="og:url" content={url} />
      <meta property="og:title" content={siteTitle} />
      <meta property="og:description" content={description} />
      <meta property="og:image" content={image} />

      {/* Twitter */}
      <meta property="twitter:card" content="summary_large_image" />
      <meta property="twitter:url" content={url} />
      <meta property="twitter:title" content={siteTitle} />
      <meta property="twitter:description" content={description} />
      <meta property="twitter:image" content={image} />
    </Helmet>
  );
}