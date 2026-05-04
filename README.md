# The Univalent Correspondence

**Six perspectives on what a number is — identified up to equivalence.**

A seven-paper series by [YonedaAI Research](https://yonedaai.com), 2026-05-03.

- 🌐 Website: https://formalized-foundations-mathematics.vercel.app
- 📧 Contact: research@yonedaai.com

---

## What's in this repo

```
papers/             7 LaTeX papers + compiled PDFs (20–26 pages each)
  01-naive/                Numbers as Symbols and Quantities
  02-set-theoretic/        von Neumann Ordinals
  03-universal-property/   Initial Successor Structures (NNO)
  04-yoneda/               Representable Functors
  05-hott/                 Inductive Types up to Path Equivalence
  06-categorical-structural/  Invariants of Structure-Preserving Morphisms
  07-synthesis/            The Univalent Correspondence (synthesis)

src/                Per-paper Haskell artifacts (one module set per paper)
web/website/        Next.js 15 App Router site (KaTeX, dark theme)
posts/              Twitter / LinkedIn / Facebook / Bluesky posts
sources/            Source dialogues that seeded the project
.knowledge-base.md  Structured knowledge base used by all paper drafts
```

## The columns table

The series unpacks the rows of this table, one paper per row, then
unifies rows III–VI under univalence in Paper VII.

| Level | What 58 *is* | Paper |
|---|---|---|
| Naive | A symbol / a quantity | I |
| Set-theoretic | $\{0, 1, \ldots, 57\}$ (von Neumann encoding) | II |
| Universal property | The 58th iterate of `succ` in any initial successor structure | III |
| Yoneda | The representable functor $\mathrm{Hom}(-, 58)$ | IV |
| HoTT | A canonical term in the inductive type $\mathbb{N}$, identified up to path equivalence | V |
| Categorical / structural | An invariant under structure-preserving morphisms between models of arithmetic | VI |
| **Synthesis** | All four of III–VI, *literally* one $\infty$-groupoid under univalence | **VII** |

## Reading order

1. Start with the [synthesis paper](papers/07-synthesis/pdf/synthesis.pdf) for the full argument.
2. For depth on a particular row, read the corresponding topical paper.
3. Each paper has a runnable Haskell artifact in `src/<paper>/` that exhibits the
   row's content computationally.

## Building and running the Haskell artifacts

Every paper's Haskell module compiles clean under
`ghc -Wall -Wextra -Werror` and runs with `runghc`.

```sh
# Example: Paper VII, the synthesis demo
cd src/07-synthesis
runghc -i. Main.hs
# All six perspectives agree on 58? True
```

The synthesis demo evaluates one numerical witness per row of the columns table
and verifies that all six return 58.

## Building the papers

```sh
cd papers/05-hott/latex
pdflatex -interaction=batchmode 05-hott.tex
pdflatex -interaction=batchmode 05-hott.tex
```

## Building the website

```sh
cd web/website
pnpm install
pnpm dev   # http://localhost:3000
```

## Quality gates

Each paper went through:

- **Gemini peer review** — multiple rounds (1–4 per paper) with verdicts of
  ACCEPT or MINOR REVISIONS at the end. Reviews kept under
  `papers/<n>-<topic>/reviews/`.
- **Codex formatting check** — every overfull box, missing macro, misplaced
  cite, and bookmark warning fixed.
- **Haskell verification** — strict-warning compile, runtime check, and a Codex
  pass over each module set. Where appropriate, QuickCheck properties and
  equational proofs were added (e.g. Papers III and IV).

## License

Papers © 2026 YonedaAI Research. Code released under the MIT License.

## Citation

```bibtex
@misc{yonedaai2026univalent,
  title  = {The Univalent Correspondence: How Six Perspectives on Number Become One},
  author = {{YonedaAI Research}},
  year   = {2026},
  url    = {https://github.com/YonedaAI/univalent-correspondence}
}
```
