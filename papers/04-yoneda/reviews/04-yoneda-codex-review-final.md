---
reviewer: codex (OpenAI)
type: formatting
paper: 04-yoneda
round: final
date: 2026-05-04T14:18:22Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
model: gpt-5.5
provider: openai
approval: never
sandbox: danger-full-access
reasoning effort: high
reasoning summaries: none
session id: 019df35a-bb90-7712-b982-50fa349cd1fc
--------
user
Final-pass LaTeX formatting review of /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/04-yoneda/latex/04-yoneda.tex. The paper has already had 4 Gemini review rounds (ACCEPT) and one Codex pass. Identify ONLY blocking formatting issues that would prevent the PDF from being usable: compilation errors, missing packages, broken references, undefined citations, or severe layout problems. Do NOT list nitpicks already addressed in the prior Codex pass at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/04-yoneda/reviews/04-yoneda-codex-review.md. List each remaining blocking issue with line numbers and concise fixes. If none, say 'No blocking issues remain.'
codex
I’ll treat this as a read-only final gate: first I’ll check the prior Codex review so I don’t repeat excluded items, then inspect the LaTeX source and build/log evidence for actual blockers.
exec
/usr/local/bin/zsh -lc "nl -ba papers/04-yoneda/latex/04-yoneda.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "sed -n '1,220p' papers/04-yoneda/reviews/04-yoneda-codex-review.md" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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

 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	
     7	% Diagrams
     8	\usepackage{tikz-cd}
     9	\usepackage{tikz}
    10	
    11	% References
    12	\usepackage{hyperref}
    13	\usepackage{cleveref}
    14	\usepackage{xurl}
    15	
    16	% Graphics
    17	\usepackage{graphicx}
    18	
    19	% Page layout
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% Sidebar
    23	\usepackage{everypage}
    24	\usepackage{xcolor}
    25	
    26	% Code listings (lightweight; we use verbatim for portability)
    27	\usepackage{verbatim}
    28	
    29	% Theorem environments
    30	\newtheorem{theorem}{Theorem}[section]
    31	\newtheorem{proposition}[theorem]{Proposition}
    32	\newtheorem{lemma}[theorem]{Lemma}
    33	\newtheorem{corollary}[theorem]{Corollary}
    34	\theoremstyle{definition}
    35	\newtheorem{definition}[theorem]{Definition}
    36	\newtheorem{example}[theorem]{Example}
    37	\theoremstyle{remark}
    38	\newtheorem{remark}[theorem]{Remark}
    39	
    40	% GrokRxiv sidebar on page 1
    41	\definecolor{grokgray}{RGB}{110,110,110}
    42	\AddEverypageHook{%
    43	  \ifnum\value{page}=1
    44	    \begin{tikzpicture}[remember picture, overlay]
    45	      \node[
    46	        rotate=90,
    47	        anchor=south,
    48	        font=\Large\sffamily\bfseries\color{grokgray},
    49	        inner sep=0pt
    50	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    51	      {GrokRxiv:2026.05.yoneda-perspective\quad
    52	       [\,math.CT\,]\quad
    53	       03 May 2026};
    54	    \end{tikzpicture}
    55	  \fi
    56	}
    57	
    58	\title{The Yoneda Perspective: \\
    59	Numbers as Representable Functors}
    60	
    61	\author{YonedaAI Research \\
    62	\textit{Univalent Correspondence Series, Paper IV} \\
    63	\textit{Formalized Foundations of Mathematics} \\
    64	\texttt{research@yonedaai.com} }
    65	
    66	\date{3 May 2026}
    67	
    68	\begin{document}
    69	\maketitle
    70	
    71	\begin{abstract}
    72	We develop the Yoneda perspective on the question \emph{``what is a number?''} as the fourth installment of the Univalent Correspondence series. Building on the universal-property characterization of natural numbers as initial successor structures (Paper III), we promote the relational viewpoint to its categorical limit: the Yoneda embedding $y\colon \mathcal{C} \hookrightarrow [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$, $X \mapsto \mathrm{Hom}_{\mathcal{C}}(-, X)$, which is fully faithful for any locally small category $\mathcal{C}$. The corollary $X \cong Y \iff \mathrm{Hom}(-, X) \cong \mathrm{Hom}(-, Y)$ supplies a precise sense in which an object \emph{is} its system of relationships: the natural number $58$ \emph{is} the representable functor $\mathrm{Hom}(-, 58)$ on the appropriate category. We give the full proof of the Yoneda lemma, exhibit the density theorem expressing every presheaf as a colimit of representables, and apply the framework beyond arithmetic to groups (regular representations), spaces (functor of points), and schemes (Grothendieck's program). Our analytic applications include $\pi$ as the representing object for periods of the exponential map $\mathbb{R} \to S^{1}$ and $e$ as the unique element making $\exp$ a continuous group homomorphism $(\mathbb{R}, +) \to (\mathbb{R}^{>0}, \cdot)$. We outline the enriched, $2$-categorical, and $\infty$-categorical generalizations of Yoneda, culminating in Lurie's $\infty$-Yoneda lemma. We close by linking Yoneda to univalence: under the Univalent Foundations program, the equivalence $\mathrm{Hom}(-, X) \cong \mathrm{Hom}(-, Y) \Rightarrow X = Y$ is internalized as a path in the universe, identifying the Yoneda principle with the univalence axiom and preparing Paper V (HoTT). A companion Haskell implementation in \texttt{src/04-yoneda/} computes Yoneda embeddings of finite categories and exhibits $\mathrm{Hom}(-, n)$ for finite initial segments of $\mathbb{N}$ as a poset.
    73	\end{abstract}
    74	
    75	\tableofcontents
    76	
    77	\section{Introduction}
    78	\label{sec:intro}
    79	
    80	\subsection{The arc so far}
    81	
    82	The series \emph{The Univalent Correspondence} examines a single question --- \emph{what is the natural number $58$?} --- through six progressively refined formalisms. Paper~I (Naive) treated $58$ as a syntactic symbol and exposed the Frege-style sense/reference confusion that results from identifying numerals with numbers. Paper~II (Set-Theoretic) gave the von~Neumann encoding $58 = \{0, 1, \ldots, 57\}$ and exhibited Benacerraf's identification problem: alternative encodings (Zermelo's, Quine's, etc.) are equally valid, so no single set-theoretic representative deserves the title \emph{the} natural numbers. Paper~III (Universal Property) responded to Benacerraf by characterizing $\mathbb{N}$ up to canonical isomorphism as the initial $(0, \mathrm{succ})$-algebra, equivalently as the natural number object (NNO) in any category with a terminal object. The number $58$ became \emph{any} canonical $58$th iterate of $\mathrm{succ}$ in any structure satisfying the universal property: well-defined up to unique isomorphism, encoding-free.
    83	
    84	The present paper takes the next step on the structuralist ladder. The universal-property viewpoint already speaks of objects through their morphisms in and out, but it does so one universal property at a time. The Yoneda perspective globalizes this principle. Rather than say ``$\mathbb{N}$ is initial among successor structures,'' it says: \emph{every} object $X$ in a locally small category $\mathcal{C}$ is fully reconstructible from its profile $\mathrm{Hom}_{\mathcal{C}}(-, X)$ as a functor $\mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$. The Yoneda lemma promotes the slogan ``an object is determined by its relationships'' from heuristic to theorem.
    85	
    86	\subsection{The Yoneda principle in one sentence}
    87	
    88	\begin{quote}
    89	\emph{An object is its system of probes.}
    90	\end{quote}
    91	Formally, the Yoneda lemma asserts a natural bijection
    92	\[
    93	\mathrm{Nat}\big(\mathrm{Hom}_{\mathcal{C}}(-, X), F\big) \;\cong\; F(X)
    94	\]
    95	for any presheaf $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ and object $X \in \mathcal{C}$. Specializing $F = \mathrm{Hom}_{\mathcal{C}}(-, Y)$ recovers the embedding statement
    96	\[
    97	\mathrm{Nat}\big(\mathrm{Hom}(-, X), \mathrm{Hom}(-, Y)\big) \;\cong\; \mathrm{Hom}_{\mathcal{C}}(X, Y),
    98	\]
    99	so the assignment $y\colon X \mapsto \mathrm{Hom}(-, X)$ is fully faithful. Two objects whose profiles agree as functors are isomorphic; two morphisms that induce the same natural transformation are equal.
   100	
   101	\subsection{Why this matters for ``what is \texorpdfstring{$58$}{58}?''}
   102	
   103	In the category $\mathbf{NNO}$ of natural-number objects in $\mathbf{Set}$ (or in any topos with NNO), the Yoneda embedding identifies $58$ not with a particular set, term, or numeral, but with the functor that assigns to every successor structure $(X, x_0, f)$ the value $f^{58}(x_0)$. This is the content of Section~\ref{sec:numbers-as-functors}. The structuralist's slogan --- \emph{numbers are positions in a structure} --- becomes a theorem: $58$ is the unique-up-to-isomorphism object representing the functor that probes structures for ``$58$th iterate of the successor map starting at the basepoint.''
   104	
   105	\subsection{Bridge to univalence}
   106	
   107	The Yoneda lemma yields equivalence of objects from equivalence of their representable functors. Univalence (Paper~V) internalizes this implication: the canonical map $(A = B) \to (A \simeq B)$ is itself an equivalence in Homotopy Type Theory. Yoneda \emph{produces} an equivalence; univalence \emph{declares} it an identity. Section~\ref{sec:bridge-hott} makes this connection precise and motivates the next paper.
   108	
   109	\subsection{Outline}
   110	
   111	Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:yoneda-lemma} states and proves the Yoneda lemma in covariant and contravariant forms. Section~\ref{sec:numbers-as-functors} applies the lemma to natural numbers, real numbers, $\pi$, and $e$. Section~\ref{sec:density} proves the density theorem. Section~\ref{sec:beyond-numbers} surveys applications to groups, spaces, and schemes. Section~\ref{sec:enriched} sketches the enriched, $2$-categorical, and $\infty$-categorical generalizations. Section~\ref{sec:bridge-hott} connects to Homotopy Type Theory. Section~\ref{sec:haskell} describes the accompanying Haskell implementation. Section~\ref{sec:results} collects principal results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.
   112	
   113	\section{Mathematical Framework}
   114	\label{sec:framework}
   115	
   116	We assume the reader is fluent with category theory at the level of Mac Lane~\cite{maclane} or Riehl~\cite{riehl}. We fix terminology and notation in this section.
   117	
   118	\subsection{Categories and functors}
   119	
   120	\begin{definition}[Locally small category]
   121	\label{def:locally-small}
   122	A category $\mathcal{C}$ is \emph{locally small} when for each pair of objects $X, Y \in \mathrm{Ob}(\mathcal{C})$ the collection $\mathrm{Hom}_{\mathcal{C}}(X, Y)$ is a set (rather than a proper class). All categories considered in this paper are locally small unless explicitly stated otherwise.
   123	\end{definition}
   124	
   125	\begin{definition}[Presheaf]
   126	\label{def:presheaf}
   127	Given a category $\mathcal{C}$, a \emph{presheaf} on $\mathcal{C}$ is a functor $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$. The category of presheaves and natural transformations is denoted $\widehat{\mathcal{C}} := [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$.
   128	\end{definition}
   129	
   130	\begin{definition}[Representable functor]
   131	\label{def:representable}
   132	A presheaf $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ is \emph{representable} if there exist an object $X \in \mathcal{C}$ and a natural isomorphism $\eta\colon \mathrm{Hom}_{\mathcal{C}}(-, X) \xrightarrow{\;\cong\;} F$. The pair $(X, \eta)$ is called a \emph{representation}; we say $X$ \emph{represents} $F$.
   133	\end{definition}
   134	
   135	\subsection{The Yoneda embedding}
   136	
   137	\begin{definition}[Yoneda embedding]
   138	\label{def:yoneda-embedding}
   139	The \emph{Yoneda embedding} is the functor
   140	\[
   141	y\colon \mathcal{C} \longrightarrow \widehat{\mathcal{C}},\qquad
   142	X \longmapsto \mathrm{Hom}_{\mathcal{C}}(-, X),
   143	\]
   144	sending a morphism $f\colon X \to Y$ to the natural transformation $y(f)$ from $\mathrm{Hom}(-, X)$ to $\mathrm{Hom}(-, Y)$ whose component at an object $Z$ is post-composition by $f$:
   145	\[
   146	y(f)_Z \;=\; f \circ -\;\colon\; \mathrm{Hom}(Z, X) \longrightarrow \mathrm{Hom}(Z, Y).
   147	\]
   148	\end{definition}
   149	
   150	We frequently write $h_X := \mathrm{Hom}_{\mathcal{C}}(-, X)$. The dual (covariant) Yoneda embedding is
   151	\[
   152	y'\colon \mathcal{C}^{\mathrm{op}} \longrightarrow [\mathcal{C}, \mathbf{Set}],\qquad X \longmapsto \mathrm{Hom}_{\mathcal{C}}(X, -) =: h^{X}.
   153	\]
   154	
   155	\subsection{Diagrammatic conventions}
   156	
   157	We display natural transformations as squares
   158	\[
   159	\begin{tikzcd}
   160	F(Z) \arrow[r, "\alpha_Z"] \arrow[d, "F(g)"'] & G(Z) \arrow[d, "G(g)"] \\
   161	F(W) \arrow[r, "\alpha_W"'] & G(W)
   162	\end{tikzcd}
   163	\]
   164	which commute for every $g\colon W \to Z$. For presheaves, $g$ goes \emph{against} the arrows of $\mathcal{C}$; we silently use $\mathcal{C}^{\mathrm{op}}$.
   165	
   166	\section{The Yoneda Lemma}
   167	\label{sec:yoneda-lemma}
   168	
   169	\subsection{Statement and proof}
   170	
   171	\begin{theorem}[Yoneda lemma]
   172	\label{thm:yoneda}
   173	Let $\mathcal{C}$ be a locally small category, $X \in \mathcal{C}$ an object, and $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ a presheaf. There is a bijection
   174	\[
   175	\Phi_{X,F}\colon \mathrm{Nat}\big(h_X, F\big) \xrightarrow{\;\cong\;} F(X),
   176	\qquad
   177	\alpha \longmapsto \alpha_X(\mathrm{id}_X),
   178	\]
   179	natural in both $X$ and $F$.
   180	\end{theorem}
   181	
   182	\begin{proof}
   183	We construct an inverse. Given $u \in F(X)$, define $\Psi(u)\colon h_X \to F$ component-wise by
   184	\[
   185	\Psi(u)_Z\colon \mathrm{Hom}_{\mathcal{C}}(Z, X) \to F(Z),\qquad f \longmapsto F(f)(u).
   186	\]
   187	This is natural: for $g\colon W \to Z$, the square
   188	\[
   189	\begin{tikzcd}
   190	\mathrm{Hom}(Z, X) \arrow[r, "\Psi(u)_Z"] \arrow[d, "- \circ g"'] & F(Z) \arrow[d, "F(g)"] \\
   191	\mathrm{Hom}(W, X) \arrow[r, "\Psi(u)_W"'] & F(W)
   192	\end{tikzcd}
   193	\]
   194	commutes by functoriality of $F$:
   195	\[
   196	\Psi(u)_W(f \circ g) \;=\; F(f \circ g)(u) \;=\; F(g)(F(f)(u)) \;=\; F(g)(\Psi(u)_Z(f)).
   197	\]
   198	
   199	We check $\Phi \circ \Psi = \mathrm{id}_{F(X)}$:
   200	\[
   201	(\Phi \circ \Psi)(u) = \Psi(u)_X(\mathrm{id}_X) = F(\mathrm{id}_X)(u) = \mathrm{id}_{F(X)}(u) = u.
   202	\]
   203	Conversely, $\Psi \circ \Phi = \mathrm{id}_{\mathrm{Nat}(h_X, F)}$: for $\alpha\colon h_X \to F$ and $f\colon Z \to X$,
   204	\[
   205	\Psi(\Phi(\alpha))_Z(f) = \Psi(\alpha_X(\mathrm{id}_X))_Z(f) = F(f)(\alpha_X(\mathrm{id}_X)) = \alpha_Z(\mathrm{id}_X \circ f) = \alpha_Z(f),
   206	\]
   207	where the third equality uses naturality of $\alpha$ applied to $f\colon Z \to X$, viewed as a morphism $Z \to X$ in $\mathcal{C}$ (equivalently $X \to Z$ in $\mathcal{C}^{\mathrm{op}}$).
   208	
   209	Naturality of $\Phi$ in $X$: for $g\colon X \to X'$ and $\alpha\colon h_{X'} \to F$, the diagram
   210	\[
   211	\begin{tikzcd}
   212	\mathrm{Nat}(h_{X'}, F) \arrow[r, "\Phi_{X', F}"] \arrow[d, "(- \circ y(g))"'] & F(X') \arrow[d, "F(g)"] \\
   213	\mathrm{Nat}(h_X, F) \arrow[r, "\Phi_{X, F}"'] & F(X)
   214	\end{tikzcd}
   215	\]
   216	commutes by naturality of $\alpha$ at $g\colon X \to X'$ (viewed in $\mathcal{C}$, hence backwards in $\mathcal{C}^{\mathrm{op}}$). Going right-then-down yields $F(g)(\alpha_{X'}(\mathrm{id}_{X'}))$. Going down-then-right yields $(\alpha \circ y(g))_{X}(\mathrm{id}_X) = \alpha_X(g \circ \mathrm{id}_X) = \alpha_X(g)$. These agree because the naturality square of $\alpha$ at $g$ states
   217	\[
   218	\alpha_X \circ h_{X'}(g) = F(g) \circ \alpha_{X'},
   219	\]
   220	and evaluating both sides at $\mathrm{id}_{X'} \in h_{X'}(X')$ gives $\alpha_X(g) = F(g)(\alpha_{X'}(\mathrm{id}_{X'}))$. Naturality in $F$ is similar (and immediate from the definition of $\Phi$ as evaluation at $\mathrm{id}_X$).
   221	\end{proof}
   222	
   223	\begin{remark}[The element $\alpha_X(\mathrm{id}_X)$]
   224	The proof reveals the algorithmic content of Yoneda. A natural transformation out of $h_X$ is determined by where it sends the universal element $\mathrm{id}_X \in h_X(X) = \mathrm{Hom}(X, X)$. Every other component is forced by naturality.
   225	\end{remark}
   226	
   227	\subsection{The embedding theorem}
   228	
   229	\begin{corollary}[Fully faithful Yoneda embedding]
   230	\label{cor:yoneda-fully-faithful}
   231	Specializing $F = h_Y$ in \cref{thm:yoneda},
   232	\[
   233	\mathrm{Nat}(h_X, h_Y) \;\cong\; h_Y(X) \;=\; \mathrm{Hom}_{\mathcal{C}}(X, Y).
   234	\]
   235	The Yoneda embedding $y\colon \mathcal{C} \to \widehat{\mathcal{C}}$ is fully faithful.
   236	\end{corollary}
   237	
   238	\begin{proof}
   239	The bijection of \cref{thm:yoneda} sends a natural transformation $\alpha\colon h_X \to h_Y$ to the element $\alpha_X(\mathrm{id}_X) \in \mathrm{Hom}(X, Y)$, and inversely sends $f\colon X \to Y$ to $y(f)$. Faithfulness is injectivity of $y$ on hom-sets; fullness is surjectivity. Both follow from this bijection.
   240	\end{proof}
   241	
   242	\begin{corollary}[Yoneda's identity criterion]
   243	\label{cor:identity-criterion}
   244	For $X, Y \in \mathcal{C}$,
   245	\[
   246	X \cong Y \iff h_X \cong h_Y \text{ as presheaves.}
   247	\]
   248	\end{corollary}
   249	
   250	\begin{proof}
   251	A fully faithful functor reflects and preserves isomorphisms.
   252	\end{proof}
   253	
   254	\subsection{The contravariant (dual) form}
   255	
   256	\begin{theorem}[Covariant Yoneda]
   257	\label{thm:co-yoneda}
   258	For $X \in \mathcal{C}$ and $G\colon \mathcal{C} \to \mathbf{Set}$, there is a natural bijection
   259	\[
   260	\mathrm{Nat}(h^X, G) \cong G(X), \qquad \beta \longmapsto \beta_X(\mathrm{id}_X).

exec
/usr/local/bin/zsh -lc "rg -n \"(\\\\cite|\\\\ref|\\\\label|\\\\bibliography|\\\\addbibresource|\\\\usepackage|TODO|undefined|overfull|hbox|vbox)\" papers/04-yoneda/latex/04-yoneda.tex papers/04-yoneda -g '"'!*.pdf'"'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:(\cite|\ref|\label|\bibliography|\addbibresource|\usepackage|TODO|undefined|overfull|hbox|vbox))
        ^^
error: unrecognized escape sequence

codex
The prior pass already covered the `everypage`, PDF-string, and overfull/underfull items, so I’m excluding those unless the current build proves one is still a hard failure. The first source scan also shows some of those earlier fixes were applied, so I’m moving to direct build/log checks.
exec
/usr/local/bin/zsh -lc "nl -ba papers/04-yoneda/latex/04-yoneda.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   261	\]
   262	The covariant Yoneda embedding $y'\colon \mathcal{C}^{\mathrm{op}} \to [\mathcal{C}, \mathbf{Set}]$, $X \mapsto \mathrm{Hom}_{\mathcal{C}}(X, -)$, is fully faithful.
   263	\end{theorem}
   264	
   265	\begin{proof}
   266	Apply \cref{thm:yoneda} to $\mathcal{C}^{\mathrm{op}}$ and unfold definitions. Components are now precomposition rather than postcomposition.
   267	\end{proof}
   268	
   269	The two forms answer two questions about an object $X$:
   270	\begin{itemize}
   271	\item $h_X = \mathrm{Hom}(-, X)$: ``which objects \emph{map into} $X$, and how?'' --- the \emph{generalized elements} of $X$.
   272	\item $h^X = \mathrm{Hom}(X, -)$: ``which objects does $X$ \emph{map into}, and how?'' --- the \emph{co-elements} or \emph{co-probes}.
   273	\end{itemize}
   274	Both encode $X$ up to isomorphism.
   275	
   276	\subsection{The Yoneda lemma as universality}
   277	
   278	\begin{proposition}[Universal element]
   279	\label{prop:universal-element}
   280	Let $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ be a presheaf. A representation of $F$ by $X$ is the same data as a \emph{universal element} $u \in F(X)$: an element such that for every $Z \in \mathcal{C}$ and $v \in F(Z)$ there exists a unique $f\colon Z \to X$ with $F(f)(u) = v$.
   281	\end{proposition}
   282	
   283	\begin{proof}
   284	Given representation $\eta\colon h_X \xrightarrow{\cong} F$, set $u := \eta_X(\mathrm{id}_X)$; the inverse $\eta^{-1}\colon F(Z) \to h_X(Z) = \mathrm{Hom}(Z, X)$ sends $v$ to the unique $f$ with $F(f)(u) = v$, by the explicit form $\eta = \Psi(u)$ of \cref{thm:yoneda}. Conversely, a universal element induces $\Psi(u)$ which is invertible by uniqueness.
   285	\end{proof}
   286	
   287	This is the bridge to Paper~III: every universal property is the assertion that some presheaf is representable.
   288	
   289	\section{Numbers as Representable Functors}
   290	\label{sec:numbers-as-functors}
   291	
   292	We now apply the Yoneda machinery to the central question of the series: \emph{what is a number?}
   293	
   294	\subsection{The category of pointed endomorphism structures}
   295	
   296	\begin{definition}[Pointed endomorphism structure]
   297	\label{def:successor-structure}
   298	A \emph{pointed endomorphism structure}, or \emph{successor structure}, is a triple $(X, x_0, f)$ where $X$ is a set, $x_0 \in X$ a basepoint, and $f\colon X \to X$ an endomorphism. A morphism $(X, x_0, f) \to (Y, y_0, g)$ is a function $\varphi\colon X \to Y$ with $\varphi(x_0) = y_0$ and $\varphi \circ f = g \circ \varphi$. Let $\mathbf{Succ}$ denote the resulting category.
   299	\end{definition}
   300	
   301	By Lawvere's NNO theorem (Paper~III), $(\mathbb{N}, 0, \mathrm{succ})$ is initial in $\mathbf{Succ}$.
   302	
   303	\subsection{Recasting numbers as functors}
   304	
   305	\begin{definition}[The underlying-set functor on $\mathbf{Succ}$]
   306	\label{def:U-succ}
   307	Let $U\colon \mathbf{Succ} \to \mathbf{Set}$ be the forgetful functor sending $(X, x_0, f) \mapsto X$ and $\varphi \mapsto \varphi$ (the underlying set-function). Let $\mathbf{1}\colon \mathbf{Succ} \to \mathbf{Set}$ denote the constant functor at the singleton $\{*\}$. A natural transformation $\mathbf{1} \Rightarrow U$ is exactly a coherent choice of element $\eta_{O} \in U(O)$ for each $O \in \mathbf{Succ}$ such that for every morphism $\varphi\colon O \to O'$, $U(\varphi)(\eta_{O}) = \eta_{O'}$.
   308	\end{definition}
   309	
   310	\begin{definition}[The $n$th-iterate selector]
   311	\label{def:eps-n}
   312	For each $n \in \mathbb{N}$, define the \emph{$n$th-iterate selector} as the natural transformation
   313	\[
   314	\varepsilon_n\colon \mathbf{1} \Longrightarrow U,\qquad \varepsilon_n^{(X, x_0, f)}(*) := f^n(x_0) \in X = U(X, x_0, f).
   315	\]
   316	Naturality: for $\varphi\colon (X, x_0, f) \to (Y, y_0, g)$ in $\mathbf{Succ}$, the equations $\varphi \circ f = g \circ \varphi$ and $\varphi(x_0) = y_0$ give inductively $\varphi(f^n(x_0)) = g^n(y_0)$, i.e., $U(\varphi)(\varepsilon_n^{(X, x_0, f)}(*)) = \varepsilon_n^{(Y, y_0, g)}(*)$.
   317	\end{definition}
   318	
   319	The functor $U$ is the relational ``probe'': it asks of each successor structure ``what is your underlying set?'' The natural transformations $\varepsilon_n\colon \mathbf{1} \Rightarrow U$ then pick out a distinguished element of each underlying set.
   320	
   321	\subsection{The representability theorem}
   322	
   323	\begin{theorem}[Numbers as natural transformations]
   324	\label{thm:numbers-as-representable}
   325	There is a natural bijection
   326	\[
   327	\mathrm{Nat}\!\big(\mathbf{1}, U\big) \;\cong\; \mathbb{N}
   328	\]
   329	between natural transformations from the constant-singleton functor $\mathbf{1}\colon \mathbf{Succ} \to \mathbf{Set}$ to the underlying-set functor $U\colon \mathbf{Succ} \to \mathbf{Set}$, and natural numbers. The bijection sends $\varepsilon_n \mapsto n$.
   330	\end{theorem}
   331	
   332	\begin{proof}
   333	By initiality of $(\mathbb{N}, 0, \mathrm{succ})$ in $\mathbf{Succ}$, the corepresentable hom-functor
   334	\[
   335	h^{(\mathbb{N}, 0, \mathrm{succ})} := \mathrm{Hom}_{\mathbf{Succ}}\!\big((\mathbb{N}, 0, \mathrm{succ}), -\big)\colon \mathbf{Succ} \longrightarrow \mathbf{Set}
   336	\]
   337	sends every object to a singleton. Hence it is canonically naturally isomorphic to the constant-singleton functor $\mathbf{1}$. By the covariant Yoneda lemma (\cref{thm:co-yoneda}) applied to $h^{(\mathbb{N}, 0, \mathrm{succ})}$ and to $U$,
   338	\[
   339	\mathrm{Nat}\!\big(h^{(\mathbb{N}, 0, \mathrm{succ})}, U\big) \;\cong\; U(\mathbb{N}, 0, \mathrm{succ}) \;=\; \mathbb{N}.
   340	\]
   341	Composing with the canonical isomorphism $\mathbf{1} \cong h^{(\mathbb{N}, 0, \mathrm{succ})}$ gives
   342	\[
   343	\mathrm{Nat}\!\big(\mathbf{1}, U\big) \;\cong\; \mathbb{N}.
   344	\]
   345	Concretely the bijection sends $\eta\colon \mathbf{1} \Rightarrow U$ to $\eta_{(\mathbb{N}, 0, \mathrm{succ})}(*) \in \mathbb{N}$. Applied to $\eta = \varepsilon_n$, we get $\varepsilon_n^{(\mathbb{N}, 0, \mathrm{succ})}(*) = \mathrm{succ}^n(0) = n$, so $\varepsilon_n \mapsto n$. Conversely, given $n \in \mathbb{N}$, naturality forces the component at $(X, x_0, f)$ to be $U(\mathrm{rec}_{(X, x_0, f)})(n) = f^n(x_0)$, recovering $\varepsilon_n$.
   346	\end{proof}
   347	
   348	\begin{remark}[The role of the initial structure]
   349	The initial object $(\mathbb{N}, 0, \mathrm{succ})$ corepresents the constant-singleton functor $\mathbf{1}$, not $U$. Calling $\mathbb{N}$ a corepresenting object of $U$ would conflict with the standard meaning: the corepresentable
   350	\[
   351	h^{(\mathbb{N}, 0, \mathrm{succ})} = \mathrm{Hom}_{\mathbf{Succ}}\!\big((\mathbb{N}, 0, \mathrm{succ}), -\big)
   352	\]
   353	is constant on singletons, while $U$ takes generally non-singleton values.
   354	
   355	The role of initiality in \cref{thm:numbers-as-representable} is more subtle. Initiality provides the canonical identification $\mathbf{1} \cong h^{(\mathbb{N}, 0, \mathrm{succ})}$, which together with the covariant Yoneda lemma yields the bijection $\mathrm{Nat}(\mathbf{1}, U) \cong U(\mathbb{N}, 0, \mathrm{succ}) = \mathbb{N}$. The natural number $n$ then \emph{is} the natural transformation $\varepsilon_n$ that picks out $f^n(x_0)$ in every successor structure --- the Yoneda formulation of primitive recursion.
   356	\end{remark}
   357	
   358	\subsection{Numbers as objects of \texorpdfstring{$(\mathbb{N}, \le)$}{(N, <=)}}
   359	
   360	\Cref{thm:numbers-as-representable} encodes each $n \in \mathbb{N}$ as a natural transformation on $\mathbf{Succ}$, but it does not display $n$ as the representing \emph{object} of any single representable presheaf. To realize each individual $n$ as its own representable functor we descend to a category whose \emph{objects} are the natural numbers themselves. The order category $(\mathbb{N}, \le)$ does this:
   361	
   362	\begin{proposition}[Identity criterion in $(\mathbb{N}, \le)$]
   363	\label{prop:order-identity-criterion}
   364	View $(\mathbb{N}, \le)$ as a thin category with one morphism $m \to n$ when $m \le n$. The Yoneda embedding $y\colon (\mathbb{N}, \le) \hookrightarrow \widehat{(\mathbb{N}, \le)}$ sends $n$ to the presheaf
   365	\[
   366	h_{n}(m) = \begin{cases} \{*\} & m \le n, \\ \emptyset & m > n.\end{cases}
   367	\]
   368	Two natural numbers $n, n'$ satisfy $h_n \cong h_{n'}$ if and only if $n = n'$.
   369	\end{proposition}
   370	
   371	\begin{proof}
   372	The presheaf $h_n$ has support $\{0, 1, \ldots, n\}$. Two presheaves with non-empty support agree if and only if their supports do, i.e., $n = n'$. This is \cref{cor:identity-criterion} specialized to a thin category, where ``isomorphic'' reduces to ``equal''.
   373	\end{proof}
   374	
   375	\begin{remark}[Yoneda gloss in $(\mathbb{N}, \le)$]
   376	The slogan \emph{``$58$ is $\mathrm{Hom}(-, 58)$''} now has formal content within $(\mathbb{N}, \le)$: the object $58$ is identified with the presheaf $h_{58}$ whose support is exactly $\{0, 1, \ldots, 58\}$. By the identity criterion, $58$ is the unique object with this presheaf. The two formalizations --- $\mathbf{Succ}$ in \cref{thm:numbers-as-representable} and $(\mathbb{N}, \le)$ in \cref{prop:order-identity-criterion} --- are complementary in the following sense: the former characterizes \emph{the entire structure of natural numbers} as a single relational invariant (via natural transformations $\mathbf{1} \Rightarrow U$) across all possible successor systems, while the latter \emph{individuates each number $n$} by its unique relational ``history'' (the support presheaf $h_n$) within the ordered set of natural numbers themselves.
   377	\end{remark}
   378	
   379	\subsection{Beyond order: the categorical structure of \texorpdfstring{$58$}{58}}
   380	
   381	The order category $(\mathbb{N}, \le)$ is rich enough for individuation but too rigid to capture all arithmetic structure. A richer category is the \emph{Lawvere theory} $\mathcal{L}_{\mathrm{nat}}$ of natural numbers, whose objects are natural numbers $0, 1, 2, \ldots$ and whose morphisms $\mathrm{Hom}(m, n)$ are functions $\{0, \ldots, m-1\} \to \{0, \ldots, n-1\}$.
   382	
   383	\begin{proposition}[Yoneda for $\mathcal{L}_{\mathrm{nat}}$]
   384	\label{prop:lawvere-yoneda}
   385	In $\mathcal{L}_{\mathrm{nat}}$, the representable functor $h_n = \mathrm{Hom}(-, n)$ assigns to each object $m$ the hom-set $\mathrm{Hom}_{\mathcal{L}_{\mathrm{nat}}}(m, n)$ --- i.e., the set of all functions $\{0, \ldots, m-1\} \to \{0, \ldots, n-1\}$ --- of cardinality $|h_n(m)| = n^m$. Two objects $n, n'$ are isomorphic in $\mathcal{L}_{\mathrm{nat}}$ iff $n = n'$, equivalently iff $|h_n(m)| = |h_{n'}(m)|$ for all $m$.
   386	\end{proposition}
   387	
   388	\begin{proof}
   389	$|h_n(m)| = n^m$. For each fixed $m \ge 1$, the value $n^m$ determines $n$. The isomorphism criterion ($n \cong n' \iff h_n \cong h_{n'}$) is \cref{cor:identity-criterion}; the further reduction to cardinality profiles uses that two finite sets are isomorphic iff equinumerous.
   390	\end{proof}
   391	
   392	This recovers, via Yoneda, the cardinality interpretation of $58$: it is the size of any finite set whose set of self-functions, choice functions, etc., satisfy the right counting laws. ``$58$'' is the relational profile of size-$58$ finite sets within $\mathbf{FinSet}$.
   393	
   394	\subsection{\texorpdfstring{$\pi$ and $e$}{pi and e} as representing elements}
   395	\label{subsec:pi-e}
   396	
   397	The classical transcendentals admit Yoneda-flavored characterizations. We give two explicit examples.
   398	
   399	\begin{example}[The number $\pi$]
   400	\label{ex:pi-yoneda}
   401	Let $\mathbf{TopGrp}$ denote the category of topological groups and continuous homomorphisms. There is a canonical continuous group homomorphism $\gamma\colon (\mathbb{R}, +) \to S^{1}$, $\gamma(x) = e^{ix}$ (viewing $S^{1}$ as the unit circle in $\mathbb{C}^{\times}$), whose kernel is a discrete subgroup of $\mathbb{R}$. Discrete subgroups of $(\mathbb{R}, +)$ are of the form $\alpha \mathbb{Z}$ for $\alpha \ge 0$; the universal property of $\gamma$ as the universal cover of $S^{1}$ (a terminal object in the appropriately defined category of pointed connected covering homomorphisms onto $S^{1}$) determines this $\alpha$ uniquely. The number $2\pi$ is the unique positive generator of $\ker(\gamma)$:
   402	\[
   403	\ker(\gamma) = 2\pi\, \mathbb{Z}.
   404	\]
   405	Heuristically, $\pi$ is half this universal period: it labels the universal cover relation in $\mathbf{TopGrp}$. By Yoneda, $S^{1}$ is determined up to isomorphism by its representable functor
   406	\[
   407	\mathrm{Hom}_{\mathbf{TopGrp}}(-, S^{1}),
   408	\]
   409	and the number $2\pi$ appears as a structural invariant within this representable, namely the generator of the kernel of the universal-cover morphism. This recovers $\pi$ as a relational invariant rather than as a constructed real.
   410	\end{example}
   411	
   412	\begin{example}[The number $e$]
   413	\label{ex:e-yoneda}
   414	Consider, in the category $\mathbf{Lie}$ of Lie groups, the functor of continuous group homomorphisms $F\colon \mathbf{Lie} \to \mathbf{Set}$, $G \mapsto \mathrm{Hom}_{\mathbf{Lie}}((\mathbb{R}, +), G)$. By Yoneda this is the corepresentable $h^{(\mathbb{R}, +)}$. Specializing $G = (\mathbb{R}^{>0}, \cdot)$, the set $F(\mathbb{R}^{>0}) = \mathrm{Hom}_{\mathbf{Lie}}((\mathbb{R}, +), (\mathbb{R}^{>0}, \cdot))$ is the one-parameter family $\{\varphi_a(x) = a^x : a \in \mathbb{R}^{>0}\}$. Adding the normalization $\varphi'(0) = 1$ cuts this down to a singleton, namely $\varphi = \exp$.
   415	
   416	The number $e$ is then identified by the universal-element principle (\cref{prop:universal-element}): in the slice category of normalized continuous group homomorphisms $(\mathbb{R}, +) \to (\mathbb{R}^{>0}, \cdot)$ over $(\mathbb{R}^{>0}, \cdot)$, $\exp$ is the unique element, and $e := \exp(1) \in \mathbb{R}^{>0}$ is its value at the canonical generator $1 \in \mathbb{R}$. We acknowledge that, unlike $\pi$, the example of $e$ is more illustrative of the Yoneda \emph{spirit} (an object is the value of the unique map satisfying a normalization) than a textbook representable; the intent is to show that ``$e$ is a relational invariant'' rather than to give a fully formal Yoneda statement.
   417	\end{example}
   418	
   419	\begin{remark}[The structuralist payoff]
   420	Both $\pi$ and $e$ are characterized without ever ``constructing'' them as Cauchy sequences or Dedekind cuts. They are positions in functor categories. The Yoneda embedding makes this position canonical: the same $\pi$ appears in every model.
   421	\end{remark}
   422	
   423	\section{The Density Theorem}
   424	\label{sec:density}
   425	
   426	The Yoneda embedding is fully faithful but rarely essentially surjective: most presheaves are not representable. The density theorem shows that representables nonetheless \emph{generate} the presheaf category.
   427	
   428	\begin{theorem}[Density theorem]
   429	\label{thm:density}
   430	Let $\mathcal{C}$ be a small category. Every presheaf $F\colon \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ is canonically a colimit of representables. Specifically, $F$ is the colimit of the diagram
   431	\[
   432	\int F \xrightarrow{\;\pi\;} \mathcal{C} \xrightarrow{\;y\;} \widehat{\mathcal{C}},
   433	\]
   434	where $\int F$ is the category of elements of $F$ and $\pi$ is the projection $(X, u) \mapsto X$.
   435	\end{theorem}
   436	
   437	\begin{proof}[Proof sketch]
   438	Define a cocone $\sigma\colon y \pi \Rightarrow F$ over $\int F$ component-wise: for $(X, u) \in \int F$, set $\sigma_{(X, u)} := \Psi(u)\colon h_X \to F$ from \cref{thm:yoneda}. Naturality of $\sigma$ in the morphisms of $\int F$ is exactly the Yoneda bijection. Universality: for any cocone $\tau\colon y\pi \Rightarrow G$, the unique factoring $F \to G$ assigns to $u \in F(X)$ the value $\tau_{(X, u), X}(\mathrm{id}_X) \in G(X)$.
   439	\end{proof}
   440	
   441	\begin{corollary}[Free cocompletion]
   442	\label{cor:free-cocompletion}
   443	The Yoneda embedding $y\colon \mathcal{C} \to \widehat{\mathcal{C}}$ exhibits $\widehat{\mathcal{C}}$ as the \emph{free cocompletion} of $\mathcal{C}$: any functor $\mathcal{C} \to \mathcal{D}$ into a cocomplete category $\mathcal{D}$ extends uniquely (up to natural isomorphism) to a colimit-preserving functor $\widehat{\mathcal{C}} \to \mathcal{D}$.
   444	\end{corollary}
   445	
   446	\begin{remark}[Numbers as colimits of probes]
   447	\label{rem:colim-of-probes}
   448	For the Lawvere theory $\mathcal{L}_{\mathrm{nat}}$, density says: any functor $\mathcal{L}_{\mathrm{nat}}^{\mathrm{op}} \to \mathbf{Set}$ (an \emph{algebra over the theory}) is canonically a colimit of representables $h_n$. In particular, the structure of $\mathbb{N}$ propagates into all algebras for the theory by colimit assembly.
   449	\end{remark}
   450	
   451	\section{Beyond Numbers: Yoneda Across Mathematics}
   452	\label{sec:beyond-numbers}
   453	
   454	\subsection{Groups as their representations}
   455	
   456	For a group $G$, the regular representation is the action of $G$ on itself by left translation. Yoneda's lemma in $\mathbf{Grp}$ specializes:
   457	\[
   458	\mathrm{Hom}_{\mathbf{Grp}}(\mathbb{Z}, G) \cong G,
   459	\]
   460	identifying group elements of $G$ with $\mathbb{Z}$-points. More generally, for any small group $G$ regarded as a one-object groupoid $\mathbf{B}G$, the Yoneda embedding gives
   461	\[
   462	y\colon \mathbf{B}G \hookrightarrow \widehat{\mathbf{B}G} = G\text{-}\mathbf{Set},
   463	\]
   464	sending the unique object to the regular $G$-set $G$. The Yoneda lemma then yields
   465	\[
   466	\mathrm{Nat}(G, F) \cong F(*) \quad \text{(the underlying set of $F$),}
   467	\]
   468	i.e., a $G$-equivariant map out of the regular representation is determined by where it sends the identity. This is Cayley's theorem in disguise.
   469	
   470	\begin{proposition}[Cayley via Yoneda]
   471	\label{prop:cayley-yoneda}
   472	The Yoneda embedding $y\colon \mathbf{B}G \hookrightarrow G\text{-}\mathbf{Set}$ realizes Cayley's theorem: every group is canonically a subgroup of the symmetric group on its underlying set, via the regular representation.
   473	\end{proposition}
   474	
   475	\begin{proof}
   476	Fully faithfulness of $y$ implies $\mathrm{Aut}(G \text{ as $G$-set}) = G$, embedding $G \hookrightarrow \mathrm{Sym}(G)$.
   477	\end{proof}
   478	
   479	\subsection{Spaces via points}
   480	
   481	For a topological space $X$, the singular complex
   482	\[
   483	S(X) := \mathrm{Hom}_{\mathbf{Top}}(\Delta^{\bullet}, X)
   484	\]
   485	is a simplicial set. This is the covariant Yoneda restricted to the cosimplicial space of standard simplices: $X \in \mathbf{Top}$ is probed by morphisms \emph{from} the $\Delta^n$. The Quillen equivalence between simplicial sets and topological spaces, restricted to weak equivalences, recovers $X$ up to homotopy from $S(X)$ --- a homotopical Yoneda.
   486	
   487	\subsection{Schemes as functors of points}
   488	
   489	Grothendieck's revolution in algebraic geometry consists of taking the Yoneda embedding seriously.
   490	
   491	\begin{definition}[Functor of points]
   492	\label{def:functor-of-points}
   493	Given a scheme $X$, its \emph{functor of points} is
   494	\[
   495	h_X\colon \mathbf{Sch}^{\mathrm{op}} \longrightarrow \mathbf{Set},\qquad T \longmapsto \mathrm{Hom}_{\mathbf{Sch}}(T, X).
   496	\]
   497	Equivalently, restricting to affine test schemes $T = \mathrm{Spec}(R)$, one obtains a functor $\mathbf{Ring} \to \mathbf{Set}$, $R \mapsto X(R)$, the set of \emph{$R$-points} of $X$.
   498	\end{definition}
   499	
   500	By the Yoneda lemma, $X$ is determined up to canonical isomorphism by $h_X$. This is the basis for treating schemes as functors $\mathbf{Ring} \to \mathbf{Set}$ satisfying suitable sheaf conditions: \emph{representable} functors. Moduli problems are typically posed by writing down a non-representable presheaf (the moduli functor) and asking whether a representing scheme (or stack) exists.
   501	
   502	\begin{example}[$\mathbb{A}^1_{\mathbb{Z}}$ as a representable functor]
   503	The affine line $\mathbb{A}^{1}_{\mathbb{Z}}$ has functor of points $R \mapsto R$, the forgetful functor $\mathbf{Ring} \to \mathbf{Set}$. By Yoneda, $\mathbb{A}^{1}$ is uniquely determined as the scheme representing this functor.
   504	\end{example}
   505	
   506	\section{Enriched, \texorpdfstring{$2$-Categorical, and $\infty$-Categorical}{2-Categorical, and infinity-Categorical} Yoneda}
   507	\label{sec:enriched}
   508	
   509	\subsection{Enriched Yoneda}
   510	
   511	\begin{definition}[$\mathcal{V}$-enriched category]
   512	\label{def:enriched-cat}
   513	Let $\mathcal{V} = (\mathcal{V}_0, \otimes, I)$ be a closed monoidal category. A \emph{$\mathcal{V}$-category} $\mathcal{C}$ has a class of objects and, for each pair $X, Y$, a hom-object $\mathcal{C}(X, Y) \in \mathcal{V}$, with composition $\mathcal{C}(Y, Z) \otimes \mathcal{C}(X, Y) \to \mathcal{C}(X, Z)$ and identities $I \to \mathcal{C}(X, X)$ satisfying associativity and unit axioms.
   514	\end{definition}
   515	
   516	\begin{theorem}[Enriched Yoneda lemma]
   517	\label{thm:enriched-yoneda}
   518	For a $\mathcal{V}$-category $\mathcal{C}$, $\mathcal{V}$-functor $F\colon \mathcal{C}^{\mathrm{op}} \to \mathcal{V}$, and $X \in \mathcal{C}$, there is a $\mathcal{V}$-natural isomorphism
   519	\[
   520	[\mathcal{C}^{\mathrm{op}}, \mathcal{V}](\mathcal{C}(-, X), F) \cong F(X) \quad \text{in $\mathcal{V}$.}
   521	\]
   522	The enriched Yoneda embedding $y\colon \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathcal{V}]$ is fully faithful as a $\mathcal{V}$-functor.
   523	\end{theorem}
   524	
   525	Examples:
   526	\begin{itemize}
   527	\item $\mathcal{V} = \mathbf{Set}$: ordinary Yoneda.
   528	\item $\mathcal{V} = \mathbf{Cat}$: $2$-Yoneda (next subsection).
   529	\item $\mathcal{V} = \mathbf{Ab}$: Yoneda for additive categories; representable functors are abelian groups.
   530	\item $\mathcal{V} = \mathbf{Vect}_k$: Yoneda for $k$-linear categories; representables are vector spaces.
   531	\item $\mathcal{V} = \mathbf{sSet}$: simplicial Yoneda, the basis for $\infty$-Yoneda.
   532	\end{itemize}
   533	
   534	\subsection{\texorpdfstring{$2$-categorical}{2-categorical} Yoneda}
   535	
   536	In a $2$-category $\mathcal{K}$, the hom is a category $\mathcal{K}(X, Y)$ with morphisms (1-cells) and morphisms-between-morphisms (2-cells).
   537	
   538	\begin{theorem}[$2$-Yoneda]
   539	\label{thm:2-yoneda}
   540	For a $2$-category $\mathcal{K}$, the $2$-Yoneda embedding
   541	\[
   542	y\colon \mathcal{K} \to [\mathcal{K}^{\mathrm{op}}, \mathbf{Cat}]
   543	\]
   544	is fully faithful at the level of $1$-cells and $2$-cells. Concretely,
   545	\[
   546	[\mathcal{K}^{\mathrm{op}}, \mathbf{Cat}](\mathcal{K}(-, X), F) \simeq F(X)
   547	\]
   548	as categories, where $\simeq$ denotes equivalence.
   549	\end{theorem}
   550	
   551	\subsection{\texorpdfstring{$\infty$-categorical}{infinity-categorical} Yoneda}
   552	
   553	For an $(\infty, 1)$-category $\mathcal{C}$ presented as a quasi-category (i.e., a simplicial set satisfying the inner horn lifting condition), the Yoneda embedding lifts to
   554	\[
   555	y\colon \mathcal{C} \hookrightarrow \mathcal{P}(\mathcal{C}) := \mathrm{Fun}(\mathcal{C}^{\mathrm{op}}, \mathcal{S}),
   556	\]
   557	where $\mathcal{S}$ is the $\infty$-category of spaces (Kan complexes).
   558	
   559	\begin{theorem}[$\infty$-Yoneda lemma, Lurie]
   560	\label{thm:infty-yoneda}
   561	For a small $(\infty, 1)$-category $\mathcal{C}$, an object $X \in \mathcal{C}$, and a presheaf $F \in \mathcal{P}(\mathcal{C})$, there is an equivalence of spaces
   562	\[
   563	\mathrm{Map}_{\mathcal{P}(\mathcal{C})}(\mathcal{C}(-, X), F) \simeq F(X).
   564	\]
   565	The Yoneda embedding is fully faithful in the $\infty$-categorical sense, and exhibits $\mathcal{P}(\mathcal{C})$ as the free cocompletion of $\mathcal{C}$ under small homotopy colimits.
   566	\end{theorem}
   567	
   568	The reference is Lurie's \emph{Higher Topos Theory}~\cite{lurie}, Lemma 5.1.5.2 and Theorem 5.1.5.6.
   569	
   570	\subsection{Ramifications}
   571	
   572	The progression Set-Yoneda $\to$ enriched-Yoneda $\to$ $\infty$-Yoneda parallels the progression of structuralist principles:
   573	\begin{itemize}
   574	\item Set-Yoneda: an object is its hom-set profile.
   575	\item Enriched-Yoneda: an object is its hom-object profile in $\mathcal{V}$.
   576	\item $\infty$-Yoneda: an object is its mapping-space profile, with all higher coherences.
   577	\end{itemize}
   578	Each generalization preserves the slogan ``an object is its system of relationships,'' but enlarges the meaning of ``relationship.''
   579	
   580	\section{Bridge to Homotopy Type Theory}
   581	\label{sec:bridge-hott}
   582	
   583	\subsection{Yoneda yields equivalences; univalence yields equalities}
   584	
   585	\cref{cor:identity-criterion} states $X \cong Y \iff h_X \cong h_Y$. The right-hand isomorphism is a piece of data: a natural transformation in each direction whose composites are identities. In ordinary category theory, this is as far as we can push: $X \cong Y$ is not the same as $X = Y$; the latter requires a notion of identity stronger than isomorphism.
   586	
   587	\begin{definition}[Univalence axiom, informal]
   588	\label{def:univalence}
   589	In Homotopy Type Theory, for any types $A, B$ in a universe $\mathcal{U}$, the canonical map
   590	\[
   591	\mathrm{idtoeqv}\colon (A = B) \longrightarrow (A \simeq B)
   592	\]
   593	is itself an equivalence.
   594	\end{definition}
   595	
   596	The univalence axiom internalizes Yoneda's identity criterion. Where the Yoneda lemma states $h_X \cong h_Y \Rightarrow X \cong Y$, univalence states $h_X \simeq h_Y \Rightarrow h_X = h_Y$ as inhabitants of the universe of presheaves. The equivalence becomes a path.
   597	
   598	\subsection{The Yoneda embedding as the canonical model}
   599	
   600	In $1$-category theory, the Yoneda embedding $y\colon \mathcal{C} \to \widehat{\mathcal{C}}$ is the prototype of a ``canonical model'' of $\mathcal{C}$: it represents $\mathcal{C}$ inside a category-with-better-properties. In HoTT, an analogous role is played by the universe-of-fibrations / the simplicial-set model: the model in which univalence is provable. The mapping is
   601	
   602	\begin{center}
   603	\begin{tabular}{l|l}
   604	\textbf{$1$-category theory} & \textbf{HoTT} \\
   605	\hline
   606	$\mathcal{C}$ & A type $A$ \\
   607	$y\colon \mathcal{C} \to \widehat{\mathcal{C}}$ & $A \hookrightarrow \mathcal{U}$ \\
   608	$h_X = \mathrm{Hom}(-, X)$ & $\mathrm{Id}_A(-, x)$ (the identity type) \\
   609	$X \cong Y$ in $\mathcal{C}$ & $A \simeq B$ in $\mathcal{U}$ \\
   610	$h_X \cong h_Y$ as presheaves & $\mathrm{Id}_A(-, x) \simeq \mathrm{Id}_A(-, y)$ \\
   611	Yoneda lemma & Path induction \\
   612	\textbf{(structuralist analogue)} & \textbf{(univalence axiom)} \\
   613	``$X \cong Y \Rightarrow$ formally identical'' & ``$A \simeq B \Rightarrow A = B$''
   614	\end{tabular}
   615	\end{center}
   616	
   617	The final row is the conceptual leap of HoTT. In $1$-category theory we identify isomorphic objects \emph{by convention}, treating them as ``the same up to isomorphism.'' The Yoneda lemma justifies this convention: the relational profile is identical. Univalence axiomatizes the convention, making it a deduction within the system.
   618	
   619	\subsection{The directed analogue}
   620	

exec
/usr/local/bin/zsh -lc "nl -ba papers/04-yoneda/latex/04-yoneda.tex | sed -n '621,920p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   621	The Yoneda embedding has a directed (non-symmetric) analogue in directed type theory and simplicial type theory~\cite{riehl-shulman}. There, the role of mapping spaces is played by directed hom-types $\hom_A(x, y)$, and the Yoneda lemma takes the form
   622	\[
   623	\mathrm{Map}(\hom_A(-, x), F) \simeq F(x),
   624	\]
   625	where ``Map'' itself is a directed function space. This is the entry point for an internal language of $(\infty, 1)$-categories. We mention it for context; its development belongs to a sequel.
   626	
   627	\section{Haskell Implementation}
   628	\label{sec:haskell}
   629	
   630	The companion code in \texttt{src/04-yoneda/} implements the Yoneda embedding for finite categories.
   631	
   632	\subsection{Architecture}
   633	
   634	The code consists of three modules:
   635	\begin{itemize}
   636	\item \texttt{FiniteCat.hs} --- a representation of finite categories as a list of objects together with a hom-function returning lists of morphisms, plus composition.
   637	\item \texttt{Yoneda.hs} --- the Yoneda embedding $y(X) = h_X$ as a function from objects to presheaves, with naturality checks.
   638	\item \texttt{Main.hs} --- demonstrations: (1) the order category $(\mathbb{N}_{\le N}, \le)$ for small $N$, exhibiting $h_n$ for each $n$; (2) a small group as $\mathbf{B}G$, recovering Cayley.
   639	\end{itemize}
   640	
   641	\subsection{Sketch of the embedding code}
   642	
   643	Pseudocode for the central operation. The presheaf $h_X = \mathrm{Hom}(-, X)$ is contravariant in its argument: for a morphism $g\colon W \to Z$ in $\mathcal{C}$, $h_X(g)\colon \mathrm{Hom}(Z, X) \to \mathrm{Hom}(W, X)$ is \emph{precomposition} by $g$, sending $m\colon Z \to X$ to $m \circ g\colon W \to X$. Thus:
   644	\begin{verbatim}
   645	yonedaAt :: Category c => c -> Obj c -> (Obj c -> [Mor c])
   646	yonedaAt cat x = \z -> hom cat z x
   647	
   648	-- representable presheaf h_x = Hom(-, x).
   649	-- onMor takes a morphism g : w -> z in the base category C
   650	-- and an element m : z -> x of h_x(z), and returns m . g : w -> x
   651	-- (precomposition by g, since presheaves are contravariant).
   652	representable :: Category c => c -> Obj c -> Presheaf c
   653	representable cat x =
   654	  Presheaf
   655	    { onObj = \z -> hom cat z x
   656	    , onMor = \(g :: Mor c) m -> compose cat m g  -- m : z -> x, g : w -> z
   657	    }
   658	\end{verbatim}
   659	The \texttt{onMor} component of a presheaf must produce a function $F(Z) \to F(W)$ from a morphism $g\colon W \to Z$. For the representable presheaf $h_X = \mathrm{Hom}(-, X)$, this map is precomposition with $g$: it sends a morphism $m\colon Z \to X$ to the composite $m \circ g\colon W \to X$.
   660	The full code includes the natural-transformation type, a Yoneda-lemma-witness function constructing the bijection $\Phi$ explicitly, and an \texttt{eq} function that checks equality of two finite presheaves up to isomorphism.
   661	
   662	\subsection{Demonstration runs}
   663	
   664	The \texttt{main} function executes:
   665	\begin{enumerate}
   666	\item Builds the order category $(\{0, 1, \ldots, 5\}, \le)$.
   667	\item Prints $h_n(m)$ for $0 \le n, m \le 5$, displaying the singleton-or-empty pattern of \cref{thm:numbers-as-representable}.
   668	\item Verifies $h_3 \cong h_3'$ where $h_3'$ is computed by an alternative route (via the Yoneda lemma evaluated at the universal element).
   669	\item Builds $\mathbf{B}\mathbb{Z}/3\mathbb{Z}$ and prints its regular representation as a $\mathbb{Z}/3\mathbb{Z}$-set.
   670	\end{enumerate}
   671	
   672	\section{Results}
   673	\label{sec:results}
   674	
   675	We collect the principal results of the paper.
   676	
   677	\begin{theorem}[Restatement of \cref{thm:yoneda}]
   678	For any locally small $\mathcal{C}$, $X \in \mathcal{C}$, and presheaf $F$, there is a natural bijection $\mathrm{Nat}(h_X, F) \cong F(X)$.
   679	\end{theorem}
   680	
   681	\begin{theorem}[Restatement of \cref{cor:yoneda-fully-faithful} + \cref{cor:identity-criterion}]
   682	The Yoneda embedding $y\colon \mathcal{C} \hookrightarrow \widehat{\mathcal{C}}$ is fully faithful, and reflects/preserves isomorphisms: $X \cong Y \iff h_X \cong h_Y$.
   683	\end{theorem}
   684	
   685	\begin{theorem}[Restatement of \cref{thm:numbers-as-representable} and \cref{prop:order-identity-criterion}]
   686	There is a natural bijection $\mathrm{Nat}(\mathbf{1}, U) \cong \mathbb{N}$ between natural transformations from the constant-singleton functor to the underlying-set functor on $\mathbf{Succ}$, and natural numbers; under it, $n$ corresponds to the natural transformation $\varepsilon_n$ selecting $f^n(x_0)$ in every successor structure. Within the order category $(\mathbb{N}, \le)$, each individual $n \in \mathbb{N}$ is the unique-up-to-isomorphism object whose representable presheaf $h_n$ has support $\{0, \ldots, n\}$. Numbers are thus representable in two complementary senses: globally (each $n$ as a natural transformation $\mathbf{1} \Rightarrow U$ on $\mathbf{Succ}$) and pointwise (each $n$ as the representing object of $h_n$ on $(\mathbb{N}, \le)$).
   687	\end{theorem}
   688	
   689	\begin{theorem}[Restatement of \cref{thm:density}]
   690	Every presheaf is canonically a colimit of representables; $\widehat{\mathcal{C}}$ is the free cocompletion of $\mathcal{C}$.
   691	\end{theorem}
   692	
   693	\begin{theorem}[Restatement of \cref{thm:infty-yoneda}]
   694	The Yoneda lemma generalizes to enriched, $2$-categorical, and $\infty$-categorical contexts, preserving the principle ``an object is its system of relationships.''
   695	\end{theorem}
   696	
   697	\section{Discussion}
   698	\label{sec:discussion}
   699	
   700	\subsection{Comparison with Paper~III}
   701	
   702	Paper~III (Universal Property) characterizes individual objects (the natural number object, the real numbers, $\pi$, $e$) by their respective universal properties. Each such characterization, viewed through Yoneda, is the assertion that some presheaf is representable. Paper~III's content is recovered by listing one universal element per topic; Paper~IV recovers it as a single principle (\cref{prop:universal-element}).
   703	
   704	\subsection{Limitations}
   705	
   706	The Yoneda lemma assumes \emph{locally small}: for not-locally-small categories (e.g., $\mathbf{Cat}$ enlarged), the embedding lands in a category of \emph{large} presheaves and care is needed with size hierarchies. The $\infty$-Yoneda lemma further requires an explicit model (quasi-categories, complete Segal spaces) and the Lurie--Joyal machinery.
   707	
   708	The interpretation \emph{``$58$ is $h_{58}$''} is sensitive to the ambient category. Within $(\mathbb{N}, \le)$, this gives the singleton-pattern presheaf; within $\mathcal{L}_{\mathrm{nat}}$, it gives the cardinality presheaf $m \mapsto 58^{m}$; within the topos of $\mathbf{Set}$ with $\mathbb{N}$ as NNO, it gives the universal-recursion morphism. Each is correct \emph{within its category}; together they exhibit $58$ as a system of related representables.
   709	
   710	\subsection{The structuralist achievement}
   711	
   712	Mathematical structuralism, as articulated by Benacerraf, Resnik, and Shapiro, holds that mathematical objects are positions in structures rather than entities with intrinsic identity. The Yoneda lemma is, arguably, the strongest form of this thesis: an object literally \emph{is} its relational profile, recoverable up to isomorphism from $h_X$. \cref{cor:identity-criterion} renders structuralism a theorem rather than a philosophical stance.
   713	
   714	\subsection{Forward to univalence}
   715	
   716	The remaining gap --- between ``isomorphic'' and ``identical'' --- is what HoTT closes. \cref{sec:bridge-hott} sketched the bridge; Paper~V develops it. The combined picture: Yoneda recovers $X$ from $h_X$ \emph{up to isomorphism}; univalence promotes the isomorphism to a path; together, they constitute the Univalent Correspondence's fourth column (Yoneda) merging into the fifth (HoTT).
   717	
   718	\subsection{Connections to representation theory and physics}
   719	
   720	The Yoneda perspective unifies several apparent dualities in mathematics. In representation theory, an abstract group $G$ is determined by its category of representations (Tannakian duality). In algebraic geometry, a scheme $X$ is determined by its functor of points $h_X$ (Grothendieck). In algebraic topology, a space $X$ up to homotopy is determined by its mapping spaces $\mathrm{Map}(K, X)$ as $K$ ranges over CW complexes (Brown representability).
   721	
   722	Each of these is, at root, an instance of the Yoneda principle: the object \emph{is} the functor it represents, and structural inquiries reduce to functorial ones. The same pattern recurs in physics: a quantum field theory is, in the Atiyah--Segal axiomatization, a functor $\mathrm{Bord}_n \to \mathbf{Vect}$, and physical observables are exactly the Yoneda data of this functor. The hypothesis that ``mathematics is the science of structure'' is, post-Yoneda, the hypothesis that mathematics is the science of representable functors.
   723	
   724	\subsection{Pedagogical remarks}
   725	
   726	For a student first encountering the Yoneda lemma, the following pedagogical sequence has proved effective. (i) Begin with the order category $(\mathbb{N}, \le)$ to see $h_n$ as a profile of singletons and zeros. (ii) Move to Cayley's theorem in $\mathbf{B}G$ to feel the regular representation. (iii) Reach Lawvere's theory $\mathcal{L}_{\mathrm{nat}}$ to see how counting laws emerge from $|h_n(m)| = n^m$. (iv) Generalize to functors of points for schemes, where $X(R) = h_X(\mathrm{Spec}(R))$ becomes a familiar construction. (v) Only then state the lemma in full generality. The Haskell implementation accompanying this paper supports each of (i)--(iii) directly.
   727	
   728	\section{Conclusion}
   729	\label{sec:conclusion}
   730	
   731	The Yoneda embedding $y\colon \mathcal{C} \hookrightarrow [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ is the structuralist's theorem made formal. The natural number $58$ \emph{is} the representable functor $\mathrm{Hom}(-, 58)$; what remains, under change of category, are particular presentations of the same relational profile. Beyond arithmetic, the same principle structures groups (Cayley), spaces (singular complex), and schemes (functor of points). Enriched, $2$-categorical, and $\infty$-categorical generalizations show the principle survives every increase in mathematical sophistication.
   732	
   733	The Yoneda lemma alone does not collapse the distinction between isomorphism and identity; it produces the former from the latter. Univalence (Paper~V) closes the gap by axiomatizing the Yoneda corollary as a path in the universe. Together, these two principles --- one categorical, one type-theoretical --- form the technical core of the Univalent Correspondence.
   734	
   735	\section*{Acknowledgments}
   736	
   737	This paper is part of the YonedaAI Research series \emph{Formalized Foundations of Mathematics}. Thanks to the contributors of Paper~III for the universal-property scaffolding on which Section~\ref{sec:numbers-as-functors} rests. The Haskell code benefits from the conceptual clarity of the Hask-as-CCC tradition.
   738	
   739	\begin{thebibliography}{99}
   740	
   741	\bibitem{maclane}
   742	Mac Lane, S.
   743	\emph{Categories for the Working Mathematician}, 2nd ed.
   744	Graduate Texts in Mathematics, vol.~5. Springer, 1998.
   745	
   746	\bibitem{riehl}
   747	Riehl, E.
   748	\emph{Category Theory in Context}.
   749	Aurora: Dover Modern Math Originals, 2016.
   750	
   751	\bibitem{lurie}
   752	Lurie, J.
   753	\emph{Higher Topos Theory}.
   754	Annals of Mathematics Studies, vol.~170. Princeton University Press, 2009.
   755	arXiv:math/0608040.
   756	
   757	\bibitem{hottbook}
   758	The Univalent Foundations Program.
   759	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics}.
   760	Institute for Advanced Study, 2013. arXiv:1308.0729.
   761	
   762	\bibitem{awodey-warren}
   763	Awodey, S.\ and Warren, M.
   764	Homotopy theoretic models of identity types.
   765	\emph{Mathematical Proceedings of the Cambridge Philosophical Society}, 146(1):45--55, 2009.
   766	
   767	\bibitem{lawvere}
   768	Lawvere, F.~W.
   769	Functorial semantics of algebraic theories.
   770	\emph{Proceedings of the National Academy of Sciences}, 50(5):869--872, 1963.
   771	
   772	\bibitem{benacerraf-1965}
   773	Benacerraf, P.
   774	What numbers could not be.
   775	\emph{Philosophical Review}, 74(1):47--73, 1965.
   776	
   777	\bibitem{kelly}
   778	Kelly, G.~M.
   779	\emph{Basic Concepts of Enriched Category Theory}.
   780	London Mathematical Society Lecture Note Series, vol.~64. Cambridge University Press, 1982.
   781	
   782	\bibitem{riehl-shulman}
   783	Riehl, E.\ and Shulman, M.
   784	A type theory for synthetic $\infty$-categories.
   785	\emph{Higher Structures}, 1(1):147--224, 2017. arXiv:1705.07442.
   786	
   787	\bibitem{wadler-pat}
   788	Wadler, P.
   789	Propositions as types.
   790	\emph{Communications of the ACM}, 58(12):75--84, 2015.
   791	
   792	\bibitem{grothendieck-fga}
   793	Grothendieck, A.
   794	\emph{Fondements de la g\'eom\'etrie alg\'ebrique}.
   795	S\'eminaire Bourbaki, 1957--1962.
   796	
   797	\bibitem{leinster}
   798	Leinster, T.
   799	\emph{Basic Category Theory}.
   800	Cambridge Studies in Advanced Mathematics, vol.~143. Cambridge University Press, 2014.
   801	
   802	\bibitem{maclane-moerdijk}
   803	Mac Lane, S.\ and Moerdijk, I.
   804	\emph{Sheaves in Geometry and Logic: A First Introduction to Topos Theory}.
   805	Springer, 1992.
   806	
   807	\bibitem{voevodsky}
   808	Voevodsky, V.
   809	A very short note on homotopy $\lambda$-calculus.
   810	Unpublished note, 2006. \url{https://www.math.ias.edu/vladimir/sites/math.ias.edu.vladimir/files/Hlambda_short_current.pdf}
   811	
   812	\bibitem{paper-iii}
   813	YonedaAI Research.
   814	The Universal Property: Numbers as Initial Algebras.
   815	\emph{Univalent Correspondence Series}, Paper~III, 2026 (in preparation).
   816	
   817	\bibitem{paper-v}
   818	YonedaAI Research.
   819	The HoTT Perspective: Numbers as Inductive Types.
   820	\emph{Univalent Correspondence Series}, Paper~V, 2026 (in preparation).
   821	
   822	\end{thebibliography}
   823	
   824	\end{document}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\cite' papers/04-yoneda/latex/04-yoneda.tex; rg -n -F '\\ref' papers/04-yoneda/latex/04-yoneda.tex; rg -n -F '\\cref' papers/04-yoneda/latex/04-yoneda.tex; rg -n -F '\\label' papers/04-yoneda/latex/04-yoneda.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
116:We assume the reader is fluent with category theory at the level of Mac Lane~\cite{maclane} or Riehl~\cite{riehl}. We fix terminology and notation in this section.
568:The reference is Lurie's \emph{Higher Topos Theory}~\cite{lurie}, Lemma 5.1.5.2 and Theorem 5.1.5.6.
621:The Yoneda embedding has a directed (non-symmetric) analogue in directed type theory and simplicial type theory~\cite{riehl-shulman}. There, the role of mapping spaces is played by directed hom-types $\hom_A(x, y)$, and the Yoneda lemma takes the form
103:In the category $\mathbf{NNO}$ of natural-number objects in $\mathbf{Set}$ (or in any topos with NNO), the Yoneda embedding identifies $58$ not with a particular set, term, or numeral, but with the functor that assigns to every successor structure $(X, x_0, f)$ the value $f^{58}(x_0)$. This is the content of Section~\ref{sec:numbers-as-functors}. The structuralist's slogan --- \emph{numbers are positions in a structure} --- becomes a theorem: $58$ is the unique-up-to-isomorphism object representing the functor that probes structures for ``$58$th iterate of the successor map starting at the basepoint.''
107:The Yoneda lemma yields equivalence of objects from equivalence of their representable functors. Univalence (Paper~V) internalizes this implication: the canonical map $(A = B) \to (A \simeq B)$ is itself an equivalence in Homotopy Type Theory. Yoneda \emph{produces} an equivalence; univalence \emph{declares} it an identity. Section~\ref{sec:bridge-hott} makes this connection precise and motivates the next paper.
111:Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:yoneda-lemma} states and proves the Yoneda lemma in covariant and contravariant forms. Section~\ref{sec:numbers-as-functors} applies the lemma to natural numbers, real numbers, $\pi$, and $e$. Section~\ref{sec:density} proves the density theorem. Section~\ref{sec:beyond-numbers} surveys applications to groups, spaces, and schemes. Section~\ref{sec:enriched} sketches the enriched, $2$-categorical, and $\infty$-categorical generalizations. Section~\ref{sec:bridge-hott} connects to Homotopy Type Theory. Section~\ref{sec:haskell} describes the accompanying Haskell implementation. Section~\ref{sec:results} collects principal results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.
737:This paper is part of the YonedaAI Research series \emph{Formalized Foundations of Mathematics}. Thanks to the contributors of Paper~III for the universal-property scaffolding on which Section~\ref{sec:numbers-as-functors} rests. The Haskell code benefits from the conceptual clarity of the Hask-as-CCC tradition.
231:Specializing $F = h_Y$ in \cref{thm:yoneda},
239:The bijection of \cref{thm:yoneda} sends a natural transformation $\alpha\colon h_X \to h_Y$ to the element $\alpha_X(\mathrm{id}_X) \in \mathrm{Hom}(X, Y)$, and inversely sends $f\colon X \to Y$ to $y(f)$. Faithfulness is injectivity of $y$ on hom-sets; fullness is surjectivity. Both follow from this bijection.
266:Apply \cref{thm:yoneda} to $\mathcal{C}^{\mathrm{op}}$ and unfold definitions. Components are now precomposition rather than postcomposition.
284:Given representation $\eta\colon h_X \xrightarrow{\cong} F$, set $u := \eta_X(\mathrm{id}_X)$; the inverse $\eta^{-1}\colon F(Z) \to h_X(Z) = \mathrm{Hom}(Z, X)$ sends $v$ to the unique $f$ with $F(f)(u) = v$, by the explicit form $\eta = \Psi(u)$ of \cref{thm:yoneda}. Conversely, a universal element induces $\Psi(u)$ which is invertible by uniqueness.
337:sends every object to a singleton. Hence it is canonically naturally isomorphic to the constant-singleton functor $\mathbf{1}$. By the covariant Yoneda lemma (\cref{thm:co-yoneda}) applied to $h^{(\mathbb{N}, 0, \mathrm{succ})}$ and to $U$,
355:The role of initiality in \cref{thm:numbers-as-representable} is more subtle. Initiality provides the canonical identification $\mathbf{1} \cong h^{(\mathbb{N}, 0, \mathrm{succ})}$, which together with the covariant Yoneda lemma yields the bijection $\mathrm{Nat}(\mathbf{1}, U) \cong U(\mathbb{N}, 0, \mathrm{succ}) = \mathbb{N}$. The natural number $n$ then \emph{is} the natural transformation $\varepsilon_n$ that picks out $f^n(x_0)$ in every successor structure --- the Yoneda formulation of primitive recursion.
372:The presheaf $h_n$ has support $\{0, 1, \ldots, n\}$. Two presheaves with non-empty support agree if and only if their supports do, i.e., $n = n'$. This is \cref{cor:identity-criterion} specialized to a thin category, where ``isomorphic'' reduces to ``equal''.
376:The slogan \emph{``$58$ is $\mathrm{Hom}(-, 58)$''} now has formal content within $(\mathbb{N}, \le)$: the object $58$ is identified with the presheaf $h_{58}$ whose support is exactly $\{0, 1, \ldots, 58\}$. By the identity criterion, $58$ is the unique object with this presheaf. The two formalizations --- $\mathbf{Succ}$ in \cref{thm:numbers-as-representable} and $(\mathbb{N}, \le)$ in \cref{prop:order-identity-criterion} --- are complementary in the following sense: the former characterizes \emph{the entire structure of natural numbers} as a single relational invariant (via natural transformations $\mathbf{1} \Rightarrow U$) across all possible successor systems, while the latter \emph{individuates each number $n$} by its unique relational ``history'' (the support presheaf $h_n$) within the ordered set of natural numbers themselves.
389:$|h_n(m)| = n^m$. For each fixed $m \ge 1$, the value $n^m$ determines $n$. The isomorphism criterion ($n \cong n' \iff h_n \cong h_{n'}$) is \cref{cor:identity-criterion}; the further reduction to cardinality profiles uses that two finite sets are isomorphic iff equinumerous.
416:The number $e$ is then identified by the universal-element principle (\cref{prop:universal-element}): in the slice category of normalized continuous group homomorphisms $(\mathbb{R}, +) \to (\mathbb{R}^{>0}, \cdot)$ over $(\mathbb{R}^{>0}, \cdot)$, $\exp$ is the unique element, and $e := \exp(1) \in \mathbb{R}^{>0}$ is its value at the canonical generator $1 \in \mathbb{R}$. We acknowledge that, unlike $\pi$, the example of $e$ is more illustrative of the Yoneda \emph{spirit} (an object is the value of the unique map satisfying a normalization) than a textbook representable; the intent is to show that ``$e$ is a relational invariant'' rather than to give a fully formal Yoneda statement.
438:Define a cocone $\sigma\colon y \pi \Rightarrow F$ over $\int F$ component-wise: for $(X, u) \in \int F$, set $\sigma_{(X, u)} := \Psi(u)\colon h_X \to F$ from \cref{thm:yoneda}. Naturality of $\sigma$ in the morphisms of $\int F$ is exactly the Yoneda bijection. Universality: for any cocone $\tau\colon y\pi \Rightarrow G$, the unique factoring $F \to G$ assigns to $u \in F(X)$ the value $\tau_{(X, u), X}(\mathrm{id}_X) \in G(X)$.
585:\cref{cor:identity-criterion} states $X \cong Y \iff h_X \cong h_Y$. The right-hand isomorphism is a piece of data: a natural transformation in each direction whose composites are identities. In ordinary category theory, this is as far as we can push: $X \cong Y$ is not the same as $X = Y$; the latter requires a notion of identity stronger than isomorphism.
667:\item Prints $h_n(m)$ for $0 \le n, m \le 5$, displaying the singleton-or-empty pattern of \cref{thm:numbers-as-representable}.
677:\begin{theorem}[Restatement of \cref{thm:yoneda}]
681:\begin{theorem}[Restatement of \cref{cor:yoneda-fully-faithful} + \cref{cor:identity-criterion}]
685:\begin{theorem}[Restatement of \cref{thm:numbers-as-representable} and \cref{prop:order-identity-criterion}]
689:\begin{theorem}[Restatement of \cref{thm:density}]
693:\begin{theorem}[Restatement of \cref{thm:infty-yoneda}]
702:Paper~III (Universal Property) characterizes individual objects (the natural number object, the real numbers, $\pi$, $e$) by their respective universal properties. Each such characterization, viewed through Yoneda, is the assertion that some presheaf is representable. Paper~III's content is recovered by listing one universal element per topic; Paper~IV recovers it as a single principle (\cref{prop:universal-element}).
712:Mathematical structuralism, as articulated by Benacerraf, Resnik, and Shapiro, holds that mathematical objects are positions in structures rather than entities with intrinsic identity. The Yoneda lemma is, arguably, the strongest form of this thesis: an object literally \emph{is} its relational profile, recoverable up to isomorphism from $h_X$. \cref{cor:identity-criterion} renders structuralism a theorem rather than a philosophical stance.
716:The remaining gap --- between ``isomorphic'' and ``identical'' --- is what HoTT closes. \cref{sec:bridge-hott} sketched the bridge; Paper~V develops it. The combined picture: Yoneda recovers $X$ from $h_X$ \emph{up to isomorphism}; univalence promotes the isomorphism to a path; together, they constitute the Univalent Correspondence's fourth column (Yoneda) merging into the fifth (HoTT).
78:\label{sec:intro}
114:\label{sec:framework}
121:\label{def:locally-small}
126:\label{def:presheaf}
131:\label{def:representable}
138:\label{def:yoneda-embedding}
167:\label{sec:yoneda-lemma}
172:\label{thm:yoneda}
230:\label{cor:yoneda-fully-faithful}
243:\label{cor:identity-criterion}
257:\label{thm:co-yoneda}
279:\label{prop:universal-element}
290:\label{sec:numbers-as-functors}
297:\label{def:successor-structure}
306:\label{def:U-succ}
311:\label{def:eps-n}
324:\label{thm:numbers-as-representable}
363:\label{prop:order-identity-criterion}
384:\label{prop:lawvere-yoneda}
395:\label{subsec:pi-e}
400:\label{ex:pi-yoneda}
413:\label{ex:e-yoneda}
424:\label{sec:density}
429:\label{thm:density}
442:\label{cor:free-cocompletion}
447:\label{rem:colim-of-probes}
452:\label{sec:beyond-numbers}
471:\label{prop:cayley-yoneda}
492:\label{def:functor-of-points}
507:\label{sec:enriched}
512:\label{def:enriched-cat}
517:\label{thm:enriched-yoneda}
539:\label{thm:2-yoneda}
560:\label{thm:infty-yoneda}
581:\label{sec:bridge-hott}
588:\label{def:univalence}
628:\label{sec:haskell}
673:\label{sec:results}
698:\label{sec:discussion}
729:\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc 'ls -la papers/04-yoneda/latex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
total 240
drwxr-xr-x  7 mlong  staff    224 May  3 20:53 .
drwxr-xr-x  6 mlong  staff    192 May  3 19:48 ..
-rw-r--r--  1 mlong  staff  13255 May  3 20:53 04-yoneda.aux
-rw-r--r--  1 mlong  staff  32199 May  3 20:53 04-yoneda.log
-rw-r--r--  1 mlong  staff   9323 May  3 20:53 04-yoneda.out
-rw-r--r--  1 mlong  staff  53167 May  3 20:52 04-yoneda.tex
-rw-r--r--  1 mlong  staff   4444 May  3 20:53 04-yoneda.toc

exec
/usr/local/bin/zsh -lc "rg --files papers/04-yoneda | rg '(04-yoneda\\.(aux|log|out|toc|pdf)|Makefile|latexmkrc|\\.bib"'$)'"'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
papers/04-yoneda/pdf/04-yoneda.pdf

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty && kpsewhich xurl.sty && kpsewhich tikz-cd.sty && kpsewhich cleveref.sty' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 239ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty

codex
Package lookup confirms the declared LaTeX packages are installed in this TeX Live. I’m compiling into a temporary output directory next so the review is based on current logs without rewriting the checked-in build artifacts.
exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/yoneda-finalpass-build' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/yoneda-finalpass-build 04-yoneda.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/04-yoneda/latex
 succeeded in 1889ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./04-yoneda.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/tools/verbatim.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/yoneda-finalpass-build/04-yoneda.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./04-yoneda.out) (./04-yoneda.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./04-yoneda.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/p
dftex.map}] [2]) [3]

LaTeX Warning: Reference `sec:numbers-as-functors' on page 4 undefined on input
 line 103.


LaTeX Warning: Reference `sec:bridge-hott' on page 4 undefined on input line 10
7.


LaTeX Warning: Reference `sec:framework' on page 4 undefined on input line 111.



LaTeX Warning: Reference `sec:yoneda-lemma' on page 4 undefined on input line 1
11.


LaTeX Warning: Reference `sec:numbers-as-functors' on page 4 undefined on input
 line 111.


LaTeX Warning: Reference `sec:density' on page 4 undefined on input line 111.


LaTeX Warning: Reference `sec:beyond-numbers' on page 4 undefined on input line
 111.


LaTeX Warning: Reference `sec:enriched' on page 4 undefined on input line 111.


LaTeX Warning: Reference `sec:bridge-hott' on page 4 undefined on input line 11
1.


LaTeX Warning: Reference `sec:haskell' on page 4 undefined on input line 111.


LaTeX Warning: Reference `sec:results' on page 4 undefined on input line 111.


LaTeX Warning: Reference `sec:discussion' on page 4 undefined on input line 111
.


LaTeX Warning: Reference `sec:conclusion' on page 4 undefined on input line 111
.


LaTeX Warning: Citation `maclane' on page 4 undefined on input line 116.


LaTeX Warning: Citation `riehl' on page 4 undefined on input line 116.

[4] [5]

LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 231.


LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 239.

[6]

LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 266.


LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 284.

[7{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Reference `thm:co-yoneda' on page 1 undefined on input line 337.


[8]

LaTeX Warning: Reference `thm:numbers-as-representable' on page 1 undefined on 
input line 355.


LaTeX Warning: Reference `thm:numbers-as-representable' on page 1 undefined on 
input line 360.


LaTeX Warning: Reference `cor:identity-criterion' on page 1 undefined on input 
line 372.


LaTeX Warning: Reference `thm:numbers-as-representable' on page 1 undefined on 
input line 376.


LaTeX Warning: Reference `prop:order-identity-criterion' on page 1 undefined on
 input line 376.

[9]

LaTeX Warning: Reference `cor:identity-criterion' on page 1 undefined on input 
line 389.


LaTeX Warning: Reference `prop:universal-element' on page 1 undefined on input 
line 416.

[10]

LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 438.

[11] [12] [13]

LaTeX Warning: Citation `lurie' on page 14 undefined on input line 568.


LaTeX Warning: Reference `cor:identity-criterion' on page 1 undefined on input 
line 585.

[14]

LaTeX Warning: Citation `riehl-shulman' on page 15 undefined on input line 621.


[15]

LaTeX Warning: Reference `thm:numbers-as-representable' on page 1 undefined on 
input line 667.

[16]

LaTeX Warning: Reference `thm:yoneda' on page 1 undefined on input line 677.


LaTeX Warning: Reference `cor:yoneda-fully-faithful' on page 1 undefined on inp
ut line 681.


LaTeX Warning: Reference `cor:identity-criterion' on page 1 undefined on input 
line 681.


LaTeX Warning: Reference `thm:numbers-as-representable' on page 1 undefined on 
input line 685.


LaTeX Warning: Reference `prop:order-identity-criterion' on page 1 undefined on
 input line 685.


LaTeX Warning: Reference `thm:density' on page 1 undefined on input line 689.


LaTeX Warning: Reference `thm:infty-yoneda' on page 1 undefined on input line 6
93.


Overfull \hbox (8.6074pt too wide) in paragraph at lines 694--695
[]\OT1/cmr/bx/n/12 Theorem 10.5 \OT1/cmr/m/n/12 (Re-state-ment of [])\OT1/cmr/b
x/n/12 . []\OT1/cmr/m/it/12 The Yoneda lemma gen-er-al-izes to en-riched, $\OT1
/cmr/m/n/12 2$\OT1/cmr/m/it/12 -categorical,

LaTeX Warning: Reference `prop:universal-element' on page 1 undefined on input 
line 702.


LaTeX Warning: Reference `cor:identity-criterion' on page 1 undefined on input 
line 712.

[17]

LaTeX Warning: Reference `sec:bridge-hott' on page 1 undefined on input line 71
6.

[18]

LaTeX Warning: Reference `sec:numbers-as-functors' on page 19 undefined on inpu
t line 737.

[19] [20] (/private/tmp/yoneda-finalpass-build/04-yoneda.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfrm1200.pfb>
Output written on /private/tmp/yoneda-finalpass-build/04-yoneda.pdf (20 pages, 
354543 bytes).
Transcript written on /private/tmp/yoneda-finalpass-build/04-yoneda.log.
Latexmk: Getting log file '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.fls'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/yoneda-finalpass-build/04-yoneda.aux
  /private/tmp/yoneda-finalpass-build/04-yoneda.out

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/yoneda-finalpass-build"  "04-yoneda.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./04-yoneda.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/tools/verbatim.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/yoneda-finalpass-build/04-yoneda.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/yoneda-finalpass-build/04-yoneda.out)
(/private/tmp/yoneda-finalpass-build/04-yoneda.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/yoneda-finalpass-build/04-yoneda.toc [1{/usr/local/texlive/2026/t
exmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4] [5] [6] [7{/usr/loca
l/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [8]
[9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20]
(/private/tmp/yoneda-finalpass-build/04-yoneda.aux) )</usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sfrm1200.pfb>
Output written on /private/tmp/yoneda-finalpass-build/04-yoneda.pdf (20 pages, 
357117 bytes).
Transcript written on /private/tmp/yoneda-finalpass-build/04-yoneda.log.
Latexmk: Getting log file '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.fls'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/yoneda-finalpass-build/04-yoneda.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/yoneda-finalpass-build"  "04-yoneda.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./04-yoneda.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/tools/verbatim.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/yoneda-finalpass-build/04-yoneda.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/yoneda-finalpass-build/04-yoneda.out)
(/private/tmp/yoneda-finalpass-build/04-yoneda.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/yoneda-finalpass-build/04-yoneda.toc [1{/usr/local/texlive/2026/t
exmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4] [5] [6] [7{/usr/loca
l/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [8]
[9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20]
(/private/tmp/yoneda-finalpass-build/04-yoneda.aux) )</usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sfrm1200.pfb>
Output written on /private/tmp/yoneda-finalpass-build/04-yoneda.pdf (20 pages, 
357117 bytes).
Transcript written on /private/tmp/yoneda-finalpass-build/04-yoneda.log.
Latexmk: Getting log file '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.fls'
Latexmk: Examining '/private/tmp/yoneda-finalpass-build/04-yoneda.log'
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: Log file says output to '/private/tmp/yoneda-finalpass-build/04-yoneda.pdf'
Latexmk: All targets (/private/tmp/yoneda-finalpass-build/04-yoneda.pdf) are up-to-date


exec
/usr/local/bin/zsh -lc 'rg -n "(LaTeX Warning:|Package .* Warning:|undefined|Undefined|Overfull|Underfull|Fatal error|Emergency stop|Missing|Citation .*undefined|Reference .*undefined|Rerun)" /tmp/yoneda-finalpass-build/04-yoneda.log' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
606:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
657:Package everypage Warning: Functionality similar to this package has recently
663:Package everypage Warning: You appear to be running a version of LaTeX

exec
/usr/local/bin/zsh -lc 'pdfinfo /tmp/yoneda-finalpass-build/04-yoneda.pdf' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
Title:           
Subject:         
Keywords:        
Author:          
Creator:         LaTeX with hyperref
Producer:        pdfTeX-1.40.29
CreationDate:    Mon May  4 08:19:07 2026 CST
ModDate:         Mon May  4 08:19:07 2026 CST
Custom Metadata: yes
Metadata Stream: no
Tagged:          no
UserProperties:  no
Suspects:        no
Form:            none
JavaScript:      no
Pages:           20
Encrypted:       no
Page size:       612 x 792 pts (letter)
Page rot:        0
File size:       357117 bytes
Optimized:       no
PDF version:     1.7

exec
/usr/local/bin/zsh -lc 'pdftotext /tmp/yoneda-finalpass-build/04-yoneda.pdf - | wc -l' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
    1061

codex
The final `latexmk` run converged cleanly: 20-page PDF, no unresolved references/citations in the final log. I’m doing one last targeted check for source-level citation/label mismatches and stale log artifacts before closing it out.
exec
/usr/local/bin/zsh -lc "rg -n \"(Overfull|Underfull|undefined references|undefined citations|Citation .*undefined|Reference .*undefined|Label\\(s\\) may have changed|Emergency stop|Fatal error|"'! LaTeX Error|! Package)" /tmp/yoneda-finalpass-build/04-yoneda.log' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n -F '\\bibitem{' papers/04-yoneda/latex/04-yoneda.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
741:\bibitem{maclane}
746:\bibitem{riehl}
751:\bibitem{lurie}
757:\bibitem{hottbook}
762:\bibitem{awodey-warren}
767:\bibitem{lawvere}
772:\bibitem{benacerraf-1965}
777:\bibitem{kelly}
782:\bibitem{riehl-shulman}
787:\bibitem{wadler-pat}
792:\bibitem{grothendieck-fga}
797:\bibitem{leinster}
802:\bibitem{maclane-moerdijk}
807:\bibitem{voevodsky}
812:\bibitem{paper-iii}
817:\bibitem{paper-v}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\texorpdfstring' papers/04-yoneda/latex/04-yoneda.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
101:\subsection{Why this matters for ``what is \texorpdfstring{$58$}{58}?''}
358:\subsection{Numbers as objects of \texorpdfstring{$(\mathbb{N}, \le)$}{(N, <=)}}
379:\subsection{Beyond order: the categorical structure of \texorpdfstring{$58$}{58}}
394:\subsection{\texorpdfstring{$\pi$ and $e$}{pi and e} as representing elements}
506:\section{Enriched, \texorpdfstring{$2$-Categorical, and $\infty$-Categorical}{2-Categorical, and infinity-Categorical} Yoneda}
534:\subsection{\texorpdfstring{$2$-categorical}{2-categorical} Yoneda}
551:\subsection{\texorpdfstring{$\infty$-categorical}{infinity-categorical} Yoneda}

codex
No blocking issues remain.

Verified with `latexmk -pdf` into `/tmp/yoneda-finalpass-build`: no compilation errors, missing packages, undefined citations, undefined references, or severe layout warnings in the final log.
2026-05-04T14:19:35.339159Z ERROR codex_core::session: failed to record rollout items: thread 019df35a-bb90-7712-b982-50fa349cd1fc not found
tokens used
67,436
No blocking issues remain.

Verified with `latexmk -pdf` into `/tmp/yoneda-finalpass-build`: no compilation errors, missing packages, undefined citations, undefined references, or severe layout warnings in the final log.
