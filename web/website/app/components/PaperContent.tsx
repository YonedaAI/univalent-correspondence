'use client';

import { useCallback } from 'react';

// This component renders pre-processed pandoc HTML output that has been
// run through KaTeX at build time. The HTML is our own static data,
// not user input, so direct DOM insertion is safe here.
export function PaperContent({ html }: { html: string }) {
  const contentRef = useCallback(
    (node: HTMLDivElement | null) => {
      if (node) {
        // Use direct DOM insertion to bypass React hydration for KaTeX-rendered HTML
        // This is safe: html is our own static pandoc output, not user input
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        (node as any).innerHTML = html;
      }
    },
    [html]
  );

  return <div ref={contentRef} className="paper-content" />;
}
