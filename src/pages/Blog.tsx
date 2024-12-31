import React from 'react';
import BlogGrid from '../components/blog/BlogGrid';
import Pagination from '../components/locations/Pagination';
import { blogPosts } from '../data/blogPosts';
import { usePagination } from '../hooks/usePagination';
import { theme } from '../utils/theme';

const POSTS_PER_PAGE = 9;

export default function Blog() {
  const { 
    currentItems: currentPosts,
    currentPage,
    totalPages,
    setCurrentPage
  } = usePagination({
    items: blogPosts,
    itemsPerPage: POSTS_PER_PAGE
  });

  return (
    <div className="min-h-screen bg-dark py-12">
      <div className="max-w-7xl mx-auto px-4 sm:px-6">
        <header className="mb-12 text-center">
          <h1 className={`${theme.text.heading} text-4xl mb-4`}>The Clubhouse</h1>
          <p className={`${theme.text.secondary} text-lg`}>
            News, updates, and stories from the padel community
          </p>
        </header>

        <BlogGrid posts={currentPosts} />
        
        {totalPages > 1 && (
          <Pagination
            currentPage={currentPage}
            totalPages={totalPages}
            onPageChange={setCurrentPage}
          />
        )}
      </div>
    </div>
  );
}