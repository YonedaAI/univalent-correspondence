---
reviewer: codex (OpenAI)
type: formatting (final pass)
paper: 03-universal-property
date: 2026-05-04T14:18:44Z
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
session id: 019df35b-1173-7b90-af18-e4d49b4571ae
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/03-universal-property/latex/03-universal-property.tex for ONLY acceptance-blocking formatting issues: actual compilation errors, missing packages, broken references, undefined commands, malformed environments. The paper has been through one prior Codex pass; do NOT flag stylistic preferences. List any blocking issues with line numbers and the exact fix. If clean, say 'NO BLOCKING ISSUES'.
codex
I’ll review this read-only, starting with the LaTeX source and then checking whether the repo has a build path or logs that expose actual compile failures.
exec
/usr/local/bin/zsh -lc "nl -ba papers/03-universal-property/latex/03-universal-property.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
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
    12	% Bibliography-style refs (loaded before hyperref to avoid fragility)
    13	\usepackage[numbers,sort&compress]{natbib}
    14	
    15	% References and links
    16	\usepackage{hyperref}
    17	\usepackage{cleveref}
    18	
    19	% Graphics
    20	\usepackage{graphicx}
    21	
    22	% Page layout
    23	\usepackage[margin=1in]{geometry}
    24	
    25	% Code listings
    26	\usepackage{listings}
    27	\usepackage{xcolor}
    28	
    29	% Sidebar (legacy package; works with new LaTeX shipout hook)
    30	\usepackage{everypage}
    31	
    32	% Theorem environments
    33	\newtheorem{theorem}{Theorem}[section]
    34	\newtheorem{proposition}[theorem]{Proposition}
    35	\newtheorem{lemma}[theorem]{Lemma}
    36	\newtheorem{corollary}[theorem]{Corollary}
    37	\theoremstyle{definition}
    38	\newtheorem{definition}[theorem]{Definition}
    39	\newtheorem{example}[theorem]{Example}
    40	\theoremstyle{remark}
    41	\newtheorem{remark}[theorem]{Remark}
    42	
    43	% Listings configuration for Haskell
    44	\lstdefinelanguage{Haskell}{
    45	  morekeywords={class,data,default,deriving,do,else,if,import,in,infix,infixl,
    46	    infixr,instance,let,module,newtype,of,then,type,where,case,family,forall},
    47	  sensitive=true,
    48	  morecomment=[l]{--},
    49	  morestring=[b]"
    50	}
    51	\lstset{
    52	  basicstyle=\ttfamily\small,
    53	  keywordstyle=\color{blue!70!black}\bfseries,
    54	  commentstyle=\color{green!50!black}\itshape,
    55	  stringstyle=\color{red!60!black},
    56	  showstringspaces=false,
    57	  breaklines=true,
    58	  frame=single,
    59	  framesep=4pt,
    60	  framerule=0.4pt,
    61	  rulecolor=\color{gray!50},
    62	  language=Haskell,
    63	  numbers=left,
    64	  numberstyle=\tiny\color{gray},
    65	  numbersep=6pt,
    66	  xleftmargin=2em
    67	}
    68	
    69	% GrokRxiv sidebar
    70	\definecolor{grokgray}{RGB}{110,110,110}
    71	\AddEverypageHook{%
    72	  \ifnum\value{page}=1
    73	    \begin{tikzpicture}[remember picture, overlay]
    74	      \node[
    75	        rotate=90,
    76	        anchor=south,
    77	        font=\Large\sffamily\bfseries\color{grokgray},
    78	        inner sep=0pt
    79	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    80	      {GrokRxiv:2026.05.universal-property\quad
    81	       [\,math.CT\,]\quad
    82	       03 May 2026};
    83	    \end{tikzpicture}
    84	  \fi
    85	}
    86	
    87	% Convenient macros
    88	\newcommand{\N}{\mathbb{N}}
    89	\newcommand{\Z}{\mathbb{Z}}
    90	\newcommand{\Q}{\mathbb{Q}}
    91	\newcommand{\R}{\mathbb{R}}
    92	\newcommand{\Set}{\mathbf{Set}}
    93	\newcommand{\op}{^{\mathrm{op}}}
    94	\newcommand{\id}{\mathrm{id}}
    95	\newcommand{\Hom}{\mathrm{Hom}}
    96	\newcommand{\Nat}{\mathrm{Nat}}
    97	\newcommand{\zero}{\mathsf{zero}}
    98	\newcommand{\suc}{\mathsf{succ}}
    99	\newcommand{\PtEndo}{\mathbf{PtEndo}}
   100	\newcommand{\iso}{\cong}
   101	\newcommand{\eqv}{\simeq}
   102	
   103	\title{The Universal Property Perspective:\\
   104	Numbers as Initial Successor Structures}
   105	
   106	\author{YonedaAI Research \\
   107	\textit{Univalent Correspondence Series, Paper 03 of 6+1} \\
   108	\textit{Magneton Institute for Foundational Mathematics} \\
   109	\texttt{yoneda@magneton.ai}}
   110	
   111	\date{3 May 2026}
   112	
   113	\begin{document}
   114	
   115	\maketitle
   116	
   117	\begin{abstract}
   118	We develop the universal-property perspective on the natural numbers and adjacent structures, situating it as the third rung of the six-level ladder of the \emph{Univalent Correspondence}. Following Lawvere's elementary theory of the category of sets (ETCS), we present the natural numbers object (NNO) $(\N, 0, \suc)$ as the initial pointed set with endomorphism: for any pointed dynamical system $(X, x_0, f \colon X \to X)$ there exists a unique morphism $h \colon \N \to X$ with $h(0) = x_0$ and $h \circ \suc = f \circ h$. From this universal property (a unique map satisfying these two equations) we derive primitive recursion, dependent induction, Lambek's fixed-point theorem, and the rigidity of $\N$ up to unique isomorphism. We then extend the analysis: $\pi$ as one half-period of the universal cover $\R \to S^1$; $e$ as the unique solution to $f' = f$, $f(0) = 1$; $\R$ as the (essentially unique) Dedekind-complete ordered field; $\Q$ as the field of fractions of $\Z$. We dualize through coalgebraic stream types and final coalgebras, contrasting inductive presentations of irrationals (Cauchy sequences modulo equivalence) with coinductive presentations (digit streams as final coalgebras for $X \mapsto D \times X$). The recursion principle and the induction principle emerge as instances of one universal mapping property. We address the structuralist critique: universal properties determine objects only \emph{up to unique isomorphism}, which raises the question \emph{which} isomorphism. Lawvere's structuralism embraces this, while HoTT (Paper 5) makes it definitional via univalence. We close by sharpening the bridge to Yoneda (Paper 4): a universal property is exactly a representation of a functor; concretely, the NNO is the value $F(\varnothing)$ of the free functor (left adjoint to the underlying-set functor $U \colon \PtEndo \to \Set$) at the empty set, and as an initial object it represents the constant singleton functor on the category of pointed endo-systems. Throughout, we accompany the mathematics with a Haskell implementation that realizes the NNO universal property and the recursion combinator generically across endofunctor algebras.
   119	\end{abstract}
   120	
   121	\tableofcontents
   122	
   123	\section{Introduction}
   124	\label{sec:intro}
   125	
   126	\subsection{Position in the Six-Level Ladder}
   127	
   128	The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:
   129	\begin{quote}
   130	\itshape
   131	$58$ is the position obtained by iterating $\suc$ exactly $58$ times from $0$ in any initial successor structure.
   132	\end{quote}
   133	Two such initial structures are connected by a unique isomorphism, so the position labelled $58$ in one corresponds to the position labelled $58$ in the other. The number is not a set; it is a node in a universal diagram.
   134	
   135	\subsection{What Counts as a Universal Property}
   136	
   137	A \emph{universal property} of an object $U$ in a category $\mathcal{C}$ is a description of $U$ as the unique object (up to unique isomorphism) carrying a specified piece of data such that, for every other object carrying analogous data, there is a unique structure-preserving morphism out of (or into) $U$ \cite{MacLane1998,Riehl2016}. The natural numbers, the real numbers, the field of rationals, the circle, the exponential function: each admits such a presentation, and each becomes encoding-independent thereby.
   138	
   139	The strength of the universal-property perspective is threefold:
   140	\begin{enumerate}
   141	  \item \textbf{Encoding-independence.} The definition refers to morphisms, not elements; the internal constitution of $U$ is opaque.
   142	  \item \textbf{Compositionality.} Universal morphisms compose as morphisms; structures built by universal property compose accordingly.
   143	  \item \textbf{Computational content.} The unique morphism guaranteed by the universal property is the recursion (or corecursion) combinator, directly executable as a program.
   144	\end{enumerate}
   145	
   146	\subsection{The Critique We Will Address}
   147	
   148	A familiar objection: ``up to unique isomorphism'' still tolerates many isomorphic copies; choosing one is still a choice. The structuralist response, due to Lawvere and developed by Awodey \cite{Awodey1996,Awodey2014}, is that the choice is \emph{semantically irrelevant} because every property of mathematical interest is invariant under isomorphism (\emph{the principle of structuralism}). HoTT will later make this principle \emph{definitional} via univalence (Paper 5). The universal property is the gateway: it teaches us to live with ``up to unique iso'' as the appropriate identity criterion.
   149	
   150	\subsection{Outline}
   151	
   152	Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:nno} states and proves the universal property of the NNO and derives recursion and Lambek's theorem. Section~\ref{sec:peano} compares the NNO with second-order and first-order Peano arithmetic. Section~\ref{sec:transcendentals} treats $\pi$, $e$, $\R$, $\Q$ by universal property. Section~\ref{sec:coalgebra} dualizes to final coalgebras and codata. Section~\ref{sec:induction} unifies recursion and induction as instances of the universal property. Section~\ref{sec:critique} addresses the ``which iso?'' critique. Section~\ref{sec:yoneda-bridge} bridges to Yoneda. Section~\ref{sec:haskell} discusses the Haskell implementation. Section~\ref{sec:results} states our main results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.
   153	
   154	\section{Mathematical Framework}
   155	\label{sec:framework}
   156	
   157	\subsection{Categories, Functors, Pointed Dynamical Systems}
   158	
   159	\begin{definition}[Category]
   160	A \emph{category} $\mathcal{C}$ consists of a class of objects, for every pair $A, B$ a set $\Hom_{\mathcal{C}}(A,B)$ of morphisms, an associative composition $\circ$, and identities $\id_A$.
   161	\end{definition}
   162	
   163	\begin{definition}[Pointed dynamical system]
   164	\label{def:pds}
   165	Let $\mathcal{C}$ be a category with a chosen terminal object $1$. A \emph{pointed dynamical system in $\mathcal{C}$} is a triple $(X, x_0, f)$ where $X \in \mathcal{C}$, $x_0 \colon 1 \to X$, and $f \colon X \to X$. A \emph{morphism} of pointed dynamical systems $(X, x_0, f) \to (Y, y_0, g)$ is a morphism $h \colon X \to Y$ in $\mathcal{C}$ such that
   166	\begin{equation}
   167	h \circ x_0 = y_0 \quad \text{and} \quad h \circ f = g \circ h.
   168	\label{eq:pds-morphism}
   169	\end{equation}
   170	We denote the resulting category $\PtEndo(\mathcal{C})$ (``pointed endo-systems in $\mathcal{C}$''). When $\mathcal{C} = \Set$ we drop the parameter and write $\PtEndo$. The category $\PtEndo(\mathcal{C})$ is canonically isomorphic to the category of algebras for the endofunctor $F X = 1 + X$ in $\mathcal{C}$: the basepoint $x_0 \colon 1 \to X$ and the dynamics $f \colon X \to X$ assemble (via the universal property of the coproduct) into a single algebra map $[x_0, f] \colon 1 + X \to X$, and conversely.
   171	\end{definition}
   172	
   173	The two equations of \eqref{eq:pds-morphism} say exactly that the diagrams
   174	\[
   175	\begin{tikzcd}
   176	1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\
   177	& Y
   178	\end{tikzcd}
   179	\qquad
   180	\begin{tikzcd}
   181	X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\
   182	Y \arrow[r, "g"'] & Y
   183	\end{tikzcd}
   184	\]
   185	commute. The first asserts ``$h$ preserves the basepoint''; the second asserts ``$h$ commutes with the dynamics.''
   186	
   187	\begin{definition}[Initial object]
   188	An object $I$ of $\mathcal{C}$ is \emph{initial} if for every $X \in \mathcal{C}$ there is a unique morphism $!_X \colon I \to X$.
   189	\end{definition}
   190	
   191	\begin{lemma}[Rigidity of initial objects]
   192	\label{lem:initial-rigid}
   193	If $I$ and $I'$ are initial in $\mathcal{C}$, there is a unique isomorphism $I \xrightarrow{\sim} I'$. In particular, the automorphism group of an initial object is trivial.
   194	\end{lemma}
   195	
   196	\begin{proof}
   197	By initiality of $I$ there is a unique $u \colon I \to I'$; by initiality of $I'$ there is a unique $v \colon I' \to I$. Both $v \circ u$ and $\id_I$ are morphisms $I \to I$, hence equal by uniqueness; similarly $u \circ v = \id_{I'}$.
   198	\end{proof}
   199	
   200	\subsection{Endofunctor Algebras and Initial Algebras}
   201	
   202	\begin{definition}[$F$-algebra]
   203	Let $F \colon \mathcal{C} \to \mathcal{C}$ be an endofunctor. An \emph{$F$-algebra} is a pair $(X, \alpha)$ with $\alpha \colon F X \to X$. A morphism of $F$-algebras $(X, \alpha) \to (Y, \beta)$ is $h \colon X \to Y$ with $h \circ \alpha = \beta \circ Fh$. The category of $F$-algebras is denoted $F\text{-}\mathbf{Alg}$.
   204	\end{definition}
   205	
   206	A pointed dynamical system $(X, x_0, f)$ is precisely an algebra for the endofunctor $F X = 1 + X$ in $\Set$ (or any category with finite coproducts and a terminal object): the algebra map $[x_0, f] \colon 1 + X \to X$ packages the basepoint and the dynamics into a single arrow. Algebras for $F X = 1 + X$ are called \emph{successor algebras} or \emph{pointed endo-systems}.
   207	
   208	\begin{lemma}[Lambek]
   209	\label{lem:lambek}
   210	Let $F \colon \mathcal{C} \to \mathcal{C}$ be an endofunctor and let $(I, \iota)$ be an initial $F$-algebra. Then $\iota \colon F I \to I$ is an isomorphism.
   211	\end{lemma}
   212	
   213	\begin{proof}
   214	Apply $F$ to obtain $F\iota \colon F F I \to F I$. The pair $(F I, F \iota)$ is an $F$-algebra, hence by initiality there is a unique morphism $u \colon I \to F I$ of $F$-algebras. Then $\iota \circ u \colon I \to I$ is an algebra morphism, and so is $\id_I$; by uniqueness $\iota \circ u = \id_I$. Conversely, since $u$ is by construction an algebra morphism $(I, \iota) \to (F I, F\iota)$, we have $u \circ \iota = F\iota \circ Fu = F(\iota \circ u)$. Substituting the equation $\iota \circ u = \id_I$ just established gives $u \circ \iota = F(\id_I) = \id_{F I}$. Hence $\iota$ and $u$ are mutually inverse, and $\iota$ is an isomorphism.
   215	\end{proof}
   216	
   217	Lambek's lemma is the categorical analogue of Peano's third axiom (``$\suc$ is injective and avoids $0$''): the algebra structure $\iota = [0, \suc] \colon 1 + \N \to \N$ is a bijection, so $0$ and $\suc(n)$ are distinct, and $\suc$ is injective.
   218	
   219	\section{The Natural Numbers Object}
   220	\label{sec:nno}
   221	
   222	\subsection{Definition and Universal Property}
   223	
   224	\begin{definition}[Natural numbers object]
   225	\label{def:nno}
   226	A \emph{natural numbers object} (NNO) in a category $\mathcal{C}$ with terminal object $1$ is a triple $(N, 0 \colon 1 \to N, \suc \colon N \to N)$ that is initial in $\PtEndo(\mathcal{C})$. Equivalently, $(N, [0, \suc])$ is initial among algebras for the endofunctor $F X = 1 + X$.
   227	\end{definition}
   228	
   229	\begin{remark}[Notation for the NNO]
   230	We use the symbol $N$ for a generic NNO in an arbitrary category $\mathcal{C}$, and $\N$ specifically when $\mathcal{C} = \Set$ (the standard natural numbers). The two notations refer to the same structural object up to canonical isomorphism (Lemma~\ref{lem:initial-rigid}); we use $\N$ in the abstract, in informal discussion, and from Section~\ref{sec:transcendentals} onward, where the working category is $\Set$ (or its enrichment for analysis).
   231	\end{remark}
   232	
   233	\begin{theorem}[Universal property of the NNO]
   234	\label{thm:nno-up}
   235	Let $(N, 0, \suc)$ be an NNO in $\mathcal{C}$. For every pointed dynamical system $(X, x_0, f)$ in $\mathcal{C}$, there exists a unique morphism $h \colon N \to X$ such that
   236	\begin{equation}
   237	h \circ 0 = x_0 \quad \text{and} \quad h \circ \suc = f \circ h.
   238	\label{eq:nno-up}
   239	\end{equation}
   240	\end{theorem}
   241	
   242	\begin{proof}
   243	This is the definition of initiality in $\PtEndo(\mathcal{C})$ rewritten via Definition~\ref{def:pds}. Existence and uniqueness of $h$ together with the two commuting diagrams are jointly the assertion that $(X, x_0, f)$ is an object of $\PtEndo(\mathcal{C})$ and $h$ is the unique morphism from $(N, 0, \suc)$.
   244	\end{proof}
   245	
   246	\subsection{The Recursion Combinator}
   247	
   248	The unique map $h$ guaranteed by Theorem~\ref{thm:nno-up} \emph{is} the primitive recursion combinator. Writing $\mathrm{rec}(x_0, f) := h$, equation~\eqref{eq:nno-up} unfolds as
   249	\begin{equation}
   250	\mathrm{rec}(x_0, f)(0) = x_0, \qquad \mathrm{rec}(x_0, f)(\suc n) = f\bigl(\mathrm{rec}(x_0, f)(n)\bigr).
   251	\label{eq:rec-eqs}
   252	\end{equation}
   253	These are the recursive equations defining iteration.
   254	
   255	\begin{example}[Addition]
   256	\label{ex:add}
   257	Define $\mathrm{add} \colon \N \to (\N \to \N)$ by $\mathrm{add} := \mathrm{rec}\bigl(\id_\N,\ \lambda g.\ \suc \circ g\bigr)$, where the codomain is the function space (assuming $\mathcal{C}$ is cartesian closed). Then $\mathrm{add}(0) = \id_\N$ and $\mathrm{add}(\suc n)(m) = \suc(\mathrm{add}(n)(m))$, recovering Peano addition.
   258	\end{example}
   259	
   260	\begin{example}[Multiplication]

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(input|include|usepackage|documentclass|bibliography|addbibresource|label|ref|cite|begin|end|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|xymatrix|tikz|includegraphics|todo|autoref|cref|Cref)\" papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(input|include|usepackage|documentclass|bibliography|addbibresource|label|ref|cite|begin|end|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|xymatrix|tikz|includegraphics|todo|autoref|cref|Cref))
                                                                                                                                                                                                                     ^
error: unopened group

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
web/website/app/components/TableOfContents.tsx
web/website/app/components/PaperContent.tsx
web/website/app/papers/[slug]/page.tsx
web/website/app/favicon.ico
web/website/theme.json
posts/bluesky.md
posts/twitter.md
posts/facebook.md
posts/linkedin.md
papers/05-hott/reviews/05-hott-review-final.md
papers/05-hott/reviews/05-hott-review-round-1.md
papers/05-hott/reviews/05-hott-review-round-2.md
papers/05-hott/reviews/05-hott-codex-review.md
papers/05-hott/reviews/05-hott-review.md
papers/05-hott/pdf/05-hott.pdf
papers/05-hott/images/05-hott.png
papers/05-hott/images/05-hott-og.png
papers/01-naive/reviews/01-naive-review.md
papers/01-naive/reviews/01-naive-codex-review.md
papers/01-naive/reviews/01-naive-review-final.md
papers/01-naive/reviews/01-naive-review-round-1.md
papers/01-naive/latex/01-naive.tex
papers/01-naive/pdf/01-naive.pdf
papers/06-categorical-structural/reviews/06-categorical-structural-review-round-1.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review-final.md
papers/06-categorical-structural/reviews/06-categorical-structural-review-final.md
papers/06-categorical-structural/latex/06-categorical-structural.tex
papers/01-naive/images/01-naive.png
papers/05-hott/latex/05-hott.tex
papers/01-naive/images/01-naive-og.png
papers/06-categorical-structural/pdf/06-categorical-structural.pdf
papers/07-synthesis/latex/synthesis.tex
papers/07-synthesis/reviews/synthesis-review.md
papers/07-synthesis/reviews/synthesis-codex-review.md.bak
papers/07-synthesis/reviews/synthesis-haskell-review.md
papers/07-synthesis/reviews/synthesis-review-round-2.md
papers/07-synthesis/reviews/synthesis-codex-review.md
papers/07-synthesis/reviews/synthesis-review-round-1.md
papers/07-synthesis/reviews/synthesis-review-final.md
papers/06-categorical-structural/images/06-categorical-structural.png
papers/06-categorical-structural/images/06-categorical-structural-og.png
papers/07-synthesis/pdf/synthesis.pdf
papers/04-yoneda/reviews/04-yoneda-review-round-3.md
papers/04-yoneda/reviews/04-yoneda-codex-review.md
papers/04-yoneda/reviews/04-yoneda-review-round-2.md
papers/04-yoneda/reviews/04-yoneda-review-final.md
papers/04-yoneda/reviews/04-yoneda-review-round-1.md
papers/04-yoneda/reviews/04-yoneda-review-round-4.md
papers/04-yoneda/reviews/04-yoneda-codex-review-final.md
papers/04-yoneda/reviews/04-yoneda-review.md
papers/07-synthesis/images/synthesis-og.png
papers/07-synthesis/images/synthesis.png
papers/04-yoneda/images/04-yoneda-og.png
papers/04-yoneda/images/04-yoneda.png
papers/04-yoneda/latex/04-yoneda.tex
papers/04-yoneda/pdf/04-yoneda.pdf
papers/02-set-theoretic/latex/02-set-theoretic.pdf
papers/02-set-theoretic/latex/02-set-theoretic.tex
papers/02-set-theoretic/images/02-set-theoretic-og.png
papers/02-set-theoretic/pdf/02-set-theoretic.pdf
papers/02-set-theoretic/images/02-set-theoretic.png
papers/03-universal-property/images/03-universal-property.png
papers/03-universal-property/reviews/03-universal-property-review-round-2.md
papers/03-universal-property/images/03-universal-property-og.png
papers/03-universal-property/reviews/03-universal-property-review-round-3.md
papers/03-universal-property/reviews/03-universal-property-codex-review.md
papers/03-universal-property/reviews/03-universal-property-codex-review-final.md
papers/03-universal-property/reviews/03-universal-property-review.md
papers/03-universal-property/reviews/03-universal-property-review-final.md
papers/03-universal-property/reviews/03-universal-property-review-round-4.md
papers/03-universal-property/reviews/03-universal-property-review-round-1.md
papers/02-set-theoretic/reviews/02-set-theoretic-review-round-2.md
papers/02-set-theoretic/reviews/02-set-theoretic-review-final.md
papers/02-set-theoretic/reviews/02-set-theoretic-codex-review-final.md
papers/02-set-theoretic/reviews/02-set-theoretic-review.md
papers/02-set-theoretic/reviews/02-set-theoretic-review-round-1.md
papers/02-set-theoretic/reviews/02-set-theoretic-codex-review.md
papers/03-universal-property/pdf/03-universal-property.pdf
papers/03-universal-property/latex/03-universal-property.tex

codex
The first chunk has ordinary package setup and theorem/listing definitions. I’m going through the rest of the source now and will separately run a real LaTeX build so I don’t rely on visual inspection alone.
exec
/usr/local/bin/zsh -lc "nl -ba papers/03-universal-property/latex/03-universal-property.tex | sed -n '260,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   260	\begin{example}[Multiplication]
   261	\label{ex:mul}
   262	Define $\mathrm{mul} \colon \N \to (\N \to \N)$ by
   263	\[
   264	\mathrm{mul} := \mathrm{rec}\bigl(\mathrm{const}_0,\ \lambda g.\ \lambda m.\ \mathrm{add}(m)(g(m))\bigr).
   265	\]
   266	The base case $\mathrm{mul}(0)$ is the constant zero function; the step takes a function $g$ representing ``multiplication by $n$'' and returns the function $m \mapsto m + g(m)$, representing ``multiplication by $\suc n$.'' Each arithmetic operation is a single recursion combinator instance.
   267	\end{example}
   268	
   269	\begin{example}[Position 58]
   270	\label{ex:58}
   271	The element $58 \in N$ is $\suc^{58}(0)$. By Theorem~\ref{thm:nno-up}, in any pointed dynamical system $(X, x_0, f)$, the corresponding ``58th iteration'' is $\mathrm{rec}(x_0, f)(58) = f^{58}(x_0)$. Two NNOs $(N, 0, \suc)$ and $(N', 0', \suc')$ admit unique mutually-inverse morphisms (Lemma~\ref{lem:initial-rigid}); these match $\suc^{58}(0)$ to $(\suc')^{58}(0')$. The number 58 is exactly this trans-NNO equivalence class.
   272	\end{example}
   273	
   274	\subsection{The Iteration Principle versus Primitive Recursion}
   275	
   276	Theorem~\ref{thm:nno-up} as stated gives the \emph{iteration principle}: from $(x_0, f)$ produce a function $\N \to X$. Genuine \emph{primitive recursion} allows the recursive call to depend on the index:
   277	\begin{equation}
   278	g(0) = x_0, \qquad g(\suc n) = k(n, g(n)).
   279	\label{eq:prim-rec}
   280	\end{equation}
   281	
   282	\begin{proposition}[Primitive recursion from iteration]
   283	\label{prop:prim-rec}
   284	In any cartesian category with NNO, primitive recursion as in \eqref{eq:prim-rec} is derivable from iteration as in \eqref{eq:rec-eqs}.
   285	\end{proposition}
   286	
   287	\begin{proof}
   288	Given $x_0 \in X$ and $k \colon \N \times X \to X$, set
   289	\[
   290	\widetilde{x}_0 := (0, x_0), \qquad \widetilde{f} \colon \N \times X \to \N \times X, \quad (n, x) \mapsto (\suc n, k(n, x)).
   291	\]
   292	By Theorem~\ref{thm:nno-up} there is a unique $\widetilde{g} \colon \N \to \N \times X$ with $\widetilde{g}(0) = (0, x_0)$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g := \pi_2 \circ \widetilde{g} \colon \N \to X$. Then $g(0) = x_0$ and $g(\suc n) = k(n, g(n))$. Uniqueness of $g$ follows from uniqueness of $\widetilde{g}$ and the fact that $\pi_1 \circ \widetilde{g} = \id_\N$ by induction.
   293	\end{proof}
   294	
   295	\subsection{Existence of the NNO}
   296	
   297	\begin{theorem}[Lawvere; ETCS \cite{Lawvere1964}]
   298	\label{thm:etcs}
   299	The category $\Set$ admits a natural numbers object. Any topos with a natural numbers object satisfies the elementary theory of the category of sets (ETCS) provided one further adds a choice axiom and well-pointedness.
   300	\end{theorem}
   301	
   302	\begin{proof}[Sketch]
   303	Take $\N$ to be the standard natural numbers (constructed in any background foundation, e.g., as the smallest inductive set; encoding-independent by the universal property). Verify Theorem~\ref{thm:nno-up} by induction. The choice axiom and well-pointedness are the additional ETCS axioms, see \cite{Lawvere1964,LawvereRosebrugh2003}.
   304	\end{proof}
   305	
   306	\section{Comparison with Peano Arithmetic}
   307	\label{sec:peano}
   308	
   309	\subsection{Second-Order Peano Axioms}
   310	
   311	The second-order Peano axioms are:
   312	\begin{enumerate}
   313	  \item[\textbf{P1}] $0$ is a natural number.
   314	  \item[\textbf{P2}] For every natural $n$, $\suc n$ is a natural number.
   315	  \item[\textbf{P3}] For every $n$, $\suc n \neq 0$.
   316	  \item[\textbf{P4}] For all $m, n$, $\suc m = \suc n \Rightarrow m = n$.
   317	  \item[\textbf{P5}] (Induction) For every subset $S \subseteq \N$ with $0 \in S$ and $S$ closed under $\suc$, $S = \N$.
   318	\end{enumerate}
   319	
   320	\begin{theorem}[Equivalence with NNO]
   321	\label{thm:peano-nno}
   322	A structure $(N, 0, \suc)$ in $\Set$ satisfies P1--P5 if and only if it is a natural numbers object.
   323	\end{theorem}
   324	
   325	\begin{proof}[Sketch]
   326	$(\Rightarrow)$ Suppose $(N, 0, \suc)$ is an NNO, i.e., initial in $\PtEndo(\Set)$. Since $(N, [0, \suc])$ is the initial algebra for $F X = 1 + X$, Lambek's lemma (Lemma~\ref{lem:lambek}) gives that $[0, \suc] \colon 1 + N \to N$ is an isomorphism. Reading off the components: $0$ and $\suc$ have disjoint images (P3, ``$0 \notin \mathrm{im}\,\suc$'') and $\suc$ is injective (P4). For P5: given a subset $S \subseteq N$ with $0 \in S$ and closed under $\suc$, the inclusion $S \hookrightarrow N$ together with the restricted basepoint and successor makes $S$ a pointed-endo-system; the universal property gives a unique $h \colon N \to S$ with $h(0) = 0$ and $h \circ \suc|_S = \suc \circ h$, and the composite $S \hookrightarrow N \xrightarrow{h} S$ together with $\id_N \colon N \to N$ both fit into the universal property at target $(N, 0, \suc)$, forcing $h = \id_N$ as a function and hence $S = N$.
   327	
   328	$(\Leftarrow)$ Given a target $(X, x_0, f)$, we construct the unique $h$ in three steps.
   329	
   330	\emph{Step 1: define a candidate at each level.} For each $n \in N$, we wish to produce a partial map $h_{\le n} \colon \{0, \dots, n\} \to X$ satisfying $h_{\le n}(0) = x_0$ and $h_{\le n}(\suc k) = f(h_{\le n}(k))$ whenever $\suc k \le n$.
   331	
   332	\emph{Step 2: induct on $n$ to show the family exists.} Let
   333	\[
   334	S := \{n \in N : h_{\le n} \text{ exists and is unique on } \{0, \dots, n\}\}.
   335	\]
   336	Then $0 \in S$ by setting $h_{\le 0}(0) := x_0$. Suppose $n \in S$. Define $h_{\le \suc n}$ on $\{0, \dots, n\}$ to agree with $h_{\le n}$, and set $h_{\le \suc n}(\suc n) := f(h_{\le n}(n))$. This extension is uniquely forced by the recursion equations, so $\suc n \in S$. By P5, $S = N$.
   337	
   338	\emph{Step 3: patch into a global map.} The family $\{h_{\le n}\}_{n \in N}$ is compatible (each extends the previous), so we may define $h \colon N \to X$ by $h(n) := h_{\le n}(n)$. This $h$ satisfies \eqref{eq:nno-up}, and uniqueness of each $h_{\le n}$ on its domain gives uniqueness of $h$.
   339	\end{proof}
   340	
   341	\subsection{First-Order PA and Non-Standard Models}
   342	
   343	First-order Peano arithmetic (PA) replaces the second-order P5 with a schema: induction holds for every formula $\varphi$ in the language of arithmetic. By the Lowenheim--Skolem theorem PA has non-standard models of every infinite cardinality \cite{Skolem1934}; these contain ``infinite'' elements not reachable from $0$ by finitely many applications of $\suc$.
   344	
   345	\begin{theorem}[Categorical pinning down]
   346	\label{thm:standard-model}
   347	The standard model is the unique (up to unique isomorphism) NNO in $\Set$. Non-standard models of PA are not NNOs in $\Set$ because they fail the universal property: there exist pointed dynamical systems $(X, x_0, f)$ for which the would-be morphism $h$ is non-unique on the non-standard part.
   348	\end{theorem}
   349	
   350	The categorical NNO thus offers what first-order axiomatization cannot: a structural criterion that rejects non-standard inhabitants.
   351	
   352	\section{Other Numbers and Spaces by Universal Property}
   353	\label{sec:transcendentals}
   354	
   355	We now extend the universal-property perspective beyond $\N$.
   356	
   357	\subsection{The Integers as the Free Group on One Generator}
   358	
   359	\begin{definition}[Universal property of $\Z$]
   360	$\Z$ is the \emph{free group on one generator}. Concretely: for any group $G$ and any element $g \in G$, there exists a unique group homomorphism $\varphi_g \colon \Z \to G$ such that $\varphi_g(1) = g$.
   361	\end{definition}
   362	
   363	The unique map $\varphi_g$ is $n \mapsto g^n$. The universal property says equivalently that the forgetful functor $\mathbf{Grp} \to \Set_*$ from groups to pointed sets has $\Z$ as the value of its left adjoint at the singleton-pointed set.
   364	
   365	\subsection{The Rationals as the Field of Fractions}
   366	
   367	\begin{definition}[Universal property of $\Q$]
   368	\label{def:Q-up}
   369	$\Q$ together with the canonical embedding $\iota \colon \Z \to \Q$ is the \emph{field of fractions} of $\Z$: it is initial among pairs $(K, \jmath)$ where $K$ is a field, $\jmath \colon \Z \to K$ a ring homomorphism, and every nonzero element of $\Z$ is sent to a unit. For any such $(K, \jmath)$ there is a unique field homomorphism $\bar{\jmath} \colon \Q \to K$ with $\bar{\jmath} \circ \iota = \jmath$.
   370	\end{definition}
   371	
   372	The unique extension is determined by $\bar{\jmath}(p/q) = \jmath(p) \jmath(q)^{-1}$. The construction (equivalence classes of pairs $(p, q)$ with $q \neq 0$) is one realization of the universal object; the universal property captures the structure encoding-independently.
   373	
   374	\subsection{The Reals as the Dedekind-Complete Ordered Field}
   375	
   376	\begin{theorem}[Universal property of $\R$]
   377	\label{thm:R-up}
   378	Up to unique order-preserving isomorphism, $\R$ is the unique Dedekind-complete totally ordered field. Equivalently, $\R$ is the terminal object in the category of Archimedean ordered fields with order-preserving embeddings (or initial in the category of ordered fields with an order-preserving Cauchy-completion comparison map).
   379	\end{theorem}
   380	
   381	\begin{proof}[Sketch]
   382	Existence: any of the standard constructions (Dedekind cuts, Cauchy sequences modulo equivalence). Uniqueness: given two Dedekind-complete ordered fields $\R_1, \R_2$, both contain canonical copies of $\Q$; the order-preserving extension $\Q \to \R_2$ defined on $\R_1$ via suprema of cuts is forced by completeness, and is bijective by Archimedeanness.
   383	\end{proof}
   384	
   385	\subsection{The Exponential and the Number \texorpdfstring{$e$}{e}}
   386	
   387	The exponential function admits multiple universal characterizations.
   388	
   389	\begin{theorem}[Universal property of $\exp$]
   390	\label{thm:exp-up}
   391	The exponential function $\exp \colon \R \to \R_{>0}$ is the unique smooth function $f \colon \R \to \R$ satisfying
   392	\begin{enumerate}
   393	  \item $f(0) = 1$;
   394	  \item $f'(x) = f(x)$ for all $x$.
   395	\end{enumerate}
   396	Equivalently, $\exp$ is the unique continuous group homomorphism $(\R, +) \to (\R_{>0}, \cdot)$ whose derivative at $0$ equals $1$.
   397	\end{theorem}
   398	
   399	\begin{definition}[$e$ by universal property]
   400	$e := \exp(1)$. Equivalently, $e$ is the unique positive real such that the smooth solution $f$ of $f' = f$, $f(0) = 1$ satisfies $f(1) = e$. By Theorem~\ref{thm:exp-up}, $e$ is well-defined independent of the construction of $\R$.
   401	\end{definition}
   402	
   403	\subsection{The Circle and the Number \texorpdfstring{$\pi$}{pi}}
   404	
   405	\begin{theorem}[Universal cover of $S^1$]
   406	\label{thm:S1-cover}
   407	The exponential map
   408	\[
   409	E \colon \R \to S^1, \qquad E(t) := (\cos t,\ \sin t),
   410	\]
   411	exhibits $\R$ as the universal cover of $S^1$. Equivalently, $E$ is the unique continuous group homomorphism $(\R, +) \to (S^1, \cdot)$ whose derivative at the origin is the unit-speed positively-oriented tangent vector $(0, 1) \in T_{(1,0)} S^1$ (the canonical generator of the Lie algebra $\mathrm{Lie}(S^1) \cong \R$).
   412	\end{theorem}
   413	
   414	\begin{definition}[$\pi$ by universal property]
   415	\label{def:pi}
   416	$\pi$ is half the period of $E$: the smallest positive $T$ with $E(2T) = E(0)$ is $T = \pi$. Equivalently, $\pi$ is the unique positive real such that $\sin(\pi) = 0$ and $\sin(x) > 0$ for $x \in (0, \pi)$.
   417	\end{definition}
   418	
   419	\begin{remark}
   420	The circle $S^1$ can itself be defined by a universal property (as the loop space classifier, or as the higher inductive type with a single point and a single loop). In HoTT (Paper~5) the universal property of $S^1$ becomes a definitional construction.
   421	\end{remark}
   422	
   423	\section{The Coalgebraic Dual}
   424	\label{sec:coalgebra}
   425	
   426	\subsection{Final Coalgebras and Codata}
   427	
   428	The dual of an initial algebra is a final coalgebra.
   429	
   430	\begin{definition}[$F$-coalgebra]
   431	For an endofunctor $F \colon \mathcal{C} \to \mathcal{C}$, an $F$-\emph{coalgebra} is a pair $(X, \gamma)$ with $\gamma \colon X \to F X$. A morphism of $F$-coalgebras $(X, \gamma) \to (Y, \delta)$ is $h \colon X \to Y$ with $\delta \circ h = F h \circ \gamma$.
   432	\end{definition}
   433	
   434	\begin{definition}[Final coalgebra]
   435	A \emph{final $F$-coalgebra} is a terminal object in the category of $F$-coalgebras: an object $(\nu F, \mathrm{out})$ such that for every $F$-coalgebra $(X, \gamma)$ there is a unique morphism $\mathrm{ana}(\gamma) \colon X \to \nu F$.
   436	\end{definition}
   437	
   438	The dual of Lambek's lemma asserts that $\mathrm{out} \colon \nu F \to F(\nu F)$ is an isomorphism. The unique morphism $\mathrm{ana}(\gamma)$ is the \emph{anamorphism}, the corecursion combinator.
   439	
   440	\subsection{Streams as Final Coalgebras}
   441	
   442	For a fixed alphabet $A$, set $F X := A \times X$.
   443	
   444	\begin{theorem}[Streams as final coalgebra]
   445	\label{thm:streams}
   446	The set $A^{\N}$ of infinite sequences (streams) in $A$ is the final coalgebra of $F X = A \times X$, with $\mathrm{out}(s) := (s_0, \mathrm{tail}(s))$.
   447	\end{theorem}
   448	
   449	For any $\gamma \colon X \to A \times X$, $\mathrm{ana}(\gamma)$ produces the stream of ``observations'' under repeated application of $\gamma$.
   450	
   451	\subsection{Inductive vs Coinductive Presentations of the Reals}
   452	
   453	The reals admit at least two HoTT-friendly presentations, corresponding to the two universal-property directions.
   454	
   455	\paragraph{Inductive (Cauchy completion).}
   456	$\R$ is constructed as the quotient of the set of Cauchy sequences $\Q^{\N}$ by the relation $(a_n) \sim (b_n) \iff |a_n - b_n| \to 0$. This is presented as an initial-algebra-flavoured construction: $\R$ is the smallest set closed under taking limits of Cauchy sequences.
   457	
   458	\paragraph{Coinductive (digit streams).}
   459	For a chosen base $b \ge 2$ and digit set $D$, the set of $b$-adic digit streams $D^{\N}$ admits a quotient by ``carry'' equivalence; the quotient is $[0, 1] \subset \R$. The codomain has a natural \emph{coalgebraic} description: it is the final coalgebra of $X \mapsto D \times X$ (modulo the carry relation as a bisimulation quotient).
   460	
   461	\begin{remark}[Initial vs final tensions in $\R$]
   462	\label{rem:R-init-vs-fin}
   463	The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.
   464	\end{remark}
   465	
   466	\subsection{Bisimulation and the Coinduction Principle}
   467	
   468	For codata, equality is captured by \emph{bisimulation}.
   469	
   470	\begin{definition}[Bisimulation]
   471	For an $F$-coalgebra $(X, \gamma)$, a \emph{bisimulation} is a relation $R \subseteq X \times X$ such that there exists $\rho \colon R \to F R$ making both projections $\pi_1, \pi_2 \colon R \to X$ coalgebra morphisms. Two elements $x, y \in X$ are \emph{bisimilar} iff $(x, y) \in R$ for some bisimulation $R$.
   472	
   473	\textbf{Concrete case ($F X = A \times X$, streams).} A relation $R \subseteq X \times X$ is a stream-bisimulation iff for every $(x, y) \in R$ with $\gamma(x) = (a_x, x')$ and $\gamma(y) = (a_y, y')$, we have $a_x = a_y$ and $(x', y') \in R$. Two streams are bisimilar iff they are related by some such $R$, equivalently iff they have equal head and bisimilar tails.
   474	\end{definition}
   475	
   476	\begin{theorem}[Coinduction principle]
   477	\label{thm:coind}
   478	In the final coalgebra $\nu F$, two elements are equal if and only if they are bisimilar.
   479	\end{theorem}
   480	
   481	This is the coalgebraic analogue of the induction principle (Theorem~\ref{thm:induction-from-up} below): just as induction reduces equality of functions out of $\N$ to equality of their basepoint-and-step components, coinduction reduces equality of elements in $\nu F$ to the existence of a bisimulation.
   482	
   483	\section{Induction and Recursion as Universal Property Instances}
   484	\label{sec:induction}
   485	
   486	\subsection{The Induction Principle}
   487	
   488	\begin{theorem}[Dependent induction from the NNO universal property]
   489	\label{thm:induction-from-up}
   490	Let $(N, 0, \suc)$ be an NNO in a locally cartesian closed category $\mathcal{C}$. For every type family $P \colon N \to \mathcal{C}$, every $p_0 \in P(0)$, and every $p_s \colon \prod_{n \in N} P(n) \to P(\suc n)$, there exists a unique dependent function $\mathrm{ind}(p_0, p_s) \colon \prod_{n \in N} P(n)$ satisfying
   491	\begin{equation}
   492	\mathrm{ind}(p_0, p_s)(0) = p_0, \qquad \mathrm{ind}(p_0, p_s)(\suc n) = p_s\bigl(n, \mathrm{ind}(p_0, p_s)(n)\bigr).
   493	\label{eq:dep-ind}
   494	\end{equation}
   495	\end{theorem}
   496	
   497	\begin{proof}[Proof sketch]
   498	Form the total space $E := \Sigma_{n \in N} P(n)$ together with its first projection $\pi \colon E \to N$. The pair $(p_0, p_s)$ equips $E$ with the structure of a pointed dynamical system: the basepoint is $(0, p_0) \in E$, and the structure map is
   499	\[
   500	\widetilde{f} \colon E \to E, \qquad \widetilde{f}(n, x) := (\suc n,\ p_s(n, x)).
   501	\]
   502	The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.
   503	\end{proof}
   504	
   505	\begin{remark}
   506	The proposition-as-types correspondence (Paper~01 of the series) interprets a propositional family $P \colon N \to \Set$ as a predicate; Theorem~\ref{thm:induction-from-up} then reads as:
   507	\begin{quote}
   508	\itshape
   509	If $P(0)$ holds, and for every $n$, $P(n) \Rightarrow P(\suc n)$, then $P(n)$ holds for all $n$.
   510	\end{quote}
   511	This is mathematical induction. The categorical and logical principles are the same theorem.
   512	\end{remark}
   513	
   514	\subsection{Iteration, Primitive Recursion, Course-of-Values Recursion}
   515	
   516	We have shown that primitive recursion (\ref{eq:prim-rec}) follows from iteration (\ref{eq:rec-eqs}) (Proposition~\ref{prop:prim-rec}). Course-of-values recursion, where $g(\suc n)$ may depend on all of $g(0), g(1), \dots, g(n)$, is similarly derivable from iteration. We sketch the construction.
   517	
   518	\begin{proposition}[Course-of-values recursion from iteration]
   519	\label{prop:cov}
   520	Let $\mathcal{C}$ be cartesian closed with NNO and finite lists. Given $x_0 \in X$ and a step function $k \colon \mathrm{List}(X) \to X$ that may consume the entire history, there is a unique $g \colon N \to X$ satisfying
   521	\[
   522	g(0) = x_0, \qquad g(\suc n) = k\bigl([g(0), g(1), \dots, g(n)]\bigr).
   523	\]
   524	\end{proposition}
   525	
   526	\begin{proof}[Sketch]
   527	Define an auxiliary state space $H := N \times \mathrm{List}(X)$ tracking the index and the history accumulated so far. Set
   528	\[
   529	\widetilde{x}_0 := (0, [x_0]) \in H, \qquad \widetilde{f} \colon H \to H, \quad (n, \ell) \mapsto \bigl(\suc n,\ \ell \mathbin{+\!\!+} [k(\ell)]\bigr).
   530	\]
   531	By the iteration principle (Theorem~\ref{thm:nno-up}) applied to the pointed dynamical system $(H, \widetilde{x}_0, \widetilde{f})$, there is a unique morphism $\widetilde{g} \colon N \to H$ satisfying $\widetilde{g}(0) = \widetilde{x}_0$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g(n) := \mathrm{last}(\pi_2(\widetilde{g}(n)))$, the last element of the accumulated history. The defining equations follow by unfolding $\widetilde{f}$, and uniqueness of $g$ follows from uniqueness of $\widetilde{g}$.
   532	\end{proof}
   533	
   534	This pattern --- bundling history into a state, iterating, and projecting --- is the categorical reading of the standard ``strong induction reduces to ordinary induction'' move.
   535	
   536	\subsection{Higher Recursion Schemes}
   537	
   538	The pattern generalizes. For an endofunctor $F$ admitting an initial algebra $\mu F$, the unique morphism $\mathrm{cata}(\alpha) \colon \mu F \to X$ associated to an $F$-algebra $(X, \alpha)$ is the \emph{catamorphism} or \emph{fold}. Dually, $\mathrm{ana}(\gamma) \colon X \to \nu F$ is the anamorphism or unfold. Together they cover the basic recursion schemes of functional programming \cite{MeijerFokkingaPaterson1991}.
   539	
   540	\section{The Structuralist Critique: Up to Which Isomorphism?}
   541	\label{sec:critique}
   542	
   543	\subsection{The Concern}
   544	
   545	A familiar worry: a universal property determines its object only \emph{up to unique isomorphism}. For numbers we say ``$\N$ is unique up to unique iso,'' but in the category $\Set$ there are many concrete bijective copies of $\N$ (von Neumann ordinals, Zermelo numerals, Church numerals, binary tries). The universal property guarantees a unique iso between any two such copies, but it does not select a particular set as ``the'' $\N$.
   546	
   547	\subsection{Lawvere's Structuralist Response}
   548	
   549	Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:
   550	\begin{enumerate}
   551	  \item Every property of mathematical interest is invariant under isomorphism.
   552	  \item The universal property captures exactly the data needed to specify those properties.
   553	  \item Asking ``which $\N$ is the real one?'' commits a category mistake: one is reifying a label that the structure itself does not record.
   554	\end{enumerate}
   555	
   556	This is the \emph{principle of structuralism}: mathematical objects are positions in structures, identified by relational role.
   557	
   558	\subsection{What HoTT Adds (Forward Reference to Paper 5)}
   559	
   560	The structuralist response is satisfying philosophically but leaves a gap: in classical mathematics, isomorphism and equality are distinct relations, and one must constantly remember to ``identify'' isomorphic objects via an explicit transport. HoTT's univalence axiom \cite{HoTTBook2013,Voevodsky2015} closes the gap: it asserts
   561	\begin{equation}
   562	(A = B) \simeq (A \simeq B),
   563	\label{eq:univalence}
   564	\end{equation}
   565	making isomorphism and equality definitionally interchangeable.
   566	
   567	In the universal-property perspective, this means: ``the $\N$'' is a perfectly good referent, because all candidates are not merely isomorphic but \emph{equal} in the type-theoretic universe. The unique-iso ambiguity dissolves. We will develop this in Paper~5.
   568	
   569	\subsection{The ``Which Iso?'' Question Resolved}
   570	
   571	Even before univalence, the universal property already names a \emph{specific} isomorphism between any two NNOs: the one given by the universal mapping property applied to the second NNO viewed as a pointed dynamical system. This is what is meant by ``unique up to \emph{unique} iso.'' The deeper question is not just ``which iso?''~but ``is the iso itself unique and structurally determined?''~--- and the answer is yes. The universal property itself names a single, canonical isomorphism between any two NNOs, with no further choice required: there is no wobble, no ambiguity, no Aut$(N)$ acting non-trivially on the comparison.
   572	
   573	\begin{proposition}[Canonical iso of NNOs]
   574	\label{prop:can-iso}
   575	Let $(N_1, 0_1, \suc_1)$ and $(N_2, 0_2, \suc_2)$ be NNOs in $\mathcal{C}$. The unique iso $u \colon N_1 \to N_2$ provided by Lemma~\ref{lem:initial-rigid} is given explicitly by $u = \mathrm{rec}(0_2, \suc_2)$ (the recursion combinator from $N_1$ targeting $N_2$), with inverse $\mathrm{rec}(0_1, \suc_1)$. In particular, the automorphism group $\mathrm{Aut}(N) = \{\id_N\}$ is trivial: any pointed-endo-system endomorphism of an NNO is the identity.
   576	\end{proposition}
   577	
   578	\begin{proof}
   579	Apply Theorem~\ref{thm:nno-up} with target $(N_2, 0_2, \suc_2)$ to obtain $u$, and again with target $(N_1, 0_1, \suc_1)$ to obtain a candidate inverse $v$. By Lemma~\ref{lem:initial-rigid}, $u$ and $v$ are mutually inverse. The triviality of $\mathrm{Aut}(N)$ follows by taking $N_1 = N_2 = N$: both $u$ and $\id_N$ are pointed-endo-system endomorphisms of $N$, hence equal by uniqueness in Theorem~\ref{thm:nno-up}.
   580	\end{proof}
   581	
   582	\section{Bridge to Yoneda}
   583	\label{sec:yoneda-bridge}
   584	
   585	\subsection{Universal Property as Functor Representation}
   586	
   587	A universal property always exhibits its object as the representing object of some functor. The key task is identifying \emph{which} functor on \emph{which} category, in a way that avoids the tautology of representing $\Hom(N, -)$ by $N$ itself. The correct framing for the NNO uses the fact that initial objects represent constant singleton functors.
   588	
   589	\subsection{The Free--Forgetful Adjunction}
   590	
   591	The category $\PtEndo$ admits a forgetful functor $U \colon \PtEndo \to \Set$ sending $(X, x_0, f) \mapsto X$ and remembering only the underlying set. The functor $U$ is part of an adjunction
   592	\[
   593	F \dashv U \colon \Set \rightleftarrows \PtEndo,
   594	\]
   595	where $F \colon \Set \to \PtEndo$ is the \emph{free pointed-endo-system} functor. The existence of $F$ follows from the adjoint functor theorem applied to the locally finitely presentable category $\PtEndo$, or constructively from the fact that $\PtEndo$ is the category of algebras of the finitary endofunctor $1 + (-)$ on $\Set$. The defining adjunction isomorphism is, for every set $A$ and every pointed-endo-system $(X, x_0, f)$:
   596	\begin{equation}
   597	\Hom_{\PtEndo}\bigl(F(A),\ (X, x_0, f)\bigr) \cong \Hom_{\Set}\bigl(A,\ U(X, x_0, f)\bigr) = \Hom_{\Set}(A, X).
   598	\label{eq:adjunction-iso}
   599	\end{equation}
   600	We use this isomorphism abstractly; the explicit formula for $F(A)$ is not required for the argument that follows.
   601	
   602	\begin{theorem}[NNO as the free pointed-endo-system on the empty set]
   603	\label{thm:nno-yoneda}
   604	The natural numbers object $(\N, 0, \suc)$ is canonically isomorphic to the value of the free functor $F$ at the empty set:
   605	\begin{equation}
   606	F(\varnothing) \cong (\N, 0, \suc).
   607	\label{eq:F-empty}
   608	\end{equation}
   609	Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.
   610	\end{theorem}
   611	
   612	\begin{proof}
   613	Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.
   614	\end{proof}
   615	
   616	\subsection{Initial Objects Represent the Constant Singleton Functor}
   617	
   618	The Yoneda content of initiality is that the NNO represents the constant singleton functor.
   619	
   620	\begin{corollary}[Representability of the NNO]

exec
/usr/local/bin/zsh -lc "nl -ba papers/03-universal-property/latex/03-universal-property.tex | sed -n '620,980p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   620	\begin{corollary}[Representability of the NNO]
   621	\label{cor:nno-representable}
   622	There is a natural isomorphism of functors $\PtEndo \to \Set$
   623	\begin{equation}
   624	\Hom_{\PtEndo}\bigl((\N, 0, \suc), -\bigr) \cong \Delta_1,
   625	\label{eq:nno-rep}
   626	\end{equation}
   627	where $\Delta_1 \colon \PtEndo \to \Set$ is the constant functor at the singleton $1$. By the Yoneda lemma, the universal element of this representation is the unique element of $\Delta_1(\N) = 1$, which is in bijection with $\id_\N \in \Hom_{\PtEndo}(\N, \N)$.
   628	\end{corollary}
   629	
   630	\begin{proof}
   631	By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.
   632	\end{proof}
   633	
   634	\begin{remark}[The free algebra on the singleton picks out elements]
   635	The companion fact, used in many treatments, is that the free pointed-endo-system on the \emph{singleton}, $F(1)$, represents the underlying-set functor $U \colon \PtEndo \to \Set$:
   636	\[
   637	\Hom_{\PtEndo}\bigl(F(1), (X, x_0, f)\bigr) \cong \Hom_{\Set}(1, X) \cong X = U(X, x_0, f).
   638	\]
   639	The NNO is the special case at $A = \varnothing$. So the same adjunction \eqref{eq:adjunction-iso} explains both initiality (representability of $\Delta_1$) and freeness on a single generator (representability of $U$), simply by varying the input set $A$.
   640	\end{remark}
   641	
   642	\subsection{Reading the Universal Property Yonedically}
   643	
   644	The NNO universal property thus has a clean Yoneda interpretation:
   645	\begin{enumerate}
   646	  \item The free--forgetful adjunction $F \dashv U \colon \Set \rightleftarrows \PtEndo$ encodes the categorical infrastructure.
   647	  \item The NNO is the value $F(\varnothing)$ of the free functor at the empty set: it is the free pointed-endo-system with no extra generators.
   648	  \item As an initial object, the NNO represents the constant singleton functor on $\PtEndo$ (Corollary~\ref{cor:nno-representable}).
   649	  \item ``58'' is the position $\suc^{58}(0) \in \N$, which under the unique morphism $\N \to (X, x_0, f)$ guaranteed by initiality maps to $f^{58}(x_0) \in X$. This position is invariant under all morphisms of $\PtEndo$ in the precise sense that any morphism $(X, x_0, f) \to (Y, y_0, g)$ commutes with the unique maps from $\N$.
   650	\end{enumerate}
   651	
   652	This recasting illuminates what universal properties are doing in general:
   653	\begin{quote}
   654	\itshape
   655	A universal property of an object $U$ in a category $\mathcal{D}$ exhibits $U$ as the value of a left adjoint at a distinguished object of some other category $\mathcal{C}$, equivalently as the representing object for the functor $\Hom_{\mathcal{C}}(c_0, U(-))$ for some $c_0 \in \mathcal{C}$. The Yoneda lemma supplies the universal element, namely the unit of the adjunction at $c_0$.
   656	\end{quote}
   657	
   658	For initial objects, $c_0 = \varnothing$ (in $\Set$, or the initial object of $\mathcal{C}$ in general), and the represented functor is the constant singleton. For free objects on a generator, $c_0 = 1$, and the represented functor is the underlying-set functor. We will develop this perspective fully in Paper~4.
   659	
   660	\subsection{The Slogan}
   661	
   662	If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.
   663	
   664	\section{Haskell Implementation}
   665	\label{sec:haskell}
   666	
   667	We accompany the mathematics with an executable Haskell library implementing the NNO universal property generically. The full code is in \texttt{src/03-universal-property/}; we summarize the design here.
   668	
   669	\subsection{The Iteration Combinator}
   670	
   671	The recursion combinator from Theorem~\ref{thm:nno-up} is the iteration combinator on Peano naturals. We define a generic Peano type, a helper to inject \texttt{Int} values into it, and the universal map:
   672	
   673	\begin{lstlisting}
   674	-- | The natural numbers as the initial successor algebra.
   675	data Nat = Z | S Nat deriving (Show, Eq)
   676	
   677	-- | Inject an Int into Peano-style Nat (used for demonstrations).
   678	peano :: Int -> Nat
   679	peano n
   680	  | n <= 0    = Z
   681	  | otherwise = S (peano (n - 1))
   682	
   683	-- | The universal property: unique map from Nat to any (X, x0, f).
   684	--   nnoRec x0 f n = f^n x0
   685	nnoRec :: x -> (x -> x) -> Nat -> x
   686	nnoRec x0 _ Z     = x0
   687	nnoRec x0 f (S n) = f (nnoRec x0 f n)
   688	\end{lstlisting}
   689	
   690	The two equations of \texttt{nnoRec} are exactly the two equations \eqref{eq:rec-eqs}.
   691	
   692	\subsection{Generic Initial Algebras}
   693	
   694	We then implement the fold/cata combinator for arbitrary initial algebras:
   695	
   696	\begin{lstlisting}
   697	newtype Mu f = Mu { unMu :: f (Mu f) }
   698	
   699	cata :: Functor f => (f a -> a) -> Mu f -> a
   700	cata alpha = alpha . fmap (cata alpha) . unMu
   701	\end{lstlisting}
   702	
   703	The Peano case is recovered by setting $F X = 1 + X$:
   704	
   705	\begin{lstlisting}
   706	data NatF a = ZeroF | SuccF a deriving Functor
   707	
   708	type GenNat = Mu NatF
   709	
   710	zeroG :: GenNat
   711	zeroG = Mu ZeroF
   712	
   713	succG :: GenNat -> GenNat
   714	succG n = Mu (SuccF n)
   715	
   716	-- | Generic recursion, instance of the universal property.
   717	genRec :: x -> (x -> x) -> GenNat -> x
   718	genRec x0 f = cata (\case ZeroF -> x0; SuccF y -> f y)
   719	\end{lstlisting}
   720	
   721	\subsection{Final Coalgebras and Streams}
   722	
   723	For codata we dualize:
   724	
   725	\begin{lstlisting}
   726	newtype Nu f = Nu { unNu :: f (Nu f) }
   727	
   728	ana :: Functor f => (a -> f a) -> a -> Nu f
   729	ana gamma = Nu . fmap (ana gamma) . gamma
   730	
   731	data StreamF a x = Cons a x deriving Functor
   732	
   733	type Stream a = Nu (StreamF a)
   734	
   735	streamHead :: Stream a -> a
   736	streamHead s = case unNu s of Cons x _ -> x
   737	
   738	streamTail :: Stream a -> Stream a
   739	streamTail s = case unNu s of Cons _ t -> t
   740	\end{lstlisting}
   741	
   742	\subsection{Demonstration: 58 in Multiple Successor Structures}
   743	
   744	The main demonstration verifies Example~\ref{ex:58}: ``58'' computes the same trajectory in different pointed dynamical systems, exemplifying that 58 is a structural position rather than a particular value.
   745	
   746	\begin{lstlisting}
   747	-- 58 in (Int, 0, +1)
   748	demo1 :: Int
   749	demo1 = nnoRec 0 (+1) (peano 58)
   750	
   751	-- 58 in (String, "", ('*' :))
   752	demo2 :: String
   753	demo2 = nnoRec "" ('*' :) (peano 58)
   754	
   755	-- 58 in ([Int], [], step) where step prepends the current list length
   756	demo3 :: [Int]
   757	demo3 = nnoRec [] (\xs -> length xs : xs) (peano 58)
   758	\end{lstlisting}
   759	
   760	The number 58 is the unique morphism's value at the position $\suc^{58}(0)$; that is what the function \texttt{nnoRec} computes, and it commutes with every choice of pointed dynamical system.
   761	
   762	\section{Results}
   763	\label{sec:results}
   764	
   765	We collect the main results of the paper.
   766	
   767	\begin{theorem}[Main result --- structural identity of $\N$]
   768	\label{thm:main-N}
   769	The natural numbers are determined up to unique isomorphism by the NNO universal property (Theorem~\ref{thm:nno-up}). The notion ``58'' admits an encoding-independent meaning as the unique image of $\suc^{58}(0)$ under the canonical map into any pointed dynamical system. Two NNOs are connected by a unique iso (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}); their copies of 58 correspond.
   770	\end{theorem}
   771	
   772	\begin{theorem}[Main result --- universal-property catalogue]
   773	\label{thm:main-catalogue}
   774	The constants $\pi$, $e$, the structures $\Z, \Q, \R, S^1$, and the functions $\exp, \sin, \cos$ each admit a universal property in an appropriate category. These universal properties are encoding-independent and refer only to the categorical role of each object.
   775	\end{theorem}
   776	
   777	\begin{theorem}[Main result --- inductive/coinductive duality]
   778	\label{thm:main-duality}
   779	The recursion principle (initial algebra) and the corecursion principle (final coalgebra) are dual instances of universal properties. Inductive presentations (e.g., Cauchy reals) and coinductive presentations (e.g., digit-stream reals) of the same structural object yield isomorphic structures by the universal property; the inductive/coinductive choice is a presentational rather than ontological matter.
   780	\end{theorem}
   781	
   782	\begin{theorem}[Main result --- representability]
   783	\label{thm:main-representability}
   784	A universal property exhibits its object as the value of a left adjoint at a distinguished generator, equivalently as a representing object for a functor describable without reference to itself. For the NNO: $\N = F(\varnothing)$ is the value of the free functor $F \colon \Set \to \PtEndo$ (left adjoint to the forgetful $U$) at the empty set, and as an initial object it represents the constant singleton functor on $\PtEndo$ (Theorem~\ref{thm:nno-yoneda}, Corollary~\ref{cor:nno-representable}). This is the bridge from the universal-property perspective (this paper) to the Yoneda perspective (Paper~4).
   785	\end{theorem}
   786	
   787	\section{Discussion}
   788	\label{sec:discussion}
   789	
   790	\subsection{Universal Properties as a Foundational Style}
   791	
   792	The universal-property style of definition has proliferated through 20th- and 21st-century mathematics: limits and colimits, free objects, adjoint functors, quotient constructions, classifying spaces. Each universal property packages an existence-and-uniqueness statement and, in cases where the relevant category is small enough, computational content (the unique morphism is constructively producible).
   793	
   794	The universal-property perspective is more parsimonious than the set-theoretic perspective in two ways. First, it does not require choosing an encoding. Second, it scales: ``define $X$'' becomes ``state the universal property of $X$,'' which automatically transfers across categories whenever the universal property is satisfiable.
   795	
   796	\subsection{Limitations}
   797	
   798	Three limitations are worth noting:
   799	
   800	\paragraph{Existence is not free.} The universal property of the NNO does not by itself guarantee that an NNO exists; one must verify it in the working category. ETCS adds existence as an axiom; topos theory verifies existence in many natural toposes \cite{Lawvere1964,MaclaneMoerdijk1992}.
   801	
   802	\paragraph{Choice and impredicativity.} Some universal properties (e.g., the universal cover of a space) require background choice principles or impredicative quantification. The natural numbers do not, but the reals (via Dedekind completeness) implicitly assume powerset-like operations.
   803	
   804	\paragraph{The which-iso question persists in classical mathematics.} As discussed in Section~\ref{sec:critique}, classical mathematics maintains the distinction between isomorphism and equality. The universal property names a unique iso, but this remains a separate datum from equality. HoTT removes the distinction.
   805	
   806	\subsection{Connections to Computation}
   807	
   808	The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.
   809	
   810	\subsection{Connections to Other Levels of the Series}
   811	
   812	\paragraph{To Paper~01 (Naive level).} The universal property dissolves the naive question ``what \emph{is} the symbol 58?'' into the structural question ``what does 58 \emph{do} in any successor structure?''
   813	
   814	\paragraph{To Paper~02 (Set-theoretic level).} The universal property explains why Benacerraf's identification problem is not a problem: every encoding satisfying the universal property is canonically interconvertible with every other.
   815	
   816	\paragraph{To Paper~04 (Yoneda).} The universal property is the rough-cut form of which Yoneda is the systematic theory: every universal property is a representation, and every representation can be read as a universal property.
   817	
   818	\paragraph{To Paper~05 (HoTT).} HoTT internalizes the universal property in two ways: the inductive type \texttt{Nat} satisfies the NNO universal property by its elimination rule, and the univalence axiom upgrades ``up to unique iso'' to ``definitionally equal.''
   819	
   820	\paragraph{To Paper~06 (Categorical/structural level).} The universal property is the formal vehicle for the structuralist thesis. ``$58$ is a structural invariant'' means precisely ``the universal property of $\N$ identifies a position $\suc^{58}(0)$ that is invariant across initial successor structures.''
   821	
   822	\section{Conclusion}
   823	\label{sec:conclusion}
   824	
   825	We have presented the universal-property perspective on numbers, with the natural numbers object as the central case and $\Z, \Q, \R, \pi, e, S^1$ as further instances. The universal property of the NNO is captured in a single equation pair (Theorem~\ref{thm:nno-up}); from it follow recursion (Proposition~\ref{prop:prim-rec}), induction (Theorem~\ref{thm:induction-from-up}), Lambek's lemma (Lemma~\ref{lem:lambek}), the rigidity of the natural numbers (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}), and the structural meaning of position 58 (Example~\ref{ex:58}, Theorem~\ref{thm:main-N}).
   826	
   827	The coalgebraic dual provides codata: streams, infinite trees, and coinductive presentations of the reals. The two directions are complementary, not competing; the universal-property perspective regards them as inductive/coinductive presentations of one structural invariant.
   828	
   829	Two open questions for the remaining papers in the series:
   830	\begin{enumerate}
   831	  \item How does the adjunction $F \dashv U$ of Theorem~\ref{thm:nno-yoneda} interact with the Yoneda embedding $\PtEndo \hookrightarrow [\PtEndo\op, \Set]$, and how is the constant singleton functor $\Delta_1$ recovered from the representable presheaf $\Hom_{\PtEndo}(\N, -)$? (Paper~4.)
   832	  \item How do higher inductive types in HoTT subsume universal properties for spaces (e.g., $S^1$ as a HIT with one point and one loop)? (Paper~5.)
   833	\end{enumerate}
   834	
   835	The universal-property perspective has prepared the ground: numbers are positions in initial structures; everything else is encoding. Paper~4 will recast this in the language of representable functors, and Paper~5 will internalize it as definitional equality. The destination is univalent foundations; this paper is one rung of the ladder.
   836	
   837	\section*{Acknowledgments}
   838	
   839	We thank the YonedaAI Research collective and the Univalent Correspondence series collaboration for ongoing dialogue. The framing of the six-level ladder and the slogan ``58 as a position'' originate in the project knowledge base \cite{KnowledgeBase2026}.
   840	
   841	\begin{thebibliography}{99}
   842	
   843	\bibitem{Awodey1996}
   844	S.~Awodey,
   845	\textit{Structure in mathematics and logic: A categorical perspective},
   846	Philosophia Mathematica \textbf{4}(3): 209--237 (1996).
   847	
   848	\bibitem{Awodey2014}
   849	S.~Awodey,
   850	\textit{Structuralism, invariance, and univalence},
   851	Philosophia Mathematica \textbf{22}(1): 1--11 (2014).
   852	
   853	\bibitem{Benacerraf1965}
   854	P.~Benacerraf,
   855	\textit{What numbers could not be},
   856	Philosophical Review \textbf{74}(1): 47--73 (1965).
   857	
   858	\bibitem{HoTTBook2013}
   859	The Univalent Foundations Program,
   860	\textit{Homotopy Type Theory: Univalent Foundations of Mathematics},
   861	Institute for Advanced Study, Princeton (2013); arXiv:1308.0729.
   862	
   863	\bibitem{KnowledgeBase2026}
   864	YonedaAI Research,
   865	\textit{Knowledge base: The Univalent Correspondence},
   866	Magneton Internal Document (2026).
   867	
   868	\bibitem{Lambek1972}
   869	J.~Lambek,
   870	\textit{Deductive systems and categories III: Cartesian closed categories, intuitionist propositional calculus, and combinatory logic},
   871	in: \emph{Toposes, Algebraic Geometry and Logic}, LNM 274, Springer (1972), 57--82.
   872	
   873	\bibitem{Lawvere1964}
   874	F.~W.~Lawvere,
   875	\textit{An elementary theory of the category of sets},
   876	Proceedings of the National Academy of Sciences USA \textbf{52}(6): 1506--1511 (1964).
   877	
   878	\bibitem{Lawvere1966}
   879	F.~W.~Lawvere,
   880	\textit{The category of categories as a foundation for mathematics},
   881	in: \emph{Proceedings of the Conference on Categorical Algebra}, La Jolla, Springer (1966), 1--20.
   882	
   883	\bibitem{Lawvere2003}
   884	F.~W.~Lawvere,
   885	\textit{Foundations and applications: Axiomatization and education},
   886	Bulletin of Symbolic Logic \textbf{9}(2): 213--224 (2003).
   887	
   888	\bibitem{LawvereRosebrugh2003}
   889	F.~W.~Lawvere and R.~Rosebrugh,
   890	\textit{Sets for Mathematics},
   891	Cambridge University Press (2003).
   892	
   893	\bibitem{MacLane1998}
   894	S.~Mac~Lane,
   895	\textit{Categories for the Working Mathematician},
   896	Graduate Texts in Mathematics \textbf{5}, 2nd ed., Springer-Verlag (1998).
   897	
   898	\bibitem{MaclaneMoerdijk1992}
   899	S.~Mac~Lane and I.~Moerdijk,
   900	\textit{Sheaves in Geometry and Logic: A First Introduction to Topos Theory},
   901	Universitext, Springer-Verlag (1992).
   902	
   903	\bibitem{MeijerFokkingaPaterson1991}
   904	E.~Meijer, M.~Fokkinga, and R.~Paterson,
   905	\textit{Functional programming with bananas, lenses, envelopes, and barbed wire},
   906	in: FPCA '91, LNCS 523, Springer (1991), 124--144.
   907	
   908	\bibitem{Riehl2016}
   909	E.~Riehl,
   910	\textit{Category Theory in Context},
   911	Aurora: Dover Modern Math Originals, Dover (2016).
   912	
   913	\bibitem{Skolem1934}
   914	T.~Skolem,
   915	\textit{Uber die Nicht-charakterisierbarkeit der Zahlenreihe mittels endlich oder abz\"ahlbar unendlich vieler Aussagen mit ausschliesslich Zahlenvariablen},
   916	Fundamenta Mathematicae \textbf{23}: 150--161 (1934).
   917	
   918	\bibitem{Voevodsky2015}
   919	V.~Voevodsky,
   920	\textit{An experimental library of formalized mathematics based on the univalent foundations},
   921	Mathematical Structures in Computer Science \textbf{25}(5): 1278--1294 (2015).
   922	
   923	\bibitem{Wadler2015}
   924	P.~Wadler,
   925	\textit{Propositions as types},
   926	Communications of the ACM \textbf{58}(12): 75--84 (2015).
   927	
   928	\bibitem{Weihrauch2000}
   929	K.~Weihrauch,
   930	\textit{Computable Analysis},
   931	Springer-Verlag (2000).
   932	
   933	\end{thebibliography}
   934	
   935	\end{document}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\begin{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\end{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\ref{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\cite{' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
73:    \begin{tikzpicture}[remember picture, overlay]
113:\begin{document}
117:\begin{abstract}
129:\begin{quote}
140:\begin{enumerate}
159:\begin{definition}[Category]
163:\begin{definition}[Pointed dynamical system]
166:\begin{equation}
175:\begin{tikzcd}
180:\begin{tikzcd}
187:\begin{definition}[Initial object]
191:\begin{lemma}[Rigidity of initial objects]
196:\begin{proof}
202:\begin{definition}[$F$-algebra]
208:\begin{lemma}[Lambek]
213:\begin{proof}
224:\begin{definition}[Natural numbers object]
229:\begin{remark}[Notation for the NNO]
233:\begin{theorem}[Universal property of the NNO]
236:\begin{equation}
242:\begin{proof}
249:\begin{equation}
255:\begin{example}[Addition]
260:\begin{example}[Multiplication]
269:\begin{example}[Position 58]
277:\begin{equation}
282:\begin{proposition}[Primitive recursion from iteration]
287:\begin{proof}
297:\begin{theorem}[Lawvere; ETCS \cite{Lawvere1964}]
302:\begin{proof}[Sketch]
312:\begin{enumerate}
320:\begin{theorem}[Equivalence with NNO]
325:\begin{proof}[Sketch]
345:\begin{theorem}[Categorical pinning down]
359:\begin{definition}[Universal property of $\Z$]
367:\begin{definition}[Universal property of $\Q$]
376:\begin{theorem}[Universal property of $\R$]
381:\begin{proof}[Sketch]
389:\begin{theorem}[Universal property of $\exp$]
392:\begin{enumerate}
399:\begin{definition}[$e$ by universal property]
405:\begin{theorem}[Universal cover of $S^1$]
414:\begin{definition}[$\pi$ by universal property]
419:\begin{remark}
430:\begin{definition}[$F$-coalgebra]
434:\begin{definition}[Final coalgebra]
444:\begin{theorem}[Streams as final coalgebra]
461:\begin{remark}[Initial vs final tensions in $\R$]
470:\begin{definition}[Bisimulation]
476:\begin{theorem}[Coinduction principle]
488:\begin{theorem}[Dependent induction from the NNO universal property]
491:\begin{equation}
497:\begin{proof}[Proof sketch]
505:\begin{remark}
507:\begin{quote}
518:\begin{proposition}[Course-of-values recursion from iteration]
526:\begin{proof}[Sketch]
550:\begin{enumerate}
561:\begin{equation}
573:\begin{proposition}[Canonical iso of NNOs]
578:\begin{proof}
596:\begin{equation}
602:\begin{theorem}[NNO as the free pointed-endo-system on the empty set]
605:\begin{equation}
612:\begin{proof}
620:\begin{corollary}[Representability of the NNO]
623:\begin{equation}
630:\begin{proof}
634:\begin{remark}[The free algebra on the singleton picks out elements]
645:\begin{enumerate}
653:\begin{quote}
673:\begin{lstlisting}
696:\begin{lstlisting}
705:\begin{lstlisting}
725:\begin{lstlisting}
746:\begin{lstlisting}
767:\begin{theorem}[Main result --- structural identity of $\N$]
772:\begin{theorem}[Main result --- universal-property catalogue]
777:\begin{theorem}[Main result --- inductive/coinductive duality]
782:\begin{theorem}[Main result --- representability]
830:\begin{enumerate}
841:\begin{thebibliography}{99}
83:    \end{tikzpicture}
119:\end{abstract}
132:\end{quote}
144:\end{enumerate}
161:\end{definition}
169:\end{equation}
171:\end{definition}
178:\end{tikzcd}
183:\end{tikzcd}
189:\end{definition}
194:\end{lemma}
198:\end{proof}
204:\end{definition}
211:\end{lemma}
215:\end{proof}
227:\end{definition}
231:\end{remark}
239:\end{equation}
240:\end{theorem}
244:\end{proof}
252:\end{equation}
258:\end{example}
267:\end{example}
272:\end{example}
280:\end{equation}
285:\end{proposition}
293:\end{proof}
300:\end{theorem}
304:\end{proof}
318:\end{enumerate}
323:\end{theorem}
339:\end{proof}
348:\end{theorem}
361:\end{definition}
370:\end{definition}
379:\end{theorem}
383:\end{proof}
395:\end{enumerate}
397:\end{theorem}
401:\end{definition}
412:\end{theorem}
417:\end{definition}
421:\end{remark}
432:\end{definition}
436:\end{definition}
447:\end{theorem}
464:\end{remark}
474:\end{definition}
479:\end{theorem}
494:\end{equation}
495:\end{theorem}
503:\end{proof}
510:\end{quote}
512:\end{remark}
524:\end{proposition}
532:\end{proof}
554:\end{enumerate}
564:\end{equation}
576:\end{proposition}
580:\end{proof}
599:\end{equation}
608:\end{equation}
610:\end{theorem}
614:\end{proof}
626:\end{equation}
628:\end{corollary}
632:\end{proof}
640:\end{remark}
650:\end{enumerate}
656:\end{quote}
688:\end{lstlisting}
701:\end{lstlisting}
719:\end{lstlisting}
740:\end{lstlisting}
758:\end{lstlisting}
770:\end{theorem}
775:\end{theorem}
780:\end{theorem}
785:\end{theorem}
833:\end{enumerate}
933:\end{thebibliography}
935:\end{document}
152:Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:nno} states and proves the universal property of the NNO and derives recursion and Lambek's theorem. Section~\ref{sec:peano} compares the NNO with second-order and first-order Peano arithmetic. Section~\ref{sec:transcendentals} treats $\pi$, $e$, $\R$, $\Q$ by universal property. Section~\ref{sec:coalgebra} dualizes to final coalgebras and codata. Section~\ref{sec:induction} unifies recursion and induction as instances of the universal property. Section~\ref{sec:critique} addresses the ``which iso?'' critique. Section~\ref{sec:yoneda-bridge} bridges to Yoneda. Section~\ref{sec:haskell} discusses the Haskell implementation. Section~\ref{sec:results} states our main results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.
230:We use the symbol $N$ for a generic NNO in an arbitrary category $\mathcal{C}$, and $\N$ specifically when $\mathcal{C} = \Set$ (the standard natural numbers). The two notations refer to the same structural object up to canonical isomorphism (Lemma~\ref{lem:initial-rigid}); we use $\N$ in the abstract, in informal discussion, and from Section~\ref{sec:transcendentals} onward, where the working category is $\Set$ (or its enrichment for analysis).
243:This is the definition of initiality in $\PtEndo(\mathcal{C})$ rewritten via Definition~\ref{def:pds}. Existence and uniqueness of $h$ together with the two commuting diagrams are jointly the assertion that $(X, x_0, f)$ is an object of $\PtEndo(\mathcal{C})$ and $h$ is the unique morphism from $(N, 0, \suc)$.
248:The unique map $h$ guaranteed by Theorem~\ref{thm:nno-up} \emph{is} the primitive recursion combinator. Writing $\mathrm{rec}(x_0, f) := h$, equation~\eqref{eq:nno-up} unfolds as
271:The element $58 \in N$ is $\suc^{58}(0)$. By Theorem~\ref{thm:nno-up}, in any pointed dynamical system $(X, x_0, f)$, the corresponding ``58th iteration'' is $\mathrm{rec}(x_0, f)(58) = f^{58}(x_0)$. Two NNOs $(N, 0, \suc)$ and $(N', 0', \suc')$ admit unique mutually-inverse morphisms (Lemma~\ref{lem:initial-rigid}); these match $\suc^{58}(0)$ to $(\suc')^{58}(0')$. The number 58 is exactly this trans-NNO equivalence class.
276:Theorem~\ref{thm:nno-up} as stated gives the \emph{iteration principle}: from $(x_0, f)$ produce a function $\N \to X$. Genuine \emph{primitive recursion} allows the recursive call to depend on the index:
292:By Theorem~\ref{thm:nno-up} there is a unique $\widetilde{g} \colon \N \to \N \times X$ with $\widetilde{g}(0) = (0, x_0)$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g := \pi_2 \circ \widetilde{g} \colon \N \to X$. Then $g(0) = x_0$ and $g(\suc n) = k(n, g(n))$. Uniqueness of $g$ follows from uniqueness of $\widetilde{g}$ and the fact that $\pi_1 \circ \widetilde{g} = \id_\N$ by induction.
303:Take $\N$ to be the standard natural numbers (constructed in any background foundation, e.g., as the smallest inductive set; encoding-independent by the universal property). Verify Theorem~\ref{thm:nno-up} by induction. The choice axiom and well-pointedness are the additional ETCS axioms, see \cite{Lawvere1964,LawvereRosebrugh2003}.
326:$(\Rightarrow)$ Suppose $(N, 0, \suc)$ is an NNO, i.e., initial in $\PtEndo(\Set)$. Since $(N, [0, \suc])$ is the initial algebra for $F X = 1 + X$, Lambek's lemma (Lemma~\ref{lem:lambek}) gives that $[0, \suc] \colon 1 + N \to N$ is an isomorphism. Reading off the components: $0$ and $\suc$ have disjoint images (P3, ``$0 \notin \mathrm{im}\,\suc$'') and $\suc$ is injective (P4). For P5: given a subset $S \subseteq N$ with $0 \in S$ and closed under $\suc$, the inclusion $S \hookrightarrow N$ together with the restricted basepoint and successor makes $S$ a pointed-endo-system; the universal property gives a unique $h \colon N \to S$ with $h(0) = 0$ and $h \circ \suc|_S = \suc \circ h$, and the composite $S \hookrightarrow N \xrightarrow{h} S$ together with $\id_N \colon N \to N$ both fit into the universal property at target $(N, 0, \suc)$, forcing $h = \id_N$ as a function and hence $S = N$.
400:$e := \exp(1)$. Equivalently, $e$ is the unique positive real such that the smooth solution $f$ of $f' = f$, $f(0) = 1$ satisfies $f(1) = e$. By Theorem~\ref{thm:exp-up}, $e$ is well-defined independent of the construction of $\R$.
463:The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.
481:This is the coalgebraic analogue of the induction principle (Theorem~\ref{thm:induction-from-up} below): just as induction reduces equality of functions out of $\N$ to equality of their basepoint-and-step components, coinduction reduces equality of elements in $\nu F$ to the existence of a bisimulation.
502:The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.
506:The proposition-as-types correspondence (Paper~01 of the series) interprets a propositional family $P \colon N \to \Set$ as a predicate; Theorem~\ref{thm:induction-from-up} then reads as:
516:We have shown that primitive recursion (\ref{eq:prim-rec}) follows from iteration (\ref{eq:rec-eqs}) (Proposition~\ref{prop:prim-rec}). Course-of-values recursion, where $g(\suc n)$ may depend on all of $g(0), g(1), \dots, g(n)$, is similarly derivable from iteration. We sketch the construction.
531:By the iteration principle (Theorem~\ref{thm:nno-up}) applied to the pointed dynamical system $(H, \widetilde{x}_0, \widetilde{f})$, there is a unique morphism $\widetilde{g} \colon N \to H$ satisfying $\widetilde{g}(0) = \widetilde{x}_0$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g(n) := \mathrm{last}(\pi_2(\widetilde{g}(n)))$, the last element of the accumulated history. The defining equations follow by unfolding $\widetilde{f}$, and uniqueness of $g$ follows from uniqueness of $\widetilde{g}$.
575:Let $(N_1, 0_1, \suc_1)$ and $(N_2, 0_2, \suc_2)$ be NNOs in $\mathcal{C}$. The unique iso $u \colon N_1 \to N_2$ provided by Lemma~\ref{lem:initial-rigid} is given explicitly by $u = \mathrm{rec}(0_2, \suc_2)$ (the recursion combinator from $N_1$ targeting $N_2$), with inverse $\mathrm{rec}(0_1, \suc_1)$. In particular, the automorphism group $\mathrm{Aut}(N) = \{\id_N\}$ is trivial: any pointed-endo-system endomorphism of an NNO is the identity.
579:Apply Theorem~\ref{thm:nno-up} with target $(N_2, 0_2, \suc_2)$ to obtain $u$, and again with target $(N_1, 0_1, \suc_1)$ to obtain a candidate inverse $v$. By Lemma~\ref{lem:initial-rigid}, $u$ and $v$ are mutually inverse. The triviality of $\mathrm{Aut}(N)$ follows by taking $N_1 = N_2 = N$: both $u$ and $\id_N$ are pointed-endo-system endomorphisms of $N$, hence equal by uniqueness in Theorem~\ref{thm:nno-up}.
609:Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.
613:Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.
631:By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.
648:  \item As an initial object, the NNO represents the constant singleton functor on $\PtEndo$ (Corollary~\ref{cor:nno-representable}).
671:The recursion combinator from Theorem~\ref{thm:nno-up} is the iteration combinator on Peano naturals. We define a generic Peano type, a helper to inject \texttt{Int} values into it, and the universal map:
744:The main demonstration verifies Example~\ref{ex:58}: ``58'' computes the same trajectory in different pointed dynamical systems, exemplifying that 58 is a structural position rather than a particular value.
769:The natural numbers are determined up to unique isomorphism by the NNO universal property (Theorem~\ref{thm:nno-up}). The notion ``58'' admits an encoding-independent meaning as the unique image of $\suc^{58}(0)$ under the canonical map into any pointed dynamical system. Two NNOs are connected by a unique iso (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}); their copies of 58 correspond.
784:A universal property exhibits its object as the value of a left adjoint at a distinguished generator, equivalently as a representing object for a functor describable without reference to itself. For the NNO: $\N = F(\varnothing)$ is the value of the free functor $F \colon \Set \to \PtEndo$ (left adjoint to the forgetful $U$) at the empty set, and as an initial object it represents the constant singleton functor on $\PtEndo$ (Theorem~\ref{thm:nno-yoneda}, Corollary~\ref{cor:nno-representable}). This is the bridge from the universal-property perspective (this paper) to the Yoneda perspective (Paper~4).
804:\paragraph{The which-iso question persists in classical mathematics.} As discussed in Section~\ref{sec:critique}, classical mathematics maintains the distinction between isomorphism and equality. The universal property names a unique iso, but this remains a separate datum from equality. HoTT removes the distinction.
808:The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.
825:We have presented the universal-property perspective on numbers, with the natural numbers object as the central case and $\Z, \Q, \R, \pi, e, S^1$ as further instances. The universal property of the NNO is captured in a single equation pair (Theorem~\ref{thm:nno-up}); from it follow recursion (Proposition~\ref{prop:prim-rec}), induction (Theorem~\ref{thm:induction-from-up}), Lambek's lemma (Lemma~\ref{lem:lambek}), the rigidity of the natural numbers (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}), and the structural meaning of position 58 (Example~\ref{ex:58}, Theorem~\ref{thm:main-N}).
831:  \item How does the adjunction $F \dashv U$ of Theorem~\ref{thm:nno-yoneda} interact with the Yoneda embedding $\PtEndo \hookrightarrow [\PtEndo\op, \Set]$, and how is the constant singleton functor $\Delta_1$ recovered from the representable presheaf $\Hom_{\PtEndo}(\N, -)$? (Paper~4.)
128:The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:
137:A \emph{universal property} of an object $U$ in a category $\mathcal{C}$ is a description of $U$ as the unique object (up to unique isomorphism) carrying a specified piece of data such that, for every other object carrying analogous data, there is a unique structure-preserving morphism out of (or into) $U$ \cite{MacLane1998,Riehl2016}. The natural numbers, the real numbers, the field of rationals, the circle, the exponential function: each admits such a presentation, and each becomes encoding-independent thereby.
148:A familiar objection: ``up to unique isomorphism'' still tolerates many isomorphic copies; choosing one is still a choice. The structuralist response, due to Lawvere and developed by Awodey \cite{Awodey1996,Awodey2014}, is that the choice is \emph{semantically irrelevant} because every property of mathematical interest is invariant under isomorphism (\emph{the principle of structuralism}). HoTT will later make this principle \emph{definitional} via univalence (Paper 5). The universal property is the gateway: it teaches us to live with ``up to unique iso'' as the appropriate identity criterion.
297:\begin{theorem}[Lawvere; ETCS \cite{Lawvere1964}]
303:Take $\N$ to be the standard natural numbers (constructed in any background foundation, e.g., as the smallest inductive set; encoding-independent by the universal property). Verify Theorem~\ref{thm:nno-up} by induction. The choice axiom and well-pointedness are the additional ETCS axioms, see \cite{Lawvere1964,LawvereRosebrugh2003}.
343:First-order Peano arithmetic (PA) replaces the second-order P5 with a schema: induction holds for every formula $\varphi$ in the language of arithmetic. By the Lowenheim--Skolem theorem PA has non-standard models of every infinite cardinality \cite{Skolem1934}; these contain ``infinite'' elements not reachable from $0$ by finitely many applications of $\suc$.
463:The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.
538:The pattern generalizes. For an endofunctor $F$ admitting an initial algebra $\mu F$, the unique morphism $\mathrm{cata}(\alpha) \colon \mu F \to X$ associated to an $F$-algebra $(X, \alpha)$ is the \emph{catamorphism} or \emph{fold}. Dually, $\mathrm{ana}(\gamma) \colon X \to \nu F$ is the anamorphism or unfold. Together they cover the basic recursion schemes of functional programming \cite{MeijerFokkingaPaterson1991}.
549:Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:
560:The structuralist response is satisfying philosophically but leaves a gap: in classical mathematics, isomorphism and equality are distinct relations, and one must constantly remember to ``identify'' isomorphic objects via an explicit transport. HoTT's univalence axiom \cite{HoTTBook2013,Voevodsky2015} closes the gap: it asserts
800:\paragraph{Existence is not free.} The universal property of the NNO does not by itself guarantee that an NNO exists; one must verify it in the working category. ETCS adds existence as an axiom; topos theory verifies existence in many natural toposes \cite{Lawvere1964,MaclaneMoerdijk1992}.
808:The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.
839:We thank the YonedaAI Research collective and the Univalent Correspondence series collaboration for ongoing dialogue. The framing of the six-level ladder and the slogan ``58 as a position'' originate in the project knowledge base \cite{KnowledgeBase2026}.

codex
The source has balanced visible begin/end pairs. Next I’m compiling into `/tmp` so any `.aux`/`.log` files stay out of the repo, then I’ll inspect the log for undefined control sequences, missing files/packages, and unresolved refs.
exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
124:\label{sec:intro}
155:\label{sec:framework}
164:\label{def:pds}
168:\label{eq:pds-morphism}
192:\label{lem:initial-rigid}
209:\label{lem:lambek}
220:\label{sec:nno}
225:\label{def:nno}
234:\label{thm:nno-up}
238:\label{eq:nno-up}
251:\label{eq:rec-eqs}
256:\label{ex:add}
261:\label{ex:mul}
270:\label{ex:58}
279:\label{eq:prim-rec}
283:\label{prop:prim-rec}
298:\label{thm:etcs}
307:\label{sec:peano}
321:\label{thm:peano-nno}
346:\label{thm:standard-model}
353:\label{sec:transcendentals}
368:\label{def:Q-up}
377:\label{thm:R-up}
390:\label{thm:exp-up}
406:\label{thm:S1-cover}
415:\label{def:pi}
424:\label{sec:coalgebra}
445:\label{thm:streams}
462:\label{rem:R-init-vs-fin}
477:\label{thm:coind}
484:\label{sec:induction}
489:\label{thm:induction-from-up}
493:\label{eq:dep-ind}
519:\label{prop:cov}
541:\label{sec:critique}
563:\label{eq:univalence}
574:\label{prop:can-iso}
583:\label{sec:yoneda-bridge}
598:\label{eq:adjunction-iso}
603:\label{thm:nno-yoneda}
607:\label{eq:F-empty}
621:\label{cor:nno-representable}
625:\label{eq:nno-rep}
665:\label{sec:haskell}
763:\label{sec:results}
768:\label{thm:main-N}
773:\label{thm:main-catalogue}
778:\label{thm:main-duality}
783:\label{thm:main-representability}
788:\label{sec:discussion}
823:\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\eqref{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\Cref{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\cref{' papers/03-universal-property/latex/03-universal-property.tex && rg -n -F '\\autoref{' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
173:The two equations of \eqref{eq:pds-morphism} say exactly that the diagrams
248:The unique map $h$ guaranteed by Theorem~\ref{thm:nno-up} \emph{is} the primitive recursion combinator. Writing $\mathrm{rec}(x_0, f) := h$, equation~\eqref{eq:nno-up} unfolds as
284:In any cartesian category with NNO, primitive recursion as in \eqref{eq:prim-rec} is derivable from iteration as in \eqref{eq:rec-eqs}.
338:\emph{Step 3: patch into a global map.} The family $\{h_{\le n}\}_{n \in N}$ is compatible (each extends the previous), so we may define $h \colon N \to X$ by $h(n) := h_{\le n}(n)$. This $h$ satisfies \eqref{eq:nno-up}, and uniqueness of each $h_{\le n}$ on its domain gives uniqueness of $h$.
502:The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.
609:Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.
613:Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.
631:By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.
639:The NNO is the special case at $A = \varnothing$. So the same adjunction \eqref{eq:adjunction-iso} explains both initiality (representability of $\Delta_1$) and freeness on a single generator (representability of $U$), simply by varying the input set $A$.
690:The two equations of \texttt{nnoRec} are exactly the two equations \eqref{eq:rec-eqs}.

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/latexcheck-03-universal && pdflatex -halt-on-error -interaction=nonstopmode -file-line-error -output-directory=/tmp/latexcheck-03-universal papers/03-universal-property/latex/03-universal-property.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 584ms:

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
(/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)

No file 03-universal-property.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file 03-universal-property.toc.

Package natbib Warning: Citation `KnowledgeBase2026' on page 1 undefined on inp
ut line 128.


Package natbib Warning: Citation `Benacerraf1965' on page 1 undefined on input 
line 128.

[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]

Package natbib Warning: Citation `MacLane1998' on page 2 undefined on input lin
e 137.


Package natbib Warning: Citation `Riehl2016' on page 2 undefined on input line 
137.


Package natbib Warning: Citation `Awodey1996' on page 2 undefined on input line
 148.


Package natbib Warning: Citation `Awodey2014' on page 2 undefined on input line
 148.


LaTeX Warning: Reference `sec:framework' on page 2 undefined on input line 152.



LaTeX Warning: Reference `sec:nno' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:peano' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:transcendentals' on page 2 undefined on input lin
e 152.


LaTeX Warning: Reference `sec:coalgebra' on page 2 undefined on input line 152.



LaTeX Warning: Reference `sec:induction' on page 2 undefined on input line 152.



LaTeX Warning: Reference `sec:critique' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:yoneda-bridge' on page 2 undefined on input line 
152.


LaTeX Warning: Reference `sec:haskell' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:results' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:discussion' on page 2 undefined on input line 152
.


LaTeX Warning: Reference `sec:conclusion' on page 2 undefined on input line 152
.

[2]

LaTeX Warning: Reference `eq:pds-morphism' on page 3 undefined on input line 17
3.

[3]

LaTeX Warning: Reference `lem:initial-rigid' on page 4 undefined on input line 
230.


LaTeX Warning: Reference `sec:transcendentals' on page 4 undefined on input lin
e 230.


LaTeX Warning: Reference `def:pds' on page 4 undefined on input line 243.


LaTeX Warning: Reference `thm:nno-up' on page 4 undefined on input line 248.


LaTeX Warning: Reference `eq:nno-up' on page 4 undefined on input line 248.

[4]

LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 271.


LaTeX Warning: Reference `lem:initial-rigid' on page 5 undefined on input line 
271.


LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 276.


LaTeX Warning: Reference `eq:prim-rec' on page 5 undefined on input line 284.


LaTeX Warning: Reference `eq:rec-eqs' on page 5 undefined on input line 284.


LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 292.


Package natbib Warning: Citation `Lawvere1964' on page 5 undefined on input lin
e 297.


LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 303.


Package natbib Warning: Citation `Lawvere1964' on page 5 undefined on input lin
e 303.


Package natbib Warning: Citation `LawvereRosebrugh2003' on page 5 undefined on 
input line 303.

[5]

LaTeX Warning: Reference `lem:lambek' on page 6 undefined on input line 326.


LaTeX Warning: Reference `eq:nno-up' on page 6 undefined on input line 338.

[6]

Package natbib Warning: Citation `Skolem1934' on page 7 undefined on input line
 343.

[7]

LaTeX Warning: Reference `thm:exp-up' on page 8 undefined on input line 400.

[8]

LaTeX Warning: Reference `thm:R-up' on page 9 undefined on input line 463.


Package natbib Warning: Citation `Weihrauch2000' on page 9 undefined on input l
ine 463.

[9]

LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
line 481.


LaTeX Warning: Reference `thm:nno-up' on page 10 undefined on input line 502.


LaTeX Warning: Reference `eq:dep-ind' on page 10 undefined on input line 502.


LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
line 506.


LaTeX Warning: Reference `eq:prim-rec' on page 10 undefined on input line 516.


LaTeX Warning: Reference `eq:rec-eqs' on page 10 undefined on input line 516.


LaTeX Warning: Reference `prop:prim-rec' on page 10 undefined on input line 516
.

[10]

LaTeX Warning: Reference `thm:nno-up' on page 11 undefined on input line 531.


Package natbib Warning: Citation `MeijerFokkingaPaterson1991' on page 11 undefi
ned on input line 538.


Package natbib Warning: Citation `Lawvere1966' on page 11 undefined on input li
ne 549.


Package natbib Warning: Citation `Lawvere2003' on page 11 undefined on input li
ne 549.


Package natbib Warning: Citation `Awodey1996' on page 11 undefined on input lin
e 549.


Package natbib Warning: Citation `Awodey2014' on page 11 undefined on input lin
e 549.

[11]

Package natbib Warning: Citation `HoTTBook2013' on page 12 undefined on input l
ine 560.


Package natbib Warning: Citation `Voevodsky2015' on page 12 undefined on input 
line 560.


LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
 575.


LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 579.


LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
 579.


LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 579.

[12]

LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
 609.


LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 609.


LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
 613.


LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 613.


LaTeX Warning: Reference `lem:initial-rigid' on page 13 undefined on input line
 613.


LaTeX Warning: Reference `eq:F-empty' on page 13 undefined on input line 613.

[13]

LaTeX Warning: Reference `thm:nno-yoneda' on page 14 undefined on input line 63
1.


LaTeX Warning: Reference `eq:nno-rep' on page 14 undefined on input line 631.


LaTeX Warning: Reference `eq:adjunction-iso' on page 14 undefined on input line
 639.


LaTeX Warning: Reference `cor:nno-representable' on page 14 undefined on input 
line 648.

[14]

LaTeX Warning: Reference `thm:nno-up' on page 15 undefined on input line 671.


LaTeX Warning: Reference `eq:rec-eqs' on page 15 undefined on input line 690.

[15]

LaTeX Warning: Reference `ex:58' on page 16 undefined on input line 744.

[16]

LaTeX Warning: Reference `thm:nno-up' on page 17 undefined on input line 769.


LaTeX Warning: Reference `lem:initial-rigid' on page 17 undefined on input line
 769.


LaTeX Warning: Reference `prop:can-iso' on page 17 undefined on input line 769.



LaTeX Warning: Reference `thm:nno-yoneda' on page 17 undefined on input line 78
4.


LaTeX Warning: Reference `cor:nno-representable' on page 17 undefined on input 
line 784.

[17]

Package natbib Warning: Citation `Lawvere1964' on page 18 undefined on input li
ne 800.


Package natbib Warning: Citation `MaclaneMoerdijk1992' on page 18 undefined on 
input line 800.


LaTeX Warning: Reference `sec:critique' on page 18 undefined on input line 804.



LaTeX Warning: Reference `thm:nno-up' on page 18 undefined on input line 808.


Package natbib Warning: Citation `Wadler2015' on page 18 undefined on input lin
e 808.


Package natbib Warning: Citation `Lambek1972' on page 18 undefined on input lin
e 808.

[18]

LaTeX Warning: Reference `thm:nno-up' on page 19 undefined on input line 825.


LaTeX Warning: Reference `prop:prim-rec' on page 19 undefined on input line 825
.


LaTeX Warning: Reference `thm:induction-from-up' on page 19 undefined on input 
line 825.


LaTeX Warning: Reference `lem:lambek' on page 19 undefined on input line 825.


LaTeX Warning: Reference `lem:initial-rigid' on page 19 undefined on input line
 825.


LaTeX Warning: Reference `prop:can-iso' on page 19 undefined on input line 825.



LaTeX Warning: Reference `ex:58' on page 19 undefined on input line 825.


LaTeX Warning: Reference `thm:main-N' on page 19 undefined on input line 825.


LaTeX Warning: Reference `thm:nno-yoneda' on page 19 undefined on input line 83
1.


Package natbib Warning: Citation `KnowledgeBase2026' on page 19 undefined on in
put line 839.

[19] [20]

Package natbib Warning: There were undefined citations.

[21] (/tmp/latexcheck-03-universal/03-universal-property.aux

Package natbib Warning: Citation(s) may have changed.
(natbib)                Rerun to get citations correct.

)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `03-universal-property.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></us
r/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr
/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/t
exlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss8.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb>
Output written on /tmp/latexcheck-03-universal/03-universal-property.pdf (21 pa
ges, 388004 bytes).
Transcript written on /tmp/latexcheck-03-universal/03-universal-property.log.

codex
First `pdflatex` pass completed successfully; the undefined refs/cites shown are normal first-pass warnings with an internal bibliography. I’m rerunning to confirm they resolve and then grepping the final log for blocking diagnostics.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(includegraphics|input|include|bibliography|addbibresource|url|href)\" papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(includegraphics|input|include|bibliography|addbibresource|url|href))
                                                                            ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg -n \"undefined|Undefined|Missing|Emergency stop|Fatal error|LaTeX Error|Package .* Error|Reference .* undefined|Citation .* undefined|Rerun|Label\\(s\\) may have changed\" /tmp/latexcheck-03-universal/03-universal-property.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
621:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
822:Package natbib Warning: Citation `KnowledgeBase2026' on page 1 undefined on inp
826:Package natbib Warning: Citation `Benacerraf1965' on page 1 undefined on input 
833:Package natbib Warning: Citation `MacLane1998' on page 2 undefined on input lin
837:Package natbib Warning: Citation `Riehl2016' on page 2 undefined on input line 
841:Package natbib Warning: Citation `Awodey1996' on page 2 undefined on input line
845:Package natbib Warning: Citation `Awodey2014' on page 2 undefined on input line
849:LaTeX Warning: Reference `sec:framework' on page 2 undefined on input line 152.
853:LaTeX Warning: Reference `sec:nno' on page 2 undefined on input line 152.
856:LaTeX Warning: Reference `sec:peano' on page 2 undefined on input line 152.
859:LaTeX Warning: Reference `sec:transcendentals' on page 2 undefined on input lin
863:LaTeX Warning: Reference `sec:coalgebra' on page 2 undefined on input line 152.
867:LaTeX Warning: Reference `sec:induction' on page 2 undefined on input line 152.
871:LaTeX Warning: Reference `sec:critique' on page 2 undefined on input line 152.
874:LaTeX Warning: Reference `sec:yoneda-bridge' on page 2 undefined on input line 
878:LaTeX Warning: Reference `sec:haskell' on page 2 undefined on input line 152.
881:LaTeX Warning: Reference `sec:results' on page 2 undefined on input line 152.
884:LaTeX Warning: Reference `sec:discussion' on page 2 undefined on input line 152
888:LaTeX Warning: Reference `sec:conclusion' on page 2 undefined on input line 152
893:LaTeX Warning: Reference `eq:pds-morphism' on page 3 undefined on input line 17
898:LaTeX Warning: Reference `lem:initial-rigid' on page 4 undefined on input line 
902:LaTeX Warning: Reference `sec:transcendentals' on page 4 undefined on input lin
906:LaTeX Warning: Reference `def:pds' on page 4 undefined on input line 243.
909:LaTeX Warning: Reference `thm:nno-up' on page 4 undefined on input line 248.
912:LaTeX Warning: Reference `eq:nno-up' on page 4 undefined on input line 248.
916:LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 271.
919:LaTeX Warning: Reference `lem:initial-rigid' on page 5 undefined on input line 
923:LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 276.
926:LaTeX Warning: Reference `eq:prim-rec' on page 5 undefined on input line 284.
929:LaTeX Warning: Reference `eq:rec-eqs' on page 5 undefined on input line 284.
932:LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 292.
935:Package natbib Warning: Citation `Lawvere1964' on page 5 undefined on input lin
939:LaTeX Warning: Reference `thm:nno-up' on page 5 undefined on input line 303.
942:Package natbib Warning: Citation `Lawvere1964' on page 5 undefined on input lin
946:Package natbib Warning: Citation `LawvereRosebrugh2003' on page 5 undefined on 
951:LaTeX Warning: Reference `lem:lambek' on page 6 undefined on input line 326.
954:LaTeX Warning: Reference `eq:nno-up' on page 6 undefined on input line 338.
958:Package natbib Warning: Citation `Skolem1934' on page 7 undefined on input line
963:LaTeX Warning: Reference `thm:exp-up' on page 8 undefined on input line 400.
967:LaTeX Warning: Reference `thm:R-up' on page 9 undefined on input line 463.
970:Package natbib Warning: Citation `Weihrauch2000' on page 9 undefined on input l
975:LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
979:LaTeX Warning: Reference `thm:nno-up' on page 10 undefined on input line 502.
982:LaTeX Warning: Reference `eq:dep-ind' on page 10 undefined on input line 502.
985:LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
989:LaTeX Warning: Reference `eq:prim-rec' on page 10 undefined on input line 516.
992:LaTeX Warning: Reference `eq:rec-eqs' on page 10 undefined on input line 516.
995:LaTeX Warning: Reference `prop:prim-rec' on page 10 undefined on input line 516
1000:LaTeX Warning: Reference `thm:nno-up' on page 11 undefined on input line 531.
1007:Package natbib Warning: Citation `Lawvere1966' on page 11 undefined on input li
1011:Package natbib Warning: Citation `Lawvere2003' on page 11 undefined on input li
1015:Package natbib Warning: Citation `Awodey1996' on page 11 undefined on input lin
1019:Package natbib Warning: Citation `Awodey2014' on page 11 undefined on input lin
1024:Package natbib Warning: Citation `HoTTBook2013' on page 12 undefined on input l
1028:Package natbib Warning: Citation `Voevodsky2015' on page 12 undefined on input 
1032:LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
1036:LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 579.
1039:LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
1043:LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 579.
1047:LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
1051:LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 609.
1054:LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
1058:LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 613.
1061:LaTeX Warning: Reference `lem:initial-rigid' on page 13 undefined on input line
1065:LaTeX Warning: Reference `eq:F-empty' on page 13 undefined on input line 613.
1069:LaTeX Warning: Reference `thm:nno-yoneda' on page 14 undefined on input line 63
1073:LaTeX Warning: Reference `eq:nno-rep' on page 14 undefined on input line 631.
1076:LaTeX Warning: Reference `eq:adjunction-iso' on page 14 undefined on input line
1080:LaTeX Warning: Reference `cor:nno-representable' on page 14 undefined on input 
1085:LaTeX Warning: Reference `thm:nno-up' on page 15 undefined on input line 671.
1090:LaTeX Warning: Reference `eq:rec-eqs' on page 15 undefined on input line 690.
1094:LaTeX Warning: Reference `ex:58' on page 16 undefined on input line 744.
1098:LaTeX Warning: Reference `thm:nno-up' on page 17 undefined on input line 769.
1101:LaTeX Warning: Reference `lem:initial-rigid' on page 17 undefined on input line
1105:LaTeX Warning: Reference `prop:can-iso' on page 17 undefined on input line 769.
1109:LaTeX Warning: Reference `thm:nno-yoneda' on page 17 undefined on input line 78
1113:LaTeX Warning: Reference `cor:nno-representable' on page 17 undefined on input 
1118:Package natbib Warning: Citation `Lawvere1964' on page 18 undefined on input li
1122:Package natbib Warning: Citation `MaclaneMoerdijk1992' on page 18 undefined on 
1126:LaTeX Warning: Reference `sec:critique' on page 18 undefined on input line 804.
1130:LaTeX Warning: Reference `thm:nno-up' on page 18 undefined on input line 808.
1133:Package natbib Warning: Citation `Wadler2015' on page 18 undefined on input lin
1137:Package natbib Warning: Citation `Lambek1972' on page 18 undefined on input lin
1142:LaTeX Warning: Reference `thm:nno-up' on page 19 undefined on input line 825.
1145:LaTeX Warning: Reference `prop:prim-rec' on page 19 undefined on input line 825
1149:LaTeX Warning: Reference `thm:induction-from-up' on page 19 undefined on input 
1153:LaTeX Warning: Reference `lem:lambek' on page 19 undefined on input line 825.
1156:LaTeX Warning: Reference `lem:initial-rigid' on page 19 undefined on input line
1160:LaTeX Warning: Reference `prop:can-iso' on page 19 undefined on input line 825.
1164:LaTeX Warning: Reference `ex:58' on page 19 undefined on input line 825.
1167:LaTeX Warning: Reference `thm:main-N' on page 19 undefined on input line 825.
1170:LaTeX Warning: Reference `thm:nno-yoneda' on page 19 undefined on input line 83
1174:Package natbib Warning: Citation `KnowledgeBase2026' on page 19 undefined on in
1179:Package natbib Warning: There were undefined citations.
1184:(natbib)                Rerun to get citations correct.
1193:LaTeX Warning: There were undefined references.
1196:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
1200:(rerunfilecheck)                Rerun to get outlines right

exec
/usr/local/bin/zsh -lc 'pdflatex -halt-on-error -interaction=nonstopmode -file-line-error -output-directory=/tmp/latexcheck-03-universal papers/03-universal-property/latex/03-universal-property.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 726ms:
entering extended mode
(./papers/03-universal-property/latex/03-universal-property.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/tmp/latexcheck-03-universal/03-universal-property.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/latexcheck-03-universal/03-universal-property.out)
(/tmp/latexcheck-03-universal/03-universal-property.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/latexcheck-03-universal/03-universal-property.toc [1{/usr/local/texlive/2
026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4] [5] [6]
[7] [8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21]
[22] (/tmp/latexcheck-03-universal/03-universal-property.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></us
r/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr
/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/t
exlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss8.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb>
Output written on /tmp/latexcheck-03-universal/03-universal-property.pdf (22 pa
ges, 400232 bytes).
Transcript written on /tmp/latexcheck-03-universal/03-universal-property.log.

codex
Second pass also compiled successfully, with only the usual “labels may have changed” rerun notice. I’m doing one final pass and then reading the final log after the compile completes to avoid racing the log file.
exec
/usr/local/bin/zsh -lc 'pdflatex -halt-on-error -interaction=nonstopmode -file-line-error -output-directory=/tmp/latexcheck-03-universal papers/03-universal-property/latex/03-universal-property.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 553ms:
 (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/tmp/latexcheck-03-universal/03-universal-property.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/latexcheck-03-universal/03-universal-property.out)
(/tmp/latexcheck-03-universal/03-universal-property.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/latexcheck-03-universal/03-universal-property.toc [1{/usr/local/texlive/2
026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4] [5] [6]
[7] [8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21]
[22] (/tmp/latexcheck-03-universal/03-universal-property.aux) )</usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texliv
e/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/symbols/msbm10.pfb>
Output written on /tmp/latexcheck-03-universal/03-universal-property.pdf (22 pa
ges, 400230 bytes).
Transcript written on /tmp/latexcheck-03-universal/03-universal-property.log.

exec
/usr/local/bin/zsh -lc "rg -n \"undefined|Undefined|Missing|Emergency stop|Fatal error|LaTeX Error|Package .* Error|Reference .* undefined|Citation .* undefined|Rerun|Label\\(s\\) may have changed|There were undefined\" /tmp/latexcheck-03-universal/03-universal-property.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
621:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)

exec
/usr/local/bin/zsh -lc 'rg -n "! |Warning|Overfull|Underfull" /tmp/latexcheck-03-universal/03-universal-property.log' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
703:Package everypage Warning: Functionality similar to this package has recently
709:Package everypage Warning: You appear to be running a version of LaTeX

exec
/usr/local/bin/zsh -lc "rg -n -F '\\includegraphics' papers/03-universal-property/latex/03-universal-property.tex; rg -n -F '\\input' papers/03-universal-property/latex/03-universal-property.tex; rg -n -F '\\include{' papers/03-universal-property/latex/03-universal-property.tex; rg -n -F '\\bibliography' papers/03-universal-property/latex/03-universal-property.tex; rg -n -F '\\addbibresource' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 108ms:
codex
NO BLOCKING ISSUES

Verified with three `pdflatex` passes into `/tmp`; final log has no undefined refs/cites, missing packages/files, undefined commands, or LaTeX errors.
2026-05-04T14:19:56.895143Z ERROR codex_core::session: failed to record rollout items: thread 019df35b-1173-7b90-af18-e4d49b4571ae not found
tokens used
78,007
NO BLOCKING ISSUES

Verified with three `pdflatex` passes into `/tmp`; final log has no undefined refs/cites, missing packages/files, undefined commands, or LaTeX errors.
