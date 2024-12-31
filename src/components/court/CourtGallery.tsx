import React, { useState } from 'react';
import { X, ChevronLeft, ChevronRight } from 'lucide-react';

interface CourtGalleryProps {
  images: string[];
  name: string;
}

export default function CourtGallery({ images, name }: CourtGalleryProps) {
  const [showModal, setShowModal] = useState(false);
  const [currentImage, setCurrentImage] = useState(0);

  const handleNext = () => {
    setCurrentImage((prev) => (prev + 1) % images.length);
  };

  const handlePrev = () => {
    setCurrentImage((prev) => (prev - 1 + images.length) % images.length);
  };

  return (
    <>
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 h-[400px] md:h-[500px]">
        <div className="md:col-span-2 h-full">
          <img
            src={images[0]}
            alt={name}
            className="w-full h-full object-cover rounded-l-lg cursor-pointer"
            onClick={() => setShowModal(true)}
          />
        </div>
        <div className="hidden md:grid grid-rows-2 gap-4 h-full">
          {images.slice(1, 3).map((image, index) => (
            <img
              key={index}
              src={image}
              alt={`${name} view`}
              className="w-full h-full object-cover cursor-pointer"
              onClick={() => {
                setCurrentImage(index + 1);
                setShowModal(true);
              }}
            />
          ))}
        </div>
        <div className="hidden md:grid grid-rows-2 gap-4 h-full">
          {images.slice(3, 5).map((image, index) => (
            <img
              key={index}
              src={image}
              alt={`${name} view`}
              className="w-full h-full object-cover cursor-pointer rounded-r-lg"
              onClick={() => {
                setCurrentImage(index + 3);
                setShowModal(true);
              }}
            />
          ))}
        </div>
      </div>

      {showModal && (
        <div className="fixed inset-0 bg-black bg-opacity-90 z-50 flex items-center justify-center">
          <button
            onClick={() => setShowModal(false)}
            className="absolute top-4 right-4 text-white p-2 hover:bg-white/10 rounded-full"
          >
            <X className="h-6 w-6" />
          </button>
          
          <button
            onClick={handlePrev}
            className="absolute left-4 text-white p-2 hover:bg-white/10 rounded-full"
          >
            <ChevronLeft className="h-6 w-6" />
          </button>
          
          <img
            src={images[currentImage]}
            alt={`${name} view ${currentImage + 1}`}
            className="max-h-[90vh] max-w-[90vw] object-contain"
          />
          
          <button
            onClick={handleNext}
            className="absolute right-4 text-white p-2 hover:bg-white/10 rounded-full"
          >
            <ChevronRight className="h-6 w-6" />
          </button>
        </div>
      )}
    </>
  );
}