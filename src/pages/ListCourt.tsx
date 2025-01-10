import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { ArrowLeft, Plus, X, ChevronDown } from 'lucide-react';
import { theme } from '../utils/theme';
import { regions } from '../constants/regions';

const facilities = [
  { id: 'indoor-courts', label: 'Indoor Courts' },
  { id: 'outdoor-courts', label: 'Outdoor Courts' },
  { id: 'parking', label: 'Parking' },
  { id: 'changing-rooms', label: 'Changing Rooms' },
  { id: 'cafe', label: 'Café' },
  { id: 'pro-shop', label: 'Pro Shop' },
  { id: 'coaching', label: 'Professional Coaching' },
  { id: 'equipment-rental', label: 'Equipment Rental' },
  { id: 'floodlights', label: 'Floodlights' },
  { id: 'wifi', label: 'Wi-Fi' },
  { id: 'inclusive-access', label: 'Inclusive Access' },
  { id: 'online-booking', label: 'Online Booking Available' }
];

export default function ListCourt() {
  const [formData, setFormData] = useState({
    name: '',
    description: '',
    region: '',
    address: '',
    email: '',
    links: [''] as string[],
    facilities: [] as string[]
  });

  const [isFacilitiesOpen, setIsFacilitiesOpen] = useState(true);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    
    const emailBody = `
New Court Submission:

Location Name: ${formData.name}
Description: ${formData.description || 'Not provided'}
Region: ${formData.region}
Address: ${formData.address || 'Not provided'}
Contact Email: ${formData.email}
Links: ${formData.links.filter(link => link).join(', ') || 'None provided'}
Facilities: ${formData.facilities.length > 0 ? formData.facilities.join(', ') : 'None selected'}
    `.trim();

    const mailtoLink = `mailto:hello@padelplay.uk?subject=New Court Submission - ${formData.name}&body=${encodeURIComponent(emailBody)}`;
    window.location.href = mailtoLink;
  };

  const handleFacilityChange = (facilityId: string) => {
    setFormData(prev => ({
      ...prev,
      facilities: prev.facilities.includes(facilityId)
        ? prev.facilities.filter(id => id !== facilityId)
        : [...prev.facilities, facilityId]
    }));
  };

  const addLink = () => {
    setFormData(prev => ({
      ...prev,
      links: [...prev.links, '']
    }));
  };

  const updateLink = (index: number, value: string) => {
    setFormData(prev => ({
      ...prev,
      links: prev.links.map((link, i) => i === index ? value : link)
    }));
  };

  const removeLink = (index: number) => {
    if (formData.links.length > 1) {
      setFormData(prev => ({
        ...prev,
        links: prev.links.filter((_, i) => i !== index)
      }));
    }
  };

  return (
    <div className="min-h-screen bg-dark py-8 font-figtree">
      <div className="max-w-3xl mx-auto px-4 sm:px-6">
        <Link 
          to="/"
          className={`${theme.button.secondary} inline-flex items-center gap-2 mb-8`}
        >
          <ArrowLeft className="h-5 w-5" />
          Back to Home
        </Link>

        <div className="mb-8">
          <h1 className={theme.text.heading}>List Your Court</h1>
          <p className={`mt-4 ${theme.text.secondary}`}>
            Help us grow the padel community by adding your court to our database.
          </p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-6">
          {/* Location Name */}
          <div>
            <label htmlFor="name" className="block text-white font-medium mb-2">
              Location Name
            </label>
            <p className={`text-sm ${theme.text.secondary} mb-2`}>
              The name of your padel facility or club
            </p>
            <input
              type="text"
              id="name"
              required
              className={`${theme.input.base} w-full focus:border-[#E1FF5E]`}
              value={formData.name}
              onChange={e => setFormData(prev => ({ ...prev, name: e.target.value }))}
            />
          </div>

          {/* Description */}
          <div>
            <label htmlFor="description" className="block text-white font-medium mb-2 flex items-center gap-2">
              Description
              <span className="px-2 py-0.5 text-xs font-medium bg-[#E1FF5E]/10 text-[#E1FF5E] rounded-full">
                Optional
              </span>
            </label>
            <p className={`text-sm ${theme.text.secondary} mb-2`}>
              Tell players about your facility, courts, and what makes it special
            </p>
            <textarea
              id="description"
              rows={4}
              className={`${theme.input.base} w-full focus:border-[#E1FF5E]`}
              value={formData.description}
              onChange={e => setFormData(prev => ({ ...prev, description: e.target.value }))}
            />
          </div>

          {/* Region */}
          <div>
            <label htmlFor="region" className="block text-white font-medium mb-2">
              Region
            </label>
            <p className={`text-sm ${theme.text.secondary} mb-2`}>
              Select the region where your court is located
            </p>
            <div className="relative">
              <select
                id="region"
                required
                className={`
                  ${theme.input.base} w-full appearance-none bg-white/10
                  text-white cursor-pointer focus:border-[#E1FF5E] pr-10
                `}
                value={formData.region}
                onChange={e => setFormData(prev => ({ ...prev, region: e.target.value }))}
              >
                <option value="" className="bg-[#060836]">Select a region</option>
                {regions.map(region => (
                  <option key={region} value={region} className="bg-[#060836]">
                    {region}
                  </option>
                ))}
              </select>
              <ChevronDown className="absolute right-3 top-1/2 -translate-y-1/2 h-5 w-5 text-white/50 pointer-events-none" />
            </div>
          </div>

          {/* Address */}
          <div>
            <label htmlFor="address" className="block text-white font-medium mb-2 flex items-center gap-2">
              Address
              <span className="px-2 py-0.5 text-xs font-medium bg-[#E1FF5E]/10 text-[#E1FF5E] rounded-full">
                Optional
              </span>
            </label>
            <p className={`text-sm ${theme.text.secondary} mb-2`}>
              Full address of your padel facility
            </p>
            <input
              type="text"
              id="address"
              className={`${theme.input.base} w-full focus:border-[#E1FF5E]`}
              value={formData.address}
              onChange={e => setFormData(prev => ({ ...prev, address: e.target.value }))}
            />
          </div>

          {/* Contact Email */}
          <div>
            <label htmlFor="email" className="block text-white font-medium mb-2">
              Contact Email
            </label>
            <p className={`text-sm ${theme.text.secondary} mb-2`}>
              Email address for booking inquiries and communications
            </p>
            <input
              type="email"
              id="email"
              required
              className={`${theme.input.base} w-full focus:border-[#E1FF5E]`}
              value={formData.email}
              onChange={e => setFormData(prev => ({ ...prev, email: e.target.value }))}
            />
          </div>

          {/* Links */}
          <div>
            <div className="flex items-center justify-between mb-2">
              <div>
                <label className="block text-white font-medium flex items-center gap-2">
                  Links
                  <span className="px-2 py-0.5 text-xs font-medium bg-[#E1FF5E]/10 text-[#E1FF5E] rounded-full">
                    Optional
                  </span>
                </label>
                <p className={`text-sm ${theme.text.secondary} mt-1`}>
                  Add website, social media, or booking links
                </p>
              </div>
              <button
                type="button"
                onClick={addLink}
                className={`${theme.button.secondary} py-1 px-3 text-sm inline-flex items-center gap-1`}
              >
                <Plus className="h-4 w-4" />
                Add Link
              </button>
            </div>
            <div className="space-y-3">
              {formData.links.map((link, index) => (
                <div key={index} className="flex gap-2">
                  <input
                    type="text"
                    placeholder="https://"
                    className={`${theme.input.base} flex-1 focus:border-[#E1FF5E]`}
                    value={link}
                    onChange={e => updateLink(index, e.target.value)}
                  />
                  {formData.links.length > 1 && (
                    <button
                      type="button"
                      onClick={() => removeLink(index)}
                      className="p-2 text-white/50 hover:text-white transition-colors"
                    >
                      <X className="h-5 w-5" />
                    </button>
                  )}
                </div>
              ))}
            </div>
          </div>

          {/* Facilities */}
          <div>
            <button
              type="button"
              onClick={() => setIsFacilitiesOpen(!isFacilitiesOpen)}
              className="flex items-center justify-between w-full text-left"
            >
              <div>
                <span className="block text-white font-medium flex items-center gap-2">
                  Facilities
                  <span className="px-2 py-0.5 text-xs font-medium bg-[#E1FF5E]/10 text-[#E1FF5E] rounded-full">
                    Optional
                  </span>
                </span>
                <p className={`text-sm ${theme.text.secondary} mt-1`}>
                  Select the amenities available at your facility
                </p>
              </div>
              <ChevronDown 
                className={`h-5 w-5 text-white/50 transition-transform duration-200 ${
                  isFacilitiesOpen ? 'rotate-180' : ''
                }`}
              />
            </button>
            
            <div className={`grid grid-cols-1 sm:grid-cols-2 gap-3 mt-4 transition-all duration-200 ${
              isFacilitiesOpen ? 'opacity-100' : 'opacity-0 h-0 overflow-hidden'
            }`}>
              {facilities.map(facility => (
                <label
                  key={facility.id}
                  className="flex items-center space-x-4 py-2 px-3 rounded-lg hover:bg-white/5 cursor-pointer"
                >
                  <div className="relative flex items-center">
                    <input
                      type="checkbox"
                      checked={formData.facilities.includes(facility.id)}
                      onChange={() => handleFacilityChange(facility.id)}
                      className="
                        appearance-none w-4 h-4 border-2 border-[#E1FF5E] rounded
                        checked:border-[#E1FF5E] checked:bg-transparent
                        focus:outline-none focus:ring-2 focus:ring-[#E1FF5E]/20
                        transition-colors duration-200
                      "
                    />
                    {formData.facilities.includes(facility.id) && (
                      <svg
                        className="absolute w-4 h-4 pointer-events-none"
                        viewBox="0 0 16 16"
                        fill="none"
                        stroke="#E1FF5E"
                        strokeWidth="2"
                      >
                        <polyline points="4 8 7 11 12 5" />
                      </svg>
                    )}
                  </div>
                  <span className="text-white/70 text-base">{facility.label}</span>
                </label>
              ))}
            </div>
          </div>

          <div className="border-t border-white/10 pt-6">
            {/* Submit Button */}
            <button
              type="submit"
              className={`${theme.button.primary} ${theme.button.base} w-full`}
            >
              Submit Court
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}