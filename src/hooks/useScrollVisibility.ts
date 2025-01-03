import { useState, useEffect } from 'react';

export function useScrollVisibility(targetId: string) {
  const [isVisible, setIsVisible] = useState(true);

  useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => {
        // Invert the visibility when target is visible
        setIsVisible(!entry.isIntersecting);
      },
      {
        threshold: 0.1, // Trigger when 10% of target is visible
      }
    );

    const target = document.getElementById(targetId);
    if (target) {
      observer.observe(target);
    }

    return () => {
      if (target) {
        observer.unobserve(target);
      }
    };
  }, [targetId]);

  return isVisible;
}