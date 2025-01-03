import React from 'react';
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
    <div className="pt-5 lg:pb-16">
      <h3 className={`${theme.text.heading} text-xl mb-4`}>Court Rules</h3>
      <ul className="space-y-3">
        {rules.map((rule, index) => (
          <li key={index} className="flex items-start gap-2">
            <span className="text-white/70">•</span>
            <span className={theme.text.secondary}>{rule}</span>
          </li>
        ))}
      </ul>
    </div>
  );
}