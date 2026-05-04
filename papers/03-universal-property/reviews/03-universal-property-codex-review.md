---
reviewer: codex (OpenAI)
type: formatting
paper: 03-universal-property
date: 2026-05-04T01:41:29Z
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
session id: 019df0a5-c7b3-7ac3-abca-85616e9e112b
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/03-universal-property/latex/03-universal-property.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems, malformed environments. Output ONLY: a list of issues each with line number and a recommended fix. Be concise; no greeting, no summary, no plan, just the list. If no issues are found, write 'NO ISSUES FOUND'.
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
src/04-yoneda/Main.hs
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
src/03-universal-property/Main.hs
src/03-universal-property/Recursion.hs
src/06-categorical-structural/Models.hs
src/06-categorical-structural/Main.hs
src/06-categorical-structural/Invariants.hs
src/06-categorical-structural/Model.hs
src/06-categorical-structural/Theory.hs
reviews/04-yoneda-review-round-3.md
reviews/04-yoneda-review-round-2.md
reviews/04-yoneda-review-round-1.md
reviews/04-yoneda-review-round-4.md
reviews/04-yoneda-review.md
sources/context.txt
papers/05-hott/reviews/05-hott-review-round-1.md
papers/05-hott/reviews/05-hott-review-round-2.md
papers/05-hott/reviews/05-hott-codex-review.md
papers/05-hott/reviews/05-hott-review.md
papers/05-hott/latex/05-hott.tex
papers/04-yoneda/04-yoneda.tex
papers/04-yoneda/04-yoneda.pdf
papers/01-naive/reviews/01-naive-review.md
papers/01-naive/reviews/01-naive-codex-review.md
papers/01-naive/reviews/01-naive-review-round-1.md
papers/01-naive/pdf/01-naive.pdf
papers/01-naive/latex/01-naive.tex
papers/01-naive/images/01-naive.png
papers/02-set-theoretic/latex/02-set-theoretic.tex
papers/03-universal-property/reviews/03-universal-property-review-round-2.md
papers/03-universal-property/reviews/03-universal-property-review-round-3.md
papers/03-universal-property/reviews/03-universal-property-codex-review.md
papers/03-universal-property/reviews/03-universal-property-review.md
papers/03-universal-property/reviews/03-universal-property-review-round-4.md
papers/03-universal-property/reviews/03-universal-property-review-round-1.md
papers/03-universal-property/latex/03-universal-property.tex
papers/06-categorical-structural/images/06-categorical-structural.png
papers/06-categorical-structural/latex/06-categorical-structural.tex
papers/06-categorical-structural/reviews/06-categorical-structural-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-review-round-1.md
papers/06-categorical-structural/pdf/06-categorical-structural.pdf

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
    12	% References and links
    13	\usepackage{hyperref}
    14	\usepackage{cleveref}
    15	
    16	% Graphics
    17	\usepackage{graphicx}
    18	
    19	% Page layout
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% Code listings
    23	\usepackage{listings}
    24	\usepackage{xcolor}
    25	
    26	% Sidebar
    27	\usepackage{everypage}
    28	
    29	% Bibliography-style refs
    30	\usepackage[numbers,sort&compress]{natbib}
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
/usr/local/bin/zsh -lc "rg -n \"(TODO|undefined|ref\\{|cite\\{|label\\{|begin\\{|end\\{|\\\\usepackage|\\\\documentclass|\\\\bibliography|\\\\addbibresource|overfull|underfull)\" papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:(TODO|undefined|ref\{|cite\{|label\{|begin\{|end\{|\usepackage|\documentclass|\bibliography|\addbibresource|overfull|underfull))
                                                            ^
error: invalid hexadecimal digit

exec
/usr/local/bin/zsh -lc "nl -ba papers/03-universal-property/latex/03-universal-property.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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
   385	\subsection{The Exponential and the Number $e$}
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
   403	\subsection{The Circle and the Number $\pi$}
   404	
   405	\begin{theorem}[Universal cover of $S^1$]
   406	\label{thm:S1-cover}
   407	The exponential map $E \colon \R \to S^1$, $E(t) := (\cos t, \sin t)$, exhibits $\R$ as the universal cover of $S^1$. Equivalently, $E$ is the unique continuous group homomorphism $(\R, +) \to (S^1, \cdot)$ whose derivative at the origin is the unit-speed positively-oriented tangent vector $(0, 1) \in T_{(1,0)} S^1$ (the canonical generator of the Lie algebra $\mathrm{Lie}(S^1) \cong \R$).
   408	\end{theorem}
   409	
   410	\begin{definition}[$\pi$ by universal property]
   411	\label{def:pi}
   412	$\pi$ is half the period of $E$: the smallest positive $T$ with $E(2T) = E(0)$ is $T = \pi$. Equivalently, $\pi$ is the unique positive real such that $\sin(\pi) = 0$ and $\sin(x) > 0$ for $x \in (0, \pi)$.
   413	\end{definition}
   414	
   415	\begin{remark}
   416	The circle $S^1$ can itself be defined by a universal property (as the loop space classifier, or as the higher inductive type with a single point and a single loop). In HoTT (Paper~5) the universal property of $S^1$ becomes a definitional construction.
   417	\end{remark}
   418	
   419	\section{The Coalgebraic Dual}
   420	\label{sec:coalgebra}
   421	
   422	\subsection{Final Coalgebras and Codata}
   423	
   424	The dual of an initial algebra is a final coalgebra.
   425	
   426	\begin{definition}[$F$-coalgebra]
   427	For an endofunctor $F \colon \mathcal{C} \to \mathcal{C}$, an $F$-\emph{coalgebra} is a pair $(X, \gamma)$ with $\gamma \colon X \to F X$. A morphism of $F$-coalgebras $(X, \gamma) \to (Y, \delta)$ is $h \colon X \to Y$ with $\delta \circ h = F h \circ \gamma$.
   428	\end{definition}
   429	
   430	\begin{definition}[Final coalgebra]
   431	A \emph{final $F$-coalgebra} is a terminal object in the category of $F$-coalgebras: an object $(\nu F, \mathrm{out})$ such that for every $F$-coalgebra $(X, \gamma)$ there is a unique morphism $\mathrm{ana}(\gamma) \colon X \to \nu F$.
   432	\end{definition}
   433	
   434	The dual of Lambek's lemma asserts that $\mathrm{out} \colon \nu F \to F(\nu F)$ is an isomorphism. The unique morphism $\mathrm{ana}(\gamma)$ is the \emph{anamorphism}, the corecursion combinator.
   435	
   436	\subsection{Streams as Final Coalgebras}
   437	
   438	For a fixed alphabet $A$, set $F X := A \times X$.
   439	
   440	\begin{theorem}[Streams as final coalgebra]
   441	\label{thm:streams}
   442	The set $A^{\N}$ of infinite sequences (streams) in $A$ is the final coalgebra of $F X = A \times X$, with $\mathrm{out}(s) := (s_0, \mathrm{tail}(s))$.
   443	\end{theorem}
   444	
   445	For any $\gamma \colon X \to A \times X$, $\mathrm{ana}(\gamma)$ produces the stream of ``observations'' under repeated application of $\gamma$.
   446	
   447	\subsection{Inductive vs Coinductive Presentations of the Reals}
   448	
   449	The reals admit at least two HoTT-friendly presentations, corresponding to the two universal-property directions.
   450	
   451	\paragraph{Inductive (Cauchy completion).}
   452	$\R$ is constructed as the quotient of the set of Cauchy sequences $\Q^{\N}$ by the relation $(a_n) \sim (b_n) \iff |a_n - b_n| \to 0$. This is presented as an initial-algebra-flavoured construction: $\R$ is the smallest set closed under taking limits of Cauchy sequences.
   453	
   454	\paragraph{Coinductive (digit streams).}
   455	For a chosen base $b \ge 2$ and digit set $D$, the set of $b$-adic digit streams $D^{\N}$ admits a quotient by ``carry'' equivalence; the quotient is $[0, 1] \subset \R$. The codomain has a natural \emph{coalgebraic} description: it is the final coalgebra of $X \mapsto D \times X$ (modulo the carry relation as a bisimulation quotient).
   456	
   457	\begin{remark}[Initial vs final tensions in $\R$]
   458	\label{rem:R-init-vs-fin}
   459	The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.
   460	\end{remark}
   461	
   462	\subsection{Bisimulation and the Coinduction Principle}
   463	
   464	For codata, equality is captured by \emph{bisimulation}.
   465	
   466	\begin{definition}[Bisimulation]
   467	For an $F$-coalgebra $(X, \gamma)$, a \emph{bisimulation} is a relation $R \subseteq X \times X$ such that there exists $\rho \colon R \to F R$ making both projections $\pi_1, \pi_2 \colon R \to X$ coalgebra morphisms. Two elements $x, y \in X$ are \emph{bisimilar} iff $(x, y) \in R$ for some bisimulation $R$.
   468	
   469	\textbf{Concrete case ($F X = A \times X$, streams).} A relation $R \subseteq X \times X$ is a stream-bisimulation iff for every $(x, y) \in R$ with $\gamma(x) = (a_x, x')$ and $\gamma(y) = (a_y, y')$, we have $a_x = a_y$ and $(x', y') \in R$. Two streams are bisimilar iff they are related by some such $R$, equivalently iff they have equal head and bisimilar tails.
   470	\end{definition}
   471	
   472	\begin{theorem}[Coinduction principle]
   473	\label{thm:coind}
   474	In the final coalgebra $\nu F$, two elements are equal if and only if they are bisimilar.
   475	\end{theorem}
   476	
   477	This is the coalgebraic analogue of the induction principle (Theorem~\ref{thm:induction-from-up} below): just as induction reduces equality of functions out of $\N$ to equality of their basepoint-and-step components, coinduction reduces equality of elements in $\nu F$ to the existence of a bisimulation.
   478	
   479	\section{Induction and Recursion as Universal Property Instances}
   480	\label{sec:induction}
   481	
   482	\subsection{The Induction Principle}
   483	
   484	\begin{theorem}[Dependent induction from the NNO universal property]
   485	\label{thm:induction-from-up}
   486	Let $(N, 0, \suc)$ be an NNO in a locally cartesian closed category $\mathcal{C}$. For every type family $P \colon N \to \mathcal{C}$, every $p_0 \in P(0)$, and every $p_s \colon \prod_{n \in N} P(n) \to P(\suc n)$, there exists a unique dependent function $\mathrm{ind}(p_0, p_s) \colon \prod_{n \in N} P(n)$ satisfying
   487	\begin{equation}
   488	\mathrm{ind}(p_0, p_s)(0) = p_0, \qquad \mathrm{ind}(p_0, p_s)(\suc n) = p_s\bigl(n, \mathrm{ind}(p_0, p_s)(n)\bigr).
   489	\label{eq:dep-ind}
   490	\end{equation}
   491	\end{theorem}
   492	
   493	\begin{proof}[Proof sketch]
   494	Form the total space $E := \Sigma_{n \in N} P(n)$ together with its first projection $\pi \colon E \to N$. The pair $(p_0, p_s)$ equips $E$ with the structure of a pointed dynamical system: the basepoint is $(0, p_0) \in E$, and the structure map is
   495	\[
   496	\widetilde{f} \colon E \to E, \qquad \widetilde{f}(n, x) := (\suc n,\ p_s(n, x)).
   497	\]
   498	The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.
   499	\end{proof}
   500	
   501	\begin{remark}
   502	The proposition-as-types correspondence (Paper~01 of the series) interprets a propositional family $P \colon N \to \Set$ as a predicate; Theorem~\ref{thm:induction-from-up} then reads as:
   503	\begin{quote}
   504	\itshape
   505	If $P(0)$ holds, and for every $n$, $P(n) \Rightarrow P(\suc n)$, then $P(n)$ holds for all $n$.
   506	\end{quote}
   507	This is mathematical induction. The categorical and logical principles are the same theorem.
   508	\end{remark}
   509	
   510	\subsection{Iteration, Primitive Recursion, Course-of-Values Recursion}
   511	
   512	We have shown that primitive recursion (\ref{eq:prim-rec}) follows from iteration (\ref{eq:rec-eqs}) (Proposition~\ref{prop:prim-rec}). Course-of-values recursion, where $g(\suc n)$ may depend on all of $g(0), g(1), \dots, g(n)$, is similarly derivable from iteration. We sketch the construction.
   513	
   514	\begin{proposition}[Course-of-values recursion from iteration]
   515	\label{prop:cov}
   516	Let $\mathcal{C}$ be cartesian closed with NNO and finite lists. Given $x_0 \in X$ and a step function $k \colon \mathrm{List}(X) \to X$ that may consume the entire history, there is a unique $g \colon N \to X$ satisfying
   517	\[
   518	g(0) = x_0, \qquad g(\suc n) = k\bigl([g(0), g(1), \dots, g(n)]\bigr).
   519	\]
   520	\end{proposition}
   521	
   522	\begin{proof}[Sketch]
   523	Define an auxiliary state space $H := N \times \mathrm{List}(X)$ tracking the index and the history accumulated so far. Set
   524	\[
   525	\widetilde{x}_0 := (0, [x_0]) \in H, \qquad \widetilde{f} \colon H \to H, \quad (n, \ell) \mapsto \bigl(\suc n,\ \ell \mathbin{+\!\!+} [k(\ell)]\bigr).
   526	\]
   527	By the iteration principle (Theorem~\ref{thm:nno-up}) applied to the pointed dynamical system $(H, \widetilde{x}_0, \widetilde{f})$, there is a unique morphism $\widetilde{g} \colon N \to H$ satisfying $\widetilde{g}(0) = \widetilde{x}_0$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g(n) := \mathrm{last}(\pi_2(\widetilde{g}(n)))$, the last element of the accumulated history. The defining equations follow by unfolding $\widetilde{f}$, and uniqueness of $g$ follows from uniqueness of $\widetilde{g}$.
   528	\end{proof}
   529	
   530	This pattern --- bundling history into a state, iterating, and projecting --- is the categorical reading of the standard ``strong induction reduces to ordinary induction'' move.
   531	
   532	\subsection{Higher Recursion Schemes}
   533	
   534	The pattern generalizes. For an endofunctor $F$ admitting an initial algebra $\mu F$, the unique morphism $\mathrm{cata}(\alpha) \colon \mu F \to X$ associated to an $F$-algebra $(X, \alpha)$ is the \emph{catamorphism} or \emph{fold}. Dually, $\mathrm{ana}(\gamma) \colon X \to \nu F$ is the anamorphism or unfold. Together they cover the basic recursion schemes of functional programming \cite{MeijerFokkingaPaterson1991}.
   535	
   536	\section{The Structuralist Critique: Up to Which Isomorphism?}
   537	\label{sec:critique}
   538	
   539	\subsection{The Concern}
   540	
   541	A familiar worry: a universal property determines its object only \emph{up to unique isomorphism}. For numbers we say ``$\N$ is unique up to unique iso,'' but in the category $\Set$ there are many concrete bijective copies of $\N$ (von Neumann ordinals, Zermelo numerals, Church numerals, binary tries). The universal property guarantees a unique iso between any two such copies, but it does not select a particular set as ``the'' $\N$.
   542	
   543	\subsection{Lawvere's Structuralist Response}
   544	
   545	Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:
   546	\begin{enumerate}
   547	  \item Every property of mathematical interest is invariant under isomorphism.
   548	  \item The universal property captures exactly the data needed to specify those properties.
   549	  \item Asking ``which $\N$ is the real one?'' commits a category mistake: one is reifying a label that the structure itself does not record.
   550	\end{enumerate}
   551	
   552	This is the \emph{principle of structuralism}: mathematical objects are positions in structures, identified by relational role.
   553	
   554	\subsection{What HoTT Adds (Forward Reference to Paper 5)}
   555	
   556	The structuralist response is satisfying philosophically but leaves a gap: in classical mathematics, isomorphism and equality are distinct relations, and one must constantly remember to ``identify'' isomorphic objects via an explicit transport. HoTT's univalence axiom \cite{HoTTBook2013,Voevodsky2015} closes the gap: it asserts
   557	\begin{equation}
   558	(A = B) \simeq (A \simeq B),
   559	\label{eq:univalence}
   560	\end{equation}
   561	making isomorphism and equality definitionally interchangeable.
   562	
   563	In the universal-property perspective, this means: ``the $\N$'' is a perfectly good referent, because all candidates are not merely isomorphic but \emph{equal} in the type-theoretic universe. The unique-iso ambiguity dissolves. We will develop this in Paper~5.
   564	
   565	\subsection{The ``Which Iso?'' Question Resolved}
   566	
   567	Even before univalence, the universal property already names a \emph{specific} isomorphism between any two NNOs: the one given by the universal mapping property applied to the second NNO viewed as a pointed dynamical system. This is what is meant by ``unique up to \emph{unique} iso.'' The deeper question is not just ``which iso?''~but ``is the iso itself unique and structurally determined?''~--- and the answer is yes. The universal property itself names a single, canonical isomorphism between any two NNOs, with no further choice required: there is no wobble, no ambiguity, no Aut$(N)$ acting non-trivially on the comparison.
   568	
   569	\begin{proposition}[Canonical iso of NNOs]
   570	\label{prop:can-iso}
   571	Let $(N_1, 0_1, \suc_1)$ and $(N_2, 0_2, \suc_2)$ be NNOs in $\mathcal{C}$. The unique iso $u \colon N_1 \to N_2$ provided by Lemma~\ref{lem:initial-rigid} is given explicitly by $u = \mathrm{rec}(0_2, \suc_2)$ (the recursion combinator from $N_1$ targeting $N_2$), with inverse $\mathrm{rec}(0_1, \suc_1)$. In particular, the automorphism group $\mathrm{Aut}(N) = \{\id_N\}$ is trivial: any pointed-endo-system endomorphism of an NNO is the identity.
   572	\end{proposition}
   573	
   574	\begin{proof}
   575	Apply Theorem~\ref{thm:nno-up} with target $(N_2, 0_2, \suc_2)$ to obtain $u$, and again with target $(N_1, 0_1, \suc_1)$ to obtain a candidate inverse $v$. By Lemma~\ref{lem:initial-rigid}, $u$ and $v$ are mutually inverse. The triviality of $\mathrm{Aut}(N)$ follows by taking $N_1 = N_2 = N$: both $u$ and $\id_N$ are pointed-endo-system endomorphisms of $N$, hence equal by uniqueness in Theorem~\ref{thm:nno-up}.
   576	\end{proof}
   577	
   578	\section{Bridge to Yoneda}
   579	\label{sec:yoneda-bridge}
   580	
   581	\subsection{Universal Property as Functor Representation}
   582	
   583	A universal property always exhibits its object as the representing object of some functor. The key task is identifying \emph{which} functor on \emph{which} category, in a way that avoids the tautology of representing $\Hom(N, -)$ by $N$ itself. The correct framing for the NNO uses the fact that initial objects represent constant singleton functors.
   584	
   585	\subsection{The Free--Forgetful Adjunction}
   586	
   587	The category $\PtEndo$ admits a forgetful functor $U \colon \PtEndo \to \Set$ sending $(X, x_0, f) \mapsto X$ and remembering only the underlying set. The functor $U$ is part of an adjunction
   588	\[
   589	F \dashv U \colon \Set \rightleftarrows \PtEndo,
   590	\]
   591	where $F \colon \Set \to \PtEndo$ is the \emph{free pointed-endo-system} functor. The existence of $F$ follows from the adjoint functor theorem applied to the locally finitely presentable category $\PtEndo$, or constructively from the fact that $\PtEndo$ is the category of algebras of the finitary endofunctor $1 + (-)$ on $\Set$. The defining adjunction isomorphism is, for every set $A$ and every pointed-endo-system $(X, x_0, f)$:
   592	\begin{equation}
   593	\Hom_{\PtEndo}\bigl(F(A),\ (X, x_0, f)\bigr) \cong \Hom_{\Set}\bigl(A,\ U(X, x_0, f)\bigr) = \Hom_{\Set}(A, X).
   594	\label{eq:adjunction-iso}
   595	\end{equation}
   596	We use this isomorphism abstractly; the explicit formula for $F(A)$ is not required for the argument that follows.
   597	
   598	\begin{theorem}[NNO as the free pointed-endo-system on the empty set]
   599	\label{thm:nno-yoneda}
   600	The natural numbers object $(\N, 0, \suc)$ is canonically isomorphic to the value of the free functor $F$ at the empty set:
   601	\begin{equation}
   602	F(\varnothing) \cong (\N, 0, \suc).
   603	\label{eq:F-empty}
   604	\end{equation}
   605	Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.
   606	\end{theorem}
   607	
   608	\begin{proof}
   609	Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.
   610	\end{proof}
   611	
   612	\subsection{Initial Objects Represent the Constant Singleton Functor}
   613	
   614	The Yoneda content of initiality is that the NNO represents the constant singleton functor.
   615	
   616	\begin{corollary}[Representability of the NNO]
   617	\label{cor:nno-representable}
   618	There is a natural isomorphism of functors $\PtEndo \to \Set$
   619	\begin{equation}
   620	\Hom_{\PtEndo}\bigl((\N, 0, \suc), -\bigr) \cong \Delta_1,

exec
/usr/local/bin/zsh -lc "nl -ba papers/03-universal-property/latex/03-universal-property.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   621	\label{eq:nno-rep}
   622	\end{equation}
   623	where $\Delta_1 \colon \PtEndo \to \Set$ is the constant functor at the singleton $1$. By the Yoneda lemma, the universal element of this representation is the unique element of $\Delta_1(\N) = 1$, which is in bijection with $\id_\N \in \Hom_{\PtEndo}(\N, \N)$.
   624	\end{corollary}
   625	
   626	\begin{proof}
   627	By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.
   628	\end{proof}
   629	
   630	\begin{remark}[The free algebra on the singleton picks out elements]
   631	The companion fact, used in many treatments, is that the free pointed-endo-system on the \emph{singleton}, $F(1)$, represents the underlying-set functor $U \colon \PtEndo \to \Set$:
   632	\[
   633	\Hom_{\PtEndo}\bigl(F(1), (X, x_0, f)\bigr) \cong \Hom_{\Set}(1, X) \cong X = U(X, x_0, f).
   634	\]
   635	The NNO is the special case at $A = \varnothing$. So the same adjunction \eqref{eq:adjunction-iso} explains both initiality (representability of $\Delta_1$) and freeness on a single generator (representability of $U$), simply by varying the input set $A$.
   636	\end{remark}
   637	
   638	\subsection{Reading the Universal Property Yonedically}
   639	
   640	The NNO universal property thus has a clean Yoneda interpretation:
   641	\begin{enumerate}
   642	  \item The free--forgetful adjunction $F \dashv U \colon \Set \rightleftarrows \PtEndo$ encodes the categorical infrastructure.
   643	  \item The NNO is the value $F(\varnothing)$ of the free functor at the empty set: it is the free pointed-endo-system with no extra generators.
   644	  \item As an initial object, the NNO represents the constant singleton functor on $\PtEndo$ (Corollary~\ref{cor:nno-representable}).
   645	  \item ``58'' is the position $\suc^{58}(0) \in \N$, which under the unique morphism $\N \to (X, x_0, f)$ guaranteed by initiality maps to $f^{58}(x_0) \in X$. This position is invariant under all morphisms of $\PtEndo$ in the precise sense that any morphism $(X, x_0, f) \to (Y, y_0, g)$ commutes with the unique maps from $\N$.
   646	\end{enumerate}
   647	
   648	This recasting illuminates what universal properties are doing in general:
   649	\begin{quote}
   650	\itshape
   651	A universal property of an object $U$ in a category $\mathcal{D}$ exhibits $U$ as the value of a left adjoint at a distinguished object of some other category $\mathcal{C}$, equivalently as the representing object for the functor $\Hom_{\mathcal{C}}(c_0, U(-))$ for some $c_0 \in \mathcal{C}$. The Yoneda lemma supplies the universal element, namely the unit of the adjunction at $c_0$.
   652	\end{quote}
   653	
   654	For initial objects, $c_0 = \varnothing$ (in $\Set$, or the initial object of $\mathcal{C}$ in general), and the represented functor is the constant singleton. For free objects on a generator, $c_0 = 1$, and the represented functor is the underlying-set functor. We will develop this perspective fully in Paper~4.
   655	
   656	\subsection{The Slogan}
   657	
   658	If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.
   659	
   660	\section{Haskell Implementation}
   661	\label{sec:haskell}
   662	
   663	We accompany the mathematics with an executable Haskell library implementing the NNO universal property generically. The full code is in \texttt{src/03-universal-property/}; we summarize the design here.
   664	
   665	\subsection{The Iteration Combinator}
   666	
   667	The recursion combinator from Theorem~\ref{thm:nno-up} is the iteration combinator on Peano naturals. We define a generic Peano type, a helper to inject \texttt{Int} values into it, and the universal map:
   668	
   669	\begin{lstlisting}
   670	-- | The natural numbers as the initial successor algebra.
   671	data Nat = Z | S Nat deriving (Show, Eq)
   672	
   673	-- | Inject an Int into Peano-style Nat (used for demonstrations).
   674	peano :: Int -> Nat
   675	peano n
   676	  | n <= 0    = Z
   677	  | otherwise = S (peano (n - 1))
   678	
   679	-- | The universal property: unique map from Nat to any (X, x0, f).
   680	--   nnoRec x0 f n = f^n x0
   681	nnoRec :: x -> (x -> x) -> Nat -> x
   682	nnoRec x0 _ Z     = x0
   683	nnoRec x0 f (S n) = f (nnoRec x0 f n)
   684	\end{lstlisting}
   685	
   686	The two equations of \texttt{nnoRec} are exactly the two equations \eqref{eq:rec-eqs}.
   687	
   688	\subsection{Generic Initial Algebras}
   689	
   690	We then implement the fold/cata combinator for arbitrary initial algebras:
   691	
   692	\begin{lstlisting}
   693	newtype Mu f = Mu { unMu :: f (Mu f) }
   694	
   695	cata :: Functor f => (f a -> a) -> Mu f -> a
   696	cata alpha = alpha . fmap (cata alpha) . unMu
   697	\end{lstlisting}
   698	
   699	The Peano case is recovered by setting $F X = 1 + X$:
   700	
   701	\begin{lstlisting}
   702	data NatF a = ZeroF | SuccF a deriving Functor
   703	
   704	type GenNat = Mu NatF
   705	
   706	zeroG :: GenNat
   707	zeroG = Mu ZeroF
   708	
   709	succG :: GenNat -> GenNat
   710	succG n = Mu (SuccF n)
   711	
   712	-- | Generic recursion, instance of the universal property.
   713	genRec :: x -> (x -> x) -> GenNat -> x
   714	genRec x0 f = cata (\case ZeroF -> x0; SuccF y -> f y)
   715	\end{lstlisting}
   716	
   717	\subsection{Final Coalgebras and Streams}
   718	
   719	For codata we dualize:
   720	
   721	\begin{lstlisting}
   722	newtype Nu f = Nu { unNu :: f (Nu f) }
   723	
   724	ana :: Functor f => (a -> f a) -> a -> Nu f
   725	ana gamma = Nu . fmap (ana gamma) . gamma
   726	
   727	data StreamF a x = Cons a x deriving Functor
   728	
   729	type Stream a = Nu (StreamF a)
   730	
   731	streamHead :: Stream a -> a
   732	streamHead s = case unNu s of Cons x _ -> x
   733	
   734	streamTail :: Stream a -> Stream a
   735	streamTail s = case unNu s of Cons _ t -> t
   736	\end{lstlisting}
   737	
   738	\subsection{Demonstration: 58 in Multiple Successor Structures}
   739	
   740	The main demonstration verifies Example~\ref{ex:58}: ``58'' computes the same trajectory in different pointed dynamical systems, exemplifying that 58 is a structural position rather than a particular value.
   741	
   742	\begin{lstlisting}
   743	-- 58 in (Int, 0, +1)
   744	demo1 :: Int
   745	demo1 = nnoRec 0 (+1) (peano 58)
   746	
   747	-- 58 in (String, "", ('*' :))
   748	demo2 :: String
   749	demo2 = nnoRec "" ('*' :) (peano 58)
   750	
   751	-- 58 in ([Int], [], step) where step prepends the current list length
   752	demo3 :: [Int]
   753	demo3 = nnoRec [] (\xs -> length xs : xs) (peano 58)
   754	\end{lstlisting}
   755	
   756	The number 58 is the unique morphism's value at the position $\suc^{58}(0)$; that is what the function \texttt{nnoRec} computes, and it commutes with every choice of pointed dynamical system.
   757	
   758	\section{Results}
   759	\label{sec:results}
   760	
   761	We collect the main results of the paper.
   762	
   763	\begin{theorem}[Main result --- structural identity of $\N$]
   764	\label{thm:main-N}
   765	The natural numbers are determined up to unique isomorphism by the NNO universal property (Theorem~\ref{thm:nno-up}). The notion ``58'' admits an encoding-independent meaning as the unique image of $\suc^{58}(0)$ under the canonical map into any pointed dynamical system. Two NNOs are connected by a unique iso (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}); their copies of 58 correspond.
   766	\end{theorem}
   767	
   768	\begin{theorem}[Main result --- universal-property catalogue]
   769	\label{thm:main-catalogue}
   770	The constants $\pi$, $e$, the structures $\Z, \Q, \R, S^1$, and the functions $\exp, \sin, \cos$ each admit a universal property in an appropriate category. These universal properties are encoding-independent and refer only to the categorical role of each object.
   771	\end{theorem}
   772	
   773	\begin{theorem}[Main result --- inductive/coinductive duality]
   774	\label{thm:main-duality}
   775	The recursion principle (initial algebra) and the corecursion principle (final coalgebra) are dual instances of universal properties. Inductive presentations (e.g., Cauchy reals) and coinductive presentations (e.g., digit-stream reals) of the same structural object yield isomorphic structures by the universal property; the inductive/coinductive choice is a presentational rather than ontological matter.
   776	\end{theorem}
   777	
   778	\begin{theorem}[Main result --- representability]
   779	\label{thm:main-representability}
   780	A universal property exhibits its object as the value of a left adjoint at a distinguished generator, equivalently as a representing object for a functor describable without reference to itself. For the NNO: $\N = F(\varnothing)$ is the value of the free functor $F \colon \Set \to \PtEndo$ (left adjoint to the forgetful $U$) at the empty set, and as an initial object it represents the constant singleton functor on $\PtEndo$ (Theorem~\ref{thm:nno-yoneda}, Corollary~\ref{cor:nno-representable}). This is the bridge from the universal-property perspective (this paper) to the Yoneda perspective (Paper~4).
   781	\end{theorem}
   782	
   783	\section{Discussion}
   784	\label{sec:discussion}
   785	
   786	\subsection{Universal Properties as a Foundational Style}
   787	
   788	The universal-property style of definition has proliferated through 20th- and 21st-century mathematics: limits and colimits, free objects, adjoint functors, quotient constructions, classifying spaces. Each universal property packages an existence-and-uniqueness statement and, in cases where the relevant category is small enough, computational content (the unique morphism is constructively producible).
   789	
   790	The universal-property perspective is more parsimonious than the set-theoretic perspective in two ways. First, it does not require choosing an encoding. Second, it scales: ``define $X$'' becomes ``state the universal property of $X$,'' which automatically transfers across categories whenever the universal property is satisfiable.
   791	
   792	\subsection{Limitations}
   793	
   794	Three limitations are worth noting:
   795	
   796	\paragraph{Existence is not free.} The universal property of the NNO does not by itself guarantee that an NNO exists; one must verify it in the working category. ETCS adds existence as an axiom; topos theory verifies existence in many natural toposes \cite{Lawvere1964,MaclaneMoerdijk1992}.
   797	
   798	\paragraph{Choice and impredicativity.} Some universal properties (e.g., the universal cover of a space) require background choice principles or impredicative quantification. The natural numbers do not, but the reals (via Dedekind completeness) implicitly assume powerset-like operations.
   799	
   800	\paragraph{The which-iso question persists in classical mathematics.} As discussed in Section~\ref{sec:critique}, classical mathematics maintains the distinction between isomorphism and equality. The universal property names a unique iso, but this remains a separate datum from equality. HoTT removes the distinction.
   801	
   802	\subsection{Connections to Computation}
   803	
   804	The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.
   805	
   806	\subsection{Connections to Other Levels of the Series}
   807	
   808	\paragraph{To Paper~01 (Naive level).} The universal property dissolves the naive question ``what \emph{is} the symbol 58?'' into the structural question ``what does 58 \emph{do} in any successor structure?''
   809	
   810	\paragraph{To Paper~02 (Set-theoretic level).} The universal property explains why Benacerraf's identification problem is not a problem: every encoding satisfying the universal property is canonically interconvertible with every other.
   811	
   812	\paragraph{To Paper~04 (Yoneda).} The universal property is the rough-cut form of which Yoneda is the systematic theory: every universal property is a representation, and every representation can be read as a universal property.
   813	
   814	\paragraph{To Paper~05 (HoTT).} HoTT internalizes the universal property in two ways: the inductive type \texttt{Nat} satisfies the NNO universal property by its elimination rule, and the univalence axiom upgrades ``up to unique iso'' to ``definitionally equal.''
   815	
   816	\paragraph{To Paper~06 (Categorical/structural level).} The universal property is the formal vehicle for the structuralist thesis. ``$58$ is a structural invariant'' means precisely ``the universal property of $\N$ identifies a position $\suc^{58}(0)$ that is invariant across initial successor structures.''
   817	
   818	\section{Conclusion}
   819	\label{sec:conclusion}
   820	
   821	We have presented the universal-property perspective on numbers, with the natural numbers object as the central case and $\Z, \Q, \R, \pi, e, S^1$ as further instances. The universal property of the NNO is captured in a single equation pair (Theorem~\ref{thm:nno-up}); from it follow recursion (Proposition~\ref{prop:prim-rec}), induction (Theorem~\ref{thm:induction-from-up}), Lambek's lemma (Lemma~\ref{lem:lambek}), the rigidity of the natural numbers (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}), and the structural meaning of position 58 (Example~\ref{ex:58}, Theorem~\ref{thm:main-N}).
   822	
   823	The coalgebraic dual provides codata: streams, infinite trees, and coinductive presentations of the reals. The two directions are complementary, not competing; the universal-property perspective regards them as inductive/coinductive presentations of one structural invariant.
   824	
   825	Two open questions for the remaining papers in the series:
   826	\begin{enumerate}
   827	  \item How does the adjunction $F \dashv U$ of Theorem~\ref{thm:nno-yoneda} interact with the Yoneda embedding $\PtEndo \hookrightarrow [\PtEndo\op, \Set]$, and how is the constant singleton functor $\Delta_1$ recovered from the representable presheaf $\Hom_{\PtEndo}(\N, -)$? (Paper~4.)
   828	  \item How do higher inductive types in HoTT subsume universal properties for spaces (e.g., $S^1$ as a HIT with one point and one loop)? (Paper~5.)
   829	\end{enumerate}
   830	
   831	The universal-property perspective has prepared the ground: numbers are positions in initial structures; everything else is encoding. Paper~4 will recast this in the language of representable functors, and Paper~5 will internalize it as definitional equality. The destination is univalent foundations; this paper is one rung of the ladder.
   832	
   833	\section*{Acknowledgments}
   834	
   835	We thank the YonedaAI Research collective and the Univalent Correspondence series collaboration for ongoing dialogue. The framing of the six-level ladder and the slogan ``58 as a position'' originate in the project knowledge base \cite{KnowledgeBase2026}.
   836	
   837	\begin{thebibliography}{99}
   838	
   839	\bibitem{Awodey1996}
   840	S.~Awodey,
   841	\textit{Structure in mathematics and logic: A categorical perspective},
   842	Philosophia Mathematica \textbf{4}(3): 209--237 (1996).
   843	
   844	\bibitem{Awodey2014}
   845	S.~Awodey,
   846	\textit{Structuralism, invariance, and univalence},
   847	Philosophia Mathematica \textbf{22}(1): 1--11 (2014).
   848	
   849	\bibitem{Benacerraf1965}
   850	P.~Benacerraf,
   851	\textit{What numbers could not be},
   852	Philosophical Review \textbf{74}(1): 47--73 (1965).
   853	
   854	\bibitem{HoTTBook2013}
   855	The Univalent Foundations Program,
   856	\textit{Homotopy Type Theory: Univalent Foundations of Mathematics},
   857	Institute for Advanced Study, Princeton (2013); arXiv:1308.0729.
   858	
   859	\bibitem{KnowledgeBase2026}
   860	YonedaAI Research,
   861	\textit{Knowledge base: The Univalent Correspondence},
   862	Magneton Internal Document (2026).
   863	
   864	\bibitem{Lambek1972}
   865	J.~Lambek,
   866	\textit{Deductive systems and categories III: Cartesian closed categories, intuitionist propositional calculus, and combinatory logic},
   867	in: \emph{Toposes, Algebraic Geometry and Logic}, LNM 274, Springer (1972), 57--82.
   868	
   869	\bibitem{Lawvere1964}
   870	F.~W.~Lawvere,
   871	\textit{An elementary theory of the category of sets},
   872	Proceedings of the National Academy of Sciences USA \textbf{52}(6): 1506--1511 (1964).
   873	
   874	\bibitem{Lawvere1966}
   875	F.~W.~Lawvere,
   876	\textit{The category of categories as a foundation for mathematics},
   877	in: \emph{Proceedings of the Conference on Categorical Algebra}, La Jolla, Springer (1966), 1--20.
   878	
   879	\bibitem{Lawvere2003}
   880	F.~W.~Lawvere,
   881	\textit{Foundations and applications: Axiomatization and education},
   882	Bulletin of Symbolic Logic \textbf{9}(2): 213--224 (2003).
   883	
   884	\bibitem{LawvereRosebrugh2003}
   885	F.~W.~Lawvere and R.~Rosebrugh,
   886	\textit{Sets for Mathematics},
   887	Cambridge University Press (2003).
   888	
   889	\bibitem{MacLane1998}
   890	S.~Mac~Lane,
   891	\textit{Categories for the Working Mathematician},
   892	Graduate Texts in Mathematics \textbf{5}, 2nd ed., Springer-Verlag (1998).
   893	
   894	\bibitem{MaclaneMoerdijk1992}
   895	S.~Mac~Lane and I.~Moerdijk,
   896	\textit{Sheaves in Geometry and Logic: A First Introduction to Topos Theory},
   897	Universitext, Springer-Verlag (1992).
   898	
   899	\bibitem{MeijerFokkingaPaterson1991}
   900	E.~Meijer, M.~Fokkinga, and R.~Paterson,
   901	\textit{Functional programming with bananas, lenses, envelopes, and barbed wire},
   902	in: FPCA '91, LNCS 523, Springer (1991), 124--144.
   903	
   904	\bibitem{Riehl2016}
   905	E.~Riehl,
   906	\textit{Category Theory in Context},
   907	Aurora: Dover Modern Math Originals, Dover (2016).
   908	
   909	\bibitem{Skolem1934}
   910	T.~Skolem,
   911	\textit{Uber die Nicht-charakterisierbarkeit der Zahlenreihe mittels endlich oder abz\"ahlbar unendlich vieler Aussagen mit ausschliesslich Zahlenvariablen},
   912	Fundamenta Mathematicae \textbf{23}: 150--161 (1934).
   913	
   914	\bibitem{Voevodsky2015}
   915	V.~Voevodsky,
   916	\textit{An experimental library of formalized mathematics based on the univalent foundations},
   917	Mathematical Structures in Computer Science \textbf{25}(5): 1278--1294 (2015).
   918	
   919	\bibitem{Wadler2015}
   920	P.~Wadler,
   921	\textit{Propositions as types},
   922	Communications of the ACM \textbf{58}(12): 75--84 (2015).
   923	
   924	\bibitem{Weihrauch2000}
   925	K.~Weihrauch,
   926	\textit{Computable Analysis},
   927	Springer-Verlag (2000).
   928	
   929	\end{thebibliography}
   930	
   931	\end{document}

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(ref|eqref|cref|Cref|cite|label|begin|end|usepackage|documentclass|bibliography|addbibresource)\\b|TODO|undefined|Overfull|Underfull' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
4:\usepackage{amsmath, amssymb, amsthm}
5:\usepackage{mathtools}
8:\usepackage{tikz-cd}
9:\usepackage{tikz}
13:\usepackage{hyperref}
14:\usepackage{cleveref}
17:\usepackage{graphicx}
20:\usepackage[margin=1in]{geometry}
23:\usepackage{listings}
24:\usepackage{xcolor}
27:\usepackage{everypage}
30:\usepackage[numbers,sort&compress]{natbib}
73:    \begin{tikzpicture}[remember picture, overlay]
83:    \end{tikzpicture}
113:\begin{document}
117:\begin{abstract}
119:\end{abstract}
124:\label{sec:intro}
128:The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:
129:\begin{quote}
132:\end{quote}
137:A \emph{universal property} of an object $U$ in a category $\mathcal{C}$ is a description of $U$ as the unique object (up to unique isomorphism) carrying a specified piece of data such that, for every other object carrying analogous data, there is a unique structure-preserving morphism out of (or into) $U$ \cite{MacLane1998,Riehl2016}. The natural numbers, the real numbers, the field of rationals, the circle, the exponential function: each admits such a presentation, and each becomes encoding-independent thereby.
140:\begin{enumerate}
144:\end{enumerate}
148:A familiar objection: ``up to unique isomorphism'' still tolerates many isomorphic copies; choosing one is still a choice. The structuralist response, due to Lawvere and developed by Awodey \cite{Awodey1996,Awodey2014}, is that the choice is \emph{semantically irrelevant} because every property of mathematical interest is invariant under isomorphism (\emph{the principle of structuralism}). HoTT will later make this principle \emph{definitional} via univalence (Paper 5). The universal property is the gateway: it teaches us to live with ``up to unique iso'' as the appropriate identity criterion.
152:Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:nno} states and proves the universal property of the NNO and derives recursion and Lambek's theorem. Section~\ref{sec:peano} compares the NNO with second-order and first-order Peano arithmetic. Section~\ref{sec:transcendentals} treats $\pi$, $e$, $\R$, $\Q$ by universal property. Section~\ref{sec:coalgebra} dualizes to final coalgebras and codata. Section~\ref{sec:induction} unifies recursion and induction as instances of the universal property. Section~\ref{sec:critique} addresses the ``which iso?'' critique. Section~\ref{sec:yoneda-bridge} bridges to Yoneda. Section~\ref{sec:haskell} discusses the Haskell implementation. Section~\ref{sec:results} states our main results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.
155:\label{sec:framework}
159:\begin{definition}[Category]
161:\end{definition}
163:\begin{definition}[Pointed dynamical system]
164:\label{def:pds}
166:\begin{equation}
168:\label{eq:pds-morphism}
169:\end{equation}
171:\end{definition}
173:The two equations of \eqref{eq:pds-morphism} say exactly that the diagrams
175:\begin{tikzcd}
178:\end{tikzcd}
180:\begin{tikzcd}
183:\end{tikzcd}
187:\begin{definition}[Initial object]
189:\end{definition}
191:\begin{lemma}[Rigidity of initial objects]
192:\label{lem:initial-rigid}
194:\end{lemma}
196:\begin{proof}
198:\end{proof}
202:\begin{definition}[$F$-algebra]
204:\end{definition}
208:\begin{lemma}[Lambek]
209:\label{lem:lambek}
211:\end{lemma}
213:\begin{proof}
215:\end{proof}
220:\label{sec:nno}
224:\begin{definition}[Natural numbers object]
225:\label{def:nno}
227:\end{definition}
229:\begin{remark}[Notation for the NNO]
230:We use the symbol $N$ for a generic NNO in an arbitrary category $\mathcal{C}$, and $\N$ specifically when $\mathcal{C} = \Set$ (the standard natural numbers). The two notations refer to the same structural object up to canonical isomorphism (Lemma~\ref{lem:initial-rigid}); we use $\N$ in the abstract, in informal discussion, and from Section~\ref{sec:transcendentals} onward, where the working category is $\Set$ (or its enrichment for analysis).
231:\end{remark}
233:\begin{theorem}[Universal property of the NNO]
234:\label{thm:nno-up}
236:\begin{equation}
238:\label{eq:nno-up}
239:\end{equation}
240:\end{theorem}
242:\begin{proof}
243:This is the definition of initiality in $\PtEndo(\mathcal{C})$ rewritten via Definition~\ref{def:pds}. Existence and uniqueness of $h$ together with the two commuting diagrams are jointly the assertion that $(X, x_0, f)$ is an object of $\PtEndo(\mathcal{C})$ and $h$ is the unique morphism from $(N, 0, \suc)$.
244:\end{proof}
248:The unique map $h$ guaranteed by Theorem~\ref{thm:nno-up} \emph{is} the primitive recursion combinator. Writing $\mathrm{rec}(x_0, f) := h$, equation~\eqref{eq:nno-up} unfolds as
249:\begin{equation}
251:\label{eq:rec-eqs}
252:\end{equation}
255:\begin{example}[Addition]
256:\label{ex:add}
258:\end{example}
260:\begin{example}[Multiplication]
261:\label{ex:mul}
267:\end{example}
269:\begin{example}[Position 58]
270:\label{ex:58}
271:The element $58 \in N$ is $\suc^{58}(0)$. By Theorem~\ref{thm:nno-up}, in any pointed dynamical system $(X, x_0, f)$, the corresponding ``58th iteration'' is $\mathrm{rec}(x_0, f)(58) = f^{58}(x_0)$. Two NNOs $(N, 0, \suc)$ and $(N', 0', \suc')$ admit unique mutually-inverse morphisms (Lemma~\ref{lem:initial-rigid}); these match $\suc^{58}(0)$ to $(\suc')^{58}(0')$. The number 58 is exactly this trans-NNO equivalence class.
272:\end{example}
276:Theorem~\ref{thm:nno-up} as stated gives the \emph{iteration principle}: from $(x_0, f)$ produce a function $\N \to X$. Genuine \emph{primitive recursion} allows the recursive call to depend on the index:
277:\begin{equation}
279:\label{eq:prim-rec}
280:\end{equation}
282:\begin{proposition}[Primitive recursion from iteration]
283:\label{prop:prim-rec}
284:In any cartesian category with NNO, primitive recursion as in \eqref{eq:prim-rec} is derivable from iteration as in \eqref{eq:rec-eqs}.
285:\end{proposition}
287:\begin{proof}
292:By Theorem~\ref{thm:nno-up} there is a unique $\widetilde{g} \colon \N \to \N \times X$ with $\widetilde{g}(0) = (0, x_0)$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g := \pi_2 \circ \widetilde{g} \colon \N \to X$. Then $g(0) = x_0$ and $g(\suc n) = k(n, g(n))$. Uniqueness of $g$ follows from uniqueness of $\widetilde{g}$ and the fact that $\pi_1 \circ \widetilde{g} = \id_\N$ by induction.
293:\end{proof}
297:\begin{theorem}[Lawvere; ETCS \cite{Lawvere1964}]
298:\label{thm:etcs}
300:\end{theorem}
302:\begin{proof}[Sketch]
303:Take $\N$ to be the standard natural numbers (constructed in any background foundation, e.g., as the smallest inductive set; encoding-independent by the universal property). Verify Theorem~\ref{thm:nno-up} by induction. The choice axiom and well-pointedness are the additional ETCS axioms, see \cite{Lawvere1964,LawvereRosebrugh2003}.
304:\end{proof}
307:\label{sec:peano}
312:\begin{enumerate}
318:\end{enumerate}
320:\begin{theorem}[Equivalence with NNO]
321:\label{thm:peano-nno}
323:\end{theorem}
325:\begin{proof}[Sketch]
326:$(\Rightarrow)$ Suppose $(N, 0, \suc)$ is an NNO, i.e., initial in $\PtEndo(\Set)$. Since $(N, [0, \suc])$ is the initial algebra for $F X = 1 + X$, Lambek's lemma (Lemma~\ref{lem:lambek}) gives that $[0, \suc] \colon 1 + N \to N$ is an isomorphism. Reading off the components: $0$ and $\suc$ have disjoint images (P3, ``$0 \notin \mathrm{im}\,\suc$'') and $\suc$ is injective (P4). For P5: given a subset $S \subseteq N$ with $0 \in S$ and closed under $\suc$, the inclusion $S \hookrightarrow N$ together with the restricted basepoint and successor makes $S$ a pointed-endo-system; the universal property gives a unique $h \colon N \to S$ with $h(0) = 0$ and $h \circ \suc|_S = \suc \circ h$, and the composite $S \hookrightarrow N \xrightarrow{h} S$ together with $\id_N \colon N \to N$ both fit into the universal property at target $(N, 0, \suc)$, forcing $h = \id_N$ as a function and hence $S = N$.
338:\emph{Step 3: patch into a global map.} The family $\{h_{\le n}\}_{n \in N}$ is compatible (each extends the previous), so we may define $h \colon N \to X$ by $h(n) := h_{\le n}(n)$. This $h$ satisfies \eqref{eq:nno-up}, and uniqueness of each $h_{\le n}$ on its domain gives uniqueness of $h$.
339:\end{proof}
343:First-order Peano arithmetic (PA) replaces the second-order P5 with a schema: induction holds for every formula $\varphi$ in the language of arithmetic. By the Lowenheim--Skolem theorem PA has non-standard models of every infinite cardinality \cite{Skolem1934}; these contain ``infinite'' elements not reachable from $0$ by finitely many applications of $\suc$.
345:\begin{theorem}[Categorical pinning down]
346:\label{thm:standard-model}
348:\end{theorem}
353:\label{sec:transcendentals}
359:\begin{definition}[Universal property of $\Z$]
361:\end{definition}
367:\begin{definition}[Universal property of $\Q$]
368:\label{def:Q-up}
370:\end{definition}
376:\begin{theorem}[Universal property of $\R$]
377:\label{thm:R-up}
379:\end{theorem}
381:\begin{proof}[Sketch]
383:\end{proof}
389:\begin{theorem}[Universal property of $\exp$]
390:\label{thm:exp-up}
392:\begin{enumerate}
395:\end{enumerate}
397:\end{theorem}
399:\begin{definition}[$e$ by universal property]
400:$e := \exp(1)$. Equivalently, $e$ is the unique positive real such that the smooth solution $f$ of $f' = f$, $f(0) = 1$ satisfies $f(1) = e$. By Theorem~\ref{thm:exp-up}, $e$ is well-defined independent of the construction of $\R$.
401:\end{definition}
405:\begin{theorem}[Universal cover of $S^1$]
406:\label{thm:S1-cover}
408:\end{theorem}
410:\begin{definition}[$\pi$ by universal property]
411:\label{def:pi}
413:\end{definition}
415:\begin{remark}
417:\end{remark}
420:\label{sec:coalgebra}
426:\begin{definition}[$F$-coalgebra]
428:\end{definition}
430:\begin{definition}[Final coalgebra]
432:\end{definition}
440:\begin{theorem}[Streams as final coalgebra]
441:\label{thm:streams}
443:\end{theorem}
457:\begin{remark}[Initial vs final tensions in $\R$]
458:\label{rem:R-init-vs-fin}
459:The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.
460:\end{remark}
466:\begin{definition}[Bisimulation]
470:\end{definition}
472:\begin{theorem}[Coinduction principle]
473:\label{thm:coind}
475:\end{theorem}
477:This is the coalgebraic analogue of the induction principle (Theorem~\ref{thm:induction-from-up} below): just as induction reduces equality of functions out of $\N$ to equality of their basepoint-and-step components, coinduction reduces equality of elements in $\nu F$ to the existence of a bisimulation.
480:\label{sec:induction}
484:\begin{theorem}[Dependent induction from the NNO universal property]
485:\label{thm:induction-from-up}
487:\begin{equation}
489:\label{eq:dep-ind}
490:\end{equation}
491:\end{theorem}
493:\begin{proof}[Proof sketch]
498:The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.
499:\end{proof}
501:\begin{remark}
502:The proposition-as-types correspondence (Paper~01 of the series) interprets a propositional family $P \colon N \to \Set$ as a predicate; Theorem~\ref{thm:induction-from-up} then reads as:
503:\begin{quote}
506:\end{quote}
508:\end{remark}
512:We have shown that primitive recursion (\ref{eq:prim-rec}) follows from iteration (\ref{eq:rec-eqs}) (Proposition~\ref{prop:prim-rec}). Course-of-values recursion, where $g(\suc n)$ may depend on all of $g(0), g(1), \dots, g(n)$, is similarly derivable from iteration. We sketch the construction.
514:\begin{proposition}[Course-of-values recursion from iteration]
515:\label{prop:cov}
520:\end{proposition}
522:\begin{proof}[Sketch]
527:By the iteration principle (Theorem~\ref{thm:nno-up}) applied to the pointed dynamical system $(H, \widetilde{x}_0, \widetilde{f})$, there is a unique morphism $\widetilde{g} \colon N \to H$ satisfying $\widetilde{g}(0) = \widetilde{x}_0$ and $\widetilde{g} \circ \suc = \widetilde{f} \circ \widetilde{g}$. Define $g(n) := \mathrm{last}(\pi_2(\widetilde{g}(n)))$, the last element of the accumulated history. The defining equations follow by unfolding $\widetilde{f}$, and uniqueness of $g$ follows from uniqueness of $\widetilde{g}$.
528:\end{proof}
534:The pattern generalizes. For an endofunctor $F$ admitting an initial algebra $\mu F$, the unique morphism $\mathrm{cata}(\alpha) \colon \mu F \to X$ associated to an $F$-algebra $(X, \alpha)$ is the \emph{catamorphism} or \emph{fold}. Dually, $\mathrm{ana}(\gamma) \colon X \to \nu F$ is the anamorphism or unfold. Together they cover the basic recursion schemes of functional programming \cite{MeijerFokkingaPaterson1991}.
537:\label{sec:critique}
545:Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:
546:\begin{enumerate}
550:\end{enumerate}
556:The structuralist response is satisfying philosophically but leaves a gap: in classical mathematics, isomorphism and equality are distinct relations, and one must constantly remember to ``identify'' isomorphic objects via an explicit transport. HoTT's univalence axiom \cite{HoTTBook2013,Voevodsky2015} closes the gap: it asserts
557:\begin{equation}
559:\label{eq:univalence}
560:\end{equation}
569:\begin{proposition}[Canonical iso of NNOs]
570:\label{prop:can-iso}
571:Let $(N_1, 0_1, \suc_1)$ and $(N_2, 0_2, \suc_2)$ be NNOs in $\mathcal{C}$. The unique iso $u \colon N_1 \to N_2$ provided by Lemma~\ref{lem:initial-rigid} is given explicitly by $u = \mathrm{rec}(0_2, \suc_2)$ (the recursion combinator from $N_1$ targeting $N_2$), with inverse $\mathrm{rec}(0_1, \suc_1)$. In particular, the automorphism group $\mathrm{Aut}(N) = \{\id_N\}$ is trivial: any pointed-endo-system endomorphism of an NNO is the identity.
572:\end{proposition}
574:\begin{proof}
575:Apply Theorem~\ref{thm:nno-up} with target $(N_2, 0_2, \suc_2)$ to obtain $u$, and again with target $(N_1, 0_1, \suc_1)$ to obtain a candidate inverse $v$. By Lemma~\ref{lem:initial-rigid}, $u$ and $v$ are mutually inverse. The triviality of $\mathrm{Aut}(N)$ follows by taking $N_1 = N_2 = N$: both $u$ and $\id_N$ are pointed-endo-system endomorphisms of $N$, hence equal by uniqueness in Theorem~\ref{thm:nno-up}.
576:\end{proof}
579:\label{sec:yoneda-bridge}
592:\begin{equation}
594:\label{eq:adjunction-iso}
595:\end{equation}
598:\begin{theorem}[NNO as the free pointed-endo-system on the empty set]
599:\label{thm:nno-yoneda}
601:\begin{equation}
603:\label{eq:F-empty}
604:\end{equation}
605:Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.
606:\end{theorem}
608:\begin{proof}
609:Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.
610:\end{proof}
616:\begin{corollary}[Representability of the NNO]
617:\label{cor:nno-representable}
619:\begin{equation}
621:\label{eq:nno-rep}
622:\end{equation}
624:\end{corollary}
626:\begin{proof}
627:By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.
628:\end{proof}
630:\begin{remark}[The free algebra on the singleton picks out elements]
635:The NNO is the special case at $A = \varnothing$. So the same adjunction \eqref{eq:adjunction-iso} explains both initiality (representability of $\Delta_1$) and freeness on a single generator (representability of $U$), simply by varying the input set $A$.
636:\end{remark}
641:\begin{enumerate}
644:  \item As an initial object, the NNO represents the constant singleton functor on $\PtEndo$ (Corollary~\ref{cor:nno-representable}).
646:\end{enumerate}
649:\begin{quote}
652:\end{quote}
661:\label{sec:haskell}
667:The recursion combinator from Theorem~\ref{thm:nno-up} is the iteration combinator on Peano naturals. We define a generic Peano type, a helper to inject \texttt{Int} values into it, and the universal map:
669:\begin{lstlisting}
684:\end{lstlisting}
686:The two equations of \texttt{nnoRec} are exactly the two equations \eqref{eq:rec-eqs}.
692:\begin{lstlisting}
697:\end{lstlisting}
701:\begin{lstlisting}
715:\end{lstlisting}
721:\begin{lstlisting}
736:\end{lstlisting}
740:The main demonstration verifies Example~\ref{ex:58}: ``58'' computes the same trajectory in different pointed dynamical systems, exemplifying that 58 is a structural position rather than a particular value.
742:\begin{lstlisting}
754:\end{lstlisting}
759:\label{sec:results}
763:\begin{theorem}[Main result --- structural identity of $\N$]
764:\label{thm:main-N}
765:The natural numbers are determined up to unique isomorphism by the NNO universal property (Theorem~\ref{thm:nno-up}). The notion ``58'' admits an encoding-independent meaning as the unique image of $\suc^{58}(0)$ under the canonical map into any pointed dynamical system. Two NNOs are connected by a unique iso (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}); their copies of 58 correspond.
766:\end{theorem}
768:\begin{theorem}[Main result --- universal-property catalogue]
769:\label{thm:main-catalogue}
771:\end{theorem}
773:\begin{theorem}[Main result --- inductive/coinductive duality]
774:\label{thm:main-duality}
776:\end{theorem}
778:\begin{theorem}[Main result --- representability]
779:\label{thm:main-representability}
780:A universal property exhibits its object as the value of a left adjoint at a distinguished generator, equivalently as a representing object for a functor describable without reference to itself. For the NNO: $\N = F(\varnothing)$ is the value of the free functor $F \colon \Set \to \PtEndo$ (left adjoint to the forgetful $U$) at the empty set, and as an initial object it represents the constant singleton functor on $\PtEndo$ (Theorem~\ref{thm:nno-yoneda}, Corollary~\ref{cor:nno-representable}). This is the bridge from the universal-property perspective (this paper) to the Yoneda perspective (Paper~4).
781:\end{theorem}
784:\label{sec:discussion}
796:\paragraph{Existence is not free.} The universal property of the NNO does not by itself guarantee that an NNO exists; one must verify it in the working category. ETCS adds existence as an axiom; topos theory verifies existence in many natural toposes \cite{Lawvere1964,MaclaneMoerdijk1992}.
800:\paragraph{The which-iso question persists in classical mathematics.} As discussed in Section~\ref{sec:critique}, classical mathematics maintains the distinction between isomorphism and equality. The universal property names a unique iso, but this remains a separate datum from equality. HoTT removes the distinction.
804:The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.
819:\label{sec:conclusion}
821:We have presented the universal-property perspective on numbers, with the natural numbers object as the central case and $\Z, \Q, \R, \pi, e, S^1$ as further instances. The universal property of the NNO is captured in a single equation pair (Theorem~\ref{thm:nno-up}); from it follow recursion (Proposition~\ref{prop:prim-rec}), induction (Theorem~\ref{thm:induction-from-up}), Lambek's lemma (Lemma~\ref{lem:lambek}), the rigidity of the natural numbers (Lemma~\ref{lem:initial-rigid}, Proposition~\ref{prop:can-iso}), and the structural meaning of position 58 (Example~\ref{ex:58}, Theorem~\ref{thm:main-N}).
826:\begin{enumerate}
827:  \item How does the adjunction $F \dashv U$ of Theorem~\ref{thm:nno-yoneda} interact with the Yoneda embedding $\PtEndo \hookrightarrow [\PtEndo\op, \Set]$, and how is the constant singleton functor $\Delta_1$ recovered from the representable presheaf $\Hom_{\PtEndo}(\N, -)$? (Paper~4.)
829:\end{enumerate}
835:We thank the YonedaAI Research collective and the Univalent Correspondence series collaboration for ongoing dialogue. The framing of the six-level ladder and the slogan ``58 as a position'' originate in the project knowledge base \cite{KnowledgeBase2026}.
837:\begin{thebibliography}{99}
929:\end{thebibliography}
931:\end{document}

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(ref|eqref|cref|Cref)\\{(["'^}]*)'"\\}/g){print \""'$ARGV:$.:REF:$2'"\\n\"} while(/\\\\label\\{(["'^}]*)'"\\}/g){print \""'$ARGV:$.:LABEL:$1'"\\n\"}' papers/03-universal-property/latex/03-universal-property.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
papers/03-universal-property/latex/03-universal-property.tex:124:LABEL:sec:intro
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:framework
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:nno
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:peano
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:transcendentals
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:coalgebra
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:induction
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:critique
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:yoneda-bridge
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:haskell
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:results
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:discussion
papers/03-universal-property/latex/03-universal-property.tex:152:REF:sec:conclusion
papers/03-universal-property/latex/03-universal-property.tex:155:LABEL:sec:framework
papers/03-universal-property/latex/03-universal-property.tex:164:LABEL:def:pds
papers/03-universal-property/latex/03-universal-property.tex:168:LABEL:eq:pds-morphism
papers/03-universal-property/latex/03-universal-property.tex:173:REF:eq:pds-morphism
papers/03-universal-property/latex/03-universal-property.tex:192:LABEL:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:209:LABEL:lem:lambek
papers/03-universal-property/latex/03-universal-property.tex:220:LABEL:sec:nno
papers/03-universal-property/latex/03-universal-property.tex:225:LABEL:def:nno
papers/03-universal-property/latex/03-universal-property.tex:230:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:230:REF:sec:transcendentals
papers/03-universal-property/latex/03-universal-property.tex:234:LABEL:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:238:LABEL:eq:nno-up
papers/03-universal-property/latex/03-universal-property.tex:243:REF:def:pds
papers/03-universal-property/latex/03-universal-property.tex:248:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:248:REF:eq:nno-up
papers/03-universal-property/latex/03-universal-property.tex:251:LABEL:eq:rec-eqs
papers/03-universal-property/latex/03-universal-property.tex:256:LABEL:ex:add
papers/03-universal-property/latex/03-universal-property.tex:261:LABEL:ex:mul
papers/03-universal-property/latex/03-universal-property.tex:270:LABEL:ex:58
papers/03-universal-property/latex/03-universal-property.tex:271:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:271:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:276:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:279:LABEL:eq:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:283:LABEL:prop:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:284:REF:eq:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:284:REF:eq:rec-eqs
papers/03-universal-property/latex/03-universal-property.tex:292:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:298:LABEL:thm:etcs
papers/03-universal-property/latex/03-universal-property.tex:303:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:307:LABEL:sec:peano
papers/03-universal-property/latex/03-universal-property.tex:321:LABEL:thm:peano-nno
papers/03-universal-property/latex/03-universal-property.tex:326:REF:lem:lambek
papers/03-universal-property/latex/03-universal-property.tex:338:REF:eq:nno-up
papers/03-universal-property/latex/03-universal-property.tex:346:LABEL:thm:standard-model
papers/03-universal-property/latex/03-universal-property.tex:353:LABEL:sec:transcendentals
papers/03-universal-property/latex/03-universal-property.tex:368:LABEL:def:Q-up
papers/03-universal-property/latex/03-universal-property.tex:377:LABEL:thm:R-up
papers/03-universal-property/latex/03-universal-property.tex:390:LABEL:thm:exp-up
papers/03-universal-property/latex/03-universal-property.tex:400:REF:thm:exp-up
papers/03-universal-property/latex/03-universal-property.tex:406:LABEL:thm:S1-cover
papers/03-universal-property/latex/03-universal-property.tex:411:LABEL:def:pi
papers/03-universal-property/latex/03-universal-property.tex:420:LABEL:sec:coalgebra
papers/03-universal-property/latex/03-universal-property.tex:441:LABEL:thm:streams
papers/03-universal-property/latex/03-universal-property.tex:458:LABEL:rem:R-init-vs-fin
papers/03-universal-property/latex/03-universal-property.tex:459:REF:thm:R-up
papers/03-universal-property/latex/03-universal-property.tex:473:LABEL:thm:coind
papers/03-universal-property/latex/03-universal-property.tex:477:REF:thm:induction-from-up
papers/03-universal-property/latex/03-universal-property.tex:480:LABEL:sec:induction
papers/03-universal-property/latex/03-universal-property.tex:485:LABEL:thm:induction-from-up
papers/03-universal-property/latex/03-universal-property.tex:489:LABEL:eq:dep-ind
papers/03-universal-property/latex/03-universal-property.tex:498:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:498:REF:eq:dep-ind
papers/03-universal-property/latex/03-universal-property.tex:502:REF:thm:induction-from-up
papers/03-universal-property/latex/03-universal-property.tex:512:REF:eq:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:512:REF:eq:rec-eqs
papers/03-universal-property/latex/03-universal-property.tex:512:REF:prop:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:515:LABEL:prop:cov
papers/03-universal-property/latex/03-universal-property.tex:527:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:537:LABEL:sec:critique
papers/03-universal-property/latex/03-universal-property.tex:559:LABEL:eq:univalence
papers/03-universal-property/latex/03-universal-property.tex:570:LABEL:prop:can-iso
papers/03-universal-property/latex/03-universal-property.tex:571:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:575:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:575:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:575:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:579:LABEL:sec:yoneda-bridge
papers/03-universal-property/latex/03-universal-property.tex:594:LABEL:eq:adjunction-iso
papers/03-universal-property/latex/03-universal-property.tex:599:LABEL:thm:nno-yoneda
papers/03-universal-property/latex/03-universal-property.tex:603:LABEL:eq:F-empty
papers/03-universal-property/latex/03-universal-property.tex:605:REF:eq:adjunction-iso
papers/03-universal-property/latex/03-universal-property.tex:605:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:609:REF:eq:adjunction-iso
papers/03-universal-property/latex/03-universal-property.tex:609:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:609:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:609:REF:eq:F-empty
papers/03-universal-property/latex/03-universal-property.tex:617:LABEL:cor:nno-representable
papers/03-universal-property/latex/03-universal-property.tex:621:LABEL:eq:nno-rep
papers/03-universal-property/latex/03-universal-property.tex:627:REF:thm:nno-yoneda
papers/03-universal-property/latex/03-universal-property.tex:627:REF:eq:nno-rep
papers/03-universal-property/latex/03-universal-property.tex:635:REF:eq:adjunction-iso
papers/03-universal-property/latex/03-universal-property.tex:644:REF:cor:nno-representable
papers/03-universal-property/latex/03-universal-property.tex:661:LABEL:sec:haskell
papers/03-universal-property/latex/03-universal-property.tex:667:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:686:REF:eq:rec-eqs
papers/03-universal-property/latex/03-universal-property.tex:740:REF:ex:58
papers/03-universal-property/latex/03-universal-property.tex:759:LABEL:sec:results
papers/03-universal-property/latex/03-universal-property.tex:764:LABEL:thm:main-N
papers/03-universal-property/latex/03-universal-property.tex:765:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:765:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:765:REF:prop:can-iso
papers/03-universal-property/latex/03-universal-property.tex:769:LABEL:thm:main-catalogue
papers/03-universal-property/latex/03-universal-property.tex:774:LABEL:thm:main-duality
papers/03-universal-property/latex/03-universal-property.tex:779:LABEL:thm:main-representability
papers/03-universal-property/latex/03-universal-property.tex:780:REF:thm:nno-yoneda
papers/03-universal-property/latex/03-universal-property.tex:780:REF:cor:nno-representable
papers/03-universal-property/latex/03-universal-property.tex:784:LABEL:sec:discussion
papers/03-universal-property/latex/03-universal-property.tex:800:REF:sec:critique
papers/03-universal-property/latex/03-universal-property.tex:804:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:819:LABEL:sec:conclusion
papers/03-universal-property/latex/03-universal-property.tex:821:REF:thm:nno-up
papers/03-universal-property/latex/03-universal-property.tex:821:REF:prop:prim-rec
papers/03-universal-property/latex/03-universal-property.tex:821:REF:thm:induction-from-up
papers/03-universal-property/latex/03-universal-property.tex:821:REF:lem:lambek
papers/03-universal-property/latex/03-universal-property.tex:821:REF:lem:initial-rigid
papers/03-universal-property/latex/03-universal-property.tex:821:REF:prop:can-iso
papers/03-universal-property/latex/03-universal-property.tex:821:REF:ex:58
papers/03-universal-property/latex/03-universal-property.tex:821:REF:thm:main-N
papers/03-universal-property/latex/03-universal-property.tex:827:REF:thm:nno-yoneda

exec
/usr/local/bin/zsh -lc 'tmp=$(mktemp -d); cp papers/03-universal-property/latex/03-universal-property.tex "$tmp/"; cd "$tmp"; pdflatex -interaction=nonstopmode -halt-on-error 03-universal-property.tex; pdflatex -interaction=nonstopmode -halt-on-error 03-universal-property.tex; printf '"'\\nTMP=%s\\n' \""'$tmp"' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'which chktex || true; which lacheck || true; which latexmk || true; kpsewhich everypage.sty || true; kpsewhich tikz-cd.sty || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 123ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty

 succeeded in 1222ms:
)
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
No file 03-universal-property.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/grfext/grfext.sty)
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

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


LaTeX Warning: Reference `thm:exp-up' on page 8 undefined on input line 400.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Overfull \hbox (2.60304pt too wide) in paragraph at lines 407--408
[]\OT1/cmr/bx/n/12 Theorem 5.6 \OT1/cmr/m/n/12 (Uni-ver-sal cover of $\OML/cmm/
m/it/12 S[]$\OT1/cmr/m/n/12 )\OT1/cmr/bx/n/12 . []\OT1/cmr/m/it/12 The ex-po-ne
n-tial map $\OML/cmm/m/it/12 E [] [] \U/msb/m/n/12 R \OMS/cmsy/m/n/12 ! \OML/cm
m/m/it/12 S[]$\OT1/cmr/m/it/12 , $\OML/cmm/m/it/12 E\OT1/cmr/m/n/12 (\OML/cmm/m
/it/12 t\OT1/cmr/m/n/12 ) := ([] \OML/cmm/m/it/12 t; [] t\OT1/cmr/m/n/12 )$\OT1
/cmr/m/it/12 ,
[8]

LaTeX Warning: Reference `thm:R-up' on page 9 undefined on input line 459.


Package natbib Warning: Citation `Weihrauch2000' on page 9 undefined on input l
ine 459.

[9]

LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
line 477.


LaTeX Warning: Reference `thm:nno-up' on page 10 undefined on input line 498.


LaTeX Warning: Reference `eq:dep-ind' on page 10 undefined on input line 498.


LaTeX Warning: Reference `thm:induction-from-up' on page 10 undefined on input 
line 502.


LaTeX Warning: Reference `eq:prim-rec' on page 10 undefined on input line 512.


LaTeX Warning: Reference `eq:rec-eqs' on page 10 undefined on input line 512.


LaTeX Warning: Reference `prop:prim-rec' on page 10 undefined on input line 512
.

[10]

LaTeX Warning: Reference `thm:nno-up' on page 11 undefined on input line 527.


Package natbib Warning: Citation `MeijerFokkingaPaterson1991' on page 11 undefi
ned on input line 534.


Package natbib Warning: Citation `Lawvere1966' on page 11 undefined on input li
ne 545.


Package natbib Warning: Citation `Lawvere2003' on page 11 undefined on input li
ne 545.


Package natbib Warning: Citation `Awodey1996' on page 11 undefined on input lin
e 545.


Package natbib Warning: Citation `Awodey2014' on page 11 undefined on input lin
e 545.

[11]

Package natbib Warning: Citation `HoTTBook2013' on page 12 undefined on input l
ine 556.


Package natbib Warning: Citation `Voevodsky2015' on page 12 undefined on input 
line 556.


LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
 571.


LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 575.


LaTeX Warning: Reference `lem:initial-rigid' on page 12 undefined on input line
 575.


LaTeX Warning: Reference `thm:nno-up' on page 12 undefined on input line 575.

[12]

LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
 605.


LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 605.


LaTeX Warning: Reference `eq:adjunction-iso' on page 13 undefined on input line
 609.


LaTeX Warning: Reference `thm:nno-up' on page 13 undefined on input line 609.


LaTeX Warning: Reference `lem:initial-rigid' on page 13 undefined on input line
 609.


LaTeX Warning: Reference `eq:F-empty' on page 13 undefined on input line 609.

[13]

LaTeX Warning: Reference `thm:nno-yoneda' on page 14 undefined on input line 62
7.


LaTeX Warning: Reference `eq:nno-rep' on page 14 undefined on input line 627.


LaTeX Warning: Reference `eq:adjunction-iso' on page 14 undefined on input line
 635.


LaTeX Warning: Reference `cor:nno-representable' on page 14 undefined on input 
line 644.

[14]

LaTeX Warning: Reference `thm:nno-up' on page 15 undefined on input line 667.


LaTeX Warning: Reference `eq:rec-eqs' on page 15 undefined on input line 686.

[15]

LaTeX Warning: Reference `ex:58' on page 16 undefined on input line 740.

[16]

LaTeX Warning: Reference `thm:nno-up' on page 17 undefined on input line 765.


LaTeX Warning: Reference `lem:initial-rigid' on page 17 undefined on input line
 765.


LaTeX Warning: Reference `prop:can-iso' on page 17 undefined on input line 765.



LaTeX Warning: Reference `thm:nno-yoneda' on page 17 undefined on input line 78
0.


LaTeX Warning: Reference `cor:nno-representable' on page 17 undefined on input 
line 780.

[17]

Package natbib Warning: Citation `Lawvere1964' on page 18 undefined on input li
ne 796.


Package natbib Warning: Citation `MaclaneMoerdijk1992' on page 18 undefined on 
input line 796.


LaTeX Warning: Reference `sec:critique' on page 18 undefined on input line 800.



LaTeX Warning: Reference `thm:nno-up' on page 18 undefined on input line 804.


Package natbib Warning: Citation `Wadler2015' on page 18 undefined on input lin
e 804.


Package natbib Warning: Citation `Lambek1972' on page 18 undefined on input lin
e 804.

[18]

LaTeX Warning: Reference `thm:nno-up' on page 19 undefined on input line 821.


LaTeX Warning: Reference `prop:prim-rec' on page 19 undefined on input line 821
.


LaTeX Warning: Reference `thm:induction-from-up' on page 19 undefined on input 
line 821.


LaTeX Warning: Reference `lem:lambek' on page 19 undefined on input line 821.


LaTeX Warning: Reference `lem:initial-rigid' on page 19 undefined on input line
 821.


LaTeX Warning: Reference `prop:can-iso' on page 19 undefined on input line 821.



LaTeX Warning: Reference `ex:58' on page 19 undefined on input line 821.


LaTeX Warning: Reference `thm:main-N' on page 19 undefined on input line 821.


LaTeX Warning: Reference `thm:nno-yoneda' on page 19 undefined on input line 82
7.


Package natbib Warning: Citation `KnowledgeBase2026' on page 19 undefined on in
put line 835.

[19] [20]

Package natbib Warning: There were undefined citations.

[21] (./03-universal-property.aux

Package natbib Warning: Citation(s) may have changed.
(natbib)                Rerun to get citations correct.

)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `03-universal-property.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb>
Output written on 03-universal-property.pdf (21 pages, 387987 bytes).
Transcript written on 03-universal-property.log.
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./03-universal-property.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(./03-universal-property.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/grfext/grfext.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./03-universal-property.out) (./03-universal-property.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./03-universal-property.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdf
tex/updmap/pdftex.map}] [2]) [3] [4] [5] [6] [7] [8]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Overfull \hbox (2.60304pt too wide) in paragraph at lines 407--408
[]\OT1/cmr/bx/n/12 Theorem 5.6 \OT1/cmr/m/n/12 (Uni-ver-sal cover of $\OML/cmm/
m/it/12 S[]$\OT1/cmr/m/n/12 )\OT1/cmr/bx/n/12 . []\OT1/cmr/m/it/12 The ex-po-ne
n-tial map $\OML/cmm/m/it/12 E [] [] \U/msb/m/n/12 R \OMS/cmsy/m/n/12 ! \OML/cm
m/m/it/12 S[]$\OT1/cmr/m/it/12 , $\OML/cmm/m/it/12 E\OT1/cmr/m/n/12 (\OML/cmm/m
/it/12 t\OT1/cmr/m/n/12 ) := ([] \OML/cmm/m/it/12 t; [] t\OT1/cmr/m/n/12 )$\OT1
/cmr/m/it/12 ,
[9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
(./03-universal-property.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb>
Output written on 03-universal-property.pdf (22 pages, 400201 bytes).
Transcript written on 03-universal-property.log.

TMP=/var/folders/6z/np99jwkj4ys5z6l5y0xpwdx80000gn/T/tmp.r0wKBKIf5E

exec
/usr/local/bin/zsh -lc 'lacheck papers/03-universal-property/latex/03-universal-property.tex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
"papers/03-universal-property/latex/03-universal-property.tex", line 44: possible unwanted space at "{"
"papers/03-universal-property/latex/03-universal-property.tex", line 51: possible unwanted space at "{"
"papers/03-universal-property/latex/03-universal-property.tex", line 670: missing `\ ' after "algebra."
"papers/03-universal-property/latex/03-universal-property.tex", line 693: possible unwanted space at "{"
"papers/03-universal-property/latex/03-universal-property.tex", line 696: Whitespace before punctation mark in " ."
"papers/03-universal-property/latex/03-universal-property.tex", line 696: Whitespace before punctation mark in " ."
"papers/03-universal-property/latex/03-universal-property.tex", line 712: missing `\ ' after "property."
"papers/03-universal-property/latex/03-universal-property.tex", line 722: possible unwanted space at "{"
"papers/03-universal-property/latex/03-universal-property.tex", line 725: Whitespace before punctation mark in " ."
"papers/03-universal-property/latex/03-universal-property.tex", line 725: Whitespace before punctation mark in " ."

exec
/usr/local/bin/zsh -lc "cd /var/folders/6z/np99jwkj4ys5z6l5y0xpwdx80000gn/T/tmp.r0wKBKIf5E && pdflatex -interaction=nonstopmode -halt-on-error 03-universal-property.tex >/tmp/ffm_p03_pdflatex3.out 2>&1; cat /tmp/ffm_p03_pdflatex3.out; printf '\\n--- warnings/errors summary ---\\n'; rg -n \"("'^!|Warning|Overfull|Underfull|undefined|Rerun|Label'"\\(s\\))\" 03-universal-property.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'chktex -q -n1 -n8 -n13 -n24 -n36 papers/03-universal-property/latex/03-universal-property.tex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 49: Use either `` or '' as an alternative to `"'.
  morestring=[b]"  
                ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 128: You should not use punctuation in front of quotes.
The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:  
                                                                                   ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 128: Non-breaking space (`~') should have been used.
The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:  
                                                                                                                      ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 128: Non-breaking space (`~') should have been used.
The Univalent Correspondence series organizes the question \emph{``what is a number?''} into six levels of abstraction \cite{KnowledgeBase2026}. Paper~01 examined the naive level (numerals as syntax). Paper~02 examined the set-theoretic level (von Neumann ordinals; Benacerraf's identification problem \cite{Benacerraf1965}). The present paper takes the next step. We replace ``$58$ is the set $\{0, 1, \dots, 57\}$'' with the encoding-independent assertion:  
                                                                                                                                                                                                                                                                                                             ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 137: Non-breaking space (`~') should have been used.
A \emph{universal property} of an object $U$ in a category $\mathcal{C}$ is a description of $U$ as the unique object (up to unique isomorphism) carrying a specified piece of data such that, for every other object carrying analogous data, there is a unique structure-preserving morphism out of (or into) $U$ \cite{MacLane1998,Riehl2016}. The natural numbers, the real numbers, the field of rationals, the circle, the exponential function: each admits such a presentation, and each becomes encoding-independent thereby.  
                                                                                                                                                                                                                                                                                                                   ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 148: Non-breaking space (`~') should have been used.
A familiar objection: ``up to unique isomorphism'' still tolerates many isomorphic copies; choosing one is still a choice. The structuralist response, due to Lawvere and developed by Awodey \cite{Awodey1996,Awodey2014}, is that the choice is \emph{semantically irrelevant} because every property of mathematical interest is invariant under isomorphism (\emph{the principle of structuralism}). HoTT will later make this principle \emph{definitional} via univalence (Paper 5). The universal property is the gateway: it teaches us to live with ``up to unique iso'' as the appropriate identity criterion.  
                                                                                                                                                                                             ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 152: You should not use punctuation in front of quotes.
Section~\ref{sec:framework} fixes the categorical framework. Section~\ref{sec:nno} states and proves the universal property of the NNO and derives recursion and Lambek's theorem. Section~\ref{sec:peano} compares the NNO with second-order and first-order Peano arithmetic. Section~\ref{sec:transcendentals} treats $\pi$, $e$, $\R$, $\Q$ by universal property. Section~\ref{sec:coalgebra} dualizes to final coalgebras and codata. Section~\ref{sec:induction} unifies recursion and induction as instances of the universal property. Section~\ref{sec:critique} addresses the ``which iso?'' critique. Section~\ref{sec:yoneda-bridge} bridges to Yoneda. Section~\ref{sec:haskell} discusses the Haskell implementation. Section~\ref{sec:results} states our main results, Section~\ref{sec:discussion} discusses, and Section~\ref{sec:conclusion} concludes.  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 173: Non-breaking space (`~') should have been used.
The two equations of \eqref{eq:pds-morphism} say exactly that the diagrams  
                    ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
            ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
                ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
                              ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
                                  ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
                                                    ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 176: Use either `` or '' as an alternative to `"'.
1 \arrow[r, "x_0"] \arrow[dr, "y_0"'] & X \arrow[d, "h"] \\  
                                                      ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
            ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
              ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
                           ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
                             ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
                                               ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 181: Use either `` or '' as an alternative to `"'.
X \arrow[r, "f"] \arrow[d, "h"'] & X \arrow[d, "h"] \\  
                                                 ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 182: Use either `` or '' as an alternative to `"'.
Y \arrow[r, "g"'] & Y  
            ^
Warning 18 in papers/03-universal-property/latex/03-universal-property.tex line 182: Use either `` or '' as an alternative to `"'.
Y \arrow[r, "g"'] & Y  
              ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 185: You should not use punctuation in front of quotes.
commute. The first asserts ``$h$ preserves the basepoint''; the second asserts ``$h$ commutes with the dynamics.''  
                                                                                                               ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 266: You should not use punctuation in front of quotes.
The base case $\mathrm{mul}(0)$ is the constant zero function; the step takes a function $g$ representing ``multiplication by $n$'' and returns the function $m \mapsto m + g(m)$, representing ``multiplication by $\suc n$.'' Each arithmetic operation is a single recursion combinator instance.  
                                                                                                                                                                                                                            ^
Warning 3 in papers/03-universal-property/latex/03-universal-property.tex line 271: You should enclose the previous parenthesis with `{}'.
The element $58 \in N$ is $\suc^{58}(0)$. By Theorem~\ref{thm:nno-up}, in any pointed dynamical system $(X, x_0, f)$, the corresponding ``58th iteration'' is $\mathrm{rec}(x_0, f)(58) = f^{58}(x_0)$. Two NNOs $(N, 0, \suc)$ and $(N', 0', \suc')$ admit unique mutually-inverse morphisms (Lemma~\ref{lem:initial-rigid}); these match $\suc^{58}(0)$ to $(\suc')^{58}(0')$. The number 58 is exactly this trans-NNO equivalence class.  
                                                                                                                                                                                                                                                                                                                                                                    ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 284: Non-breaking space (`~') should have been used.
In any cartesian category with NNO, primitive recursion as in \eqref{eq:prim-rec} is derivable from iteration as in \eqref{eq:rec-eqs}.  
                                                             ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 284: Non-breaking space (`~') should have been used.
In any cartesian category with NNO, primitive recursion as in \eqref{eq:prim-rec} is derivable from iteration as in \eqref{eq:rec-eqs}.  
                                                                                                                   ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 297: Non-breaking space (`~') should have been used.
\begin{theorem}[Lawvere; ETCS \cite{Lawvere1964}]  
                             ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 303: Non-breaking space (`~') should have been used.
Take $\N$ to be the standard natural numbers (constructed in any background foundation, e.g., as the smallest inductive set; encoding-independent by the universal property). Verify Theorem~\ref{thm:nno-up} by induction. The choice axiom and well-pointedness are the additional ETCS axioms, see \cite{Lawvere1964,LawvereRosebrugh2003}.  
                                                                                                                                                                                                                                                                                                     ^
Warning 3 in papers/03-universal-property/latex/03-universal-property.tex line 338: You should enclose the previous parenthesis with `{}'.
\emph{Step 3: patch into a global map.} The family $\{h_{\le n}\}_{n \in N}$ is compatible (each extends the previous), so we may define $h \colon N \to X$ by $h(n) := h_{\le n}(n)$. This $h$ satisfies \eqref{eq:nno-up}, and uniqueness of each $h_{\le n}$ on its domain gives uniqueness of $h$.  
                                                               ^^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 338: Non-breaking space (`~') should have been used.
\emph{Step 3: patch into a global map.} The family $\{h_{\le n}\}_{n \in N}$ is compatible (each extends the previous), so we may define $h \colon N \to X$ by $h(n) := h_{\le n}(n)$. This $h$ satisfies \eqref{eq:nno-up}, and uniqueness of each $h_{\le n}$ on its domain gives uniqueness of $h$.  
                                                                                                                                                                                                         ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 343: Non-breaking space (`~') should have been used.
First-order Peano arithmetic (PA) replaces the second-order P5 with a schema: induction holds for every formula $\varphi$ in the language of arithmetic. By the Lowenheim--Skolem theorem PA has non-standard models of every infinite cardinality \cite{Skolem1934}; these contain ``infinite'' elements not reachable from $0$ by finitely many applications of $\suc$.  
                                                                                                                                                                                                                                                  ^
Warning 3 in papers/03-universal-property/latex/03-universal-property.tex line 372: You should enclose the previous parenthesis with `{}'.
The unique extension is determined by $\bar{\jmath}(p/q) = \jmath(p) \jmath(q)^{-1}$. The construction (equivalence classes of pairs $(p, q)$ with $q \neq 0$) is one realization of the universal object; the universal property captures the structure encoding-independently.  
                                                                             ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 459: Non-breaking space (`~') should have been used.
The Cauchy and digit-stream constructions are biased toward initial and final structures respectively. They produce isomorphic ordered fields by Theorem~\ref{thm:R-up}, but the constructions exhibit different \emph{computational} content: Cauchy realizers carry an explicit modulus of convergence; stream realizers carry an explicit observation schedule. In Type II Turing computability, the two are interreducible but not isomorphic as effective structures \cite{Weihrauch2000}. We take this as evidence that ``$\R$'' as a structural invariant lives \emph{above} the choice of inductive vs coinductive presentation.  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 498: Non-breaking space (`~') should have been used.
The projection $\pi$ is then a morphism of pointed dynamical systems $\pi \colon E \to N$ (where $N$ has structure $(0, \suc)$). By the NNO universal property (Theorem~\ref{thm:nno-up}), there is a unique morphism $h \colon N \to E$ in $\PtEndo$ with $h(0) = (0, p_0)$ and $h \circ \suc = \widetilde{f} \circ h$. The composite $\pi \circ h \colon N \to N$ is also a morphism, and is forced by uniqueness to be $\id_N$, so $h$ is a section of $\pi$. Define $\mathrm{ind}(p_0, p_s)(n) := \mathrm{snd}(h(n)) \in P(n)$. The defining equations \eqref{eq:dep-ind} follow from the equations of $h$. Uniqueness of $\mathrm{ind}$ follows from uniqueness of $h$.  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 534: Non-breaking space (`~') should have been used.
The pattern generalizes. For an endofunctor $F$ admitting an initial algebra $\mu F$, the unique morphism $\mathrm{cata}(\alpha) \colon \mu F \to X$ associated to an $F$-algebra $(X, \alpha)$ is the \emph{catamorphism} or \emph{fold}. Dually, $\mathrm{ana}(\gamma) \colon X \to \nu F$ is the anamorphism or unfold. Together they cover the basic recursion schemes of functional programming \cite{MeijerFokkingaPaterson1991}.  
                                                                                                                                                                                                                                                                                                                                                                                                    ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 541: You should not use punctuation in front of quotes.
A familiar worry: a universal property determines its object only \emph{up to unique isomorphism}. For numbers we say ``$\N$ is unique up to unique iso,'' but in the category $\Set$ there are many concrete bijective copies of $\N$ (von Neumann ordinals, Zermelo numerals, Church numerals, binary tries). The universal property guarantees a unique iso between any two such copies, but it does not select a particular set as ``the'' $\N$.  
                                                                                                                                                       ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 545: Non-breaking space (`~') should have been used.
Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:  
                  ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 545: Non-breaking space (`~') should have been used.
Lawvere's position \cite{Lawvere1966,Lawvere2003}, sharpened by Awodey \cite{Awodey1996,Awodey2014}, is that this is a \emph{feature, not a bug}:  
                                                                      ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 549: You should not use punctuation in front of quotes.
  \item Asking ``which $\N$ is the real one?'' commits a category mistake: one is reifying a label that the structure itself does not record.  
                                           ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 556: Non-breaking space (`~') should have been used.
The structuralist response is satisfying philosophically but leaves a gap: in classical mathematics, isomorphism and equality are distinct relations, and one must constantly remember to ``identify'' isomorphic objects via an explicit transport. HoTT's univalence axiom \cite{HoTTBook2013,Voevodsky2015} closes the gap: it asserts  
                                                                                                                                                                                                                                                                            ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 565: You should not use punctuation in front of quotes.
\subsection{The ``Which Iso?'' Question Resolved}  
                           ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 567: You should not use punctuation in front of quotes.
Even before univalence, the universal property already names a \emph{specific} isomorphism between any two NNOs: the one given by the universal mapping property applied to the second NNO viewed as a pointed dynamical system. This is what is meant by ``unique up to \emph{unique} iso.'' The deeper question is not just ``which iso?''~but ``is the iso itself unique and structurally determined?''~--- and the answer is yes. The universal property itself names a single, canonical isomorphism between any two NNOs, with no further choice required: there is no wobble, no ambiguity, no Aut$(N)$ acting non-trivially on the comparison.  
                                                                                                                                                                                                                                                                                          ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 567: You should not use punctuation in front of quotes.
Even before univalence, the universal property already names a \emph{specific} isomorphism between any two NNOs: the one given by the universal mapping property applied to the second NNO viewed as a pointed dynamical system. This is what is meant by ``unique up to \emph{unique} iso.'' The deeper question is not just ``which iso?''~but ``is the iso itself unique and structurally determined?''~--- and the answer is yes. The universal property itself names a single, canonical isomorphism between any two NNOs, with no further choice required: there is no wobble, no ambiguity, no Aut$(N)$ acting non-trivially on the comparison.  
                                                                                                                                                                                                                                                                                                                                         ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 567: You should not use punctuation in front of quotes.
Even before univalence, the universal property already names a \emph{specific} isomorphism between any two NNOs: the one given by the universal mapping property applied to the second NNO viewed as a pointed dynamical system. This is what is meant by ``unique up to \emph{unique} iso.'' The deeper question is not just ``which iso?''~but ``is the iso itself unique and structurally determined?''~--- and the answer is yes. The universal property itself names a single, canonical isomorphism between any two NNOs, with no further choice required: there is no wobble, no ambiguity, no Aut$(N)$ acting non-trivially on the comparison.  
                                                                                                                                                                                                                                                                                                                                                                                                       ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 605: Non-breaking space (`~') should have been used.
Equivalently, $\N$ is the initial object of $\PtEndo$. Specializing the adjunction \eqref{eq:adjunction-iso} to $A = \varnothing$ recovers the universal property of the NNO: the right-hand side $\Hom_{\Set}(\varnothing, X)$ is the singleton $\{!\}$ (the unique empty function), hence there is a unique morphism $h \colon \N \to X$ in $\PtEndo$, which is exactly Theorem~\ref{thm:nno-up}.  
                                                                                  ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 609: Non-breaking space (`~') should have been used.
Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.  
                                                                                                        ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 609: Non-breaking space (`~') should have been used.
Left adjoints preserve initial objects. The initial object of $\Set$ is $\varnothing$. By the adjunction \eqref{eq:adjunction-iso} at $A = \varnothing$, the hom-set $\Hom_{\PtEndo}(F(\varnothing), (X, x_0, f))$ is in natural bijection with the singleton $\Hom_{\Set}(\varnothing, X)$, so $F(\varnothing)$ is initial in $\PtEndo$. By Theorem~\ref{thm:nno-up} the NNO is also initial in $\PtEndo$, so by Lemma~\ref{lem:initial-rigid} there is a unique iso $F(\varnothing) \xrightarrow{\sim} (\N, 0, \suc)$, which is the content of \eqref{eq:F-empty}.  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 627: Non-breaking space (`~') should have been used.
By Theorem~\ref{thm:nno-yoneda}, the left-hand side of \eqref{eq:nno-rep} is, for every $(X, x_0, f)$, a singleton set; this is exactly $\Delta_1(X, x_0, f) = 1$. Naturality is automatic from $\Delta_1$ being constant.  
                                                      ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 635: Non-breaking space (`~') should have been used.
The NNO is the special case at $A = \varnothing$. So the same adjunction \eqref{eq:adjunction-iso} explains both initiality (representability of $\Delta_1$) and freeness on a single generator (representability of $U$), simply by varying the input set $A$.  
                                                                        ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 658: You should not use punctuation in front of quotes.
If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.  
                                    ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 658: You should not use punctuation in front of quotes.
If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.  
                                                                                                     ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 658: You should not use punctuation in front of quotes.
If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.  
                                                                                                                                                                ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 658: You should not use punctuation in front of quotes.
If Paper~02 said ``a number is a set,'' Paper~03 says ``a number is a position in a universal diagram.'' Paper~04 will say ``a number is a representable functor.'' Paper~05 will say ``a number is a term up to path equivalence.'' The Yoneda perspective is the next refinement, and it agrees with everything we have done.  
                                                                                                                                                                                                                                 ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 686: Non-breaking space (`~') should have been used.
The two equations of \texttt{nnoRec} are exactly the two equations \eqref{eq:rec-eqs}.  
                                                                  ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 790: You should not use punctuation in front of quotes.
The universal-property perspective is more parsimonious than the set-theoretic perspective in two ways. First, it does not require choosing an encoding. Second, it scales: ``define $X$'' becomes ``state the universal property of $X$,'' which automatically transfers across categories whenever the universal property is satisfiable.  
                                                                                                                                                                                                                                        ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 796: Non-breaking space (`~') should have been used.
\paragraph{Existence is not free.} The universal property of the NNO does not by itself guarantee that an NNO exists; one must verify it in the working category. ETCS adds existence as an axiom; topos theory verifies existence in many natural toposes \cite{Lawvere1964,MaclaneMoerdijk1992}.  
                                                                                                                                                                                                                                                          ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 804: Non-breaking space (`~') should have been used.
The recursion combinator $\mathrm{rec}$ from Theorem~\ref{thm:nno-up} is the primitive recursion combinator of G\"odel's System T. The catamorphism on $\mu F$ is the fold of functional programming. The anamorphism on $\nu F$ is the unfold. Hylomorphisms (compositions $\mathrm{cata} \circ \mathrm{ana}$) capture divide-and-conquer recursion schemes. These computational artifacts are not coincidentally analogous to the categorical concepts; they are exactly the categorical concepts viewed under the lens of the Curry--Howard--Lambek correspondence \cite{Wadler2015,Lambek1972}.  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 808: You should not use punctuation in front of quotes.
\paragraph{To Paper~01 (Naive level).} The universal property dissolves the naive question ``what \emph{is} the symbol 58?'' into the structural question ``what does 58 \emph{do} in any successor structure?''  
                                                                                                                         ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 808: You should not use punctuation in front of quotes.
\paragraph{To Paper~01 (Naive level).} The universal property dissolves the naive question ``what \emph{is} the symbol 58?'' into the structural question ``what does 58 \emph{do} in any successor structure?''  
                                                                                                                                                                                                             ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 814: You should not use punctuation in front of quotes.
\paragraph{To Paper~05 (HoTT).} HoTT internalizes the universal property in two ways: the inductive type \texttt{Nat} satisfies the NNO universal property by its elimination rule, and the univalence axiom upgrades ``up to unique iso'' to ``definitionally equal.''  
                                                                                                                                                                                                                                                                    ^
Warning 38 in papers/03-universal-property/latex/03-universal-property.tex line 816: You should not use punctuation in front of quotes.
\paragraph{To Paper~06 (Categorical/structural level).} The universal property is the formal vehicle for the structuralist thesis. ``$58$ is a structural invariant'' means precisely ``the universal property of $\N$ identifies a position $\suc^{58}(0)$ that is invariant across initial successor structures.''  
                                                                                                                                                                                                                                                                                                                 ^
Warning 2 in papers/03-universal-property/latex/03-universal-property.tex line 835: Non-breaking space (`~') should have been used.
We thank the YonedaAI Research collective and the Univalent Correspondence series collaboration for ongoing dialogue. The framing of the six-level ladder and the slogan ``58 as a position'' originate in the project knowledge base \cite{KnowledgeBase2026}.  
                                                                                                                                                                                                                                     ^

 succeeded in 594ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./03-universal-property.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/natbib/natbib.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(./03-universal-property.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/grfext/grfext.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./03-universal-property.out) (./03-universal-property.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./03-universal-property.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdf
tex/updmap/pdftex.map}] [2]) [3] [4] [5] [6] [7] [8]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 403.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 403.


Overfull \hbox (2.60304pt too wide) in paragraph at lines 407--408
[]\OT1/cmr/bx/n/12 Theorem 5.6 \OT1/cmr/m/n/12 (Uni-ver-sal cover of $\OML/cmm/
m/it/12 S[]$\OT1/cmr/m/n/12 )\OT1/cmr/bx/n/12 . []\OT1/cmr/m/it/12 The ex-po-ne
n-tial map $\OML/cmm/m/it/12 E [] [] \U/msb/m/n/12 R \OMS/cmsy/m/n/12 ! \OML/cm
m/m/it/12 S[]$\OT1/cmr/m/it/12 , $\OML/cmm/m/it/12 E\OT1/cmr/m/n/12 (\OML/cmm/m
/it/12 t\OT1/cmr/m/n/12 ) := ([] \OML/cmm/m/it/12 t; [] t\OT1/cmr/m/n/12 )$\OT1
/cmr/m/it/12 ,
[9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
(./03-universal-property.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb>
Output written on 03-universal-property.pdf (22 pages, 400201 bytes).
Transcript written on 03-universal-property.log.

--- warnings/errors summary ---
613:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
695:Package everypage Warning: Functionality similar to this package has recently
701:Package everypage Warning: You appear to be running a version of LaTeX
836:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
840:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
844:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
848:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
852:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
856:Overfull \hbox (2.60304pt too wide) in paragraph at lines 407--408

exec
/usr/local/bin/zsh -lc 'rm -rf /var/folders/6z/np99jwkj4ys5z6l5y0xpwdx80000gn/T/tmp.r0wKBKIf5E /tmp/ffm_p03_pdflatex3.out' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
codex
- Line 27/71: `everypage` is legacy and emits compatibility warnings. Replace `\usepackage{everypage}`/`\AddEverypageHook` with LaTeX’s built-in `\AddToHook{shipout/foreground}{...}`.
- Line 30: `natbib` is loaded after `hyperref`/`cleveref`, which is fragile. Move `\usepackage[numbers,sort&compress]{natbib}` before `hyperref`; keep `cleveref` after `hyperref`.
- Line 385: Math in subsection title causes `hyperref` PDF-string warnings. Use `\subsection{The Exponential and the Number \texorpdfstring{$e$}{e}}`.
- Line 403: Math in subsection title causes `hyperref` PDF-string warnings and drops `\pi` from bookmarks. Use `\subsection{The Circle and the Number \texorpdfstring{$\pi$}{pi}}`.
- Lines 407--408: Overfull `\hbox` in the theorem statement. Break/rephrase the long inline statement, or move the map/derivative data into displayed equations.
2026-05-04T01:42:53.119987Z ERROR codex_core::session: failed to record rollout items: thread 019df0a5-c7b3-7ac3-abca-85616e9e112b not found
tokens used
86,142
- Line 27/71: `everypage` is legacy and emits compatibility warnings. Replace `\usepackage{everypage}`/`\AddEverypageHook` with LaTeX’s built-in `\AddToHook{shipout/foreground}{...}`.
- Line 30: `natbib` is loaded after `hyperref`/`cleveref`, which is fragile. Move `\usepackage[numbers,sort&compress]{natbib}` before `hyperref`; keep `cleveref` after `hyperref`.
- Line 385: Math in subsection title causes `hyperref` PDF-string warnings. Use `\subsection{The Exponential and the Number \texorpdfstring{$e$}{e}}`.
- Line 403: Math in subsection title causes `hyperref` PDF-string warnings and drops `\pi` from bookmarks. Use `\subsection{The Circle and the Number \texorpdfstring{$\pi$}{pi}}`.
- Lines 407--408: Overfull `\hbox` in the theorem statement. Break/rephrase the long inline statement, or move the map/derivative data into displayed equations.
