/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      fontFamily: {
        figtree: ['Figtree', 'sans-serif'],
      },
      backgroundColor: {
        'dark': '#030015',
      },
      colors: {
        'dark': '#030015',
      },
    },
  },
  plugins: [],
};