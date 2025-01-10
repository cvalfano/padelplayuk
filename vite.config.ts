import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  optimizeDeps: {
    exclude: ['lucide-react'],
  },
  base: process.env.GITHUB_PAGES  // Set base URL for GitHub Pages
    ? '/padelplayuk/'  // Your actual repository name
    : '/',
});