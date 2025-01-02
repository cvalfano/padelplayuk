import React from 'react';
import { Link } from 'react-router-dom';
import { theme } from '../../utils/theme';
import type { BlogPost } from '../../types/blog';

interface BlogCardProps {
  post: BlogPost;
}

export default function BlogCard({ post }: BlogCardProps) {
  return (
    <Link 
      to={`/blog/${post.id}`}
      className="
        block bg-[#060836] rounded-lg shadow-lg overflow-hidden
        transition-all duration-300 ease-out
        hover:shadow-2xl hover:shadow-white/5
        hover:translate-y-[-4px]
      "
    >
      {post.image && (
        <div className="aspect-[2/1] overflow-hidden">
          <img 
            src={post.image} 
            alt={post.title}
            className="w-full h-full object-cover"
          />
        </div>
      )}
      <div className="p-6">
        <div className="flex items-center justify-between mb-3">
          <span className="inline-block px-3 py-1 text-xs font-medium bg-white/10 text-white/90 rounded-full">
            {post.label}
          </span>
          <span className="text-sm text-white/60">{post.readingTime}</span>
        </div>
        <time className="block text-sm text-white/60">{post.date}</time>
        <h3 className={`${theme.text.heading} text-xl mt-2 text-white hover:text-[#E1FF5E] transition-colors duration-200`}>
          {post.title}
        </h3>
        <p className={`${theme.text.secondary} mt-3 line-clamp-3`}>{post.excerpt}</p>
      </div>
    </Link>
  );
}