---
reviewer: codex (OpenAI)
type: formatting
paper: 06-categorical-structural
round: final
date: 2026-05-04T14:18:30Z
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
session id: 019df35a-dd5f-7b52-a4e6-b7ac151b1ff1
--------
user
Final-pass formatting review of /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/06-categorical-structural/latex/06-categorical-structural.tex. The paper has been through one prior Codex round; only flag REMAINING blocking LaTeX issues: actual compile errors, broken \ref/\cite, undefined commands, missing required packages. Do NOT suggest stylistic preferences or expansions. List each remaining issue with line number and exact fix.
codex
I’ll do this as a read-only LaTeX gate: inspect the target file for unresolved commands/refs/cites/package dependencies, and compile if the repo has a local build path for this paper.
exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
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
    10	\usetikzlibrary{positioning, arrows.meta, calc}
    11	
    12	% Graphics
    13	\usepackage{graphicx}
    14	
    15	% Page layout
    16	\usepackage[margin=1in]{geometry}
    17	
    18	% GrokRxiv sidebar
    19	\usepackage{everypage}
    20	\usepackage{xcolor}
    21	
    22	% Listings (Haskell)
    23	\usepackage{listings}
    24	
    25	% References (loaded near the end, with cleveref strictly after hyperref)
    26	\usepackage[hidelinks]{hyperref}
    27	\usepackage{cleveref}
    28	\lstdefinelanguage{Haskell}{
    29	  keywords={data, type, class, instance, where, let, in, do, case, of, if, then, else, module, import, newtype, deriving},
    30	  sensitive=true,
    31	  morecomment=[l]{--},
    32	  morestring=[b]"
    33	}
    34	\lstset{
    35	  basicstyle=\ttfamily\small,
    36	  keywordstyle=\bfseries,
    37	  commentstyle=\itshape\color{gray},
    38	  stringstyle=\color{teal},
    39	  showstringspaces=false,
    40	  breaklines=true,
    41	  frame=single,
    42	  rulecolor=\color{black!30},
    43	  language=Haskell
    44	}
    45	
    46	% Theorem environments
    47	\newtheorem{theorem}{Theorem}[section]
    48	\newtheorem{proposition}[theorem]{Proposition}
    49	\newtheorem{lemma}[theorem]{Lemma}
    50	\newtheorem{corollary}[theorem]{Corollary}
    51	\theoremstyle{definition}
    52	\newtheorem{definition}[theorem]{Definition}
    53	\newtheorem{example}[theorem]{Example}
    54	\theoremstyle{remark}
    55	\newtheorem{remark}[theorem]{Remark}
    56	
    57	% Notation macros
    58	\newcommand{\Set}{\mathbf{Set}}
    59	\newcommand{\Grpd}{\mathbf{Gpd}}
    60	\newcommand{\Cat}{\mathbf{Cat}}
    61	\newcommand{\Ring}{\mathbf{Ring}}
    62	\newcommand{\Field}{\mathbf{Field}}
    63	\newcommand{\Top}{\mathbf{Top}}
    64	\newcommand{\op}{\mathrm{op}}
    65	\newcommand{\id}{\mathrm{id}}
    66	\newcommand{\Hom}{\mathrm{Hom}}
    67	\newcommand{\Nat}{\mathrm{Nat}}
    68	\newcommand{\NN}{\mathbb{N}}
    69	\newcommand{\ZZ}{\mathbb{Z}}
    70	\newcommand{\QQ}{\mathbb{Q}}
    71	\newcommand{\RR}{\mathbb{R}}
    72	\newcommand{\CC}{\mathbb{C}}
    73	\newcommand{\T}{\mathcal{T}}
    74	\newcommand{\C}{\mathcal{C}}
    75	\newcommand{\D}{\mathcal{D}}
    76	\newcommand{\E}{\mathcal{E}}
    77	\newcommand{\Mod}[1]{\operatorname{Mod}(#1)}
    78	\newcommand{\eq}{\simeq}
    79	\newcommand{\iso}{\cong}
    80	\newcommand{\defeq}{\coloneqq}
    81	\newcommand{\succop}{\mathrm{s}}
    82	\newcommand{\zeroop}{\mathrm{z}}
    83	\newcommand{\Ob}{\mathrm{Ob}}
    84	\newcommand{\Mor}{\mathrm{Mor}}
    85	
    86	% GrokRxiv DOI sidebar
    87	\definecolor{grokgray}{RGB}{110,110,110}
    88	\AddEverypageHook{%
    89	  \ifnum\value{page}=1
    90	    \begin{tikzpicture}[remember picture, overlay]
    91	      \node[
    92	        rotate=90,
    93	        anchor=south,
    94	        font=\Large\sffamily\bfseries\color{grokgray},
    95	        inner sep=0pt
    96	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    97	      {GrokRxiv:2026.05.categorical-structural\quad
    98	       [\,math.CT\,]\quad
    99	       03 May 2026};
   100	    \end{tikzpicture}
   101	  \fi
   102	}
   103	
   104	\title{The Categorical / Structural Perspective: \\
   105	Numbers as Invariants of Structure-Preserving Morphisms}
   106	
   107	\author{YonedaAI Research \\
   108	\textit{Univalent Correspondence Project} \\
   109	\textit{Paper 06 of 6 topical papers (followed by a synthesis paper)} \\
   110	Cambridge, MA \\
   111	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
   112	
   113	\date{3 May 2026}
   114	
   115	\begin{document}
   116	
   117	\maketitle
   118	
   119	\begin{abstract}
   120	We develop the structural / categorical answer to the question ``what is a number?'' by treating numerals as invariants under all structure-preserving morphisms between models of arithmetic. We survey mathematical structuralism in the philosophical tradition (Resnik, Shapiro, Hellman, Awodey), present its categorical formalization through Lawvere's Elementary Theory of the Category of Sets (ETCS) and functorial semantics of algebraic theories, and prove an isomorphism-invariance theorem for first-order properties of finitely presented theories. We define a small algebraic theory of pointed unary structures, exhibit two non-equal but isomorphic set-theoretic models, and verify --- both formally and by accompanying executable Haskell code --- that all ``numerical answers'' (cardinalities of definable subsets, values of definable functions) coincide. We connect categorification (a $58$-element groupoid in $\Grpd$ that decategorifies to $58$ in $\Set$ via $\pi_0$) and Euler-characteristic / $K$-theoretic decategorification to the same invariance principle, and we end at the bridge to the synthesis paper: the Yoneda embedding, universal properties, and Voevodsky's univalence axiom are three views of one phenomenon, namely that structural identity is identity. Univalence makes the meta-condition ``a property is structural iff it is preserved under isomorphism'' an internal theorem rather than an external rule of practice.
   121	\end{abstract}
   122	
   123	\tableofcontents
   124	
   125	\section{Introduction}\label{sec:intro}
   126	
   127	\subsection{The structural turn}
   128	
   129	Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
   130	
   131	This paper formalizes that thesis. We argue that:
   132	\begin{enumerate}
   133	  \item ``$58$'' denotes an invariant under all structure-preserving morphisms between models of arithmetic, in a sense made precise by functorial semantics (\Cref{sec:functorial}).
   134	  \item Mathematical structuralism --- in its \emph{ante rem}, \emph{in re}, and modal variants --- is the philosophical commitment that this is the right level of analysis.
   135	  \item Category theory (and ETCS in particular) is the natural formal language because it is built around the principle that objects are determined up to isomorphism by their relationships.
   136	  \item Homotopy Type Theory (HoTT) with the univalence axiom turns ``up to isomorphism'' from an external constraint into an internal theorem.
   137	\end{enumerate}
   138	
   139	The paper is the last of the six topical papers in the \emph{Univalent Correspondence Project} and provides the bridge to the subsequent synthesis paper. The thesis we defend across all six papers is captured by the columns table reproduced (in shortened form) in \Cref{tab:columns}.
   140	
   141	\begin{table}[h]
   142	\centering
   143	\begin{tabular}{l|l}
   144	\textbf{Level} & \textbf{What $58$ \emph{is}} \\\hline
   145	Naive & A symbol / a quantity \\
   146	Set-theoretic & $\{0,1,\dots,57\}$ (von Neumann) \\
   147	Universal property & $58$th iterate of $\succop$ in any initial $(N,\zeroop,\succop)$ \\
   148	Yoneda & $\Hom(-, 58)$ in $\Mod{T_{\mathrm{arith}}}$ \\
   149	HoTT & $\succop^{58}(\zeroop) : \NN$, identified up to path equivalence \\
   150	Categorical / structural & An invariant of every isomorphism of arithmetic models
   151	\end{tabular}
   152	\caption{The six-level columns table; this paper develops the bottom row.}
   153	\label{tab:columns}
   154	\end{table}
   155	
   156	\subsection{Contributions and outline}
   157	
   158	We make three contributions. First, in \Cref{sec:structuralism} we present a unified treatment of the major flavors of structuralism (Resnik, Shapiro, Hellman, Awodey) and identify the precise sense in which categorical structuralism is the formal analogue of the philosophical thesis. Second, in \Cref{sec:functorial} we develop functorial semantics for a small algebraic theory $T_{\succop}$ and prove that any natural isomorphism between two models induces equality of all definable numerical invariants (\Cref{thm:invariance}). Third, in \Cref{sec:transport} we re-derive the same invariance principle as a special case of HoTT's transport along paths, and we discuss categorification and decategorification (\Cref{sec:categorification}) as the higher-dimensional analogue.
   159	
   160	The accompanying Haskell code (in \texttt{src/06-categorical-structural/}) implements functorial semantics for $T_{\succop}$, builds two non-equal but isomorphic models, and verifies that all observable numerical quantities agree under the isomorphism.
   161	
   162	\Cref{sec:transport} contains the bridge to the synthesis paper: every structural property is automatically transportable along equivalences, and univalence is the principle that makes this an internal theorem of the foundations rather than a meta-theorem of mathematical practice.
   163	
   164	\section{Mathematical Framework}\label{sec:framework}
   165	
   166	We fix terminology and notation. All categories are locally small unless stated otherwise; standard references for the categorical background are Mac Lane~\cite{MacLane1971} and Riehl~\cite{Riehl2016}.
   167	
   168	\begin{definition}[Category]
   169	A \emph{category} $\C$ consists of a class $\Ob(\C)$ of objects, for each pair $A,B \in \Ob(\C)$ a set $\Hom_\C(A,B)$ of morphisms, an associative composition, and identity morphisms.
   170	\end{definition}
   171	
   172	\begin{definition}[Functor]
   173	A \emph{functor} $F : \C \to \D$ assigns to each $A \in \Ob(\C)$ an object $F(A) \in \Ob(\D)$ and to each $f : A \to B$ a morphism $F(f) : F(A) \to F(B)$, preserving composition and identities.
   174	\end{definition}
   175	
   176	\begin{definition}[Natural transformation]
   177	Given functors $F, G : \C \to \D$, a \emph{natural transformation} $\alpha : F \Rightarrow G$ is a family $\{\alpha_A : F(A) \to G(A)\}_{A \in \Ob(\C)}$ such that for every $f : A \to B$, $G(f) \circ \alpha_A = \alpha_B \circ F(f)$.
   178	\end{definition}
   179	
   180	\begin{definition}[Isomorphism]
   181	A morphism $f : A \to B$ in $\C$ is an \emph{isomorphism} if there exists $g : B \to A$ with $g \circ f = \id_A$ and $f \circ g = \id_B$. We write $A \iso B$ when an isomorphism exists.
   182	\end{definition}
   183	
   184	\begin{definition}[Equivalence of categories]
   185	Categories $\C$ and $\D$ are \emph{equivalent}, written $\C \eq \D$, if there exist functors $F : \C \to \D$, $G : \D \to \C$ with natural isomorphisms $G F \iso \id_\C$ and $F G \iso \id_\D$.
   186	\end{definition}
   187	
   188	\begin{definition}[Algebraic theory, in the Lawvere sense]\label{def:alg-theory}
   189	An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
   190	\end{definition}
   191	
   192	\begin{definition}[Model / interpretation]
   193	A \emph{model} of $\T$ in a category $\E$ with finite products is a finite-product-preserving functor $M : \T \to \E$. The category $\Mod{\T} \defeq \mathrm{FP}(\T, \E)$ has finite-product-preserving functors as objects and natural transformations between them as morphisms.
   194	\end{definition}
   195	
   196	\begin{remark}[Models in $\Set$]
   197	When $\E = \Set$, an interpretation $M : \T \to \Set$ assigns to the generating object $X$ a set $M(X)$ called the \emph{carrier}. The other generating data of $\T$ (operations, equations) are interpreted as functions and equalities on $M(X)$. This is the standard universal-algebraic notion of model.
   198	\end{remark}
   199	
   200	\begin{definition}[Structure-preserving morphism]
   201	A \emph{morphism of $\T$-models} from $M$ to $M'$ is a natural transformation $\alpha : M \Rightarrow M'$. By naturality and finite-product preservation, $\alpha$ is determined by its component $\alpha_X : M(X) \to M'(X)$, which is a homomorphism in the universal-algebraic sense.
   202	\end{definition}
   203	
   204	\subsection{Notation summary}
   205	
   206	For ease of reference we collect the central notation used throughout the paper.
   207	
   208	\begin{table}[ht]
   209	\centering
   210	\small
   211	\begin{tabular}{ll}
   212	\hline
   213	\textbf{Symbol} & \textbf{Meaning} \\
   214	\hline
   215	$\Set$, $\Grpd$, $\Cat$ & categories of sets, groupoids, small categories \\
   216	$\C^\op$ & opposite category of $\C$ \\
   217	$\Hom_\C(A,B)$ & morphisms from $A$ to $B$ in $\C$ \\
   218	$\Nat(F,G)$ & natural transformations from $F$ to $G$ \\
   219	$\T$, $T_\succop$, $T_{\mathrm{ring}}$ & Lawvere theories (succ, ring) \\
   220	$\Mod{\T}$ & category of $\T$-models in $\Set$ \\
   221	$M(X)$ & carrier of model $M$ \\
   222	$\zeroop, \succop$ & generating constant and unary in $T_\succop$ \\
   223	$\eq$ & equivalence (of categories or types) \\
   224	$\iso$ & isomorphism \\
   225	$\pi_0(G)$ & set of connected components of groupoid $G$ \\
   226	$|G|_{\mathrm{gpd}}$ & groupoid cardinality \\
   227	$=_A$ & identity type on type $A$ (HoTT) \\
   228	\hline
   229	\end{tabular}
   230	\caption{Notation used throughout.}
   231	\label{tab:notation}
   232	\end{table}
   233	
   234	\section{Mathematical Structuralism}\label{sec:structuralism}
   235	
   236	\subsection{The thesis}
   237	
   238	Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
   239	
   240	Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
   241	
   242	\subsection{Three flavors}
   243	
   244	\begin{definition}[Ante rem structuralism, Shapiro]
   245	The structures of mathematics exist independently of any particular system that realizes them. Numbers are real abstract entities, but their identity is exhausted by their relational properties.
   246	\end{definition}
   247	
   248	\begin{definition}[In re structuralism, Resnik]
   249	Mathematical structures are abstractions from collections of similar systems. There is no structure ``in itself''; only patterns instantiated by concrete or abstract systems.
   250	\end{definition}
   251	
   252	\begin{definition}[Modal / eliminative structuralism, Hellman]
   253	There are no abstract structures or numbers; statements of arithmetic are read as universally quantified conditionals over all possible $\NN$-like systems: ``In any $\omega$-sequence, the seventh element after zero satisfies $\dots$'' rather than ``$7$ satisfies $\dots$''.
   254	\end{definition}
   255	
   256	\begin{example}[Three views of $58$]\hfill
   257	\begin{itemize}
   258	  \item \emph{Ante rem}: $58$ is an abstract position in the unique structure $\langle \NN, 0, \succop \rangle$.
   259	  \item \emph{In re}: $58$ is whatever is common to all things obtained by applying $\succop$ exactly $58$ times to $0$ in any concrete realization.
   260	  \item \emph{Modal}: ``$58 + 1 = 59$'' means ``it is necessary that, in any $\omega$-sequence, the $58$th iterate's successor is the $59$th iterate''.

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|eqref|cite|autoref|cref|Cref)\\{|\\\\label\\{|\\\\input\\{|\\\\include\\{|\\\\usepackage|\\\\documentclass|\\\\newcommand|\\\\DeclareMathOperator|\\\\begin\\{|\\\\end\\{|\\\\[A-Za-z]+\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|eqref|cite|autoref|cref|Cref)\{|\label\{|\input\{|\include\{|\usepackage|\documentclass|\newcommand|\DeclareMathOperator|\begin\{|\end\{|\[A-Za-z]+)
                                             ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'pwd && rg --files' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
src/05-hott/Circle.hs
src/05-hott/Univalence.hs
src/05-hott/Nat.hs
src/05-hott/Main.hs
src/05-hott/Path.hs
src/04-yoneda/Yoneda.hs
src/04-yoneda/FiniteCat.hs
src/04-yoneda/Properties.hs
src/04-yoneda/Main.hs
src/04-yoneda/Proofs.hs
src/01-naive/Naive/Decimal.hs
src/01-naive/Naive/Tally.hs
src/01-naive/Naive/Roman.hs
src/01-naive/Naive/Peano.hs
src/01-naive/Naive/Babylonian.hs
src/01-naive/Main.hs
src/02-set-theoretic/VonNeumann.hs
src/02-set-theoretic/Zermelo.hs
src/02-set-theoretic/HFSet.hs
src/02-set-theoretic/Peano.hs
src/02-set-theoretic/Main.hs
src/03-universal-property/Coalgebra.hs
src/03-universal-property/NNO.hs
src/03-universal-property/Properties.hs
src/03-universal-property/Main.hs
src/03-universal-property/Recursion.hs
src/03-universal-property/Proofs.hs
src/06-categorical-structural/Models.hs
src/06-categorical-structural/Main.hs
src/06-categorical-structural/Invariants.hs
src/06-categorical-structural/Model.hs
src/06-categorical-structural/Theory.hs
src/07-synthesis/Main.hs
src/07-synthesis/Synthesis.hs
src/07-synthesis/UnifiedNumber.hs
sources/context.txt
README.md
web/website/data/html/01-naive.html
web/website/data/html/03-universal-property-body.html
web/website/data/html/06-categorical-structural-body.html
web/website/data/html/04-yoneda.html
web/website/data/html/02-set-theoretic.html
web/website/data/html/04-yoneda-body.html
web/website/data/html/05-hott-body.html
web/website/data/html/synthesis.html
web/website/data/html/01-naive-body.html
web/website/data/html/synthesis-body.html
web/website/data/html/06-categorical-structural.html
web/website/data/html/05-hott.html
web/website/data/html/02-set-theoretic-body.html
web/website/data/html/03-universal-property.html
web/website/data/papers.json
web/website/tsconfig.json
web/website/lib/render-math.ts
web/website/package.json
web/website/package-lock.json
web/website/public/og/04-yoneda-og.png
web/website/public/og/02-set-theoretic-og.png
web/website/public/og/og-default.png
web/website/public/og/01-naive-og.png
web/website/public/og/synthesis-og.png
web/website/public/og/03-universal-property-og.png
web/website/public/og/06-categorical-structural-og.png
web/website/public/og/05-hott-og.png
web/website/public/pdf/05-hott.pdf
web/website/public/pdf/06-categorical-structural.pdf
web/website/public/pdf/03-universal-property.pdf
web/website/public/pdf/01-naive.pdf
web/website/public/pdf/02-set-theoretic.pdf
web/website/public/pdf/synthesis.pdf
web/website/public/pdf/04-yoneda.pdf
web/website/public/images/og/05-hott.png
web/website/public/images/og/06-categorical-structural.png
web/website/public/images/og/03-universal-property.png
web/website/public/images/og/01-naive.png
web/website/public/images/og/02-set-theoretic.png
web/website/public/images/og/og-home.png
web/website/public/images/og/synthesis.png
web/website/public/images/og/04-yoneda.png
web/website/public/images/covers/05-hott.png
web/website/public/images/covers/06-categorical-structural.png
web/website/public/images/covers/03-universal-property.png
web/website/public/images/covers/01-naive.png
web/website/public/images/covers/02-set-theoretic.png
web/website/public/images/covers/synthesis.png
web/website/public/images/covers/04-yoneda.png
web/website/tailwind.config.ts
web/website/README.md
web/website/next.config.js
web/website/next.config.mjs
web/website/postcss.config.mjs
web/website/vercel.json
web/website/app/globals.css
web/website/app/page.tsx
web/website/app/fonts/GeistVF.woff
web/website/app/fonts/GeistMonoVF.woff
web/website/app/layout.tsx
web/website/theme.json
web/website/app/favicon.ico
web/website/app/components/TableOfContents.tsx
web/website/app/components/PaperContent.tsx
posts/bluesky.md
posts/twitter.md
posts/facebook.md
posts/linkedin.md
web/website/app/papers/[slug]/page.tsx
papers/05-hott/reviews/05-hott-review-final.md
papers/05-hott/reviews/05-hott-review-round-1.md
papers/05-hott/reviews/05-hott-review-round-2.md
papers/05-hott/reviews/05-hott-codex-review.md
papers/05-hott/reviews/05-hott-review.md
papers/03-universal-property/reviews/03-universal-property-review-round-2.md
papers/03-universal-property/reviews/03-universal-property-review-round-3.md
papers/03-universal-property/reviews/03-universal-property-codex-review.md
papers/03-universal-property/reviews/03-universal-property-codex-review-final.md
papers/03-universal-property/reviews/03-universal-property-review.md
papers/03-universal-property/reviews/03-universal-property-review-final.md
papers/03-universal-property/reviews/03-universal-property-review-round-4.md
papers/03-universal-property/reviews/03-universal-property-review-round-1.md
papers/05-hott/pdf/05-hott.pdf
papers/03-universal-property/pdf/03-universal-property.pdf
papers/05-hott/latex/05-hott.tex
papers/03-universal-property/latex/03-universal-property.tex
papers/05-hott/images/05-hott.png
papers/05-hott/images/05-hott-og.png
papers/03-universal-property/images/03-universal-property.png
papers/03-universal-property/images/03-universal-property-og.png
papers/04-yoneda/reviews/04-yoneda-review-round-3.md
papers/04-yoneda/reviews/04-yoneda-codex-review.md
papers/04-yoneda/reviews/04-yoneda-review-round-2.md
papers/04-yoneda/reviews/04-yoneda-review-final.md
papers/04-yoneda/reviews/04-yoneda-review-round-1.md
papers/04-yoneda/reviews/04-yoneda-review-round-4.md
papers/04-yoneda/reviews/04-yoneda-codex-review-final.md
papers/04-yoneda/reviews/04-yoneda-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-review-round-1.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review-final.md
papers/06-categorical-structural/reviews/06-categorical-structural-review-final.md
papers/04-yoneda/pdf/04-yoneda.pdf
papers/06-categorical-structural/pdf/06-categorical-structural.pdf
papers/04-yoneda/latex/04-yoneda.tex
papers/06-categorical-structural/latex/06-categorical-structural.tex
papers/04-yoneda/images/04-yoneda-og.png
papers/04-yoneda/images/04-yoneda.png
papers/06-categorical-structural/images/06-categorical-structural.png
papers/06-categorical-structural/images/06-categorical-structural-og.png
papers/01-naive/reviews/01-naive-review.md
papers/01-naive/reviews/01-naive-codex-review.md
papers/01-naive/reviews/01-naive-review-final.md
papers/01-naive/reviews/01-naive-review-round-1.md
papers/07-synthesis/reviews/synthesis-review.md
papers/07-synthesis/reviews/synthesis-codex-review.md.bak
papers/07-synthesis/reviews/synthesis-haskell-review.md
papers/07-synthesis/reviews/synthesis-review-round-2.md
papers/07-synthesis/reviews/synthesis-codex-review.md
papers/07-synthesis/reviews/synthesis-review-round-1.md
papers/07-synthesis/reviews/synthesis-review-final.md
papers/01-naive/pdf/01-naive.pdf
papers/07-synthesis/pdf/synthesis.pdf
papers/01-naive/latex/01-naive.tex
papers/07-synthesis/latex/synthesis.tex
papers/01-naive/images/01-naive.png
papers/01-naive/images/01-naive-og.png
papers/07-synthesis/images/synthesis-og.png
papers/07-synthesis/images/synthesis.png
papers/02-set-theoretic/reviews/02-set-theoretic-review-round-2.md
papers/02-set-theoretic/reviews/02-set-theoretic-review-final.md
papers/02-set-theoretic/reviews/02-set-theoretic-review.md
papers/02-set-theoretic/reviews/02-set-theoretic-codex-review-final.md
papers/02-set-theoretic/reviews/02-set-theoretic-review-round-1.md
papers/02-set-theoretic/reviews/02-set-theoretic-codex-review.md
papers/02-set-theoretic/pdf/02-set-theoretic.pdf
papers/02-set-theoretic/latex/02-set-theoretic.tex
papers/02-set-theoretic/images/02-set-theoretic-og.png
papers/02-set-theoretic/images/02-set-theoretic.png

codex
The first pass found a standalone article with packages declared in-file. I’m going deeper now: full file scan plus an actual LaTeX run so remaining blocking issues are grounded in the compiler/log, not pattern matching alone.
exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   261	\end{itemize}
   262	\end{example}
   263	
   264	\subsection{Awodey's category-theoretic structuralism}
   265	
   266	Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
   267	
   268	\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
   269	Let $\C$ be a category and let $P$ be a property of objects of $\C$ that is expressible using only the data of $\C$ (objects, morphisms, composition, and finite limits/colimits where they exist). Then for any isomorphism $f : A \to B$, $P(A) \iff P(B)$.
   270	\end{proposition}
   271	
   272	\begin{proof}[Proof sketch]
   273	By induction on the complexity of $P$. Atomic categorical statements (commutativity of squares, existence of fillers, equality of composites) are preserved by isomorphisms because $f$ and $f^{-1}$ are inverse, and composition is preserved. For complex $P$, the inductive step is straightforward.
   274	\end{proof}
   275	
   276	\begin{remark}
   277	\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
   278	\end{remark}
   279	
   280	\subsection{Comparison and reconciliation}\label{ssec:compare}
   281	
   282	The three flavors of structuralism are not in pairwise contradiction so much as in pairwise emphasis. We may organize them as follows.
   283	
   284	\begin{table}[ht]
   285	\centering
   286	\small
   287	\begin{tabular}{lll}
   288	\hline
   289	\textbf{Flavor} & \textbf{Ontology} & \textbf{Reading of ``$5 + 7 = 12$''} \\
   290	\hline
   291	Ante rem (Shapiro) & Abstract structures exist & The $12$-position satisfies $\dots$ \\
   292	In re (Resnik) & Patterns abstracted from instances & Common to all $\omega$-sequences \\
   293	Modal (Hellman) & No abstract structures & In any possible $\omega$-system, $\dots$ \\
   294	Categorical (Awodey) & Categorical content only & Isomorphism-invariant statement \\
   295	\hline
   296	\end{tabular}
   297	\caption{Four flavors of structuralism on a single arithmetic equation.}
   298	\label{tab:flavors}
   299	\end{table}
   300	
   301	The categorical / structural perspective is compatible with each of the philosophical readings. Reading ``$\Mod{T_\succop}$'' as a Platonic abstract category gives the ante-rem version; reading it as a class of concrete realizations gives the in-re version; reading it as a possible-world quantifier gives the modal version. The functorial-semantics framework of \Cref{sec:functorial} is metaphysically neutral; what it secures is the invariance principle that all three philosophical readings agree must hold.
   302	
   303	\begin{remark}[Awodey on univalence]
   304	Awodey's later work~\cite{Awodey2014} extends this neutrality to univalent foundations: ``the univalence axiom is the principle that makes the structuralist viewpoint formally consistent inside a foundational system''. We return to this in \Cref{sec:transport}.
   305	\end{remark}
   306	
   307	\section{Functorial Semantics}\label{sec:functorial}
   308	
   309	\subsection{Lawvere theories}
   310	
   311	We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
   312	
   313	\begin{definition}[Lawvere theory]
   314	A \emph{Lawvere theory} is a small category $\T$ with finite products, equipped with a generator $X$ such that every object of $\T$ is (canonically) a finite power $X^n$, $n \geq 0$. Equivalently, $\T^\op$ has finite coproducts and is the opposite of the free finite-product category on a single object plus operation symbols and axioms.
   315	\end{definition}
   316	
   317	\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
   318	Let $T_\succop$ be the Lawvere theory generated by:
   319	\begin{itemize}
   320	  \item one object $X$,
   321	  \item a constant $\zeroop : X^0 \to X$ (the ``zero''),
   322	  \item a unary operation $\succop : X \to X$ (the ``successor''),
   323	\end{itemize}
   324	with no equations. A model in $\Set$ is a triple $(M, z, s)$ where $M$ is a set, $z \in M$, and $s : M \to M$.
   325	\end{example}
   326	
   327	\begin{definition}[Initial successor structure]
   328	A model $(N, 0, \succop) \in \Mod{T_\succop}$ is \emph{initial} if for every $(M, z, s)$ there is a unique $T_\succop$-homomorphism $h : N \to M$ with $h(0) = z$ and $h \circ \succop = s \circ h$.
   329	\end{definition}
   330	
   331	\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
   332	$(\NN, 0, \succop)$ with $\succop(n) = n+1$ is initial in $\Mod{T_\succop}$, and any two initial models are uniquely isomorphic.
   333	\end{theorem}
   334	
   335	\begin{proof}
   336	Existence and uniqueness of $h$ are by primitive recursion. Two initial objects are connected by a unique morphism each way; their composites are identity by uniqueness.
   337	\end{proof}
   338	
   339	\subsection{Category of models}
   340	
   341	\begin{definition}
   342	For a Lawvere theory $\T$, let $\Mod{\T}$ denote the category of finite-product-preserving functors $\T \to \Set$ with natural transformations as morphisms.
   343	\end{definition}
   344	
   345	\begin{proposition}\label{prop:hom-as-nat}
   346	Let $\T = T_\succop$ and let $M, M' : \T \to \Set$. The data of a natural transformation $\alpha : M \Rightarrow M'$ is exactly a function $\alpha_X : M(X) \to M'(X)$ such that
   347	\[
   348	  \alpha_X(M(\zeroop)(\ast)) = M'(\zeroop)(\ast), \quad
   349	  \alpha_X \circ M(\succop) = M'(\succop) \circ \alpha_X.
   350	\]
   351	\end{proposition}
   352	
   353	\begin{proof}
   354	Naturality of $\alpha$ on the morphism $\zeroop : X^0 \to X$ asserts the commutativity of
   355	\[
   356	\begin{tikzcd}
   357	M(X^0) \arrow[r, "M(\zeroop)"] \arrow[d, "\alpha_{X^0}"'] & M(X) \arrow[d, "\alpha_X"] \\
   358	M'(X^0) \arrow[r, "M'(\zeroop)"'] & M'(X)
   359	\end{tikzcd}
   360	\]
   361	Since both functors preserve finite products, $M(X^0)$ and $M'(X^0)$ are terminal in $\Set$ (singletons $\{\ast\}$) and $\alpha_{X^0}$ is the unique map between them; the diagram thus collapses to the first displayed equation. Naturality on $\succop : X \to X$ gives directly the second displayed equation. Conversely, any pair $(\alpha_{X^0}, \alpha_X)$ satisfying these two equations extends uniquely to a natural transformation: finite-product preservation determines all higher components $\alpha_{X^n}$ as the $n$-fold product of $\alpha_X$ with itself.
   362	\end{proof}
   363	
   364	\subsection{Definable invariants}
   365	
   366	We now make precise the notion of ``numerical answer extracted from a model''.
   367	
   368	\begin{definition}[Definable invariant]\label{def:def-inv}
   369	Let $\T$ be a Lawvere theory and $\E$ a category. A \emph{definable invariant} of $\T$-models in $\E$ is a function
   370	\[
   371	  I : \Ob(\Mod{\T}) \to \Ob(\E)
   372	\]
   373	together with, for every isomorphism $\alpha : M \to M'$ in $\Mod{\T}$, an isomorphism $I(\alpha) : I(M) \to I(M')$ in $\E$, such that $I(\id_M) = \id_{I(M)}$ and $I$ preserves composition. Equivalently, $I$ is a functor from the underlying groupoid of $\Mod{\T}$ to $\E$.
   374	\end{definition}
   375	
   376	\begin{example}\label{ex:cardinality}
   377	Cardinality is a definable invariant when restricted to finite models: $|M| = |M'|$ whenever $M \iso M'$. This is the simplest example of the structural-invariance phenomenon.
   378	\end{example}
   379	
   380	\begin{example}[Order of an element]
   381	For $T_\succop$-models $(M,z,s)$ in $\Set$, define $\mathrm{ord}(M,z,s) = \min \{ n \geq 1 : s^n(z) = z \}$ if such $n$ exists, $\infty$ otherwise. This is a definable invariant: any isomorphism preserves the orbit of $z$ under $s$.
   382	\end{example}
   383	
   384	\begin{theorem}[Invariance theorem]\label{thm:invariance}
   385	Let $\T$ be a Lawvere theory and $I$ a definable invariant. For any two isomorphic models $M, M' \in \Mod{\T}$, $I(M) \iso I(M')$ in $\E$. In particular, when $\E = \Set$ and $I(M)$ is a (finite) cardinal, $|I(M)| = |I(M')|$.
   386	\end{theorem}
   387	
   388	\begin{proof}
   389	By \Cref{def:def-inv}, $I$ acts functorially on the groupoid of isomorphisms. Functors send isomorphisms to isomorphisms, so $I(M) \iso I(M')$. Cardinality is itself an isomorphism invariant on $\Set$, so $|I(M)| = |I(M')|$.
   390	\end{proof}
   391	
   392	\begin{corollary}[Structural identity of models]
   393	If $M \iso M'$ in $\Mod{\T}$, then $M$ and $M'$ agree on every definable invariant. In particular, every ``numerical answer'' computed from $M$ matches the corresponding answer computed from $M'$.
   394	\end{corollary}
   395	
   396	\section{Two Models, One Answer}\label{sec:two-models}
   397	
   398	We make \Cref{thm:invariance} concrete with two non-equal but isomorphic models of $T_\succop$. The accompanying Haskell code (\Cref{sec:haskell}) verifies each computed invariant.
   399	
   400	\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
   401	Define two finite $T_\succop$-models:
   402	\begin{align*}
   403	  M_{\mathrm{vN}}(X) &= \{\emptyset, \{\emptyset\}, \{\emptyset,\{\emptyset\}\}, \{\emptyset,\{\emptyset\},\{\emptyset,\{\emptyset\}\}\}\}, \\
   404	  M_{\mathrm{Z}}(X) &= \{\emptyset, \{\emptyset\}, \{\{\emptyset\}\}, \{\{\{\emptyset\}\}\}\},
   405	\end{align*}
   406	each with $\zeroop$ interpreted as $\emptyset$ and $\succop$ interpreted by the appropriate generation rule (von Neumann: $n \mapsto n \cup \{n\}$; Zermelo: $n \mapsto \{n\}$).
   407	\end{example}
   408	
   409	\begin{proposition}\label{prop:vN-Z-iso}
   410	$M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$ in $\Mod{T_\succop}$, but $M_{\mathrm{vN}}(X) \neq M_{\mathrm{Z}}(X)$ as sets in ZFC.
   411	\end{proposition}
   412	
   413	\begin{proof}
   414	Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
   415	\end{proof}
   416	
   417	\begin{remark}[The Benacerraf situation]
   418	\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
   419	\end{remark}
   420	
   421	\subsection{Definable answers agree}
   422	
   423	\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
   424	For every definable invariant $I$ of $T_\succop$-models in $\Set$ (or in $\NN$ via cardinality), $I(M_{\mathrm{vN}}) = I(M_{\mathrm{Z}})$.
   425	\end{theorem}
   426	
   427	\begin{proof}
   428	By \Cref{prop:vN-Z-iso}, $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$. By \Cref{thm:invariance}, $I(M_{\mathrm{vN}}) \iso I(M_{\mathrm{Z}})$. For invariants taking values in $\NN$ (cardinalities, orbit lengths, fixed-point counts), an isomorphism in $\NN$ is equality.
   429	\end{proof}
   430	
   431	The Haskell implementation in \Cref{sec:haskell} performs this verification computationally: it builds both models, an isomorphism between them, and a panel of definable invariants, and checks term-by-term that the computed values agree.
   432	
   433	\section{Morphisms of Models in Algebra}\label{sec:morphisms}
   434	
   435	The framework of \Cref{sec:functorial} extends to richer algebraic theories. We collect three illustrative cases.
   436	
   437	\subsection{Ring homomorphisms}
   438	
   439	The Lawvere theory $T_{\mathrm{ring}}$ has signature $\{0, 1, +, -, \cdot\}$ and the standard ring axioms. A morphism of $T_{\mathrm{ring}}$-models is a ring homomorphism: a function $f : R \to R'$ with
   440	\[
   441	  f(0) = 0, \quad f(1) = 1, \quad f(x + y) = f(x) + f(y), \quad f(x \cdot y) = f(x) \cdot f(y).
   442	\]
   443	The structural invariants of a ring (commutativity, characteristic, dimension as a $\mathbb{Z}$-module, prime spectrum, $K$-theory) are preserved by isomorphism. Specifically, $\ZZ$ is initial in $\Mod{T_{\mathrm{ring}}}$: there is a unique ring homomorphism $\ZZ \to R$ for any ring $R$, and it is the structural identification of integers inside $R$.
   444	
   445	\begin{example}[Integers in a finite ring]
   446	Let $R = \ZZ/12\ZZ$. The unique morphism $\iota : \ZZ \to R$ is the canonical projection. The image $\iota(58) = 58 \bmod 12 = 10$ is the structural representative of ``$58$'' in $R$. Different rings give different representatives; the structural invariant is the function $R \mapsto \iota_R(58)$, which is a natural transformation $\iota(-)(58) : 1 \Rightarrow U$ (where $U : \Ring \to \Set$ is the underlying-set functor).
   447	\end{example}
   448	
   449	\subsection{Ordered field embeddings}
   450	
   451	The theory of ordered fields has signature $\{0, 1, +, -, \cdot, {}^{-1}, <\}$ and corresponding axioms. Morphisms are order-preserving field embeddings. The real numbers $\RR$ are characterized as the unique (up to canonical isomorphism) Dedekind-complete ordered field, and any ordered-field morphism $f : \RR \to F$ is necessarily an embedding (because $f$ preserves order and $\RR$ has no proper Dedekind cuts of $\QQ$).
   452	
   453	\begin{proposition}\label{prop:R-uniqueness}
   454	Any two Dedekind-complete ordered fields are uniquely isomorphic, and the unique isomorphism preserves the constants $0, 1, \pi, e, \dots$ as structural invariants.
   455	\end{proposition}
   456	
   457	\begin{proof}[Proof sketch]
   458	The order and field operations determine $\QQ$ inside any ordered field; Dedekind completion of $\QQ$ inside the field gives a copy of $\RR$; the order-preserving map between two such copies is forced by the universal property of Dedekind completion.
   459	\end{proof}
   460	
   461	\subsection{Group homomorphisms and conjugacy invariants}
   462	
   463	The theory $T_{\mathrm{grp}}$ has signature $\{e, \cdot, {}^{-1}\}$ and group axioms. A morphism of $T_{\mathrm{grp}}$-models is a group homomorphism. The structural invariants are: order, exponent, abelianization, conjugacy class structure, character table (for finite groups). The cardinality $|G| \in \NN$ is the simplest such invariant; the character table $\chi_G$ is a much richer one.
   464	
   465	\begin{remark}[Character tables and isospectrality]
   466	Two non-isomorphic groups can share the same character table; this rare phenomenon (the simplest example being a pair of $p$-groups of order $p^5$ for some prime $p$) shows that the character table is a genuine but \emph{partial} structural invariant. It distinguishes most groups but does not separate all isomorphism classes. The structuralist program does not require that one invariant separate all classes; it requires only that every invariant respect isomorphism.
   467	\end{remark}
   468	
   469	\section{Models, Theories, and Toposes}\label{sec:topos}
   470	
   471	\subsection{ETCS and categorical foundations}
   472	
   473	Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
   474	
   475	\begin{definition}[Topos]
   476	A \emph{topos} is a category with finite limits, exponentials, and a subobject classifier $\Omega$. A topos has all the categorical structure needed to interpret higher-order logic.
   477	\end{definition}
   478	
   479	\begin{definition}[NNO in a topos]
   480	A \emph{natural-numbers object} in a topos $\E$ is an object $N$ with $0 : 1 \to N$ and $\succop : N \to N$ such that for every $(X, x_0, f)$ there is a unique $h : N \to X$ with $h \circ 0 = x_0$ and $h \circ \succop = f \circ h$.
   481	\end{definition}
   482	
   483	\begin{theorem}[Lawvere]
   484	ETCS is bi-interpretable with bounded Zermelo set theory plus a choice principle. Any model of ETCS contains a unique-up-to-isomorphism NNO, which serves as ``the'' natural numbers.
   485	\end{theorem}
   486	
   487	\subsection{Models in toposes}
   488	
   489	A model of an algebraic theory in a topos $\E$ is a finite-product-preserving functor $\T \to \E$. Different toposes give different ``universes'' in which to interpret arithmetic, but the structural invariants survive.
   490	
   491	\begin{example}[Sheaves]
   492	Let $\E = \mathrm{Sh}(X)$, the topos of sheaves on a topological space. A $T_\succop$-model in $\E$ is a sheaf of pointed unary structures. Locally these look like ordinary models in $\Set$; globally they encode parameter dependence.
   493	\end{example}
   494	
   495	\begin{example}[Effective topos]
   496	Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
   497	\end{example}
   498	
   499	\subsection{Ultraproducts and non-standard models}
   500	
   501	First-order Peano arithmetic ($\mathsf{PA}$) is weaker than the categorical NNO: it has non-standard models, in particular ultrapowers $\NN^{\omega}/\mathcal{U}$ for non-principal ultrafilters $\mathcal{U}$. These models satisfy every first-order arithmetic sentence true in $\NN$, but contain ``infinite'' elements.
   502	
   503	\begin{theorem}[\L{}o\'s' theorem]
   504	Let $\mathcal{U}$ be an ultrafilter on $I$ and let $(M_i)_{i \in I}$ be a family of models of a first-order theory $T$. The ultraproduct $\prod M_i / \mathcal{U}$ satisfies a first-order sentence $\varphi$ iff $\{i : M_i \models \varphi\} \in \mathcal{U}$.
   505	\end{theorem}
   506	
   507	\begin{remark}
   508	The categorical / NNO perspective forbids non-standard models: the universal property uniquely determines $N$ (up to canonical isomorphism). The first-order PA perspective admits them. The structuralist response: non-standard models satisfy a different theory than full second-order PA, and they should be analyzed as a different (richer) structure, not as ``alternative natural numbers''.
   509	\end{remark}
   510	
   511	\begin{example}[Ultrapower and the standard cut]
   512	Let $\mathcal{U}$ be a non-principal ultrafilter on $\omega$ and let $\NN^* = \NN^\omega/\mathcal{U}$. The map $\iota : \NN \to \NN^*$ sending $n \mapsto [n, n, n, \dots]$ is an embedding of structures, but its image is a proper initial segment (the ``standard cut'') of $\NN^*$. The structural invariants of the standard cut --- cardinality, orbit structure of $\succop$, the order-type $\omega$ --- coincide with those of $\NN$ itself; the ``new'' elements of $\NN^*$ form a non-trivial extension that is consistent with first-order PA but not with the categorical NNO universal property. Thus the categorical / structural perspective explains \emph{why} non-standard models exist (PA is too weak to pin down $\NN$ up to isomorphism) and \emph{why} we discount them when speaking of ``the'' natural numbers (the structural invariants we care about live on the standard part).
   513	\end{example}
   514	
   515	\begin{remark}[Skolem's paradox]
   516	The same phenomenon underlies Skolem's paradox: the L\"owenheim--Skolem theorem produces countable models of ZFC even though ZFC proves the existence of uncountable sets. The resolution is that ``uncountable'' is not absolute --- it depends on which model's notion of bijection one uses. Structural invariants of $\NN$ and $\RR$ (cardinality, definable subsets, etc.) are model-relative for first-order theories, and only become absolute when the theory pins down the model up to isomorphism (as second-order PA and the categorical NNO do).
   517	\end{remark}
   518	
   519	\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
   520	
   521	We pause to record how Yoneda and universal properties (the topics of papers 03 and 04 of this series) sit inside the structural perspective.
   522	
   523	\begin{theorem}[Yoneda lemma]
   524	For any locally small category $\C$, object $A$, and functor $F : \C^\op \to \Set$,
   525	\[
   526	  \Nat(\Hom_\C(-, A), F) \iso F(A).
   527	\]
   528	\end{theorem}
   529	
   530	\begin{corollary}[Yoneda embedding is fully faithful]
   531	The functor $y : \C \to [\C^\op, \Set]$ sending $A \mapsto \Hom_\C(-, A)$ is fully faithful: $\Hom_\C(A, B) \iso \Nat(yA, yB)$.
   532	\end{corollary}
   533	
   534	\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
   535	$A \iso B$ in $\C$ iff $yA \iso yB$ in $[\C^\op, \Set]$, iff $\Hom(-, A) \iso \Hom(-, B)$ as presheaves.
   536	\end{corollary}
   537	
   538	\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
   539	
   540	\begin{proposition}[Universal properties are structural]
   541	Any object characterized by a universal property is determined up to canonical isomorphism. Therefore, the value of any property of universally characterized objects depends only on the isomorphism class.
   542	\end{proposition}
   543	
   544	The categorical / structural perspective of \Cref{sec:functorial} and the Yoneda perspective of \Cref{sec:yoneda} agree: both say that mathematical content is preserved by isomorphism and that this is the right level of identity.
   545	
   546	\section{Equivalence-Invariance and Transport}\label{sec:transport}
   547	
   548	We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT --- the type-theoretic side of the Curry--Howard--Lambek correspondence~\cite{Wadler2015} --- validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
   549	
   550	\subsection{Univalence}
   551	
   552	\begin{definition}[Univalence axiom, Voevodsky~\cite{Voevodsky2010,HoTTBook}]
   553	For types $A, B$ in a universe $\mathcal{U}$, the canonical map
   554	\[
   555	  \mathrm{idtoeqv} : (A =_{\mathcal{U}} B) \to (A \eq B)
   556	\]
   557	is itself an equivalence.
   558	\end{definition}
   559	
   560	Univalence asserts that ``equality of types'' and ``equivalence of types'' are themselves equivalent: any equivalence can be transported into an identification, and any identification gives back the corresponding equivalence.
   561	
   562	\begin{theorem}[Transport]
   563	Given $P : \mathcal{U} \to \mathcal{U}$ and $p : A =_\mathcal{U} B$, there is a function $\mathrm{transport}^P(p) : P(A) \to P(B)$. Moreover, $\mathrm{transport}^P(\mathrm{refl}_A) = \id_{P(A)}$.
   564	\end{theorem}
   565	
   566	\subsection{Structure identity principle}
   567	
   568	\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
   569	Let $\mathcal{S}$ be a notion of structure (e.g.\ a $T_\succop$-model in HoTT) defined by a $\Sigma$-type $\Sigma_{X : \mathcal{U}}\, F(X)$ where $F$ is a structure of finite signature on the carrier $X$. Then identification of structures is canonically equivalent to structure-preserving equivalence of carriers:
   570	\[
   571	  \big( (X, s) =_{\Sigma_{X} F(X)} (X', s') \big) \;\eq\; \big(\Sigma_{f : X \eq X'}\, f \text{ preserves } s, s' \big).
   572	\]
   573	\end{theorem}
   574	
   575	\begin{remark}
   576	\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
   577	\end{remark}
   578	
   579	\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
   580	In HoTT, every property $P : \mathcal{S} \to \mathcal{U}$ of structures of a given kind $\mathcal{S}$ is automatically invariant under structure-preserving equivalence: if $(X, s) \eq_\mathcal{S} (X', s')$ then $P(X, s) \eq P(X', s')$.
   581	\end{theorem}
   582	
   583	\begin{proof}
   584	By \Cref{thm:sip}, structure-preserving equivalence is identification. By the action of $P$ on identifications (the J-rule, alias path induction), identifications are transported by $P$. Combine.
   585	\end{proof}
   586	
   587	\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
   588	
   589	\subsection{The bridge to synthesis}
   590	
   591	We can summarize the relationship as follows.
   592	
   593	\begin{table}[ht]
   594	\centering
   595	\small
   596	\begin{tabular}{lll}
   597	\hline
   598	\textbf{Layer} & \textbf{Statement} & \textbf{Status} \\
   599	\hline
   600	Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
   601	Universal property & Iso-class is canonical & Theorem (NNO uniqueness) \\
   602	Yoneda & Object known by relations & Theorem (Yoneda lemma) \\
   603	HoTT + univalence & Iso-invariance is automatic & Internal (\Cref{thm:transport-inv}) \\
   604	\hline
   605	\end{tabular}
   606	\caption{Four layers of one principle.}
   607	\label{tab:four-layers}
   608	\end{table}
   609	
   610	The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
   611	
   612	\section{Categorification and Decategorification}\label{sec:categorification}
   613	
   614	\subsection{From sets to groupoids}
   615	
   616	\begin{definition}[Groupoid]
   617	A \emph{groupoid} is a category in which every morphism is invertible.
   618	\end{definition}
   619	
   620	\begin{definition}[$\pi_0$, set of connected components]

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '621,1040p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   621	For a groupoid $G$, $\pi_0(G)$ is the set of isomorphism classes of objects.
   622	\end{definition}
   623	
   624	\begin{example}\label{ex:58-groupoid}
   625	Let $G_{58}$ be a groupoid with $58$ objects $\{0, 1, \dots, 57\}$ and only identity morphisms. Then $\pi_0(G_{58}) = \{\{0\}, \dots, \{57\}\}$, a $58$-element set. Cardinality is preserved: $|\pi_0(G_{58})| = 58$.
   626	\end{example}
   627	
   628	\begin{example}[A connected groupoid with one component]
   629	Let $G_{B\ZZ/n\ZZ}$ be the groupoid with one object and automorphism group $\ZZ/n\ZZ$. Then $\pi_0(G_{B\ZZ/n\ZZ})$ is a one-element set.
   630	\end{example}
   631	
   632	\subsection{Cardinality of groupoids}
   633	
   634	For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality}~\cite{BaezDolan1998,Leinster2008}:
   635	\[
   636	  |G|_{\mathrm{gpd}} = \sum_{[x] \in \pi_0(G)} \frac{1}{|\mathrm{Aut}(x)|}.
   637	\]
   638	
   639	\begin{example}
   640	$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial.
   641	$|G_{B\ZZ/n\ZZ}|_{\mathrm{gpd}} = 1/n$, decategorifying to a rational invariant.
   642	\end{example}
   643	
   644	\subsection{Decategorification, Euler characteristic, $K$-theory}
   645	
   646	Decategorification is a general process of descending from higher-dimensional structure to numerical content:
   647	\begin{itemize}
   648	  \item $\pi_0$ from groupoids to sets (and then $|\cdot|$ to cardinals);
   649	  \item Euler characteristic $\chi$ from CW-complexes to integers;
   650	  \item $K_0$ from a triangulated category to its Grothendieck group.
   651	\end{itemize}
   652	
   653	\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
   654	For a finite groupoid $G$, the \emph{Euler characteristic} is $\chi(G) = |G|_{\mathrm{gpd}}$.
   655	\end{definition}
   656	
   657	\begin{theorem}[Decategorification preserves equivalence]
   658	Equivalent groupoids $G \eq G'$ satisfy $\pi_0(G) \iso \pi_0(G')$ and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$.
   659	\end{theorem}
   660	
   661	\begin{proof}
   662	Equivalences induce bijections on isomorphism classes, hence equal $\pi_0$ and equal sums in the cardinality formula.
   663	\end{proof}
   664	
   665	\subsection{Numbers in physics}
   666	
   667	The same invariance principle reappears in physics. Gauge invariants and conserved quantities are exactly those numbers preserved under the symmetries of a system; what survives a gauge transformation is structural content, what fails to survive is gauge artifact.
   668	
   669	\begin{example}
   670	Mass, charge, energy, momentum, angular momentum, spin: each is a Noether-conserved quantity associated to a symmetry of the action functional. The conserved quantity is the structural invariant; the dynamical trajectory is the representation.
   671	\end{example}
   672	
   673	\begin{example}[Spin as a representation-theoretic invariant]
   674	The total spin $s$ of a quantum-mechanical particle is the index of an irreducible representation of $\mathrm{SU}(2)$. Two systems whose Hilbert-space representations of the rotation group are isomorphic carry the same spin: $s$ is an invariant of the representation, not of any concrete realization. This is the same structuralist move applied at a different sort of theory --- a theory of representations of a Lie group rather than of a Lawvere theory.
   675	\end{example}
   676	
   677	\begin{remark}
   678	The structuralist principle ``numbers are invariants'' is therefore not specific to mathematics. It is the same idea that physics calls \emph{gauge invariance}, that representation theory calls \emph{character / dimension / trace}, and that K-theory calls \emph{stable equivalence class}. In each case the formal apparatus differs, but the conceptual move is the same: discard the representation-dependent content; retain only the structural content.
   679	\end{remark}
   680	
   681	\subsection{Beyond decategorification: counting beyond cardinality}
   682	
   683	Decategorification can carry more refined information than ordinary cardinality. We collect three increasingly fine invariants extracted from a (suitable) finite groupoid $G$:
   684	\begin{enumerate}
   685	  \item $|\pi_0(G)| \in \NN$ --- the number of isomorphism classes of objects;
   686	  \item $|G|_{\mathrm{gpd}} \in \QQ_{\geq 0}$ --- the groupoid cardinality, weighted by automorphism group orders;
   687	  \item the homotopy type of the geometric realization $|N(G)|$ --- a topological invariant containing all $\pi_n(G)$.
   688	\end{enumerate}
   689	
   690	\begin{example}[Combinatorial species and exponential generating functions]
   691	A combinatorial species is a functor $\mathrm{FinSet}_{\mathrm{bij}} \to \Set$. Its exponential generating function is the sum
   692	\[
   693	  F(z) = \sum_{n \geq 0} |F([n])/S_n| \, \frac{z^n}{n!},
   694	\]
   695	encoding all the species' counting data as a power series. The series is invariant under natural isomorphism of species: two equivalent species give the same EGF.
   696	\end{example}
   697	
   698	\begin{theorem}[Invariance of decategorification]
   699	Let $\Phi : \mathbf{Gpd}_{\mathrm{fin}} \to \E$ be any functor from the $2$-category of finite groupoids to a category $\E$. For equivalent groupoids $G \eq G'$, $\Phi(G) \iso \Phi(G')$ in $\E$.
   700	\end{theorem}
   701	
   702	\begin{proof}
   703	$\Phi$ sends equivalences (which are the morphisms of the underlying $1$-groupoid of $\mathbf{Gpd}_{\mathrm{fin}}$) to isomorphisms.
   704	\end{proof}
   705	
   706	The previous theorem subsumes all the decategorification examples: $\pi_0$, $|\cdot|_{\mathrm{gpd}}$, Euler characteristic, $K_0$ are each instances of this invariance.
   707	
   708	\section{Haskell Implementation}\label{sec:haskell}
   709	
   710	The accompanying code at \texttt{src/06-categorical-structural/} provides a runnable demonstration of the central theorem. We summarize the key data:
   711	
   712	\begin{itemize}
   713	  \item \texttt{Theory.hs}: the data type for a Lawvere theory and its operations (constants, unaries).
   714	  \item \texttt{Model.hs}: a record type representing a model in $\Set$, with a carrier and interpretations of $\zeroop$ and $\succop$. Provides \texttt{isHomomorphism} and \texttt{areIsomorphic}.
   715	  \item \texttt{Models.hs}: builds two finite $T_\succop$-models on disjoint carrier types and an isomorphism witnessing $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$.
   716	  \item \texttt{Invariants.hs}: a panel of definable invariants (cardinality, orbit length of zero, fixed-point count, image of $\succop^k$ at zero for various $k$).
   717	  \item \texttt{Main.hs}: instantiates the panel against both models and prints a side-by-side agreement table.
   718	\end{itemize}
   719	
   720	A representative listing:
   721	
   722	\begin{lstlisting}[language=Haskell]
   723	-- Two models with different carriers but same structure
   724	modelVN  :: Model VNNum
   725	modelZ   :: Model ZNum
   726	isoVNtoZ :: VNNum -> ZNum
   727	isoZtoVN :: ZNum  -> VNNum
   728	
   729	main :: IO ()
   730	main = do
   731	  putStrLn $ "Cardinality vN  : " ++ show (cardinality modelVN)
   732	  putStrLn $ "Cardinality Z   : " ++ show (cardinality modelZ)
   733	  putStrLn $ "Orbit-of-zero vN: " ++ show (orbitLen   modelVN)
   734	  putStrLn $ "Orbit-of-zero Z : " ++ show (orbitLen   modelZ)
   735	  -- Each invariant agrees, witnessing Theorem 4.5
   736	\end{lstlisting}
   737	
   738	\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.
   739	
   740	\section{Results}\label{sec:results}
   741	
   742	We collect the principal results of the paper.
   743	
   744	\begin{theorem}[Main, restatement]
   745	Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
   746	\end{theorem}
   747	
   748	\begin{theorem}[Concrete instance]
   749	The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
   750	\end{theorem}
   751	
   752	\begin{theorem}[HoTT promotion, restatement of \Cref{thm:transport-inv}]
   753	In HoTT with the univalence axiom, every property $P$ of structures of a given kind is automatically invariant under structure-preserving equivalence. Hence the meta-theoretic discipline of writing only structural definitions becomes the internal theorem ``every definition is structural''.
   754	\end{theorem}
   755	
   756	\begin{theorem}[Decategorification preserves invariants]
   757	For finite groupoids $G \eq G'$, $\pi_0(G) \iso \pi_0(G')$ as sets, $|\pi_0(G)| = |\pi_0(G')|$ as natural numbers, and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$ as rational numbers.
   758	\end{theorem}
   759	
   760	\section{Discussion}\label{sec:discussion}
   761	
   762	\subsection{Implications}
   763	
   764	The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
   765	
   766	In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
   767	
   768	\subsection{Alternative categorical foundations}
   769	
   770	ETCS is not the only category-theoretic foundation for mathematics; it is the one closest to traditional set theory in expressive power. Other proposals deserve mention:
   771	
   772	\begin{itemize}
   773	  \item \textbf{ETCS / well-pointed topos with NNO and choice}~\cite{Lawvere1964}: a first-order axiomatization of the category of sets. Bi-interpretable with bounded Zermelo set theory plus choice.
   774	  \item \textbf{SEAR (sets, elements, and relations)}: a Lawvere-style structural set theory developed by Shulman, organized around relations rather than functions.
   775	  \item \textbf{FOLDS (first-order logic with dependent sorts)}: Makkai's framework in which equality between objects of distinct sorts is not a well-formed formula, automatically enforcing structural invariance.
   776	  \item \textbf{HoTT / Univalent Foundations}~\cite{HoTTBook}: dependent type theory with the univalence axiom, in which structural invariance is a theorem of the foundations rather than a syntactic discipline.
   777	\end{itemize}
   778	
   779	A common thread runs through all four: the formal apparatus is set up so that one cannot --- or at least, one should not --- formulate a non-structural property. Where ETCS achieves this by using only categorical primitives, FOLDS by sort discipline, and HoTT by univalence, the philosophical content is the same: only structural content is mathematically meaningful.
   780	
   781	\subsection{Limitations}
   782	
   783	We have presented the structural perspective at the level of finite Lawvere theories interpreted in $\Set$. The full strength of the perspective requires:
   784	\begin{itemize}
   785	  \item finite-product theories with sorts (multi-sorted Lawvere theories), which suffice for first-order universal algebra;
   786	  \item finite-limit theories (essentially algebraic theories), which suffice for partial operations like division;
   787	  \item topos-theoretic semantics for full first-order logic (geometric / coherent theories);
   788	  \item dependent type theories (Martin-L\"of, HoTT) for the most expressive case.
   789	\end{itemize}
   790	The invariance principle survives at every level: the categorical content of the principle does not depend on the size of the theory.
   791	
   792	\subsection{Connection to the synthesis}
   793	
   794	This is paper $06$ of the six topical papers in the series, followed by a synthesis paper. The synthesis paper consolidates the per-topic results into a single thesis: that the levels in \Cref{tab:columns} (rows 3--6) are not analogous but literally the same, identified up to equivalence, in HoTT with univalence. The present paper has prepared the ground for that consolidation by:
   795	\begin{enumerate}
   796	  \item supplying the formal version of structuralism (functorial semantics);
   797	  \item proving the invariance theorem on which the consolidation depends;
   798	  \item identifying univalence as the principle that promotes the invariance from a meta-theorem to an internal theorem.
   799	\end{enumerate}
   800	
   801	\section{Conclusion}\label{sec:conclusion}
   802	
   803	A number is what survives every change of representation that preserves the structure. We have made this slogan precise: numbers are definable invariants of $T_\succop$-models, equivalently functors from the underlying groupoid of $\Mod{T_\succop}$ to whatever target category one chooses to extract numerical content into. Two models that are isomorphic as $T_\succop$-models give the same answer to every such question. The Haskell code makes the principle executable for the von Neumann / Zermelo example.
   804	
   805	The deeper claim is that this principle is the same one that universal properties express, that the Yoneda embedding internalizes, and that HoTT with univalence makes literal: structural identity is identity. The synthesis paper develops the consequences.
   806	
   807	\subsection*{Future work}
   808	
   809	Three directions deserve attention:
   810	\begin{enumerate}
   811	  \item \emph{Higher Lawvere theories:} extend the functorial-semantics framework to $(\infty,1)$-Lawvere theories and verify that the invariance theorem persists at every level of homotopy.
   812	  \item \emph{Modal structuralism in HoTT:} formalize Hellman's modal structuralism using the modalities of HoTT (open / closed / monadic modalities) and compare to the absolute version.
   813	  \item \emph{Decategorification of physical theories:} apply the invariance lens to gauge theories and conserved quantities, and clarify the relationship between structural invariance and Noether's theorem.
   814	\end{enumerate}
   815	
   816	\begin{thebibliography}{99}
   817	
   818	\bibitem{Awodey1996}
   819	Awodey, S. (1996). \emph{Structure in Mathematics and Logic: A Categorical Perspective}. Philosophia Mathematica, 4(3), 209--237.
   820	
   821	\bibitem{Awodey2004}
   822	Awodey, S. (2004). \emph{An Answer to Hellman's Question: ``Does Category Theory Provide a Framework for Mathematical Structuralism?''} Philosophia Mathematica, 12(1), 54--64.
   823	
   824	\bibitem{Awodey2014}
   825	Awodey, S. (2014). \emph{Structuralism, Invariance, and Univalence}. Philosophia Mathematica, 22(1), 1--11.
   826	
   827	\bibitem{Benacerraf1965}
   828	Benacerraf, P. (1965). \emph{What Numbers Could Not Be}. Philosophical Review, 74(1), 47--73.
   829	
   830	\bibitem{Dedekind1888}
   831	Dedekind, R. (1888). \emph{Was sind und was sollen die Zahlen?} Vieweg \& Sohn, Braunschweig.
   832	
   833	\bibitem{Escardo2019}
   834	Escard\'o, M.\ H. (2019). \emph{Introduction to Univalent Foundations of Mathematics with Agda}. Lecture notes.
   835	
   836	\bibitem{Hellman1989}
   837	Hellman, G. (1989). \emph{Mathematics Without Numbers: Towards a Modal-Structural Interpretation}. Oxford University Press.
   838	
   839	\bibitem{HoTTBook}
   840	The Univalent Foundations Program (2013). \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study. arXiv:1308.0729.
   841	
   842	\bibitem{Hyland1982}
   843	Hyland, J.\ M.\ E. (1982). \emph{The Effective Topos}. In: A.\ S.\ Troelstra, D.\ van Dalen (eds.), The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland, 165--216.
   844	
   845	\bibitem{Lawvere1963}
   846	Lawvere, F.\ W. (1963). \emph{Functorial Semantics of Algebraic Theories}. PhD thesis, Columbia University. Reprinted in TAC Reprints 5 (2004).
   847	
   848	\bibitem{Lawvere1964}
   849	Lawvere, F.\ W. (1964). \emph{An Elementary Theory of the Category of Sets}. Proceedings of the National Academy of Sciences, 52(6), 1506--1511.
   850	
   851	\bibitem{MacLane1971}
   852	Mac Lane, S. (1971). \emph{Categories for the Working Mathematician}. Springer.
   853	
   854	\bibitem{Resnik1981}
   855	Resnik, M.\ D. (1981). \emph{Mathematics as a Science of Patterns: Ontology and Reference}. No\^us, 15(4), 529--550.
   856	
   857	\bibitem{Resnik1997}
   858	Resnik, M.\ D. (1997). \emph{Mathematics as a Science of Patterns}. Oxford University Press.
   859	
   860	\bibitem{Riehl2016}
   861	Riehl, E. (2016). \emph{Category Theory in Context}. Dover.
   862	
   863	\bibitem{Shapiro1997}
   864	Shapiro, S. (1997). \emph{Philosophy of Mathematics: Structure and Ontology}. Oxford University Press.
   865	
   866	\bibitem{Voevodsky2010}
   867	Voevodsky, V. (2010). \emph{Univalent Foundations Project}. Manuscript.
   868	
   869	\bibitem{Wadler2015}
   870	Wadler, P. (2015). \emph{Propositions as Types}. Communications of the ACM, 58(12), 75--84.
   871	
   872	\bibitem{BaezDolan1998}
   873	Baez, J.\ C., and Dolan, J. (1998). \emph{From Finite Sets to Feynman Diagrams}. In: Mathematics Unlimited --- 2001 and Beyond, Springer, 29--50.
   874	
   875	\bibitem{Leinster2008}
   876	Leinster, T. (2008). \emph{The Euler Characteristic of a Category}. Documenta Mathematica, 13, 21--49.
   877	
   878	\end{thebibliography}
   879	
   880	\end{document}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\\\ref{' papers/06-categorical-structural/latex/06-categorical-structural.tex; rg -n -F '\\\\Cref{' papers/06-categorical-structural/latex/06-categorical-structural.tex; rg -n -F '\\\\cite{' papers/06-categorical-structural/latex/06-categorical-structural.tex; rg -n -F '\\\\label{' papers/06-categorical-structural/latex/06-categorical-structural.tex; rg -n -F '\\\\bibliography{' papers/06-categorical-structural/latex/06-categorical-structural.tex; rg -n -F '\\\\begin{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc 'which latexmk' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk

exec
/usr/local/bin/zsh -lc 'which pdflatex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/pdflatex

exec
/usr/local/bin/zsh -lc "rg -n -F '\\ref{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n -F '\\Cref{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
133:  \item ``$58$'' denotes an invariant under all structure-preserving morphisms between models of arithmetic, in a sense made precise by functorial semantics (\Cref{sec:functorial}).
139:The paper is the last of the six topical papers in the \emph{Univalent Correspondence Project} and provides the bridge to the subsequent synthesis paper. The thesis we defend across all six papers is captured by the columns table reproduced (in shortened form) in \Cref{tab:columns}.
158:We make three contributions. First, in \Cref{sec:structuralism} we present a unified treatment of the major flavors of structuralism (Resnik, Shapiro, Hellman, Awodey) and identify the precise sense in which categorical structuralism is the formal analogue of the philosophical thesis. Second, in \Cref{sec:functorial} we develop functorial semantics for a small algebraic theory $T_{\succop}$ and prove that any natural isomorphism between two models induces equality of all definable numerical invariants (\Cref{thm:invariance}). Third, in \Cref{sec:transport} we re-derive the same invariance principle as a special case of HoTT's transport along paths, and we discuss categorification and decategorification (\Cref{sec:categorification}) as the higher-dimensional analogue.
162:\Cref{sec:transport} contains the bridge to the synthesis paper: every structural property is automatically transportable along equivalences, and univalence is the principle that makes this an internal theorem of the foundations rather than a meta-theorem of mathematical practice.
277:\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
301:The categorical / structural perspective is compatible with each of the philosophical readings. Reading ``$\Mod{T_\succop}$'' as a Platonic abstract category gives the ante-rem version; reading it as a class of concrete realizations gives the in-re version; reading it as a possible-world quantifier gives the modal version. The functorial-semantics framework of \Cref{sec:functorial} is metaphysically neutral; what it secures is the invariance principle that all three philosophical readings agree must hold.
304:Awodey's later work~\cite{Awodey2014} extends this neutrality to univalent foundations: ``the univalence axiom is the principle that makes the structuralist viewpoint formally consistent inside a foundational system''. We return to this in \Cref{sec:transport}.
389:By \Cref{def:def-inv}, $I$ acts functorially on the groupoid of isomorphisms. Functors send isomorphisms to isomorphisms, so $I(M) \iso I(M')$. Cardinality is itself an isomorphism invariant on $\Set$, so $|I(M)| = |I(M')|$.
398:We make \Cref{thm:invariance} concrete with two non-equal but isomorphic models of $T_\succop$. The accompanying Haskell code (\Cref{sec:haskell}) verifies each computed invariant.
414:Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
418:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
428:By \Cref{prop:vN-Z-iso}, $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$. By \Cref{thm:invariance}, $I(M_{\mathrm{vN}}) \iso I(M_{\mathrm{Z}})$. For invariants taking values in $\NN$ (cardinalities, orbit lengths, fixed-point counts), an isomorphism in $\NN$ is equality.
431:The Haskell implementation in \Cref{sec:haskell} performs this verification computationally: it builds both models, an isomorphism between them, and a panel of definable invariants, and checks term-by-term that the computed values agree.
435:The framework of \Cref{sec:functorial} extends to richer algebraic theories. We collect three illustrative cases.
538:\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
544:The categorical / structural perspective of \Cref{sec:functorial} and the Yoneda perspective of \Cref{sec:yoneda} agree: both say that mathematical content is preserved by isomorphism and that this is the right level of identity.
548:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT --- the type-theoretic side of the Curry--Howard--Lambek correspondence~\cite{Wadler2015} --- validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
576:\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
584:By \Cref{thm:sip}, structure-preserving equivalence is identification. By the action of $P$ on identifications (the J-rule, alias path induction), identifications are transported by $P$. Combine.
587:\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
600:Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
603:HoTT + univalence & Iso-invariance is automatic & Internal (\Cref{thm:transport-inv}) \\
610:The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
738:\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.
745:Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
749:The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
752:\begin{theorem}[HoTT promotion, restatement of \Cref{thm:transport-inv}]
764:The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
766:In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
794:This is paper $06$ of the six topical papers in the series, followed by a synthesis paper. The synthesis paper consolidates the per-topic results into a single thesis: that the levels in \Cref{tab:columns} (rows 3--6) are not analogous but literally the same, identified up to equivalence, in HoTT with univalence. The present paper has prepared the ground for that consolidation by:

exec
/usr/local/bin/zsh -lc "rg -n -F '\\cite{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
129:Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
166:We fix terminology and notation. All categories are locally small unless stated otherwise; standard references for the categorical background are Mac Lane~\cite{MacLane1971} and Riehl~\cite{Riehl2016}.
189:An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
238:Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
240:Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
266:Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
304:Awodey's later work~\cite{Awodey2014} extends this neutrality to univalent foundations: ``the univalence axiom is the principle that makes the structuralist viewpoint formally consistent inside a foundational system''. We return to this in \Cref{sec:transport}.
311:We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
418:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
473:Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
496:Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
548:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT --- the type-theoretic side of the Curry--Howard--Lambek correspondence~\cite{Wadler2015} --- validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
552:\begin{definition}[Univalence axiom, Voevodsky~\cite{Voevodsky2010,HoTTBook}]
576:\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
634:For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality}~\cite{BaezDolan1998,Leinster2008}:
773:  \item \textbf{ETCS / well-pointed topos with NNO and choice}~\cite{Lawvere1964}: a first-order axiomatization of the category of sets. Bi-interpretable with bounded Zermelo set theory plus choice.
776:  \item \textbf{HoTT / Univalent Foundations}~\cite{HoTTBook}: dependent type theory with the univalence axiom, in which structural invariance is a theorem of the foundations rather than a syntactic discipline.

exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
125:\section{Introduction}\label{sec:intro}
153:\label{tab:columns}
164:\section{Mathematical Framework}\label{sec:framework}
188:\begin{definition}[Algebraic theory, in the Lawvere sense]\label{def:alg-theory}
231:\label{tab:notation}
234:\section{Mathematical Structuralism}\label{sec:structuralism}
268:\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
280:\subsection{Comparison and reconciliation}\label{ssec:compare}
298:\label{tab:flavors}
307:\section{Functorial Semantics}\label{sec:functorial}
317:\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
331:\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
345:\begin{proposition}\label{prop:hom-as-nat}
368:\begin{definition}[Definable invariant]\label{def:def-inv}
376:\begin{example}\label{ex:cardinality}
384:\begin{theorem}[Invariance theorem]\label{thm:invariance}
396:\section{Two Models, One Answer}\label{sec:two-models}
400:\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
409:\begin{proposition}\label{prop:vN-Z-iso}
423:\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
433:\section{Morphisms of Models in Algebra}\label{sec:morphisms}
453:\begin{proposition}\label{prop:R-uniqueness}
469:\section{Models, Theories, and Toposes}\label{sec:topos}
519:\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
534:\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
546:\section{Equivalence-Invariance and Transport}\label{sec:transport}
568:\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
579:\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
607:\label{tab:four-layers}
612:\section{Categorification and Decategorification}\label{sec:categorification}
624:\begin{example}\label{ex:58-groupoid}
653:\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
708:\section{Haskell Implementation}\label{sec:haskell}
740:\section{Results}\label{sec:results}
760:\section{Discussion}\label{sec:discussion}
801:\section{Conclusion}\label{sec:conclusion}

codex
All `\Cref` targets and bibliography keys visible so far are local to the file. I’m compiling into `/tmp` now to catch package/command errors and any references that only show up after TeX expands the document.
exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/ffm-06-latex-review && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/ffm-06-latex-review papers/06-categorical-structural/latex/06-categorical-structural.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 1967ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/06-categorical-structural/latex/06-categorical-structural.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file 06-categorical-structural.toc.

LaTeX Warning: Citation `Dedekind1888' on page 1 undefined on input line 129.


LaTeX Warning: Citation `Benacerraf1965' on page 1 undefined on input line 129.


[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]

LaTeX Warning: Reference `sec:functorial' on page 1 undefined on input line 133
.


LaTeX Warning: Reference `tab:columns' on page 1 undefined on input line 139.


LaTeX Warning: Reference `sec:structuralism' on page 1 undefined on input line 
158.


LaTeX Warning: Reference `sec:functorial' on page 1 undefined on input line 158
.


LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 158
.


LaTeX Warning: Reference `sec:transport' on page 1 undefined on input line 158.



LaTeX Warning: Reference `sec:categorification' on page 1 undefined on input li
ne 158.

[2]

LaTeX Warning: Reference `sec:transport' on page 1 undefined on input line 162.



LaTeX Warning: Citation `MacLane1971' on page 3 undefined on input line 166.


LaTeX Warning: Citation `Riehl2016' on page 3 undefined on input line 166.


LaTeX Warning: Citation `Lawvere1963' on page 3 undefined on input line 189.

[3]

LaTeX Warning: Citation `Benacerraf1965' on page 4 undefined on input line 238.



LaTeX Warning: Citation `Resnik1997' on page 4 undefined on input line 238.


LaTeX Warning: Citation `Shapiro1997' on page 4 undefined on input line 238.


LaTeX Warning: Citation `Hellman1989' on page 4 undefined on input line 238.


LaTeX Warning: Citation `Awodey1996' on page 4 undefined on input line 238.


LaTeX Warning: Citation `Awodey2014' on page 4 undefined on input line 238.


LaTeX Warning: Citation `Resnik1981' on page 4 undefined on input line 240.


LaTeX Warning: Citation `Hellman1989' on page 4 undefined on input line 240.

[4]

LaTeX Warning: Citation `Awodey2004' on page 5 undefined on input line 266.


LaTeX Warning: Citation `Awodey2014' on page 5 undefined on input line 266.


LaTeX Warning: Reference `prop:struct-iso' on page 1 undefined on input line 27
7.


LaTeX Warning: Reference `thm:sip' on page 1 undefined on input line 277.


LaTeX Warning: Reference `sec:functorial' on page 1 undefined on input line 301
.

[5{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Citation `Awodey2014' on page 6 undefined on input line 304.


LaTeX Warning: Reference `sec:transport' on page 1 undefined on input line 304.



LaTeX Warning: Citation `Lawvere1963' on page 6 undefined on input line 311.

[6] [7]

LaTeX Warning: Reference `def:def-inv' on page 1 undefined on input line 389.


LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 398
.


LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 398.


LaTeX Warning: Reference `prop:hom-as-nat' on page 1 undefined on input line 41
4.


LaTeX Warning: Reference `prop:vN-Z-iso' on page 1 undefined on input line 418.



LaTeX Warning: Citation `Benacerraf1965' on page 8 undefined on input line 418.



LaTeX Warning: Reference `prop:vN-Z-iso' on page 1 undefined on input line 428.



LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 428
.


LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 431.

[8]

LaTeX Warning: Reference `sec:functorial' on page 1 undefined on input line 435
.

[9]

LaTeX Warning: Citation `Lawvere1964' on page 10 undefined on input line 473.


LaTeX Warning: Citation `Hyland1982' on page 10 undefined on input line 496.

[10]
Overfull \hbox (2.66586pt too wide) in paragraph at lines 535--536
[]\OT1/cmr/bx/n/12 Corollary 8.3 \OT1/cmr/m/n/12 (Iden-tity by re-la-tions)\OT1
/cmr/bx/n/12 . []$\OML/cmm/m/it/12 A [] B$ \OT1/cmr/m/it/12 in $\OMS/cmsy/m/n/1
2 C$ \OT1/cmr/m/it/12 iff $\OML/cmm/m/it/12 yA [] yB$ \OT1/cmr/m/it/12 in $\OT1
/cmr/m/n/12 [\OMS/cmsy/m/n/12 C[]\OML/cmm/m/it/12 ; []\OT1/cmr/m/n/12 ]$\OT1/cm
r/m/it/12 , iff $[]\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 ^^@\OML/cmm/m/it/12 ; A\OT
1/cmr/m/n/12 ) []

LaTeX Warning: Reference `cor:id-by-rel' on page 1 undefined on input line 538.



Overfull \hbox (19.7222pt too wide) in paragraph at lines 538--539
\OT1/cmr/m/n/12 iso-mor-phism) by its sys-tem of in-com-ing maps. ``$58$'' is i
ts rep-re-sentable func-tor $[][](\OMS/cmsy/m/n/12 ^^@\OML/cmm/m/it/12 ; \OT1/c
mr/m/n/12 58)$
[11]

LaTeX Warning: Reference `sec:functorial' on page 1 undefined on input line 544
.


LaTeX Warning: Reference `sec:yoneda' on page 1 undefined on input line 544.


LaTeX Warning: Citation `Wadler2015' on page 12 undefined on input line 548.


LaTeX Warning: Reference `prop:struct-iso' on page 1 undefined on input line 54
8.


LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 548
.


LaTeX Warning: Citation `Voevodsky2010' on page 12 undefined on input line 552.



LaTeX Warning: Citation `HoTTBook' on page 12 undefined on input line 552.


LaTeX Warning: Reference `thm:sip' on page 1 undefined on input line 576.


LaTeX Warning: Citation `HoTTBook' on page 12 undefined on input line 576.


LaTeX Warning: Citation `Escardo2019' on page 12 undefined on input line 576.

[12]

LaTeX Warning: Reference `thm:sip' on page 1 undefined on input line 584.


LaTeX Warning: Reference `thm:transport-inv' on page 1 undefined on input line 
587.


LaTeX Warning: Reference `prop:struct-iso' on page 1 undefined on input line 58
7.


LaTeX Warning: Reference `prop:struct-iso' on page 1 undefined on input line 60
0.


LaTeX Warning: Reference `thm:transport-inv' on page 1 undefined on input line 
603.


LaTeX Warning: Reference `tab:four-layers' on page 1 undefined on input line 61
0.


LaTeX Warning: Citation `BaezDolan1998' on page 13 undefined on input line 634.



LaTeX Warning: Citation `Leinster2008' on page 13 undefined on input line 634.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.

[14] [15]

LaTeX Warning: Reference `thm:agreement' on page 1 undefined on input line 738.



LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 738
.


LaTeX Warning: Reference `def:def-inv' on page 1 undefined on input line 745.


LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 749.


LaTeX Warning: Reference `thm:transport-inv' on page 1 undefined on input line 
752.


LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 764
.


LaTeX Warning: Reference `prop:struct-iso' on page 1 undefined on input line 76
4.

[16]

LaTeX Warning: Reference `sec:transport' on page 1 undefined on input line 766.



LaTeX Warning: Citation `Lawvere1964' on page 17 undefined on input line 773.


LaTeX Warning: Citation `HoTTBook' on page 17 undefined on input line 776.


LaTeX Warning: Reference `tab:columns' on page 1 undefined on input line 794.

[17] [18] [19] (/private/tmp/ffm-06-latex-review/06-categorical-structural.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `06-categorical-structural.out' has change
d.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sftt1095.pfb>
Output written on /private/tmp/ffm-06-latex-review/06-categorical-structural.pd
f (19 pages, 361524 bytes).
Transcript written on /private/tmp/ffm-06-latex-review/06-categorical-structura
l.log.
Latexmk: Getting log file '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.fls'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: Missing input file '06-categorical-structural.toc' message in .log file:
  No file 06-categorical-structural.toc.
Latexmk: References changed.
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/ffm-06-latex-review/06-categorical-structural.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/ffm-06-latex-review/06-categorical-structural.aux
  /private/tmp/ffm-06-latex-review/06-categorical-structural.out
  /private/tmp/ffm-06-latex-review/06-categorical-structural.toc

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/ffm-06-latex-review"  "papers/06-categorical-structural/latex/06-categorical-structural.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/06-categorical-structural/latex/06-categorical-structural.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/private/tmp/ffm-06-latex-review/06-categorical-structural.out)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.toc [1{/usr/local/t
exlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4]
Overfull \hbox (2.76926pt too wide) in paragraph at lines 238--239
\OT1/cmr/m/n/12 Mathematical struc-tural-ism (Be-nac-er-raf [[]], Resnik [[]], 
Shapiro [[]], Hell-man [[]], Awodey [[],
[5] [6{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}] [7] [8] [9] [10] [11]
Overfull \hbox (2.66586pt too wide) in paragraph at lines 535--536
[]\OT1/cmr/bx/n/12 Corollary 8.3 \OT1/cmr/m/n/12 (Iden-tity by re-la-tions)\OT1
/cmr/bx/n/12 . []$\OML/cmm/m/it/12 A [] B$ \OT1/cmr/m/it/12 in $\OMS/cmsy/m/n/1
2 C$ \OT1/cmr/m/it/12 iff $\OML/cmm/m/it/12 yA [] yB$ \OT1/cmr/m/it/12 in $\OT1
/cmr/m/n/12 [\OMS/cmsy/m/n/12 C[]\OML/cmm/m/it/12 ; []\OT1/cmr/m/n/12 ]$\OT1/cm
r/m/it/12 , iff $[]\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 ^^@\OML/cmm/m/it/12 ; A\OT
1/cmr/m/n/12 ) []
[12]
Overfull \hbox (2.90224pt too wide) in paragraph at lines 576--577
[]\OT1/cmr/m/it/12 Remark \OT1/cmr/m/n/12 9.4\OT1/cmr/m/it/12 . []\OT1/cmr/m/n/
12 The-o-rem []9.3[] is proved level-by-level for set-level struc-tures in the 
HoTT Book [[]],
[13]
Overfull \hbox (0.80846pt too wide) in paragraph at lines 596--606
 [][] 
[14]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.

[15] [16] [17] [18] [19] [20]
(/private/tmp/ffm-06-latex-review/06-categorical-structural.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sftt1095.pfb>
Output written on /private/tmp/ffm-06-latex-review/06-categorical-structural.pd
f (20 pages, 371525 bytes).
Transcript written on /private/tmp/ffm-06-latex-review/06-categorical-structura
l.log.
Latexmk: Getting log file '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.fls'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/ffm-06-latex-review/06-categorical-structural.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/ffm-06-latex-review/06-categorical-structural.aux
  /private/tmp/ffm-06-latex-review/06-categorical-structural.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/ffm-06-latex-review"  "papers/06-categorical-structural/latex/06-categorical-structural.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/06-categorical-structural/latex/06-categorical-structural.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/private/tmp/ffm-06-latex-review/06-categorical-structural.out)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/ffm-06-latex-review/06-categorical-structural.toc [1{/usr/local/t
exlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4]
Overfull \hbox (2.76926pt too wide) in paragraph at lines 238--239
\OT1/cmr/m/n/12 Mathematical struc-tural-ism (Be-nac-er-raf [[]], Resnik [[]], 
Shapiro [[]], Hell-man [[]], Awodey [[],
[5] [6{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}] [7] [8] [9] [10] [11]
Overfull \hbox (2.66586pt too wide) in paragraph at lines 535--536
[]\OT1/cmr/bx/n/12 Corollary 8.3 \OT1/cmr/m/n/12 (Iden-tity by re-la-tions)\OT1
/cmr/bx/n/12 . []$\OML/cmm/m/it/12 A [] B$ \OT1/cmr/m/it/12 in $\OMS/cmsy/m/n/1
2 C$ \OT1/cmr/m/it/12 iff $\OML/cmm/m/it/12 yA [] yB$ \OT1/cmr/m/it/12 in $\OT1
/cmr/m/n/12 [\OMS/cmsy/m/n/12 C[]\OML/cmm/m/it/12 ; []\OT1/cmr/m/n/12 ]$\OT1/cm
r/m/it/12 , iff $[]\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 ^^@\OML/cmm/m/it/12 ; A\OT
1/cmr/m/n/12 ) []
[12]
Overfull \hbox (2.90224pt too wide) in paragraph at lines 576--577
[]\OT1/cmr/m/it/12 Remark \OT1/cmr/m/n/12 9.4\OT1/cmr/m/it/12 . []\OT1/cmr/m/n/
12 The-o-rem []9.3[] is proved level-by-level for set-level struc-tures in the 
HoTT Book [[]],
[13]
Overfull \hbox (0.80846pt too wide) in paragraph at lines 596--606
 [][] 
[14]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 644.

[15] [16] [17] [18] [19] [20]
(/private/tmp/ffm-06-latex-review/06-categorical-structural.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/cm-super/sftt1095.pfb>
Output written on /private/tmp/ffm-06-latex-review/06-categorical-structural.pd
f (20 pages, 371528 bytes).
Transcript written on /private/tmp/ffm-06-latex-review/06-categorical-structura
l.log.
Latexmk: Getting log file '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.fls'
Latexmk: Examining '/private/tmp/ffm-06-latex-review/06-categorical-structural.log'
Latexmk: Log file says output to '/private/tmp/ffm-06-latex-review/06-categorical-structural.pdf'
Latexmk: All targets (/private/tmp/ffm-06-latex-review/06-categorical-structural.pdf) are up-to-date


exec
/usr/local/bin/zsh -lc "rg -n \"(?i)(undefined|LaTeX Error|Emergency stop|Fatal error|Missing \\\\begin|File "'`.*'"' not found|Citation .* undefined|Reference .* undefined)\" /tmp/ffm-06-latex-review/06-categorical-structural.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
zsh:1: unmatched "

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\bibitem\\{|\\\\cite\\{|\\\\label\\{|\\\\Cref\\{\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\bibitem\{|\cite\{|\label\{|\Cref\{)
                  ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/ffm-06-latex-review papers/06-categorical-structural/latex/06-categorical-structural.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
Rc files read (in order):
  NONE
Latexmk: This is Latexmk, John Collins, 9 March 2026. Version 4.88.
Latexmk: Nothing to do for 'papers/06-categorical-structural/latex/06-categorical-structural.tex'.
Latexmk: All targets (/private/tmp/ffm-06-latex-review/06-categorical-structural.pdf) are up-to-date


codex
The clean rerun is stable: `latexmk` reports the PDF target up to date after three passes. I’m doing one final log grep for the specific blocking classes before closing this out.
exec
/usr/local/bin/zsh -lc "rg -n -F '\\cite{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n -F '\\bibitem{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n 'undefined|LaTeX Error|Emergency stop|Fatal error|Missing \\\\begin|not found|Citation .* undefined|Reference .* undefined' /tmp/ffm-06-latex-review/06-categorical-structural.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
 succeeded in 0ms:
818:\bibitem{Awodey1996}
821:\bibitem{Awodey2004}
824:\bibitem{Awodey2014}
827:\bibitem{Benacerraf1965}
830:\bibitem{Dedekind1888}
833:\bibitem{Escardo2019}
836:\bibitem{Hellman1989}
839:\bibitem{HoTTBook}
842:\bibitem{Hyland1982}
845:\bibitem{Lawvere1963}
848:\bibitem{Lawvere1964}
851:\bibitem{MacLane1971}
854:\bibitem{Resnik1981}
857:\bibitem{Resnik1997}
860:\bibitem{Riehl2016}
863:\bibitem{Shapiro1997}
866:\bibitem{Voevodsky2010}
869:\bibitem{Wadler2015}
872:\bibitem{BaezDolan1998}
875:\bibitem{Leinster2008}

 succeeded in 0ms:
129:Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
166:We fix terminology and notation. All categories are locally small unless stated otherwise; standard references for the categorical background are Mac Lane~\cite{MacLane1971} and Riehl~\cite{Riehl2016}.
189:An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
238:Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
240:Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
266:Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
304:Awodey's later work~\cite{Awodey2014} extends this neutrality to univalent foundations: ``the univalence axiom is the principle that makes the structuralist viewpoint formally consistent inside a foundational system''. We return to this in \Cref{sec:transport}.
311:We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
418:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
473:Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
496:Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
548:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT --- the type-theoretic side of the Curry--Howard--Lambek correspondence~\cite{Wadler2015} --- validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
552:\begin{definition}[Univalence axiom, Voevodsky~\cite{Voevodsky2010,HoTTBook}]
576:\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
634:For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality}~\cite{BaezDolan1998,Leinster2008}:
773:  \item \textbf{ETCS / well-pointed topos with NNO and choice}~\cite{Lawvere1964}: a first-order axiomatization of the category of sets. Bi-interpretable with bounded Zermelo set theory plus choice.
776:  \item \textbf{HoTT / Univalent Foundations}~\cite{HoTTBook}: dependent type theory with the univalence axiom, in which structural invariance is a theorem of the foundations rather than a syntactic discipline.

exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
125:\section{Introduction}\label{sec:intro}
153:\label{tab:columns}
164:\section{Mathematical Framework}\label{sec:framework}
188:\begin{definition}[Algebraic theory, in the Lawvere sense]\label{def:alg-theory}
231:\label{tab:notation}
234:\section{Mathematical Structuralism}\label{sec:structuralism}
268:\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
280:\subsection{Comparison and reconciliation}\label{ssec:compare}
298:\label{tab:flavors}
307:\section{Functorial Semantics}\label{sec:functorial}
317:\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
331:\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
345:\begin{proposition}\label{prop:hom-as-nat}
368:\begin{definition}[Definable invariant]\label{def:def-inv}
376:\begin{example}\label{ex:cardinality}
384:\begin{theorem}[Invariance theorem]\label{thm:invariance}
396:\section{Two Models, One Answer}\label{sec:two-models}
400:\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
409:\begin{proposition}\label{prop:vN-Z-iso}
423:\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
433:\section{Morphisms of Models in Algebra}\label{sec:morphisms}
453:\begin{proposition}\label{prop:R-uniqueness}
469:\section{Models, Theories, and Toposes}\label{sec:topos}
519:\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
534:\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
546:\section{Equivalence-Invariance and Transport}\label{sec:transport}
568:\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
579:\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
607:\label{tab:four-layers}
612:\section{Categorification and Decategorification}\label{sec:categorification}
624:\begin{example}\label{ex:58-groupoid}
653:\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
708:\section{Haskell Implementation}\label{sec:haskell}
740:\section{Results}\label{sec:results}
760:\section{Discussion}\label{sec:discussion}
801:\section{Conclusion}\label{sec:conclusion}

codex
No remaining blocking LaTeX issues found in [06-categorical-structural.tex](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/06-categorical-structural/latex/06-categorical-structural.tex).

Verified with `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/ffm-06-latex-review ...`; final run completed successfully. Final log grep found no compile errors, undefined commands, missing files/packages, undefined refs, or undefined citations.
2026-05-04T14:19:49.361098Z ERROR codex_core::session: failed to record rollout items: thread 019df35a-dd5f-7b52-a4e6-b7ac151b1ff1 not found
tokens used
106,343
No remaining blocking LaTeX issues found in [06-categorical-structural.tex](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/06-categorical-structural/latex/06-categorical-structural.tex).

Verified with `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/ffm-06-latex-review ...`; final run completed successfully. Final log grep found no compile errors, undefined commands, missing files/packages, undefined refs, or undefined citations.
