'use client';

import { useState, useEffect } from 'react';

interface Heading {
  id: string;
  text: string;
  level: number;
}

export function TableOfContents({ headings }: { headings: Heading[] }) {
  const [activeId, setActiveId] = useState('');

  useEffect(() => {
    if (headings.length === 0) return;

    const onScroll = () => {
      const scrollY = window.scrollY + 100;
      let current = '';
      for (const { id } of headings) {
        const el = document.getElementById(id);
        if (el && el.offsetTop <= scrollY) {
          current = id;
        }
      }
      setActiveId(current);
    };

    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
    return () => window.removeEventListener('scroll', onScroll);
  }, [headings]);

  if (headings.length === 0) return null;

  return (
    <div className="toc-sidebar">
      <div className="toc-label">Contents</div>
      <nav className="toc-nav" aria-label="Table of contents">
        {headings.map(({ id, text, level }) => (
          <a
            key={id}
            href={`#${id}`}
            className={`toc-item${level === 3 ? ' toc-sub' : ''}${activeId === id ? ' toc-active' : ''}`}
          >
            {text}
          </a>
        ))}
      </nav>
    </div>
  );
}
