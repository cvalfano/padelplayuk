import React from 'react';
import { theme } from '../../utils/theme';

interface BlogPostProps {
  title: string;
  date: string;
  label: string;
  content: string;
}

export default function BlogPost({ title, date, label, content }: BlogPostProps) {
  return (
    <article className={`${theme.card.base} p-8`}>
      <div className="mb-6">
        <span className="inline-block px-3 py-1 text-xs font-medium bg-white/10 text-white/90 rounded-full">
          {label}
        </span>
        <time className="block mt-2 text-sm text-white/60">{date}</time>
        <h1 className={`${theme.text.heading} text-3xl mt-2`}>{title}</h1>
      </div>
      
      <div className="prose prose-invert prose-white/70">
        {content.split('\n\n').map((paragraph, index) => (
          <p key={index} className={theme.text.secondary}>
            {paragraph}
          </p>
        ))}
      </div>
    </article>
  );
}