import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import ScrollToTop from './components/ScrollToTop';
import Analytics from './components/Analytics';
import Home from './pages/Home';
import Locations from './pages/Locations';
import Map from './pages/Map';
import Blog from './pages/Blog';
import BlogPost from './pages/BlogPost';
import CourtDetails from './pages/CourtDetails';
import ListCourt from './pages/ListCourt';
import About from './pages/About';
import HowItWorks from './pages/HowItWorks';
import Contact from './pages/Contact';
import Privacy from './pages/Privacy';

function App() {
  return (
    <Router>
      <ScrollToTop />
      <Analytics />
      <div className="min-h-screen flex flex-col bg-dark">
        <Navbar />
        <main className="flex-grow">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/locations" element={<Locations />} />
            <Route path="/map" element={<Map />} />
            <Route path="/blog" element={<Blog />} />
            <Route path="/blog/:id" element={<BlogPost />} />
            <Route path="/courts/:id" element={<CourtDetails />} />
            <Route path="/list-court" element={<ListCourt />} />
            <Route path="/about" element={<About />} />
            <Route path="/how-it-works" element={<HowItWorks />} />
            <Route path="/contact" element={<Contact />} />
            <Route path="/privacy" element={<Privacy />} />
            <Route path="*" element={<NotFound />} />
          </Routes>
        </main>
        <Footer />
      </div>
    </Router>
  );
}

function NotFound() {
  return (
    <div className="min-h-[50vh] flex items-center justify-center">
      <div className="text-center">
        <h1 className="text-3xl font-bold mb-4">Page Not Found</h1>
        <p className="text-white/70 mb-6">The page you're looking for doesn't exist or has been moved.</p>
        <a href="/" className="text-white hover:text-white/90 underline">
          Return to Home
        </a>
      </div>
    </div>
  );
}

export default App;