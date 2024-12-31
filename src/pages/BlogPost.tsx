import React from 'react';
import { Link, useParams, Navigate } from 'react-router-dom';
import { ArrowLeft } from 'lucide-react';
import { blogPosts } from '../data/blogPosts';
import { theme } from '../utils/theme';

export default function BlogPost() {
  const { id } = useParams<{ id: string }>();
  const post = blogPosts.find(p => p.id === id);

  if (!post) {
    return <Navigate to="/blog" replace />;
  }

  return (
    <div className="min-h-screen bg-dark py-12">
      <div className="max-w-3xl mx-auto px-4 sm:px-6">
        <Link 
          to="/blog"
          className={`${theme.button.secondary} inline-flex items-center gap-2 mb-8`}
        >
          <ArrowLeft className="h-5 w-5" />
          Back to Blog
        </Link>

        <article>
          {post.image && (
            <div className="aspect-[2/1] overflow-hidden rounded-lg mb-8">
              <img 
                src={post.image} 
                alt={post.title}
                className="w-full h-full object-cover"
              />
            </div>
          )}

          <div className="mb-8">
            <span className="inline-block px-3 py-1 text-xs font-medium bg-white/10 text-white/90 rounded-full">
              {post.label}
            </span>
            <time className="block mt-3 text-sm text-white/60">{post.date}</time>
            <h1 className={`${theme.text.heading} text-4xl mt-3`}>{post.title}</h1>
          </div>

          <div className="prose prose-invert prose-white/70 max-w-none">
            {post.content.split('\n\n').map((paragraph, index) => (
              <p key={index} className={`${theme.text.secondary} mb-6`}>
                {paragraph}
              </p>
            ))}
          </div>
        </article>
      </div>
    </div>
  );
}