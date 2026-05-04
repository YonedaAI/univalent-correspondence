import type { Metadata } from 'next';
import Image from 'next/image';
import Link from 'next/link';
import papersData from '../data/papers.json';

export const metadata: Metadata = {
  title: 'The Univalent Correspondence',
  description:
    'Six perspectives on what a natural number is — identified up to equivalence. A seven-paper series by YonedaAI Research.',
  openGraph: {
    title: 'The Univalent Correspondence',
    description:
      'Six perspectives on what a natural number is — identified up to equivalence.',
    images: [{ url: '/images/og/og-home.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'The Univalent Correspondence',
    description: 'Six perspectives on what a natural number is — identified up to equivalence.',
    images: ['/images/og/og-home.png'],
  },
};

const TIER_META: Record<
  string,
  { label: string; papers: string; description: string }
> = {
  foundations: {
    label: 'Foundations',
    papers: 'Papers I–II',
    description: 'Pre-formal and set-theoretic levels: numbers as symbols, quantities, and pure-set encodings.',
  },
  structural: {
    label: 'Structural',
    papers: 'Papers III–IV',
    description: 'Universal properties and representable functors: numbers defined by their relationships.',
  },
  synthetic: {
    label: 'Synthetic + Invariant',
    papers: 'Papers V–VI',
    description: 'Homotopy type theory and categorical structuralism: encoding-free and isomorphism-invariant accounts.',
  },
};

type Paper = {
  slug: string;
  title: string;
  shortTitle: string;
  part: string;
  partNum: number;
  tier: string;
  tierLabel: string;
  category: string;
  pages: number;
  hasCode: boolean;
  pdfFile: string;
  coverImage: string;
  abstract: string;
};

const papers = papersData as Paper[];
const mainPapers = papers.filter((p) => p.tier !== 'synthesis');
const synthesisPaper = papers.find((p) => p.tier === 'synthesis')!;

function PaperCard({ paper }: { paper: Paper }) {
  return (
    <article className="paper-card">
      <Image
        src={paper.coverImage}
        alt={`Cover for ${paper.title}`}
        width={600}
        height={375}
        className="paper-card-cover"
        unoptimized
      />
      <div className="paper-card-body">
        <div className="paper-card-meta">
          <span className="paper-part-badge">{paper.part}</span>
          <span
            style={{
              fontSize: '0.68rem',
              fontFamily: 'var(--font-mono)',
              color: 'var(--text-dim)',
            }}
          >
            {paper.pages}p &bull; {paper.category}
          </span>
        </div>
        <h3 className="paper-card-title">{paper.shortTitle}</h3>
        <p className="paper-card-abstract">
          {paper.abstract.slice(0, 160).trimEnd()}
          {paper.abstract.length > 160 ? '…' : ''}
        </p>
        <div className="paper-card-actions">
          <Link href={`/papers/${paper.slug}/`} className="btn btn-primary">
            Read
          </Link>
          <a
            href={`/pdf/${paper.pdfFile}`}
            target="_blank"
            rel="noopener noreferrer"
            className="btn btn-ghost"
          >
            PDF
          </a>
          {paper.hasCode && (
            <a
              href={`https://github.com/YonedaAI/univalent-correspondence/tree/main/src/${paper.slug === 'synthesis' ? '07-synthesis' : paper.slug}`}
              target="_blank"
              rel="noopener noreferrer"
              className="btn btn-ghost"
              title="Haskell source on GitHub"
            >
              Code
            </a>
          )}
        </div>
      </div>
    </article>
  );
}

export default function HomePage() {
  const tiers = ['foundations', 'structural', 'synthetic'] as const;

  return (
    <>
      {/* HERO */}
      <section className="hero">
        <div className="hero-bg" aria-hidden />
        <div className="hero-grid-lines" aria-hidden />
        <div className="container-wide" style={{ position: 'relative', zIndex: 1 }}>
          <div className="hero-eyebrow">
            <span>GrokRxiv:2026.05</span>
            <span style={{ opacity: 0.5 }}>/</span>
            <span>math.CT &bull; math.LO &bull; math.HO</span>
          </div>
          <h1 className="hero-title">The Univalent Correspondence</h1>
          <p className="hero-tagline">
            Six perspectives on what a number is &mdash; identified up to equivalence
          </p>
          <div className="hero-stats">
            <div>
              <span className="hero-stat-number">7</span>
              <span className="hero-stat-label">Papers</span>
            </div>
            <div>
              <span className="hero-stat-number">6</span>
              <span className="hero-stat-label">Perspectives</span>
            </div>
            <div>
              <span className="hero-stat-number">1</span>
              <span className="hero-stat-label">Correspondence</span>
            </div>
          </div>
        </div>
      </section>

      {/* SYNTHESIS HIGHLIGHT */}
      <div className="container-wide" style={{ marginTop: '1.5rem' }}>
        <div className="synthesis-card">
          <Image
            src={synthesisPaper.coverImage}
            alt="Synthesis paper cover"
            width={520}
            height={390}
            className="synthesis-cover"
            unoptimized
          />
          <div>
            <span
              className="tier-badge synthesis"
              style={{ display: 'inline-block', marginBottom: '1rem' }}
            >
              Synthesis
            </span>
            <h2 className="synthesis-title">{synthesisPaper.title}</h2>
            <p className="synthesis-abstract">
              {synthesisPaper.abstract.slice(0, 320).trimEnd()}
              {synthesisPaper.abstract.length > 320 ? '…' : ''}
            </p>
            <div style={{ display: 'flex', gap: '0.75rem' }}>
              <Link href={`/papers/synthesis/`} className="btn btn-primary">
                Read Synthesis
              </Link>
              <a
                href={`/pdf/${synthesisPaper.pdfFile}`}
                target="_blank"
                rel="noopener noreferrer"
                className="btn btn-ghost"
              >
                PDF
              </a>
            </div>
          </div>
        </div>

        {/* TIERED PAPER GRID */}
        {tiers.map((tier) => {
          const tierPapers = mainPapers.filter((p) => p.tier === tier);
          const meta = TIER_META[tier];
          return (
            <section key={tier} className="tier-section">
              <div className="tier-header">
                <span className={`tier-badge ${tier}`}>{meta.label}</span>
                <span
                  style={{
                    fontSize: '0.78rem',
                    fontFamily: 'var(--font-mono)',
                    color: 'var(--accent)',
                  }}
                >
                  {meta.papers}
                </span>
                <span className="tier-desc">{meta.description}</span>
              </div>
              <div className="papers-grid">
                {tierPapers.map((paper) => (
                  <PaperCard key={paper.slug} paper={paper} />
                ))}
              </div>
            </section>
          );
        })}
      </div>
    </>
  );
}
