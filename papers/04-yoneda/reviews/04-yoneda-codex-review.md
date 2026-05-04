---
reviewer: codex (OpenAI)
type: formatting
paper: 04-yoneda
date: 2026-05-04T01:43:30Z
---

**Findings**

1. [04-yoneda.tex:22] uses `everypage`, which TeX Live 2026 warns is legacy and may break on current LaTeX.
   Fix: replace `\usepackage{everypage}` and `\AddEverypageHook` with the LaTeX kernel hook `\AddToHook{shipout/background}{...}`. Short-term fallback: use `\usepackage{everypage-1x}`.

2. [04-yoneda.tex:100] has math in a subsection title, producing bad PDF bookmark text.
   Fix: `\subsection{Why this matters for ``what is \texorpdfstring{$58$}{58}?''}`.

3. [04-yoneda.tex:345, 366, 381, 489, 517, 534] also use math in section/subsection titles, causing repeated `hyperref` PDF string warnings.
   Fix: wrap math title fragments with `\texorpdfstring`, e.g. `\texorpdfstring{$\infty$}{infinity}` and `\texorpdfstring{$(\mathbb{N}, \le)$}{(N, <=)}`.

4. [04-yoneda.tex:143] creates an overfull hbox by keeping a long morphism expression inline.
   Fix: split the sentence or move `f \circ -\colon \mathrm{Hom}(Z, X) \to \mathrm{Hom}(Z, Y)` into display math.

5. [04-yoneda.tex:190] creates a 17.3pt overfull hbox from a long inline equality chain.
   Fix: use an `align*` display for the chain.

6. [04-yoneda.tex:232] creates a small overfull hbox from a dense inline mapping description.
   Fix: split after the first clause or display `\alpha \mapsto \alpha_X(\mathrm{id}_X)`.

7. [04-yoneda.tex:342] creates two overfull hboxes, one 24.2pt, due to a very long remark paragraph with large inline formulas.
   Fix: split the remark into shorter paragraphs and display the long `\mathrm{Hom}_{\mathbf{Succ}}(...)` expression.

8. [04-yoneda.tex:392] creates a 15.2pt overfull hbox from an inline representable-functor expression.
   Fix: display `\mathrm{Hom}_{\mathbf{TopGrp}}(-, S^{1})` or split the sentence.

9. [04-yoneda.tex:783] creates an underfull hbox from the long `\url{...}` in the bibliography.
   Fix: add URL-breaking support, e.g. `\usepackage{xurl}`, or replace the printed URL with `\href{...}{IAS PDF}`.

No persistent compilation errors, missing package errors, undefined references, or undefined citations after `latexmk` completed reruns.
