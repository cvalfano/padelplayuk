import React from 'react';
import { AlertCircle } from 'lucide-react';
import { theme } from '../../utils/theme';
import type { Database } from '../../types/supabase';

type Court = Database['public']['Tables']['courts']['Row'];

interface CourtRulesProps {
  rules: Court['rules'];
}

export default function CourtRules({ rules }: CourtRulesProps) {
  if (!rules || rules.length === 0) {
    return null;
  }

  return (
    <div className="py-5 border-b border-white/10">
      <h2 className={`${theme.text.heading} text-2xl mb-4`}>Court rules</h2>
      <div className={`${theme.card.base} p-6`}>
        <div className="flex items-center gap-2 mb-4">
          <AlertCircle className="h-5 w-5 text-white/70" />
          <span className="font-medium text-white">Please read and follow these rules</span>
        </div>
        <ul className="space-y-3">
          {rules.map((rule, index) => (
            <li key={index} className="flex items-start gap-2">
              <span className="text-white/70">•</span>
              <span className={theme.text.secondary}>{rule}</span>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}