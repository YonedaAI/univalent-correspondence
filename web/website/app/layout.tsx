import type { Metadata } from 'next';
import { EB_Garamond, IBM_Plex_Mono } from 'next/font/google';
import './globals.css';
import 'katex/dist/katex.min.css';
import Link from 'next/link';

const garamond = EB_Garamond({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-garamond',
  weight: ['400', '500', '600', '700'],
});

const mono = IBM_Plex_Mono({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-mono',
  weight: ['400', '500', '600'],
});

const siteUrl = process.env.VERCEL_PROJECT_PRODUCTION_URL
  ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
  : process.env.NEXT_PUBLIC_SITE_URL || 'http://localhost:3000';

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: 'The Univalent Correspondence',
    template: '%s | The Univalent Correspondence',
  },
  description:
    'Six perspectives on what a natural number is — identified up to equivalence. A seven-paper series by YonedaAI Research.',
  openGraph: {
    type: 'website',
    siteName: 'The Univalent Correspondence',
    images: [{ url: '/images/og/og-home.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    images: ['/images/og/og-home.png'],
  },
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en" className={`${garamond.variable} ${mono.variable}`}>
      <head />
      <body>
        <header className="site-header">
          <div className="site-header-inner">
            <Link href="/" className="site-logo">
              The Univalent Correspondence
            </Link>
            <nav className="site-nav">
              <Link href="/">Papers</Link>
              <Link href="/papers/synthesis/">Synthesis</Link>
              <a
                href="https://github.com/YonedaAI/univalent-correspondence"
                target="_blank"
                rel="noopener noreferrer"
                aria-label="GitHub repository"
              >
                GitHub
              </a>
            </nav>
          </div>
        </header>

        <main>{children}</main>

        <footer className="site-footer">
          <div className="site-footer-inner">
            <div className="footer-info">
              <div style={{ color: 'var(--text-muted)', marginBottom: '0.25rem', fontWeight: 600 }}>
                YonedaAI Research
              </div>
              <div>Univalent Correspondence Working Group &mdash; 3 May 2026</div>
            </div>
            <div className="footer-links">
              <Link href="/">All Papers</Link>
              <Link href="/papers/synthesis/">Synthesis</Link>
              <a
                href="https://github.com/YonedaAI/univalent-correspondence"
                target="_blank"
                rel="noopener noreferrer"
              >
                GitHub
              </a>
            </div>
          </div>
        </footer>
      </body>
    </html>
  );
}
