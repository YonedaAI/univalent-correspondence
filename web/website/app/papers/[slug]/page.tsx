import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { readFileSync } from 'fs';
import { join } from 'path';
import Link from 'next/link';
import papersData from '../../../data/papers.json';
import { renderMath } from '../../../lib/render-math';
import { TableOfContents } from '../../components/TableOfContents';
import { PaperContent } from '../../components/PaperContent';

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

export function generateStaticParams() {
  return papers.map((p) => ({ slug: p.slug }));
}

export async function generateMetadata({
  params,
}: {
  params: { slug: string };
}): Promise<Metadata> {
  const paper = papers.find((p) => p.slug === params.slug);
  if (!paper) return {};
  return {
    title: paper.title,
    description: paper.abstract.slice(0, 160),
    openGraph: {
      title: paper.title,
      description: paper.abstract.slice(0, 160),
      type: 'article',
      url: `/papers/${paper.slug}/`,
      images: [
        { url: `/images/og/${paper.slug}.png`, width: 1200, height: 630 },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title: paper.title,
      description: paper.abstract.slice(0, 160),
      images: [`/images/og/${paper.slug}.png`],
    },
  };
}

function extractHeadings(html: string) {
  const headingRe = /<h([23])[^>]*\sid="([^"]+)"[^>]*>([\s\S]*?)<\/h[23]>/g;
  const headings: { id: string; text: string; level: number }[] = [];
  let m: RegExpExecArray | null;
  while ((m = headingRe.exec(html)) !== null) {
    const level = parseInt(m[1], 10);
    const id = m[2];
    const rawText = m[3].replace(/<[^>]+>/g, '').replace(/\s+/g, ' ').trim();
    if (id && rawText) {
      headings.push({ id, text: rawText, level });
    }
  }
  return headings;
}

export default function PaperPage({ params }: { params: { slug: string } }) {
  const paper = papers.find((p) => p.slug === params.slug);
  if (!paper) notFound();

  const htmlPath = join(
    process.cwd(),
    'data',
    'html',
    `${paper.slug}-body.html`
  );
  let rawHtml = '';
  try {
    rawHtml = readFileSync(htmlPath, 'utf-8');
  } catch {
    rawHtml = '<p>Content not available.</p>';
  }

  const renderedHtml = renderMath(rawHtml);
  const headings = extractHeadings(renderedHtml);

  const paperIndex = papers.findIndex((p) => p.slug === paper.slug);
  const prevPaper = paperIndex > 0 ? papers[paperIndex - 1] : null;
  const nextPaper = paperIndex < papers.length - 1 ? papers[paperIndex + 1] : null;

  return (
    <div className="paper-page-layout">
      {/* SIDEBAR TOC */}
      <aside aria-label="Table of contents">
        <TableOfContents headings={headings} />
      </aside>

      {/* MAIN CONTENT */}
      <article>
        <div className="paper-header">
          <Link
            href="/"
            style={{
              fontSize: '0.8rem',
              color: 'var(--text-dim)',
              display: 'inline-flex',
              alignItems: 'center',
              gap: '0.35rem',
              marginBottom: '1rem',
              fontFamily: 'var(--font-mono)',
            }}
          >
            &#8592; All Papers
          </Link>
          <div className="paper-part-label">{paper.part}</div>
          <h1 className="paper-title">{paper.title}</h1>
          <div className="paper-author">
            YonedaAI Research &mdash; Univalent Correspondence Working Group
          </div>
          <div className="paper-date">
            3 May 2026 &bull; {paper.pages} pages &bull; {paper.category}
          </div>
          <div className="paper-actions">
            <a
              href={`/pdf/${paper.pdfFile}`}
              target="_blank"
              rel="noopener noreferrer"
              className="btn btn-primary"
            >
              Download PDF
            </a>
            {paper.hasCode && (
              <a
                href={`https://github.com/YonedaAI/univalent-correspondence/tree/main/src/${paper.slug === 'synthesis' ? '07-synthesis' : paper.slug}`}
                target="_blank"
                rel="noopener noreferrer"
                className="btn btn-ghost"
              >
                Haskell Code
              </a>
            )}
            <a
              href="https://github.com/YonedaAI/univalent-correspondence"
              target="_blank"
              rel="noopener noreferrer"
              className="btn btn-ghost"
            >
              GitHub
            </a>
            <Link href="/" className="btn btn-ghost">
              All Papers
            </Link>
          </div>
        </div>

        {/* ABSTRACT */}
        <div className="paper-abstract">
          <span className="paper-abstract-label">Abstract</span>
          <p className="paper-abstract-text">{paper.abstract}</p>
        </div>

        {/* PAPER BODY */}
        <PaperContent html={renderedHtml} />

        {/* PREV / NEXT */}
        {(prevPaper || nextPaper) && (
          <nav className="paper-nav" aria-label="Paper navigation">
            {prevPaper ? (
              <Link href={`/papers/${prevPaper.slug}/`} className="paper-nav-card">
                <div className="paper-nav-direction">&#8592; Previous</div>
                <div className="paper-nav-title">{prevPaper.shortTitle}</div>
              </Link>
            ) : (
              <div />
            )}
            {nextPaper ? (
              <Link
                href={`/papers/${nextPaper.slug}/`}
                className="paper-nav-card paper-nav-next"
              >
                <div className="paper-nav-direction">Next &#8594;</div>
                <div className="paper-nav-title">{nextPaper.shortTitle}</div>
              </Link>
            ) : (
              <div />
            )}
          </nav>
        )}
      </article>
    </div>
  );
}
