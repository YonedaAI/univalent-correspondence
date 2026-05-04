---
reviewer: codex (OpenAI)
type: formatting
paper: 05-hott
date: 2026-05-04T01:35:50Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
model: gpt-5.5
provider: openai
approval: never
sandbox: read-only
reasoning effort: high
reasoning summaries: none
session id: 019df0a0-9a1e-7c40-820c-b923369ae9c0
--------
user
Review the LaTeX paper at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes.
codex
I’ll inspect the paper and its local build context first, then try a non-invasive compile with outputs directed outside the repo so the review is based on actual LaTeX diagnostics where possible.
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '1,240p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	\usetikzlibrary{decorations.markings, arrows.meta, positioning}
    10	
    11	% References
    12	\usepackage{hyperref}
    13	\usepackage{cleveref}
    14	
    15	% Graphics
    16	\usepackage{graphicx}
    17	
    18	% Page layout
    19	\usepackage[margin=1in]{geometry}
    20	
    21	% GrokRxiv sidebar
    22	\usepackage{everypage}
    23	\usepackage{xcolor}
    24	
    25	% Listings for code blocks
    26	\usepackage{listings}
    27	\lstset{
    28	  basicstyle=\ttfamily\footnotesize,
    29	  columns=fullflexible,
    30	  breaklines=true,
    31	  showstringspaces=false,
    32	  frame=single,
    33	  framerule=0.4pt,
    34	  rulecolor=\color{black!40},
    35	  xleftmargin=0pt,
    36	  xrightmargin=0pt
    37	}
    38	
    39	% Theorem environments
    40	\newtheorem{theorem}{Theorem}[section]
    41	\newtheorem{proposition}[theorem]{Proposition}
    42	\newtheorem{lemma}[theorem]{Lemma}
    43	\newtheorem{corollary}[theorem]{Corollary}
    44	\theoremstyle{definition}
    45	\newtheorem{definition}[theorem]{Definition}
    46	\newtheorem{example}[theorem]{Example}
    47	\theoremstyle{remark}
    48	\newtheorem{remark}[theorem]{Remark}
    49	
    50	% Common HoTT macros
    51	\newcommand{\Type}{\mathsf{Type}}
    52	\newcommand{\U}{\mathcal{U}}
    53	\newcommand{\N}{\mathbb{N}}
    54	\newcommand{\R}{\mathbb{R}}
    55	\newcommand{\Z}{\mathbb{Z}}
    56	\newcommand{\Q}{\mathbb{Q}}
    57	\newcommand{\Id}{\mathsf{Id}}
    58	\newcommand{\refl}{\mathsf{refl}}
    59	\newcommand{\zero}{\mathsf{zero}}
    60	\newcommand{\suc}{\mathsf{succ}}
    61	\newcommand{\transport}{\mathsf{transport}}
    62	\newcommand{\ua}{\mathsf{ua}}
    63	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    64	% Type equivalence (\simeq) is kept as its own symbol; we provide a
    65	% mnemonic alias \eqv that resolves to \simeq. The standard \equiv (triple
    66	% bar) is reserved for judgmental / definitional equality and is NOT
    67	% redefined.
    68	\newcommand{\eqv}{\simeq}
    69	\newcommand{\fst}{\mathsf{fst}}
    70	\newcommand{\snd}{\mathsf{snd}}
    71	\newcommand{\inl}{\mathsf{inl}}
    72	\newcommand{\inr}{\mathsf{inr}}
    73	\newcommand{\Path}{\mathsf{Path}}
    74	% \looppath is a TeX primitive; use \looppathpath instead.
    75	\newcommand{\looppathpath}{\mathsf{loop}}
    76	\newcommand{\base}{\mathsf{base}}
    77	\newcommand{\Sone}{S^1}
    78	\newcommand{\op}{\mathrm{op}}
    79	\newcommand{\isContr}{\mathsf{isContr}}
    80	\newcommand{\isProp}{\mathsf{isProp}}
    81	\newcommand{\isSet}{\mathsf{isSet}}
    82	
    83	% GrokRxiv sidebar configuration
    84	\definecolor{grokgray}{RGB}{110,110,110}
    85	\AddEverypageHook{%
    86	  \ifnum\value{page}=1
    87	    \begin{tikzpicture}[remember picture, overlay]
    88	      \node[
    89	        rotate=90,
    90	        anchor=south,
    91	        font=\Large\sffamily\bfseries\color{grokgray},
    92	        inner sep=0pt
    93	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    94	      {GrokRxiv:2026.05.hott-perspective\quad
    95	       [\,math.LO\,]\quad
    96	       03 May 2026};
    97	    \end{tikzpicture}
    98	  \fi
    99	}
   100	
   101	\title{The HoTT Perspective\\
   102	\large Numbers as Inductive Types up to Path Equivalence}
   103	\author{YonedaAI Research \\
   104	\textit{Univalent Correspondence Project} \\
   105	\textit{Magneton Foundational Studies}}
   106	\date{3 May 2026}
   107	
   108	\begin{document}
   109	\maketitle
   110	
   111	\begin{abstract}
   112	We give a self-contained development of \emph{Homotopy Type Theory} (HoTT) as
   113	the synthetic language in which natural numbers, real numbers, and the
   114	transcendentals $\pi$ and $e$ admit an encoding-free description. The natural
   115	numbers are the inductive type $\N$ generated by $\zero : \N$ and
   116	$\suc : \N \to \N$; the integer $58$ is the canonical term
   117	$\suc^{58}\,\zero$. Identity types $a =_A b$ are the central novelty: rather
   118	than mere propositions, they carry the homotopical content of \emph{path
   119	spaces}. We develop path induction, transport, and coherence, then state
   120	Voevodsky's univalence axiom $(A = B) \eqv (A \eqv B)$ and prove its
   121	fundamental consequence: the type $\sum_{X : \U}(X \eqv \N)$ of
   122	``structures equivalent to $\N$'' is contractible, so every natural number
   123	object is canonically equal as a type. We treat higher inductive types,
   124	illustrated by the circle $S^1$ with $\pi_1(S^1) = \Z$, and Booij's
   125	higher inductive--inductive construction of the Cauchy reals as an h-set,
   126	inside which $\pi$ and $e$ are defined as the centres of contractible types
   127	of solutions to characteristic structural conditions, formalising
   128	``unique existence.'' Cubical type theory
   129	(Cohen--Coquand--Huber--M\"ortberg) makes univalence computational, while
   130	two-level, modal, and directed HoTT (Riehl--Shulman) extend the framework to
   131	synthetic $(\infty, 1)$-category theory. We close by identifying HoTT as the
   132	internal language of $(\infty,1)$-toposes, making the categorical and
   133	structural views of arithmetic literally co-extensive. A companion Haskell
   134	implementation models paths, $\refl$, $\transport$, $\mathsf{sym}$ and
   135	$\mathsf{trans}$ at the type level via GADTs.
   136	\end{abstract}
   137	
   138	\tableofcontents
   139	
   140	\section{Introduction}
   141	\label{sec:intro}
   142	
   143	In the previous papers of this series we asked ``What is $58$?'' and answered
   144	it on four levels: as a numeral (Paper~01), as a von Neumann ordinal
   145	(Paper~02), as the value of a unique morphism out of a Natural Number Object
   146	(Paper~03), and as the representable presheaf $\mathrm{Hom}(-, 58)$
   147	(Paper~04). Each refinement traded ontological substance for relational
   148	structure. The question that survives Paper~04 is whether the categorical
   149	viewpoint is \emph{itself} an encoding -- whether ``58 as the representable
   150	$\mathrm{Hom}(-,58)$'' replaces one substantialist commitment with another.
   151	
   152	Homotopy type theory answers ``no'' constructively. In HoTT every type is
   153	already identified up to equivalence \emph{by axiom}, so the question
   154	``which set, presheaf, or initial object is the real $\N$?'' is dissolved
   155	into the slogan
   156	\begin{quote}
   157	\centering
   158	\emph{equivalent things are equal.}
   159	\end{quote}
   160	Two natural number objects, two presentations of the reals, two $K(G,1)$'s
   161	for the same group are not merely isomorphic up to a chosen comparison map
   162	-- they are paths in the universe.
   163	
   164	This paper develops the perspective in detail. We restrict ourselves to the
   165	\emph{Book HoTT} of \cite{HoTTBook} except where noted, and present the
   166	material in standard Martin-L\"of style with one universe $\U$ for clarity;
   167	the ramified hierarchy $\U_0 : \U_1 : \U_2 : \cdots$ is needed for
   168	foundational coherence but plays no role in the arithmetic content.
   169	
   170	\subsection{Roadmap}
   171	
   172	Section~\ref{sec:framework} fixes notation for dependent type theory.
   173	Section~\ref{sec:nat} defines $\N$ as an inductive type and recovers
   174	primitive recursion. Section~\ref{sec:identity} introduces identity types,
   175	$J$, transport, and the path groupoid. Section~\ref{sec:univalence} states
   176	the univalence axiom and proves the contractibility of the space of
   177	NNO-equivalents. Section~\ref{sec:hits} treats higher inductive types: the
   178	circle, $\pi_1(S^1) = \Z$, propositional truncation, the Cauchy reals.
   179	Section~\ref{sec:cubical} sketches cubical type theory.
   180	Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT.
   181	Section~\ref{sec:transcendentals} places $\pi$ and $e$ inside the Cauchy
   182	reals. Section~\ref{sec:bridge} identifies HoTT as the internal language of
   183	$(\infty,1)$-toposes. Section~\ref{sec:results}--\ref{sec:conclusion} record
   184	the principal results and discuss limitations.
   185	
   186	\subsection{Notational conventions}
   187	\label{sec:conventions}
   188	
   189	We write $a : A$ for ``$a$ is a term of type $A$,'' $f : A \to B$ for the
   190	type of (non-dependent) functions, $\prod_{x:A} B(x)$ for the dependent
   191	product (``$\Pi$-type''), and $\sum_{x:A} B(x)$ for the dependent sum
   192	(``$\Sigma$-type''). The identity type of $a, b : A$ is written
   193	$a =_A b$ or $\Id_A(a, b)$. The constant path is $\refl_a : a =_A a$.
   194	Equivalence is $A \eqv B$. We use $\U$ for ``the'' universe. We deliberately
   195	distinguish three kinds of ``equality'':
   196	\begin{itemize}
   197	\item the judgmental / definitional equality (a meta-level notion), written
   198	  $a \equiv b$, used in computation rules;
   199	\item the propositional / identity-type equality, written $a = b$, an
   200	  inhabitant of the type $\Id_A(a, b)$;
   201	\item type equivalence, written $A \eqv B$, an inhabitant of
   202	  $\sum_{f : A \to B} \mathsf{isEquiv}(f)$.
   203	\end{itemize}
   204	Univalence asserts that the canonical map relating the second and third (at
   205	the universe level) is itself an equivalence.
   206	
   207	\section{Mathematical Framework}
   208	\label{sec:framework}
   209	
   210	We assume Martin-L\"of's intensional dependent type theory MLTT$_\omega$ as
   211	the substrate \cite{MartinLof84}. The pertinent rules are summarized below
   212	informally; for the formal calculus see \cite[Appendix~A]{HoTTBook}.
   213	
   214	\subsection{Dependent products and sums}
   215	
   216	For a type family $B : A \to \U$, the $\Pi$-type $\prod_{x : A} B(x)$ has
   217	introduction by $\lambda$-abstraction and elimination by application.
   218	The $\Sigma$-type $\sum_{x : A} B(x)$ has introduction $(a, b)$ for
   219	$a : A, b : B(a)$ and elimination by projections $\fst$ and $\snd$ together
   220	with a dependent eliminator $\mathsf{ind}_\Sigma$.
   221	
   222	\begin{definition}[Function type]
   223	\label{def:fn}
   224	$A \to B$ abbreviates $\prod_{x : A} B$ when $B$ does not depend on $x$.
   225	\end{definition}
   226	
   227	\begin{definition}[Cartesian product]
   228	\label{def:prod}
   229	$A \times B$ abbreviates $\sum_{x : A} B$ when $B$ does not depend on $x$.
   230	\end{definition}
   231	
   232	\subsection{The unit, empty, and sum types}
   233	
   234	The unit type $\mathbf{1}$ has a single constructor $\star : \mathbf{1}$ and
   235	the eliminator ``everything depending on $\mathbf{1}$ is determined by its
   236	value at $\star$.'' The empty type $\mathbf{0}$ has no constructors and the
   237	eliminator $\mathsf{ind}_{\mathbf{0}} : \prod_{C : \mathbf{0} \to \U}
   238	\prod_{z : \mathbf{0}} C(z)$ (ex falso). The sum type $A + B$ has
   239	$\inl : A \to A + B$ and $\inr : B \to A + B$.
   240	

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
reviews/04-yoneda-review-round-2.md
reviews/04-yoneda-review-round-1.md
sources/context.txt
papers/05-hott/reviews/05-hott-review-round-1.md
papers/05-hott/reviews/05-hott-review-round-2.md
papers/05-hott/reviews/05-hott-codex-review.md
papers/05-hott/reviews/05-hott-review.md
papers/05-hott/latex/05-hott.tex
papers/04-yoneda/04-yoneda.tex
papers/04-yoneda/04-yoneda.pdf
papers/06-categorical-structural/reviews/06-categorical-structural-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-codex-review.md
papers/06-categorical-structural/reviews/06-categorical-structural-review-round-1.md
papers/06-categorical-structural/latex/06-categorical-structural.tex
papers/06-categorical-structural/latex/06-categorical-structural.pdf
papers/03-universal-property/reviews/03-universal-property-review-round-2.md
papers/03-universal-property/reviews/03-universal-property-review-round-3.md
papers/03-universal-property/reviews/03-universal-property-review-round-1.md
papers/03-universal-property/latex/03-universal-property.tex
papers/01-naive/pdf/01-naive.pdf
papers/01-naive/reviews/01-naive-review.md
papers/01-naive/latex/01-naive.tex
papers/01-naive/reviews/01-naive-review-round-1.md
papers/01-naive/reviews/01-naive-codex-review.md
papers/01-naive/images/01-naive.png
papers/02-set-theoretic/latex/02-set-theoretic.tex

codex
The preamble is conventional and already includes the main math, graphics, theorem, and reference packages. I’m reading the rest now and will cross-check labels/citations before trusting any compile output.
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '241,520p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   241	\subsection{Universes and Russell vs.\ Tarski}
   242	\label{sec:universes}
   243	
   244	We adopt \emph{Russell-style} universes: $\U_0 : \U_1 : \cdots$ with
   245	$\U_i \subset \U_{i+1}$ and a term of $\U$ is itself a type. All ``$\U$''s
   246	in this paper denote a generic universe; statements are true at every level.
   247	
   248	\section{Natural Numbers as an Inductive Type}
   249	\label{sec:nat}
   250	
   251	\subsection{The inductive definition}
   252	
   253	\begin{definition}[Natural numbers]
   254	\label{def:nat}
   255	The type $\N : \U$ is generated by the formation rule $\N : \U$ and the two
   256	constructors
   257	\begin{align*}
   258	\zero &: \N, \\
   259	\suc &: \N \to \N.
   260	\end{align*}
   261	The dependent eliminator (\emph{induction principle}) is
   262	\[
   263	\mathsf{ind}_\N : \prod_{P : \N \to \U}\;
   264	P(\zero) \to
   265	\Bigl(\prod_{n : \N} P(n) \to P(\suc\,n)\Bigr) \to
   266	\prod_{n : \N} P(n).
   267	\]
   268	The computation rules are
   269	$\mathsf{ind}_\N\,P\,c_0\,c_s\,\zero \equiv c_0$ and
   270	$\mathsf{ind}_\N\,P\,c_0\,c_s\,(\suc\,n) \equiv
   271	c_s\,n\,(\mathsf{ind}_\N\,P\,c_0\,c_s\,n)$.
   272	\end{definition}
   273	
   274	\begin{definition}[Numerals]
   275	\label{def:numerals}
   276	Define $\overline{n} : \N$ recursively by $\overline{0} := \zero$ and
   277	$\overline{n+1} := \suc\,\overline{n}$. In particular,
   278	\[
   279	\overline{58} = \suc(\suc(\suc(\cdots(\suc\,\zero)\cdots)))
   280	\quad\text{(58 applications of \(\suc\)).}
   281	\]
   282	\end{definition}
   283	
   284	\subsection{Recursion and arithmetic}
   285	
   286	The non-dependent recursor $\mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C$
   287	is the special case where $P(n) := C$ for all $n$.
   288	
   289	\begin{example}[Addition]
   290	\label{ex:add}
   291	Define $+ : \N \to \N \to \N$ by
   292	$m + n := \mathsf{rec}_\N\,\N\,n\,(\lambda k.\,\suc)\,m$, equivalently by
   293	$\zero + n \equiv n$ and $(\suc\,m) + n \equiv \suc(m + n)$. Multiplication
   294	and exponentiation are defined analogously.
   295	\end{example}
   296	
   297	\begin{proposition}[NNO universal property, internal]
   298	\label{prop:nno}
   299	For any type $C : \U$, point $c_0 : C$, and endo-map $f : C \to C$, there is
   300	a unique $h : \N \to C$ with $h(\zero) = c_0$ and
   301	$h(\suc\,n) = f(h\,n)$ for all $n : \N$.
   302	\end{proposition}
   303	
   304	\begin{proof}
   305	Existence: $h := \mathsf{rec}_\N\,C\,c_0\,(\lambda n.\,f)$. Uniqueness:
   306	suppose $h' : \N \to C$ also satisfies the equations. Define the
   307	predicate $P(n) := (h\,n =_C h'\,n)$.
   308	
   309	\emph{Base case.} The recursor's computation rule gives the
   310	\emph{definitional} (judgmental) equalities $h(\zero) \equiv c_0$ and
   311	$h'(\zero) \equiv c_0$, so $P(\zero)$ is inhabited by $\refl_{c_0}$ --
   312	no propositional equality reasoning is needed.
   313	
   314	\emph{Inductive step.} Assume $P(n)$, i.e.\ $q : h\,n = h'\,n$. The
   315	computation rules give $h(\suc\,n) \equiv f(h\,n)$ and
   316	$h'(\suc\,n) \equiv f(h'\,n)$ judgmentally; applying the action on paths
   317	$\mathsf{ap}_f : (a = b) \to (f\,a = f\,b)$ yields
   318	$\mathsf{ap}_f(q) : f(h\,n) = f(h'\,n)$, i.e.\ $h(\suc\,n) = h'(\suc\,n)$.
   319	Apply $\mathsf{ind}_\N$ to conclude $\prod_{n : \N} P(n)$. Function
   320	extensionality (\Cref{thm:funext}) then gives $h = h'$.
   321	\end{proof}
   322	
   323	\subsection{$\N$ in HoTT vs.\ $\N$ in set theory}
   324	\label{sec:nat-vs-set}
   325	
   326	\begin{remark}
   327	\label{rem:benacerraf}
   328	Proposition~\ref{prop:nno} renders Benacerraf's identification problem moot
   329	\emph{within} the type theory: $\N$ is determined up to canonical bijection
   330	by its formation and elimination rules. Combined with univalence
   331	(\Cref{sec:univalence}) it is determined up to canonical \emph{equality} as a
   332	term of $\U$.
   333	\end{remark}
   334	
   335	\section{Identity Types and Path Induction}
   336	\label{sec:identity}
   337	
   338	\subsection{The identity type}
   339	
   340	\begin{definition}[Identity type]
   341	\label{def:id}
   342	For each type $A : \U$ and elements $a, b : A$ there is a type
   343	$a =_A b$, called the \emph{identity type} or \emph{path space}. It is the
   344	inductive family generated by the single constructor
   345	$\refl_a : a =_A a$ for each $a : A$.
   346	\end{definition}
   347	
   348	The eliminator -- often called \emph{path induction} or the \emph{$J$-rule}
   349	-- says that to prove a property of all paths it suffices to prove it of the
   350	constant paths.
   351	
   352	\begin{proposition}[Path induction, $J$]
   353	\label{prop:J}
   354	For every type $A : \U$ and family
   355	$C : \prod_{x, y : A} (x =_A y) \to \U$, given a section
   356	$d : \prod_{x : A} C(x, x, \refl_x)$, there is a section
   357	\[
   358	J(C, d) : \prod_{x, y : A} \prod_{p : x =_A y} C(x, y, p),
   359	\]
   360	satisfying the computation rule $J(C, d, x, x, \refl_x) \equiv d(x)$.
   361	\end{proposition}
   362	
   363	\begin{remark}
   364	\label{rem:J-vs-K}
   365	$J$ is \emph{not} the principle ``every path is $\refl$.'' That stronger
   366	statement is Streicher's $K$-axiom and is incompatible with univalence: it
   367	forces every type to be a set. HoTT keeps $J$ but rejects $K$.
   368	\end{remark}
   369	
   370	\subsection{Symmetry, transitivity, and the path groupoid}
   371	
   372	\begin{lemma}[Symmetry]
   373	\label{lem:sym}
   374	There is a function
   375	$\mathsf{sym} : \prod_{A : \U}\prod_{x, y : A} (x =_A y) \to (y =_A x)$.
   376	\end{lemma}
   377	
   378	\begin{proof}
   379	Take $C(x, y, p) := (y =_A x)$ and $d(x) := \refl_x$, then apply $J$.
   380	\end{proof}
   381	
   382	\begin{lemma}[Transitivity]
   383	\label{lem:trans}
   384	There is a function $\mathsf{trans} : \prod_{A : \U}\prod_{x, y, z : A}
   385	(x =_A y) \to (y =_A z) \to (x =_A z)$.
   386	\end{lemma}
   387	
   388	\begin{proof}
   389	Fix $A, x, y, z$ and $p : x = y$. By $J$ on $p$ it suffices to assume
   390	$y \equiv x$ and $p \equiv \refl_x$, in which case
   391	$\mathsf{trans}(\refl_x, q) := q$ is a section.
   392	\end{proof}
   393	
   394	We write $p^{-1}$ for $\mathsf{sym}(p)$ and $p \cdot q$ for
   395	$\mathsf{trans}(p, q)$.
   396	
   397	\begin{theorem}[Path groupoid]
   398	\label{thm:groupoid}
   399	For any type $A$ and $a, b, c, d : A$, $p : a = b$, $q : b = c$, $r : c = d$:
   400	\begin{enumerate}
   401	\item $\refl_a \cdot p = p$ and $p \cdot \refl_b = p$;
   402	\item $p \cdot p^{-1} = \refl_a$ and $p^{-1} \cdot p = \refl_b$;
   403	\item $(p \cdot q) \cdot r = p \cdot (q \cdot r)$.
   404	\end{enumerate}
   405	Moreover the higher coherences (the pentagon, the Eckmann--Hilton
   406	argument, etc.) all hold up to higher paths, making $A$ into an
   407	$\infty$-groupoid \cite{LumsdaineGroupoid, vandenBergGarner}.
   408	\end{theorem}
   409	
   410	\begin{proof}[Proof sketch]
   411	Each clause is proved by $J$ on the relevant paths. For the higher coherences
   412	one iterates $J$ at successively higher levels; see
   413	\cite[\S2.1]{HoTTBook}.
   414	\end{proof}
   415	
   416	\subsection{Transport}
   417	
   418	\begin{definition}[Transport]
   419	\label{def:transport}
   420	For $P : A \to \U$, $a, b : A$, and $p : a = b$, the function
   421	$\transport^P(p) : P(a) \to P(b)$ is defined by $J$:
   422	$\transport^P(\refl_a)(u) := u$.
   423	\end{definition}
   424	
   425	\begin{proposition}[Transport along concatenation]
   426	\label{prop:trans-concat}
   427	$\transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p)$.
   428	\end{proposition}
   429	
   430	\begin{proof}
   431	$J$ on either $p$ or $q$.
   432	\end{proof}
   433	
   434	\subsection{Homotopy levels}
   435	
   436	\begin{definition}[Contractibility, propositions, sets]
   437	\label{def:hlevel}
   438	A type $A : \U$ is
   439	\begin{itemize}
   440	\item \emph{contractible}, $\isContr(A) := \sum_{c : A} \prod_{x : A} (x = c)$;
   441	\item a \emph{mere proposition}, $\isProp(A) := \prod_{x, y : A} (x = y)$;
   442	\item a \emph{set} (h-set), $\isSet(A) := \prod_{x, y : A} \isProp(x = y)$.
   443	\end{itemize}
   444	The hierarchy continues: $A$ is an $n$-type iff every identity type of $A$
   445	is an $(n-1)$-type.
   446	\end{definition}
   447	
   448	\begin{theorem}[Hedberg]
   449	\label{thm:hedberg}
   450	If $A$ has decidable equality $\prod_{x, y : A} (x = y) + \neg(x = y)$, then
   451	$A$ is a set.
   452	\end{theorem}
   453	
   454	\begin{corollary}
   455	\label{cor:N-set}
   456	$\N$ is a set.
   457	\end{corollary}
   458	
   459	\begin{proof}
   460	Equality on $\N$ is decidable by induction on both arguments and Peano's
   461	fourth axiom $\suc\,m = \suc\,n \Rightarrow m = n$. Apply Hedberg.
   462	\end{proof}
   463	
   464	\section{The Univalence Axiom}
   465	\label{sec:univalence}
   466	
   467	\subsection{Equivalence of types}
   468	
   469	\begin{definition}[Quasi-inverse and equivalence]
   470	\label{def:equiv}
   471	A function $f : A \to B$ has a \emph{quasi-inverse} if there exist
   472	$g : B \to A$ and homotopies $\eta : g \circ f \sim \mathrm{id}_A$ and
   473	$\varepsilon : f \circ g \sim \mathrm{id}_B$. The proposition
   474	$\mathsf{isEquiv}(f)$ is the half-adjoint version
   475	\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
   476	proposition. We write $A \eqv B := \sum_{f : A \to B} \mathsf{isEquiv}(f)$.
   477	\end{definition}
   478	
   479	\begin{proposition}[idtoeqv]
   480	\label{prop:idtoeqv}
   481	There is a canonical map
   482	$\idtoeqv : (A =_\U B) \to (A \eqv B)$ taking $\refl_A$ to the identity
   483	equivalence.
   484	\end{proposition}
   485	
   486	\begin{proof}
   487	$J$ on the path $A = B$.
   488	\end{proof}
   489	
   490	\subsection{The axiom}
   491	
   492	\begin{theorem}[Voevodsky's univalence axiom]
   493	\label{thm:univalence}
   494	For all types $A, B : \U$, the canonical map $\idtoeqv$ is itself an
   495	equivalence:
   496	\[
   497	\ua : (A \eqv B) \to (A =_\U B), \qquad
   498	\idtoeqv \circ \ua = \mathrm{id}_{A \eqv B}, \qquad
   499	\ua \circ \idtoeqv = \mathrm{id}_{A =_\U B}.
   500	\]
   501	\end{theorem}
   502	
   503	In Book HoTT this is taken as an axiom; in cubical type theory
   504	(\Cref{sec:cubical}) it is a theorem.
   505	
   506	\subsection{Consequences for arithmetic}
   507	
   508	\begin{definition}[Type of NNOs]
   509	\label{def:nno-type}
   510	Define
   511	\[
   512	\mathrm{NNO} := \sum_{X : \U}\;\sum_{x_0 : X}\;\sum_{s : X \to X}\;
   513	\mathsf{isInitial}(X, x_0, s),
   514	\]
   515	where $\mathsf{isInitial}(X, x_0, s)$ is the universal property of
   516	\Cref{prop:nno} expressed as a $\Sigma$-type.
   517	\end{definition}
   518	
   519	\begin{theorem}[Contractibility of NNO]
   520	\label{thm:nno-contractible}

exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '521,860p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   521	$\mathrm{NNO}$ is contractible.
   522	\end{theorem}
   523	
   524	\begin{proof}
   525	We exhibit $(\N, \zero, \suc, \mathsf{init}_\N)$ as the centre and supply
   526	a proof that every other quadruple is equal to it.
   527	
   528	\emph{Step 1. Equivalence at the carrier.}
   529	By \Cref{prop:nno} the standard structure $(\N, \zero, \suc)$ is initial.
   530	For any other initial $(X, x_0, s)$, the universal property applied in
   531	both directions yields mutually inverse maps $f : \N \to X$ and
   532	$g : X \to \N$ with $g \circ f = \mathrm{id}_\N$ and
   533	$f \circ g = \mathrm{id}_X$ (each by uniqueness of the universal
   534	recursor). Half-adjointness packages this as an equivalence
   535	$e : \N \eqv X$. Univalence (\Cref{thm:univalence}) promotes this to a
   536	path $p := \ua(e) : \N =_\U X$.
   537	
   538	\emph{Step 2. Paths in $\Sigma$-types.}
   539	Recall that a path in $\sum_{a : A} B(a)$ between $(a, b)$ and
   540	$(a', b')$ is, up to canonical isomorphism, a pair $(p, q)$ where
   541	$p : a =_A a'$ and $q : \transport^B(p)(b) =_{B(a')} b'$
   542	\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
   543	$\Sigma$-tuples
   544	$(a_1, a_2, \ldots, a_n)$ and $(a_1', a_2', \ldots, a_n')$ is a tuple of
   545	paths $(p_1, p_2, \ldots, p_n)$ where $p_k$ lives \emph{over} the
   546	preceding $p_1, \ldots, p_{k-1}$.
   547	
   548	\emph{Step 3. Constructing the path componentwise.}
   549	We must produce paths $(p, p_0, p_s, p_*)$ where:
   550	\begin{enumerate}
   551	\item $p : \N =_\U X$ is the carrier path from Step~1.
   552	\item $p_0 : \transport^{(X \mapsto X)}(p)(\zero) =_X x_0$. Because
   553	$\ua(e)$ transports along the equivalence $e$, the left-hand side
   554	reduces to $e(\zero)$, and the universal property of $\N$ forces
   555	$e(\zero) = x_0$ (the unique map $\N \to X$ sends $\zero$ to $x_0$),
   556	giving the required path.
   557	\item $p_s : \transport^{(X \mapsto X \to X)}(p)(\suc) = s$.
   558	The type family $X \mapsto X \to X$ has transport given by conjugation
   559	by $e$, so the left-hand side reduces to $e \circ \suc \circ e^{-1}$.
   560	Naturality of the universal recursor yields $e \circ \suc = s \circ e$,
   561	whence $e \circ \suc \circ e^{-1} = s$, supplying $p_s$.
   562	\item $p_*$: the initiality witness $\mathsf{isInitial}$ is a mere
   563	proposition (uniqueness of the universal recursor is a Pi-type into a
   564	contractible identity type), so any two initiality proofs are
   565	identified by a unique path.
   566	\end{enumerate}
   567	
   568	\emph{Step 4. Conclusion.}
   569	Bundling $(p, p_0, p_s, p_*)$ via the iterated $\Sigma$-path
   570	constructor gives the required equality
   571	$(\N, \zero, \suc, \mathsf{init}_\N) =_{\mathrm{NNO}} (X, x_0, s, \cdot)$.
   572	Since $(X, x_0, s, \cdot)$ was arbitrary, $\mathrm{NNO}$ is contractible.
   573	The argument is the same shape as the contractibility of the type of
   574	``small structures-of-shape-$T$ on a fixed base'' once $T$ is replaced
   575	by the signature ``one constant and one unary operation''; see
   576	\cite[\S5.4 and \S2.7]{HoTTBook}.
   577	\end{proof}
   578	
   579	\begin{corollary}
   580	\label{cor:58-canonical}
   581	For any NNO $(X, x_0, s)$ the term $s^{58}\,x_0$ is, after transport along
   582	the canonical equality $\N = X$, equal to $\overline{58} : \N$.
   583	\end{corollary}
   584	
   585	\Cref{cor:58-canonical} is the formal expression of the slogan ``58 is
   586	canonical across all NNOs.''
   587	
   588	\subsection{Function extensionality}
   589	
   590	\begin{theorem}[Function extensionality from univalence]
   591	\label{thm:funext}
   592	If $f, g : \prod_{x : A} B(x)$ and there is a homotopy
   593	$h : \prod_{x : A} (f\,x = g\,x)$, then $f = g$.
   594	\end{theorem}
   595	
   596	\begin{proof}[Proof sketch]
   597	Voevodsky proved this by representing $\prod_{x : A} B(x)$ via a clever
   598	$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.
   599	\end{proof}
   600	
   601	\section{Higher Inductive Types}
   602	\label{sec:hits}
   603	
   604	A higher inductive type (HIT) extends inductive types with constructors for
   605	\emph{paths} as well as points.
   606	
   607	\subsection{The interval and propositional truncation}
   608	
   609	\begin{definition}[Interval]
   610	The type $I$ has constructors $0_I, 1_I : I$ and a path
   611	$\mathsf{seg} : 0_I = 1_I$.
   612	\end{definition}
   613	
   614	\begin{definition}[Propositional truncation]
   615	\label{def:trunc}
   616	$\|A\|$ has $|a| : \|A\|$ for $a : A$ and a path constructor
   617	$\prod_{x, y : \|A\|}(x = y)$. Its eliminator allows mapping $\|A\| \to P$
   618	when $P$ is a mere proposition.
   619	\end{definition}
   620	
   621	\subsection{The circle}
   622	
   623	\begin{definition}[Circle]
   624	\label{def:circle}
   625	$\Sone$ has constructors $\base : \Sone$ and a path
   626	$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
   627	$b : P(\base)$, and $\ell : \transport^P(\looppath)(b) = b$, there is
   628	$\mathsf{ind}_{\Sone}(P, b, \ell) : \prod_{x : \Sone} P(x)$, computing as
   629	$\mathsf{ind}_{\Sone}(P, b, \ell)(\base) \equiv b$ and a corresponding rule
   630	on $\looppath$.
   631	\end{definition}
   632	
   633	\begin{theorem}[Loop space of $S^1$]
   634	\label{thm:pi1}
   635	$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
   636	Indeed $(\base = \base) \eqv \Z$ as a type, before truncation.
   637	\end{theorem}
   638	
   639	\begin{proof}[Proof sketch]
   640	Define the universal cover
   641	$\mathsf{code} : \Sone \to \U$ by $\mathsf{code}(\base) := \Z$ and on
   642	$\looppath$ by univalence and the successor equivalence
   643	$\mathsf{succ} : \Z \eqv \Z$. Then
   644	$(\base = -) \sim \mathsf{code}$ by the encode--decode method
   645	(Licata--Shulman \cite{LicataShulman}); evaluating at $\base$ gives
   646	$(\base = \base) \eqv \Z$.
   647	\end{proof}
   648	
   649	\Cref{thm:pi1} is the first non-trivial theorem of \emph{synthetic homotopy
   650	theory}: a result of algebraic topology proved entirely inside type theory,
   651	without recourse to topological spaces, simplicial sets, or model
   652	categories.
   653	
   654	\subsection{Spheres, suspensions, and pushouts}
   655	
   656	The $n$-sphere $S^n$ is defined recursively as $\Sigma S^{n-1}$ where
   657	$\Sigma$ is the unreduced suspension HIT. The pushout of
   658	$f : C \to A$ and $g : C \to B$ has constructors for $A$, $B$, and a path
   659	identifying $f(c)$ and $g(c)$ for each $c : C$.
   660	
   661	\begin{theorem}[Hopf fibration, internal]
   662	\label{thm:hopf}
   663	There is a fibration $h : S^3 \to S^2$ with fibers $S^1$, definable as a
   664	HIT and characterized by the long exact sequence of homotopy groups; in
   665	particular $\pi_3(S^2) \eqv \Z$ via the Hopf invariant
   666	\cite[\S8.5]{HoTTBook}.
   667	\end{theorem}
   668	
   669	\subsection{Eilenberg--MacLane spaces}
   670	
   671	For each abelian group $G$ and $n \geq 1$ there is a HIT $K(G, n)$ with
   672	$\pi_n = G$ and $\pi_k = 0$ for $k \neq n$
   673	\cite{LicataFinster}. Synthetic cohomology
   674	$H^n(X; G) := \|X \to K(G, n)\|_0$ recovers ordinary singular cohomology
   675	when $X$ is a CW-complex.
   676	
   677	\subsection{Real numbers as a higher inductive--inductive type}
   678	\label{sec:reals}
   679	
   680	\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
   681	\label{thm:reals}
   682	There is a higher inductive--inductive type $\R_c$ presenting the
   683	\emph{Cauchy reals}: an h-set with constructors for rational injections
   684	$\mathsf{rat} : \Q \to \R_c$, a Cauchy-completion limit operation, and a
   685	path constructor identifying terms whose distance witnesses are below every
   686	positive rational. $\R_c$ has the universal property of the Cauchy
   687	completion of $\Q$ in the category of metric spaces internal to HoTT, and
   688	satisfies the axioms of an Archimedean ordered field.
   689	\end{theorem}
   690	
   691	The construction is \emph{higher} because of the path constructor and
   692	\emph{inductive--inductive} because the path constructor mentions a
   693	``closeness'' relation defined simultaneously with the carrier type.
   694	
   695	\section{Cubical Type Theory}
   696	\label{sec:cubical}
   697	
   698	The original presentation of HoTT takes univalence as an axiom, breaking
   699	canonicity: a closed term of $\N$ may be propositionally but not
   700	definitionally equal to a numeral. Cubical type theory restores
   701	canonicity.
   702	
   703	\subsection{Intervals and faces}
   704	
   705	\begin{definition}[Cube category]
   706	\label{def:cube}
   707	Cohen--Coquand--Huber--M\"ortberg \cite{CCHM} introduce a primitive
   708	interval object $\mathbb{I}$ generated by $0, 1 : \mathbb{I}$, the
   709	operations $\sqcup, \sqcap, \neg$ making $\mathbb{I}$ into a de Morgan
   710	algebra, and the algebra of \emph{face formulas} $\varphi$ over the
   711	generating equations $i = 0$, $i = 1$.
   712	\end{definition}
   713	
   714	A path $p : a =_A b$ is then a function $\mathbb{I} \to A$ with $p(0) = a$
   715	and $p(1) = b$ judgmentally. Path concatenation, inversion, and dependent
   716	elimination become explicit term operations on cubical sets, not derived
   717	from $J$.
   718	
   719	\subsection{Composition and Glue}
   720	
   721	The crucial operations are \emph{composition} (filling open boxes) and
   722	\emph{Glue} (gluing types along an equivalence). The Glue type
   723	$\mathsf{Glue}\,A\,[\varphi \mapsto (T, f)]$ where $f : T \eqv A$ on the
   724	face $\varphi$ supplies a constructive proof of univalence: every
   725	equivalence is realized as a path in $\U$.
   726	
   727	\begin{theorem}[Univalence in cubical type theory]
   728	\label{thm:cubical-univalence}
   729	Cubical type theory in the CCHM model proves $\ua$ as a defined term, and
   730	$\idtoeqv \circ \ua$ reduces to the identity by computation, not by
   731	postulate \cite{CCHM, CubicalAgda}.
   732	\end{theorem}
   733	
   734	\subsection{Implementations}
   735	
   736	The Cubical Agda mode \cite{CubicalAgda} and the
   737	\texttt{cubicaltt} prototype implement the system; the \texttt{redtt} and
   738	\texttt{cooltt} projects extend it with cartesian intervals and modalities.
   739	For our purposes the relevant fact is that all theorems of
   740	\Cref{sec:univalence,sec:hits} can be \emph{computed}, not just postulated.
   741	
   742	\section{Variants: 2LTT, Modal, and Directed HoTT}
   743	\label{sec:variants}
   744	
   745	\subsection{Two-level type theory}
   746	
   747	Two-level type theory (Annenkov--Capriotti--Kraus--Sattler \cite{2LTT})
   748	introduces a strict equality alongside the homotopical one. The strict
   749	fragment is used to formalize semantics (e.g.\ inverse diagrams of types
   750	representing semisimplicial types) that the homotopical fragment alone
   751	cannot encode without higher coherence. Strict equality is incompatible
   752	with univalence, so 2LTT carefully separates the two universes.
   753	
   754	\subsection{Modal HoTT}
   755	
   756	Modal type theory adds operators $\square, \diamondsuit$ corresponding to
   757	adjunctions in the categorical semantics. Examples include
   758	Schreiber--Shulman cohesive HoTT \cite{SchreiberShulman}, where the
   759	cohesion modalities recover the discrete--codiscrete--shape adjoint string
   760	$\mathrm{disc} \dashv \Pi \dashv \mathrm{codisc}$ for cohesive
   761	$(\infty,1)$-toposes, and the spatial type theory of Riley
   762	\cite{Riley}.
   763	
   764	\subsection{Directed HoTT}
   765	
   766	Directed type theory replaces invertible paths with possibly non-invertible
   767	\emph{morphisms}, so that types correspond to $(\infty, n)$-categories
   768	rather than $\infty$-groupoids. Riehl--Shulman \cite{RiehlShulman} develop
   769	\emph{simplicial type theory} with a primitive directed interval $\Delta^1$
   770	and prove a synthetic Yoneda lemma; directed univalence
   771	\cite{CisinskiNguyen} is an active research frontier.
   772	
   773	\section{Transcendentals in HoTT}
   774	\label{sec:transcendentals}
   775	
   776	We work inside $\R_c$ from \Cref{sec:reals}.
   777	
   778	\subsection{$\pi$ as the period of $\exp$ on $i\R$}
   779	
   780	\begin{definition}[Real exponential]
   781	The map $\exp : \R_c \to \R_c$ is defined as the unique solution to
   782	$y' = y, y(0) = 1$ in $\R_c$ -- equivalently, by the power series
   783	$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.
   784	\end{definition}
   785	
   786	\begin{definition}[Pi]
   787	\label{def:pi}
   788	Define $\sin : \R_c \to \R_c$ by the power series
   789	$\sum_{k=0}^\infty (-1)^k x^{2k+1}/(2k+1)!$. The unique-existence
   790	proposition
   791	\[
   792	\sum_{p : \R_c}\;\bigl(\sin(p) = 0\bigr) \times \bigl(p > 0\bigr) \times
   793	\bigl(\prod_{x : \R_c}\;0 < x < p \to \sin(x) > 0\bigr)
   794	\]
   795	is contractible. We define $\pi$ to be its centre.
   796	\end{definition}
   797	
   798	\begin{theorem}
   799	\label{thm:pi-trans}
   800	Lindemann's theorem ports to HoTT: $\pi$ is transcendental over $\Q$, in
   801	the sense that the type
   802	\[
   803	\sum_{p : \mathrm{Poly}(\Q)}\;\bigl(p \neq 0\bigr) \times
   804	\bigl(p(\pi) = 0\bigr)
   805	\]
   806	is empty (equivalent to $\mathbf{0}$).
   807	\end{theorem}
   808	
   809	\begin{proof}[Proof sketch]
   810	Lindemann's classical proof relies only on convergent power series,
   811	elementary symmetric functions, and bounding arguments -- all of which
   812	are available constructively in $\R_c$. The port is therefore believed
   813	to be possible based on the constructive character of the classical
   814	argument; however, to the authors' knowledge no end-to-end formalization
   815	in HoTT is yet complete. The presently available scaffolding includes:
   816	\begin{itemize}
   817	\item Cauchy completeness of $\R_c$, basic limits, the Archimedean
   818	property, and elementary calculus on $\R_c$ (Booij's thesis
   819	\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
   820	\item Convergence of power series and analytic functions in HoTT, plus
   821	algebraic manipulations of polynomial rings and symmetric functions
   822	(scaffolded in the agda-unimath project \cite{AgdaUnimath}).
   823	\end{itemize}
   824	The pieces still missing for an end-to-end formalization are: (i)~the
   825	Hermite--Lindemann auxiliary function $J(t) = \int_0^t e^{t - s}
   826	f(s)\,ds$ and its bounds in $\R_c$; (ii)~the algebraic-integer estimates
   827	that drive the contradiction; and (iii)~the integration with a finished
   828	formalization of the Cauchy integral over $\R_c$. We identify this as
   829	open work in \Cref{sec:conclusion}.
   830	\end{proof}
   831	
   832	\subsection{$e$ as the unique fixed point of $D$}
   833	
   834	\begin{definition}[Euler's number]
   835	\label{def:e}
   836	Let $\exp : \R_c \to \R_c$ be as above. Then $e := \exp(1)$. Equivalently,
   837	$e$ is the centre of the contractible type
   838	$\sum_{x : \R_c}\;\sum_{f : \R_c \to \R_c}\;
   839	(f' = f) \times (f(0) = 1) \times (x = f(1))$.
   840	\end{definition}
   841	
   842	\begin{theorem}[Hermite, ported]
   843	\label{thm:e-trans}
   844	$e$ is transcendental over $\Q$.
   845	\end{theorem}
   846	
   847	\subsection{Identification across encodings}
   848	
   849	\begin{theorem}[Reals are unique in HoTT up to equivalence]
   850	\label{thm:reals-unique}
   851	Any two h-sets satisfying the universal property of the Cauchy reals (or
   852	the Dedekind reals, modulo the law of excluded middle for the latter) are
   853	equivalent, hence equal as types by univalence. Consequently, $\pi$ and $e$
   854	are well-defined independently of the chosen construction.
   855	\end{theorem}
   856	
   857	\section{Bridge: HoTT as the Internal Language of $(\infty,1)$-Toposes}
   858	\label{sec:bridge}
   859	
   860	\subsection{Categorical semantics}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(label|ref|cref|cite|bibliography|bibitem)|TODO|FIXME|\\\\includegraphics|\\\\input|\\\\begin\\{(tikzcd|tikzpicture|lstlisting|equation|align|figure|table)\\}\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(label|ref|cref|cite|bibliography|bibitem)|TODO|FIXME|\includegraphics|\input|\begin\{(tikzcd|tikzpicture|lstlisting|equation|align|figure|table)\})
                                                              ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '861,1220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   861	
   862	\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
   863	\label{thm:aw}
   864	Identity types of intensional Martin-L\"of type theory are interpreted in
   865	weak factorisation systems; the model in simplicial sets exhibits the path
   866	groupoid as a Kan complex.
   867	\end{theorem}
   868	
   869	Voevodsky's simplicial set model \cite{KapulkinLumsdaine} establishes that
   870	HoTT with univalence has a sound interpretation in the
   871	$(\infty, 1)$-topos $\mathsf{sSet}$ of Kan complexes.
   872	
   873	\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
   874	\label{thm:shulman-it}
   875	Every $(\infty, 1)$-topos $\mathcal{E}$ admits a model of HoTT with
   876	univalence; conversely, the syntactic category of HoTT is conjecturally
   877	the initial $(\infty, 1)$-topos.
   878	\end{theorem}
   879	
   880	\subsection{Co-extensiveness with categorical and structural perspectives}
   881	
   882	The Yoneda embedding (Paper~04) and the categorical structuralism of
   883	Paper~06 have always been ``equivalent up to equivalence.'' Univalence
   884	makes them \emph{equal} -- equal as objects of $\U$, equal as theories
   885	under semantic interpretation, equal as derivations modulo a translation
   886	that is itself an equivalence.
   887	
   888	\begin{remark}[The univalent correspondence, formalized]
   889	The four-column correspondence
   890	\[
   891	\text{Logic} \;\longleftrightarrow\;
   892	\text{Type Theory} \;\longleftrightarrow\;
   893	\text{Category Theory} \;\longleftrightarrow\;
   894	\text{Homotopy}
   895	\]
   896	is, in HoTT, the statement that the four interpretations of the same term
   897	in $\U$ correspond to the same homotopy type. In particular, ``58 as a
   898	proposition'' (the inhabited type
   899	$\mathsf{Fin}_{59} \cap \mathsf{prime}^c$, etc.), ``58 as a term''
   900	($\overline{58} : \N$), ``58 as an object'' (the discrete object
   901	$58 \in \mathsf{Set}$), and ``58 as a space'' (the discrete homotopy type
   902	$\mathsf{B}\mathbf{1}^{58}$) are equal up to canonical paths.
   903	\end{remark}
   904	
   905	\section{Results}
   906	\label{sec:results}
   907	
   908	We collect the principal contributions of this paper.
   909	
   910	\begin{theorem}[Encoding-free arithmetic]
   911	\label{thm:main}
   912	In Book HoTT with univalence, the following are equivalent:
   913	\begin{enumerate}
   914	\item the inductive type $\N$ with $\zero, \suc$;
   915	\item the initial NNO in any model of HoTT with $\N$-types;
   916	\item the unique pointed endo-structure $X$ with $\mathsf{isInitial}(X, x_0, s)$;
   917	\item up to univalent equality, every other type satisfying any of (1)--(3).
   918	\end{enumerate}
   919	The witnesses to these equivalences are themselves canonical (paths in
   920	$\U$), so $58 := \overline{58}$ is independent of representation.
   921	\end{theorem}
   922	
   923	\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
   924	\label{thm:pi1-result}
   925	Within HoTT, $\pi_1(S^1) = \Z$ admits a fully formal proof
   926	\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
   927	uses no external topology, only the HIT $\Sone$ and univalence.
   928	\end{theorem}
   929	
   930	\begin{theorem}[Reals and transcendentals]
   931	\label{thm:reals-result}
   932	The Cauchy reals $\R_c$ form an h-set inside HoTT
   933	(\Cref{thm:reals}). The terms $\pi$ and $e$ are unique-existence centres of
   934	contractible types of solutions of structural conditions. Their classical
   935	properties (irrationality, transcendence) port mechanically.
   936	\end{theorem}
   937	
   938	\begin{theorem}[Bridge theorem]
   939	\label{thm:bridge-result}
   940	HoTT is sound and complete for $(\infty, 1)$-topos semantics
   941	\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
   942	(Paper~07), Yoneda (Paper~04), and HoTT (Paper~05) views of arithmetic are
   943	co-extensive: a statement provable in any one is provable in any other,
   944	modulo translation.
   945	\end{theorem}
   946	
   947	\section{Discussion}
   948	\label{sec:discussion}
   949	
   950	\subsection{What HoTT does not solve}
   951	
   952	HoTT is a foundation, not a panacea. The following remain open:
   953	
   954	\begin{itemize}
   955	\item \emph{Coherence beyond truncation level}: proving general coherence
   956	theorems for $(\infty, 1)$-categories \emph{inside} HoTT (rather than via
   957	2LTT) is non-trivial. The semisimplicial types problem
   958	\cite{SemisimplicialProblem} is the canonical example.
   959	\item \emph{Decidability and computation under axioms}: Book HoTT loses
   960	canonicity. Cubical type theory restores it but at the cost of a more
   961	intricate calculus.
   962	\item \emph{Set-theoretic strength}: HoTT with univalence has the
   963	proof-theoretic strength of ZFC + ``there exist many inaccessible
   964	cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical
   965	practice. Whether all of analytic number theory ports remains an open
   966	research front (Paper~07 surveys this).
   967	\end{itemize}
   968	
   969	\subsection{Philosophical reading}
   970	
   971	The shift from set theory to HoTT mirrors the shift from substantialism to
   972	structuralism. ``58 is a thing'' becomes ``58 is a position in a
   973	structure'' becomes ``58 is the equivalence class of all positions in
   974	isomorphic structures'' becomes (in HoTT) ``58 is a term whose identity is
   975	witnessed by paths.'' Univalence collapses the apparent distinction
   976	between the last two.
   977	
   978	\subsection{Pedagogical implications}
   979	
   980	Synthetic homotopy theory provides a path-from-paths approach to algebraic
   981	topology: $\pi_1(S^1) = \Z$ in twelve lines of Agda. This is not merely a
   982	streamlining; it indicates that homotopy is more primitive than topology
   983	in the sense that the latter can be dispensed with.
   984	
   985	\subsection{Computational realisation}
   986	
   987	The Haskell companion (\Cref{sec:haskell}) and the Agda fragments
   988	(\Cref{sec:agda-sketch}) demonstrate that path induction, transport, and
   989	the basic equational reasoning calculus can be \emph{simulated} at the
   990	type level in mainstream functional languages, even without full
   991	dependent types. This is a useful pedagogical bridge, not a replacement.
   992	
   993	\section{Companion Implementation}
   994	\label{sec:haskell}
   995	
   996	The companion Haskell library, available in the project's public source
   997	repository (\texttt{src/05-hott/} of the \emph{Univalent Correspondence}
   998	project), provides:
   999	\begin{itemize}
  1000	\item A GADT \texttt{Path a b} representing identity types with constructor
  1001	\texttt{Refl :: Path a a}.
  1002	\item Functions \texttt{sym}, \texttt{trans}, and \texttt{transport}
  1003	mirroring \Cref{lem:sym,lem:trans,def:transport}.
  1004	\item A type-level naturals module with peano-style \texttt{succ} and a
  1005	demonstration that 58 can be constructed and equal-typed.
  1006	\item A module sketching the circle as a HIT (necessarily approximated, as
  1007	Haskell lacks higher constructors) and the encode--decode method.
  1008	\item An Agda-style sketch in comments showing the analogous direct
  1009	type-theoretic syntax.
  1010	\end{itemize}
  1011	The \texttt{Main.hs} executable runs a small demonstration.
  1012	
  1013	\section{Agda Sketch}
  1014	\label{sec:agda-sketch}
  1015	
  1016	The most natural ambient language for HoTT is Agda or Cubical Agda. We
  1017	include here an Agda-flavoured sketch of the basic constructions; full
  1018	files for Cubical Agda live alongside the Haskell sources.
  1019	
  1020	\begin{lstlisting}
  1021	-- Agda-style (comments only; the actual Agda lives elsewhere):
  1022	--
  1023	-- data Nat : Set where
  1024	--   zero : Nat
  1025	--   succ : Nat -> Nat
  1026	--
  1027	-- _==_ : {A : Set} -> A -> A -> Set
  1028	-- a == b = Path a b
  1029	--
  1030	-- refl : {A : Set} {a : A} -> a == a
  1031	-- refl = Refl
  1032	--
  1033	-- sym : {A : Set} {a b : A} -> a == b -> b == a
  1034	-- sym Refl = Refl
  1035	--
  1036	-- trans : {A : Set} {a b c : A}
  1037	--       -> a == b -> b == c -> a == c
  1038	-- trans Refl q = q
  1039	--
  1040	-- transport : {A : Set} (P : A -> Set)
  1041	--           -> {a b : A} -> a == b -> P a -> P b
  1042	-- transport P Refl x = x
  1043	--
  1044	-- ua : {A B : Set} -> A ~= B -> A == B
  1045	-- (postulated in Book HoTT, derived in Cubical)
  1046	\end{lstlisting}
  1047	
  1048	\section{Conclusion and Future Work}
  1049	\label{sec:conclusion}
  1050	
  1051	We have argued that Homotopy Type Theory provides the synthetic language
  1052	in which arithmetic, analysis, and algebraic topology share a single
  1053	foundational system. The natural number $58$ is the canonical
  1054	$\overline{58} : \N$; the universe-level identification of all NNOs is a
  1055	theorem; the transcendental constants $\pi$ and $e$ are unique-existence
  1056	centres in the higher inductive--inductive type $\R_c$. Univalence makes
  1057	the categorical and structural perspectives co-extensive with the
  1058	type-theoretic one.
  1059	
  1060	The companion Haskell code provides a hands-on, executable mirror of the
  1061	key constructions. The next paper (Paper~06) develops the categorical /
  1062	structural perspective independently and shows that it merges with the
  1063	HoTT perspective via the internal language theorem; Paper~07 (the
  1064	synthesis) closes the loop.
  1065	
  1066	\subsection{Open problems}
  1067	
  1068	\begin{enumerate}
  1069	\item Formalize Lindemann--Weierstrass in Cubical Agda end-to-end.
  1070	\item Develop directed univalence sufficient to express the synthetic
  1071	$(\infty, 2)$-Yoneda lemma.
  1072	\item Formalize the Brown representability theorem inside synthetic
  1073	homotopy theory; this would clarify the relation to the spectra
  1074	constructions in classical algebraic topology.
  1075	\end{enumerate}
  1076	
  1077	\begin{thebibliography}{99}
  1078	
  1079	\bibitem{HoTTBook}
  1080	The Univalent Foundations Program.
  1081	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics}.
  1082	Institute for Advanced Study, 2013. \texttt{arXiv:1308.0729}.
  1083	
  1084	\bibitem{MartinLof84}
  1085	P.\ Martin-L\"of.
  1086	\emph{Intuitionistic Type Theory}. Bibliopolis, 1984.
  1087	
  1088	\bibitem{LumsdaineGroupoid}
  1089	P.\ L.\ Lumsdaine. Weak omega-categories from intensional type theory.
  1090	\emph{Logical Methods in Computer Science}, 6(3:24):1--19, 2010.
  1091	
  1092	\bibitem{vandenBergGarner}
  1093	B.\ van den Berg and R.\ Garner. Types are weak omega-groupoids.
  1094	\emph{Proc.\ London Math.\ Soc.}, 102(2):370--394, 2011.
  1095	
  1096	\bibitem{LicataShulman}
  1097	D.\ R.\ Licata and M.\ Shulman. Calculating the fundamental group of the
  1098	circle in homotopy type theory.
  1099	In \emph{LICS 2013}, pp.\ 223--232.
  1100	
  1101	\bibitem{LicataFinster}
  1102	D.\ R.\ Licata and E.\ Finster. Eilenberg--MacLane spaces in homotopy type
  1103	theory. In \emph{CSL-LICS 2014}, ACM, 2014.
  1104	
  1105	\bibitem{Booij}
  1106	A.\ B.\ Booij. \emph{Analysis in univalent type theory}. PhD thesis,
  1107	University of Birmingham, 2020.
  1108	
  1109	\bibitem{CCHM}
  1110	C.\ Cohen, T.\ Coquand, S.\ Huber, A.\ M\"ortberg.
  1111	Cubical type theory: a constructive interpretation of the univalence
  1112	axiom. In \emph{TYPES 2015}, LIPIcs 69, pp.\ 5:1--5:34.
  1113	
  1114	\bibitem{CubicalAgda}
  1115	A.\ Vezzosi, A.\ M\"ortberg, A.\ Abel.
  1116	Cubical Agda: a dependently typed programming language with univalence and
  1117	higher inductive types.
  1118	\emph{Proc.\ ACM Program.\ Lang.}, 3(ICFP):87:1--87:29, 2019.
  1119	
  1120	\bibitem{AwodeyWarren}
  1121	S.\ Awodey and M.\ A.\ Warren.
  1122	Homotopy theoretic models of identity types.
  1123	\emph{Math.\ Proc.\ Cambridge Philos.\ Soc.}, 146(1):45--55, 2009.
  1124	
  1125	\bibitem{KapulkinLumsdaine}
  1126	C.\ Kapulkin and P.\ L.\ Lumsdaine.
  1127	The simplicial model of univalent foundations (after Voevodsky).
  1128	\emph{J.\ Eur.\ Math.\ Soc.}, 23(6):2071--2126, 2021.
  1129	
  1130	\bibitem{ShulmanInftyTopos}
  1131	M.\ Shulman. All $(\infty,1)$-toposes have strict univalent universes.
  1132	\texttt{arXiv:1904.07004}, 2019.
  1133	
  1134	\bibitem{ShulmanStrength}
  1135	M.\ Shulman. Higher inductive types and the formal Blakers--Massey theorem.
  1136	\emph{Proc.\ ACM Program.\ Lang.}, 4(POPL):41:1--41:30, 2020.
  1137	
  1138	\bibitem{2LTT}
  1139	D.\ Annenkov, P.\ Capriotti, N.\ Kraus, C.\ Sattler.
  1140	Two-level type theory and applications.
  1141	\emph{Math.\ Structures Comput.\ Sci.}, 33(8):688--743, 2023.
  1142	
  1143	\bibitem{SchreiberShulman}
  1144	U.\ Schreiber and M.\ Shulman. Quantum gauge field theory in cohesive
  1145	homotopy type theory. In \emph{QPL 2012}, EPTCS 158, pp.\ 109--126, 2014.
  1146	
  1147	\bibitem{Riley}
  1148	M.\ Riley. \emph{A type theory with a tiny object}.
  1149	PhD thesis, Wesleyan University, 2022.
  1150	
  1151	\bibitem{RiehlShulman}
  1152	E.\ Riehl and M.\ Shulman. A type theory for synthetic
  1153	$\infty$-categories. \emph{Higher Structures}, 1(1):147--224, 2017.
  1154	
  1155	\bibitem{CisinskiNguyen}
  1156	D.-C.\ Cisinski, H.\ K.\ Nguyen.
  1157	The universal coCartesian fibration. \texttt{arXiv:2210.08945}, 2022.
  1158	
  1159	\bibitem{AgdaUnimath}
  1160	The agda-unimath project. \emph{The agda-unimath library}.
  1161	\texttt{https://unimath.github.io/agda-unimath/}, accessed 2026.
  1162	
  1163	\bibitem{SemisimplicialProblem}
  1164	N.\ Kraus. The general universal property of the propositional truncation.
  1165	\emph{TYPES 2014}, LIPIcs 39, pp.\ 111--145.
  1166	
  1167	\bibitem{Voevodsky}
  1168	V.\ Voevodsky. The equivalence axiom and univalent models of type theory.
  1169	\texttt{arXiv:1402.5556}, 2014.
  1170	
  1171	\bibitem{Wadler2015}
  1172	P.\ Wadler. Propositions as types.
  1173	\emph{Comm.\ ACM}, 58(12):75--84, 2015.
  1174	
  1175	\bibitem{Lurie}
  1176	J.\ Lurie. \emph{Higher Topos Theory}.
  1177	Annals of Math.\ Studies 170, Princeton, 2009.
  1178	
  1179	\end{thebibliography}
  1180	
  1181	\end{document}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
141:\label{sec:intro}
187:\label{sec:conventions}
208:\label{sec:framework}
223:\label{def:fn}
228:\label{def:prod}
242:\label{sec:universes}
249:\label{sec:nat}
254:\label{def:nat}
275:\label{def:numerals}
290:\label{ex:add}
298:\label{prop:nno}
324:\label{sec:nat-vs-set}
327:\label{rem:benacerraf}
336:\label{sec:identity}
341:\label{def:id}
353:\label{prop:J}
364:\label{rem:J-vs-K}
373:\label{lem:sym}
383:\label{lem:trans}
398:\label{thm:groupoid}
419:\label{def:transport}
426:\label{prop:trans-concat}
437:\label{def:hlevel}
449:\label{thm:hedberg}
455:\label{cor:N-set}
465:\label{sec:univalence}
470:\label{def:equiv}
480:\label{prop:idtoeqv}
493:\label{thm:univalence}
509:\label{def:nno-type}
520:\label{thm:nno-contractible}
580:\label{cor:58-canonical}
591:\label{thm:funext}
602:\label{sec:hits}
615:\label{def:trunc}
624:\label{def:circle}
634:\label{thm:pi1}
662:\label{thm:hopf}
678:\label{sec:reals}
681:\label{thm:reals}
696:\label{sec:cubical}
706:\label{def:cube}
728:\label{thm:cubical-univalence}
743:\label{sec:variants}
774:\label{sec:transcendentals}
787:\label{def:pi}
799:\label{thm:pi-trans}
835:\label{def:e}
843:\label{thm:e-trans}
850:\label{thm:reals-unique}
858:\label{sec:bridge}
863:\label{thm:aw}
874:\label{thm:shulman-it}
906:\label{sec:results}
911:\label{thm:main}
924:\label{thm:pi1-result}
931:\label{thm:reals-result}
939:\label{thm:bridge-result}
948:\label{sec:discussion}
994:\label{sec:haskell}
1014:\label{sec:agda-sketch}
1049:\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\ref{' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
172:Section~\ref{sec:framework} fixes notation for dependent type theory.
173:Section~\ref{sec:nat} defines $\N$ as an inductive type and recovers
174:primitive recursion. Section~\ref{sec:identity} introduces identity types,
175:$J$, transport, and the path groupoid. Section~\ref{sec:univalence} states
177:NNO-equivalents. Section~\ref{sec:hits} treats higher inductive types: the
179:Section~\ref{sec:cubical} sketches cubical type theory.
180:Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT.
181:Section~\ref{sec:transcendentals} places $\pi$ and $e$ inside the Cauchy
182:reals. Section~\ref{sec:bridge} identifies HoTT as the internal language of
183:$(\infty,1)$-toposes. Section~\ref{sec:results}--\ref{sec:conclusion} record
328:Proposition~\ref{prop:nno} renders Benacerraf's identification problem moot

exec
/usr/local/bin/zsh -lc "rg -n -F '\\Cref{' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
320:extensionality (\Cref{thm:funext}) then gives $h = h'$.
331:(\Cref{sec:univalence}) it is determined up to canonical \emph{equality} as a
504:(\Cref{sec:cubical}) it is a theorem.
516:\Cref{prop:nno} expressed as a $\Sigma$-type.
529:By \Cref{prop:nno} the standard structure $(\N, \zero, \suc)$ is initial.
535:$e : \N \eqv X$. Univalence (\Cref{thm:univalence}) promotes this to a
585:\Cref{cor:58-canonical} is the formal expression of the slogan ``58 is
649:\Cref{thm:pi1} is the first non-trivial theorem of \emph{synthetic homotopy
740:\Cref{sec:univalence,sec:hits} can be \emph{computed}, not just postulated.
776:We work inside $\R_c$ from \Cref{sec:reals}.
829:open work in \Cref{sec:conclusion}.
933:(\Cref{thm:reals}). The terms $\pi$ and $e$ are unique-existence centres of
987:The Haskell companion (\Cref{sec:haskell}) and the Agda fragments
988:(\Cref{sec:agda-sketch}) demonstrate that path induction, transport, and
1003:mirroring \Cref{lem:sym,lem:trans,def:transport}.

exec
/usr/local/bin/zsh -lc "rg -n -F '\\cite' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
165:\emph{Book HoTT} of \cite{HoTTBook} except where noted, and present the
211:the substrate \cite{MartinLof84}. The pertinent rules are summarized below
212:informally; for the formal calculus see \cite[Appendix~A]{HoTTBook}.
407:$\infty$-groupoid \cite{LumsdaineGroupoid, vandenBergGarner}.
413:\cite[\S2.1]{HoTTBook}.
475:\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
542:\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
576:\cite[\S5.4 and \S2.7]{HoTTBook}.
598:$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.
645:(Licata--Shulman \cite{LicataShulman}); evaluating at $\base$ gives
666:\cite[\S8.5]{HoTTBook}.
673:\cite{LicataFinster}. Synthetic cohomology
680:\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
707:Cohen--Coquand--Huber--M\"ortberg \cite{CCHM} introduce a primitive
731:postulate \cite{CCHM, CubicalAgda}.
736:The Cubical Agda mode \cite{CubicalAgda} and the
747:Two-level type theory (Annenkov--Capriotti--Kraus--Sattler \cite{2LTT})
758:Schreiber--Shulman cohesive HoTT \cite{SchreiberShulman}, where the
762:\cite{Riley}.
768:rather than $\infty$-groupoids. Riehl--Shulman \cite{RiehlShulman} develop
771:\cite{CisinskiNguyen} is an active research frontier.
819:\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
822:(scaffolded in the agda-unimath project \cite{AgdaUnimath}).
862:\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
869:Voevodsky's simplicial set model \cite{KapulkinLumsdaine} establishes that
873:\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
926:\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
941:\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
958:\cite{SemisimplicialProblem} is the canonical example.
964:cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical

codex
One concrete source issue is already visible: the preamble avoids defining `\looppath`, but the body still uses it in the circle section. I’m going to compile next so I can separate hard failures from warnings like bad boxes or duplicate anchors.
codex
The sandbox blocks even `/tmp` writes, so I can’t produce a fresh `.log` or `.aux` here. I’m switching to static checks: package availability, undefined-control-sequence risk, labels/citations, and long-line/layout hazards from the source itself.
exec
/usr/local/bin/zsh -lc "rg -n -F '\\newcommand' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
51:\newcommand{\Type}{\mathsf{Type}}
52:\newcommand{\U}{\mathcal{U}}
53:\newcommand{\N}{\mathbb{N}}
54:\newcommand{\R}{\mathbb{R}}
55:\newcommand{\Z}{\mathbb{Z}}
56:\newcommand{\Q}{\mathbb{Q}}
57:\newcommand{\Id}{\mathsf{Id}}
58:\newcommand{\refl}{\mathsf{refl}}
59:\newcommand{\zero}{\mathsf{zero}}
60:\newcommand{\suc}{\mathsf{succ}}
61:\newcommand{\transport}{\mathsf{transport}}
62:\newcommand{\ua}{\mathsf{ua}}
63:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
68:\newcommand{\eqv}{\simeq}
69:\newcommand{\fst}{\mathsf{fst}}
70:\newcommand{\snd}{\mathsf{snd}}
71:\newcommand{\inl}{\mathsf{inl}}
72:\newcommand{\inr}{\mathsf{inr}}
73:\newcommand{\Path}{\mathsf{Path}}
75:\newcommand{\looppathpath}{\mathsf{loop}}
76:\newcommand{\base}{\mathsf{base}}
77:\newcommand{\Sone}{S^1}
78:\newcommand{\op}{\mathrm{op}}
79:\newcommand{\isContr}{\mathsf{isContr}}
80:\newcommand{\isProp}{\mathsf{isProp}}
81:\newcommand{\isSet}{\mathsf{isSet}}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\looppath' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
74:% \looppath is a TeX primitive; use \looppathpath instead.
75:\newcommand{\looppathpath}{\mathsf{loop}}
626:$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
627:$b : P(\base)$, and $\ell : \transport^P(\looppath)(b) = b$, there is
630:on $\looppath$.
642:$\looppath$ by univalence and the successor equivalence

exec
/usr/local/bin/zsh -lc "rg -n -F '\\begin{' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
87:    \begin{tikzpicture}[remember picture, overlay]
108:\begin{document}
111:\begin{abstract}
156:\begin{quote}
196:\begin{itemize}
222:\begin{definition}[Function type]
227:\begin{definition}[Cartesian product]
253:\begin{definition}[Natural numbers]
257:\begin{align*}
274:\begin{definition}[Numerals]
289:\begin{example}[Addition]
297:\begin{proposition}[NNO universal property, internal]
304:\begin{proof}
326:\begin{remark}
340:\begin{definition}[Identity type]
352:\begin{proposition}[Path induction, $J$]
363:\begin{remark}
372:\begin{lemma}[Symmetry]
378:\begin{proof}
382:\begin{lemma}[Transitivity]
388:\begin{proof}
397:\begin{theorem}[Path groupoid]
400:\begin{enumerate}
410:\begin{proof}[Proof sketch]
418:\begin{definition}[Transport]
425:\begin{proposition}[Transport along concatenation]
430:\begin{proof}
436:\begin{definition}[Contractibility, propositions, sets]
439:\begin{itemize}
448:\begin{theorem}[Hedberg]
454:\begin{corollary}
459:\begin{proof}
469:\begin{definition}[Quasi-inverse and equivalence]
479:\begin{proposition}[idtoeqv]
486:\begin{proof}
492:\begin{theorem}[Voevodsky's univalence axiom]
508:\begin{definition}[Type of NNOs]
519:\begin{theorem}[Contractibility of NNO]
524:\begin{proof}
550:\begin{enumerate}
579:\begin{corollary}
590:\begin{theorem}[Function extensionality from univalence]
596:\begin{proof}[Proof sketch]
609:\begin{definition}[Interval]
614:\begin{definition}[Propositional truncation]
623:\begin{definition}[Circle]
633:\begin{theorem}[Loop space of $S^1$]
639:\begin{proof}[Proof sketch]
661:\begin{theorem}[Hopf fibration, internal]
680:\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
705:\begin{definition}[Cube category]
727:\begin{theorem}[Univalence in cubical type theory]
780:\begin{definition}[Real exponential]
786:\begin{definition}[Pi]
798:\begin{theorem}
809:\begin{proof}[Proof sketch]
816:\begin{itemize}
834:\begin{definition}[Euler's number]
842:\begin{theorem}[Hermite, ported]
849:\begin{theorem}[Reals are unique in HoTT up to equivalence]
862:\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
873:\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
888:\begin{remark}[The univalent correspondence, formalized]
910:\begin{theorem}[Encoding-free arithmetic]
913:\begin{enumerate}
923:\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
930:\begin{theorem}[Reals and transcendentals]
938:\begin{theorem}[Bridge theorem]
954:\begin{itemize}
999:\begin{itemize}
1020:\begin{lstlisting}
1068:\begin{enumerate}
1077:\begin{thebibliography}{99}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\end{' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
97:    \end{tikzpicture}
136:\end{abstract}
159:\end{quote}
203:\end{itemize}
225:\end{definition}
230:\end{definition}
260:\end{align*}
272:\end{definition}
282:\end{definition}
295:\end{example}
302:\end{proposition}
321:\end{proof}
333:\end{remark}
346:\end{definition}
361:\end{proposition}
368:\end{remark}
376:\end{lemma}
380:\end{proof}
386:\end{lemma}
392:\end{proof}
404:\end{enumerate}
408:\end{theorem}
414:\end{proof}
423:\end{definition}
428:\end{proposition}
432:\end{proof}
443:\end{itemize}
446:\end{definition}
452:\end{theorem}
457:\end{corollary}
462:\end{proof}
477:\end{definition}
484:\end{proposition}
488:\end{proof}
501:\end{theorem}
517:\end{definition}
522:\end{theorem}
566:\end{enumerate}
577:\end{proof}
583:\end{corollary}
594:\end{theorem}
599:\end{proof}
612:\end{definition}
619:\end{definition}
631:\end{definition}
637:\end{theorem}
647:\end{proof}
667:\end{theorem}
689:\end{theorem}
712:\end{definition}
732:\end{theorem}
784:\end{definition}
796:\end{definition}
807:\end{theorem}
823:\end{itemize}
830:\end{proof}
840:\end{definition}
845:\end{theorem}
855:\end{theorem}
867:\end{theorem}
878:\end{theorem}
903:\end{remark}
918:\end{enumerate}
921:\end{theorem}
928:\end{theorem}
936:\end{theorem}
945:\end{theorem}
967:\end{itemize}
1010:\end{itemize}
1046:\end{lstlisting}
1075:\end{enumerate}
1179:\end{thebibliography}
1181:\end{document}

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty; kpsewhich tikz-cd.sty; kpsewhich cleveref.sty; kpsewhich listings.sty' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 274ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$1'"\\n\" if /\\\\bibitem\\{(["'^}]*)'"\\}/' papers/05-hott/latex/05-hott.tex | sort -u" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){ for "'$k (split /,/, $1){$k =~ s/''^'"\\s+|\\s+"'$//g; print "$k'"\\n\"}}' papers/05-hott/latex/05-hott.tex | sort -u" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
2LTT
AgdaUnimath
AwodeyWarren
Booij
CCHM
CisinskiNguyen
CubicalAgda
HoTTBook
KapulkinLumsdaine
LicataFinster
LicataShulman
LumsdaineGroupoid
MartinLof84
RiehlShulman
Riley
SchreiberShulman
SemisimplicialProblem
ShulmanInftyTopos
ShulmanStrength
vandenBergGarner

 succeeded in 0ms:
2LTT
AgdaUnimath
AwodeyWarren
Booij
CCHM
CisinskiNguyen
CubicalAgda
HoTTBook
KapulkinLumsdaine
LicataFinster
LicataShulman
LumsdaineGroupoid
Lurie
MartinLof84
RiehlShulman
Riley
SchreiberShulman
SemisimplicialProblem
ShulmanInftyTopos
ShulmanStrength
Voevodsky
Wadler2015
vandenBergGarner

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:Cref|cref|ref)\\{(["'^}]*)'"\\}/g){ for "'$k (split /,/, $1){$k =~ s/''^'"\\s+|\\s+"'$//g; print "$k'"\\n\"}}' papers/05-hott/latex/05-hott.tex | sort -u" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
cor:58-canonical
def:transport
lem:sym
lem:trans
prop:nno
sec:agda-sketch
sec:bridge
sec:conclusion
sec:cubical
sec:framework
sec:haskell
sec:hits
sec:identity
sec:nat
sec:reals
sec:results
sec:transcendentals
sec:univalence
sec:variants
thm:funext
thm:pi1
thm:reals
thm:univalence

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$1'"\\n\" if /\\\\label\\{(["'^}]*)'"\\}/' papers/05-hott/latex/05-hott.tex | sort -u" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
cor:58-canonical
cor:N-set
def:circle
def:cube
def:e
def:equiv
def:fn
def:hlevel
def:id
def:nat
def:nno-type
def:numerals
def:pi
def:prod
def:transport
def:trunc
ex:add
lem:sym
lem:trans
prop:J
prop:idtoeqv
prop:nno
prop:trans-concat
rem:J-vs-K
rem:benacerraf
sec:agda-sketch
sec:bridge
sec:conclusion
sec:conventions
sec:cubical
sec:discussion
sec:framework
sec:haskell
sec:hits
sec:identity
sec:intro
sec:nat
sec:nat-vs-set
sec:reals
sec:results
sec:transcendentals
sec:univalence
sec:universes
sec:variants
thm:aw
thm:bridge-result
thm:cubical-univalence
thm:e-trans
thm:funext
thm:groupoid
thm:hedberg
thm:hopf
thm:main
thm:nno-contractible
thm:pi-trans
thm:pi1
thm:pi1-result
thm:reals
thm:reals-result
thm:reals-unique
thm:shulman-it
thm:univalence

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>100 { print FNR ":" length($0) ":" $0 }'"' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
codex
The label/reference and citation sets are internally consistent: every cited key has a `\bibitem`, and every `\ref`/`\Cref` target has a matching `\label`. I’m checking LaTeX lint warnings now, since those often catch spacing and style issues that won’t show up in simple grep.
exec
/usr/local/bin/zsh -lc 'command -v chktex && chktex -q -n1 -n8 -n24 -n36 papers/05-hott/latex/05-hott.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
/Library/TeX/texbin/chktex
Warning 38 in papers/05-hott/latex/05-hott.tex line 128: You should not use punctuation in front of quotes.
``unique existence.'' Cubical type theory  
                  ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 143: You should not use punctuation in front of quotes.
In the previous papers of this series we asked ``What is $58$?'' and answered  
                                                             ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 154: You should not use punctuation in front of quotes.
``which set, presheaf, or initial object is the real $\N$?'' is dissolved  
                                                         ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 165: Non-breaking space (`~') should have been used.
\emph{Book HoTT} of \cite{HoTTBook} except where noted, and present the  
                   ^
Warning 13 in papers/05-hott/latex/05-hott.tex line 180: Intersentence spacing (`\@') should perhaps be used.
Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT.  
                                                                      ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 189: You should not use punctuation in front of quotes.
We write $a : A$ for ``$a$ is a term of type $A$,'' $f : A \to B$ for the  
                                                ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 211: Non-breaking space (`~') should have been used.
the substrate \cite{MartinLof84}. The pertinent rules are summarized below  
             ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 212: Non-breaking space (`~') should have been used.
informally; for the formal calculus see \cite[Appendix~A]{HoTTBook}.  
                                       ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 236: You should not use punctuation in front of quotes.
value at $\star$.'' The empty type $\mathbf{0}$ has no constructors and the  
                ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 365: You should not use punctuation in front of quotes.
$J$ is \emph{not} the principle ``every path is $\refl$.'' That stronger  
                                                       ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 407: Non-breaking space (`~') should have been used.
$\infty$-groupoid \cite{LumsdaineGroupoid, vandenBergGarner}.  
                 ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 413: Non-breaking space (`~') should have been used.
\cite[\S2.1]{HoTTBook}.  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 475: Non-breaking space (`~') should have been used.
\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 542: Non-breaking space (`~') should have been used.
\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 576: Non-breaking space (`~') should have been used.
\cite[\S5.4 and \S2.7]{HoTTBook}.  
^
Warning 38 in papers/05-hott/latex/05-hott.tex line 586: You should not use punctuation in front of quotes.
canonical across all NNOs.''  
                         ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 598: Non-breaking space (`~') should have been used.
$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.  
                                          ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 645: Non-breaking space (`~') should have been used.
(Licata--Shulman \cite{LicataShulman}); evaluating at $\base$ gives  
                ^
Warning 13 in papers/05-hott/latex/05-hott.tex line 657: Intersentence spacing (`\@') should perhaps be used.
$\Sigma$ is the unreduced suspension HIT. The pushout of  
                                        ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 666: Non-breaking space (`~') should have been used.
\cite[\S8.5]{HoTTBook}.  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 673: Non-breaking space (`~') should have been used.
\cite{LicataFinster}. Synthetic cohomology  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 680: Non-breaking space (`~') should have been used.
\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]  
                     ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 680: Non-breaking space (`~') should have been used.
\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]  
                                         ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 707: Non-breaking space (`~') should have been used.
Cohen--Coquand--Huber--M\"ortberg \cite{CCHM} introduce a primitive  
                                 ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 731: Non-breaking space (`~') should have been used.
postulate \cite{CCHM, CubicalAgda}.  
         ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 736: Non-breaking space (`~') should have been used.
The Cubical Agda mode \cite{CubicalAgda} and the  
                     ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 747: Non-breaking space (`~') should have been used.
Two-level type theory (Annenkov--Capriotti--Kraus--Sattler \cite{2LTT})  
                                                          ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 758: Non-breaking space (`~') should have been used.
Schreiber--Shulman cohesive HoTT \cite{SchreiberShulman}, where the  
                                ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 762: Non-breaking space (`~') should have been used.
\cite{Riley}.  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 768: Non-breaking space (`~') should have been used.
rather than $\infty$-groupoids. Riehl--Shulman \cite{RiehlShulman} develop  
                                              ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 771: Non-breaking space (`~') should have been used.
\cite{CisinskiNguyen} is an active research frontier.  
^
Warning 40 in papers/05-hott/latex/05-hott.tex line 783: You should put punctuation outside inner math mode.
$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.  
                            ^
Warning 3 in papers/05-hott/latex/05-hott.tex line 789: You should enclose the previous parenthesis with `{}'.
$\sum_{k=0}^\infty (-1)^k x^{2k+1}/(2k+1)!$. The unique-existence  
                      ^
Warning 40 in papers/05-hott/latex/05-hott.tex line 789: You should put punctuation outside inner math mode.
$\sum_{k=0}^\infty (-1)^k x^{2k+1}/(2k+1)!$. The unique-existence  
                                         ^
Warning 13 in papers/05-hott/latex/05-hott.tex line 800: Intersentence spacing (`\@') should perhaps be used.
Lindemann's theorem ports to HoTT: $\pi$ is transcendental over $\Q$, in  
                                 ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 819: Non-breaking space (`~') should have been used.
\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 819: Non-breaking space (`~') should have been used.
\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).  
                       ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 822: Non-breaking space (`~') should have been used.
(scaffolded in the agda-unimath project \cite{AgdaUnimath}).  
                                       ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 862: Non-breaking space (`~') should have been used.
\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]  
                              ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 869: Non-breaking space (`~') should have been used.
Voevodsky's simplicial set model \cite{KapulkinLumsdaine} establishes that  
                                ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 873: Non-breaking space (`~') should have been used.
\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]  
                       ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 883: You should not use punctuation in front of quotes.
Paper~06 have always been ``equivalent up to equivalence.'' Univalence  
                                                        ^
Warning 2 in papers/05-hott/latex/05-hott.tex line 926: Non-breaking space (`~') should have been used.
\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 941: Non-breaking space (`~') should have been used.
\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 958: Non-breaking space (`~') should have been used.
\cite{SemisimplicialProblem} is the canonical example.  
^
Warning 2 in papers/05-hott/latex/05-hott.tex line 964: Non-breaking space (`~') should have been used.
cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical  
           ^
Warning 38 in papers/05-hott/latex/05-hott.tex line 975: You should not use punctuation in front of quotes.
witnessed by paths.'' Univalence collapses the apparent distinction  
                  ^
Warning 26 in papers/05-hott/latex/05-hott.tex line 1001: You ought to remove spaces in front of punctuation.
\texttt{Refl :: Path a a}.  
            ^
Warning 12 in papers/05-hott/latex/05-hott.tex line 1106: Interword spacing (`\ ') should perhaps be used.
A.\ B.\ Booij. \emph{Analysis in univalent type theory}. PhD thesis,  
              ^
Warning 12 in papers/05-hott/latex/05-hott.tex line 1148: Interword spacing (`\ ') should perhaps be used.
M.\ Riley. \emph{A type theory with a tiny object}.  
          ^
Warning 12 in papers/05-hott/latex/05-hott.tex line 1153: Interword spacing (`\ ') should perhaps be used.
$\infty$-categories. \emph{Higher Structures}, 1(1):147--224, 2017.  
                    ^
Warning 12 in papers/05-hott/latex/05-hott.tex line 1160: Interword spacing (`\ ') should perhaps be used.
The agda-unimath project. \emph{The agda-unimath library}.  
                         ^
Warning 12 in papers/05-hott/latex/05-hott.tex line 1176: Interword spacing (`\ ') should perhaps be used.
J.\ Lurie. \emph{Higher Topos Theory}.  
          ^

exec
/usr/local/bin/zsh -lc 'command -v lacheck && lacheck papers/05-hott/latex/05-hott.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/lacheck
"papers/05-hott/latex/05-hott.tex", line 27: possible unwanted space at "{"
"papers/05-hott/latex/05-hott.tex", line 180: missing `\@' before `.' in "TT."
"papers/05-hott/latex/05-hott.tex", line 657: missing `\@' before `.' in "HIT."
"papers/05-hott/latex/05-hott.tex", line 783: punctuation mark "!" should be placed after end of math mode
"papers/05-hott/latex/05-hott.tex", line 789: punctuation mark "!" should be placed after end of math mode
"papers/05-hott/latex/05-hott.tex", line 1044: double space at " ~"

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\[A-Za-z]+\" papers/05-hott/latex/05-hott.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
codex
The lints are mostly style preferences around citation ties and sentence spacing. The one that matters mechanically is still the `\looppath` mismatch; next I’m checking moving arguments and theorem titles for fragile commands/style inconsistencies.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{(theorem|definition|proposition|lemma|corollary|remark|example)\\}\\[\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n \"S\\"'^1|'"\\\\Sone|loop|\\\\pi_1|\\\\R_c|Book HoTT|HIT\\.|HoTT\\.|\\\\cite\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:S\^1|\Sone|loop|\pi_1|\R_c|Book HoTT|HIT\.|HoTT\.|\cite)
                             ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"\\"'$[''^$]{70,}'"\\"'$|'"\\\\\\[["'^'"\\]]{70,}\\\\\\]|\\\\begin\\{align\\*\\}|\\\\begin\\{lstlisting\\}\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
4:\usepackage{amsmath, amssymb, amsthm}
7:\usepackage{tikz-cd}
8:\usepackage{tikz}
9:\usetikzlibrary{decorations.markings, arrows.meta, positioning}
12:\usepackage{hyperref}
13:\usepackage{cleveref}
16:\usepackage{graphicx}
19:\usepackage[margin=1in]{geometry}
22:\usepackage{everypage}
23:\usepackage{xcolor}
26:\usepackage{listings}
27:\lstset{
28:  basicstyle=\ttfamily\footnotesize,
34:  rulecolor=\color{black!40},
40:\newtheorem{theorem}{Theorem}[section]
41:\newtheorem{proposition}[theorem]{Proposition}
42:\newtheorem{lemma}[theorem]{Lemma}
43:\newtheorem{corollary}[theorem]{Corollary}
44:\theoremstyle{definition}
45:\newtheorem{definition}[theorem]{Definition}
46:\newtheorem{example}[theorem]{Example}
47:\theoremstyle{remark}
48:\newtheorem{remark}[theorem]{Remark}
51:\newcommand{\Type}{\mathsf{Type}}
52:\newcommand{\U}{\mathcal{U}}
53:\newcommand{\N}{\mathbb{N}}
54:\newcommand{\R}{\mathbb{R}}
55:\newcommand{\Z}{\mathbb{Z}}
56:\newcommand{\Q}{\mathbb{Q}}
57:\newcommand{\Id}{\mathsf{Id}}
58:\newcommand{\refl}{\mathsf{refl}}
59:\newcommand{\zero}{\mathsf{zero}}
60:\newcommand{\suc}{\mathsf{succ}}
61:\newcommand{\transport}{\mathsf{transport}}
62:\newcommand{\ua}{\mathsf{ua}}
63:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
64:% Type equivalence (\simeq) is kept as its own symbol; we provide a
65:% mnemonic alias \eqv that resolves to \simeq. The standard \equiv (triple
68:\newcommand{\eqv}{\simeq}
69:\newcommand{\fst}{\mathsf{fst}}
70:\newcommand{\snd}{\mathsf{snd}}
71:\newcommand{\inl}{\mathsf{inl}}
72:\newcommand{\inr}{\mathsf{inr}}
73:\newcommand{\Path}{\mathsf{Path}}
74:% \looppath is a TeX primitive; use \looppathpath instead.
75:\newcommand{\looppathpath}{\mathsf{loop}}
76:\newcommand{\base}{\mathsf{base}}
77:\newcommand{\Sone}{S^1}
78:\newcommand{\op}{\mathrm{op}}
79:\newcommand{\isContr}{\mathsf{isContr}}
80:\newcommand{\isProp}{\mathsf{isProp}}
81:\newcommand{\isSet}{\mathsf{isSet}}
84:\definecolor{grokgray}{RGB}{110,110,110}
85:\AddEverypageHook{%
86:  \ifnum\value{page}=1
87:    \begin{tikzpicture}[remember picture, overlay]
88:      \node[
91:        font=\Large\sffamily\bfseries\color{grokgray},
93:      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
94:      {GrokRxiv:2026.05.hott-perspective\quad
95:       [\,math.LO\,]\quad
97:    \end{tikzpicture}
98:  \fi
101:\title{The HoTT Perspective\\
102:\large Numbers as Inductive Types up to Path Equivalence}
103:\author{YonedaAI Research \\
104:\textit{Univalent Correspondence Project} \\
105:\textit{Magneton Foundational Studies}}
106:\date{3 May 2026}
108:\begin{document}
109:\maketitle
111:\begin{abstract}
112:We give a self-contained development of \emph{Homotopy Type Theory} (HoTT) as
114:transcendentals $\pi$ and $e$ admit an encoding-free description. The natural
115:numbers are the inductive type $\N$ generated by $\zero : \N$ and
116:$\suc : \N \to \N$; the integer $58$ is the canonical term
117:$\suc^{58}\,\zero$. Identity types $a =_A b$ are the central novelty: rather
118:than mere propositions, they carry the homotopical content of \emph{path
120:Voevodsky's univalence axiom $(A = B) \eqv (A \eqv B)$ and prove its
121:fundamental consequence: the type $\sum_{X : \U}(X \eqv \N)$ of
122:``structures equivalent to $\N$'' is contractible, so every natural number
124:illustrated by the circle $S^1$ with $\pi_1(S^1) = \Z$, and Booij's
126:inside which $\pi$ and $e$ are defined as the centres of contractible types
129:(Cohen--Coquand--Huber--M\"ortberg) makes univalence computational, while
131:synthetic $(\infty, 1)$-category theory. We close by identifying HoTT as the
132:internal language of $(\infty,1)$-toposes, making the categorical and
134:implementation models paths, $\refl$, $\transport$, $\mathsf{sym}$ and
135:$\mathsf{trans}$ at the type level via GADTs.
136:\end{abstract}
138:\tableofcontents
140:\section{Introduction}
141:\label{sec:intro}
146:(Paper~03), and as the representable presheaf $\mathrm{Hom}(-, 58)$
149:viewpoint is \emph{itself} an encoding -- whether ``58 as the representable
150:$\mathrm{Hom}(-,58)$'' replaces one substantialist commitment with another.
153:already identified up to equivalence \emph{by axiom}, so the question
154:``which set, presheaf, or initial object is the real $\N$?'' is dissolved
156:\begin{quote}
157:\centering
158:\emph{equivalent things are equal.}
159:\end{quote}
165:\emph{Book HoTT} of \cite{HoTTBook} except where noted, and present the
166:material in standard Martin-L\"of style with one universe $\U$ for clarity;
167:the ramified hierarchy $\U_0 : \U_1 : \U_2 : \cdots$ is needed for
170:\subsection{Roadmap}
172:Section~\ref{sec:framework} fixes notation for dependent type theory.
173:Section~\ref{sec:nat} defines $\N$ as an inductive type and recovers
174:primitive recursion. Section~\ref{sec:identity} introduces identity types,
175:$J$, transport, and the path groupoid. Section~\ref{sec:univalence} states
177:NNO-equivalents. Section~\ref{sec:hits} treats higher inductive types: the
178:circle, $\pi_1(S^1) = \Z$, propositional truncation, the Cauchy reals.
179:Section~\ref{sec:cubical} sketches cubical type theory.
180:Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT.
181:Section~\ref{sec:transcendentals} places $\pi$ and $e$ inside the Cauchy
182:reals. Section~\ref{sec:bridge} identifies HoTT as the internal language of
183:$(\infty,1)$-toposes. Section~\ref{sec:results}--\ref{sec:conclusion} record
186:\subsection{Notational conventions}
187:\label{sec:conventions}
189:We write $a : A$ for ``$a$ is a term of type $A$,'' $f : A \to B$ for the
190:type of (non-dependent) functions, $\prod_{x:A} B(x)$ for the dependent
191:product (``$\Pi$-type''), and $\sum_{x:A} B(x)$ for the dependent sum
192:(``$\Sigma$-type''). The identity type of $a, b : A$ is written
193:$a =_A b$ or $\Id_A(a, b)$. The constant path is $\refl_a : a =_A a$.
194:Equivalence is $A \eqv B$. We use $\U$ for ``the'' universe. We deliberately
196:\begin{itemize}
197:\item the judgmental / definitional equality (a meta-level notion), written
198:  $a \equiv b$, used in computation rules;
199:\item the propositional / identity-type equality, written $a = b$, an
200:  inhabitant of the type $\Id_A(a, b)$;
201:\item type equivalence, written $A \eqv B$, an inhabitant of
202:  $\sum_{f : A \to B} \mathsf{isEquiv}(f)$.
203:\end{itemize}
207:\section{Mathematical Framework}
208:\label{sec:framework}
210:We assume Martin-L\"of's intensional dependent type theory MLTT$_\omega$ as
211:the substrate \cite{MartinLof84}. The pertinent rules are summarized below
212:informally; for the formal calculus see \cite[Appendix~A]{HoTTBook}.
214:\subsection{Dependent products and sums}
216:For a type family $B : A \to \U$, the $\Pi$-type $\prod_{x : A} B(x)$ has
217:introduction by $\lambda$-abstraction and elimination by application.
218:The $\Sigma$-type $\sum_{x : A} B(x)$ has introduction $(a, b)$ for
219:$a : A, b : B(a)$ and elimination by projections $\fst$ and $\snd$ together
220:with a dependent eliminator $\mathsf{ind}_\Sigma$.
222:\begin{definition}[Function type]
223:\label{def:fn}
224:$A \to B$ abbreviates $\prod_{x : A} B$ when $B$ does not depend on $x$.
225:\end{definition}
227:\begin{definition}[Cartesian product]
228:\label{def:prod}
229:$A \times B$ abbreviates $\sum_{x : A} B$ when $B$ does not depend on $x$.
230:\end{definition}
232:\subsection{The unit, empty, and sum types}
234:The unit type $\mathbf{1}$ has a single constructor $\star : \mathbf{1}$ and
235:the eliminator ``everything depending on $\mathbf{1}$ is determined by its
236:value at $\star$.'' The empty type $\mathbf{0}$ has no constructors and the
237:eliminator $\mathsf{ind}_{\mathbf{0}} : \prod_{C : \mathbf{0} \to \U}
238:\prod_{z : \mathbf{0}} C(z)$ (ex falso). The sum type $A + B$ has
239:$\inl : A \to A + B$ and $\inr : B \to A + B$.
241:\subsection{Universes and Russell vs.\ Tarski}
242:\label{sec:universes}
244:We adopt \emph{Russell-style} universes: $\U_0 : \U_1 : \cdots$ with
245:$\U_i \subset \U_{i+1}$ and a term of $\U$ is itself a type. All ``$\U$''s
248:\section{Natural Numbers as an Inductive Type}
249:\label{sec:nat}
251:\subsection{The inductive definition}
253:\begin{definition}[Natural numbers]
254:\label{def:nat}
255:The type $\N : \U$ is generated by the formation rule $\N : \U$ and the two
257:\begin{align*}
258:\zero &: \N, \\
259:\suc &: \N \to \N.
260:\end{align*}
261:The dependent eliminator (\emph{induction principle}) is
262:\[
263:\mathsf{ind}_\N : \prod_{P : \N \to \U}\;
264:P(\zero) \to
265:\Bigl(\prod_{n : \N} P(n) \to P(\suc\,n)\Bigr) \to
266:\prod_{n : \N} P(n).
269:$\mathsf{ind}_\N\,P\,c_0\,c_s\,\zero \equiv c_0$ and
270:$\mathsf{ind}_\N\,P\,c_0\,c_s\,(\suc\,n) \equiv
271:c_s\,n\,(\mathsf{ind}_\N\,P\,c_0\,c_s\,n)$.
272:\end{definition}
274:\begin{definition}[Numerals]
275:\label{def:numerals}
276:Define $\overline{n} : \N$ recursively by $\overline{0} := \zero$ and
277:$\overline{n+1} := \suc\,\overline{n}$. In particular,
278:\[
279:\overline{58} = \suc(\suc(\suc(\cdots(\suc\,\zero)\cdots)))
280:\quad\text{(58 applications of \(\suc\)).}
282:\end{definition}
284:\subsection{Recursion and arithmetic}
286:The non-dependent recursor $\mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C$
289:\begin{example}[Addition]
290:\label{ex:add}
291:Define $+ : \N \to \N \to \N$ by
292:$m + n := \mathsf{rec}_\N\,\N\,n\,(\lambda k.\,\suc)\,m$, equivalently by
293:$\zero + n \equiv n$ and $(\suc\,m) + n \equiv \suc(m + n)$. Multiplication
295:\end{example}
297:\begin{proposition}[NNO universal property, internal]
298:\label{prop:nno}
299:For any type $C : \U$, point $c_0 : C$, and endo-map $f : C \to C$, there is
300:a unique $h : \N \to C$ with $h(\zero) = c_0$ and
301:$h(\suc\,n) = f(h\,n)$ for all $n : \N$.
302:\end{proposition}
304:\begin{proof}
305:Existence: $h := \mathsf{rec}_\N\,C\,c_0\,(\lambda n.\,f)$. Uniqueness:
306:suppose $h' : \N \to C$ also satisfies the equations. Define the
307:predicate $P(n) := (h\,n =_C h'\,n)$.
309:\emph{Base case.} The recursor's computation rule gives the
310:\emph{definitional} (judgmental) equalities $h(\zero) \equiv c_0$ and
311:$h'(\zero) \equiv c_0$, so $P(\zero)$ is inhabited by $\refl_{c_0}$ --
314:\emph{Inductive step.} Assume $P(n)$, i.e.\ $q : h\,n = h'\,n$. The
315:computation rules give $h(\suc\,n) \equiv f(h\,n)$ and
316:$h'(\suc\,n) \equiv f(h'\,n)$ judgmentally; applying the action on paths
317:$\mathsf{ap}_f : (a = b) \to (f\,a = f\,b)$ yields
318:$\mathsf{ap}_f(q) : f(h\,n) = f(h'\,n)$, i.e.\ $h(\suc\,n) = h'(\suc\,n)$.
319:Apply $\mathsf{ind}_\N$ to conclude $\prod_{n : \N} P(n)$. Function
320:extensionality (\Cref{thm:funext}) then gives $h = h'$.
321:\end{proof}
323:\subsection{$\N$ in HoTT vs.\ $\N$ in set theory}
324:\label{sec:nat-vs-set}
326:\begin{remark}
327:\label{rem:benacerraf}
328:Proposition~\ref{prop:nno} renders Benacerraf's identification problem moot
329:\emph{within} the type theory: $\N$ is determined up to canonical bijection
331:(\Cref{sec:univalence}) it is determined up to canonical \emph{equality} as a
332:term of $\U$.
333:\end{remark}
335:\section{Identity Types and Path Induction}
336:\label{sec:identity}
338:\subsection{The identity type}
340:\begin{definition}[Identity type]
341:\label{def:id}
342:For each type $A : \U$ and elements $a, b : A$ there is a type
343:$a =_A b$, called the \emph{identity type} or \emph{path space}. It is the
345:$\refl_a : a =_A a$ for each $a : A$.
346:\end{definition}
348:The eliminator -- often called \emph{path induction} or the \emph{$J$-rule}
352:\begin{proposition}[Path induction, $J$]
353:\label{prop:J}
354:For every type $A : \U$ and family
355:$C : \prod_{x, y : A} (x =_A y) \to \U$, given a section
356:$d : \prod_{x : A} C(x, x, \refl_x)$, there is a section
357:\[
358:J(C, d) : \prod_{x, y : A} \prod_{p : x =_A y} C(x, y, p),
360:satisfying the computation rule $J(C, d, x, x, \refl_x) \equiv d(x)$.
361:\end{proposition}
363:\begin{remark}
364:\label{rem:J-vs-K}
365:$J$ is \emph{not} the principle ``every path is $\refl$.'' That stronger
368:\end{remark}
370:\subsection{Symmetry, transitivity, and the path groupoid}
372:\begin{lemma}[Symmetry]
373:\label{lem:sym}
375:$\mathsf{sym} : \prod_{A : \U}\prod_{x, y : A} (x =_A y) \to (y =_A x)$.
376:\end{lemma}
378:\begin{proof}
379:Take $C(x, y, p) := (y =_A x)$ and $d(x) := \refl_x$, then apply $J$.
380:\end{proof}
382:\begin{lemma}[Transitivity]
383:\label{lem:trans}
384:There is a function $\mathsf{trans} : \prod_{A : \U}\prod_{x, y, z : A}
385:(x =_A y) \to (y =_A z) \to (x =_A z)$.
386:\end{lemma}
388:\begin{proof}
390:$y \equiv x$ and $p \equiv \refl_x$, in which case
391:$\mathsf{trans}(\refl_x, q) := q$ is a section.
392:\end{proof}
394:We write $p^{-1}$ for $\mathsf{sym}(p)$ and $p \cdot q$ for
395:$\mathsf{trans}(p, q)$.
397:\begin{theorem}[Path groupoid]
398:\label{thm:groupoid}
400:\begin{enumerate}
401:\item $\refl_a \cdot p = p$ and $p \cdot \refl_b = p$;
402:\item $p \cdot p^{-1} = \refl_a$ and $p^{-1} \cdot p = \refl_b$;
403:\item $(p \cdot q) \cdot r = p \cdot (q \cdot r)$.
404:\end{enumerate}
407:$\infty$-groupoid \cite{LumsdaineGroupoid, vandenBergGarner}.
408:\end{theorem}
410:\begin{proof}[Proof sketch]
413:\cite[\S2.1]{HoTTBook}.
414:\end{proof}
416:\subsection{Transport}
418:\begin{definition}[Transport]
419:\label{def:transport}
420:For $P : A \to \U$, $a, b : A$, and $p : a = b$, the function
421:$\transport^P(p) : P(a) \to P(b)$ is defined by $J$:
422:$\transport^P(\refl_a)(u) := u$.
423:\end{definition}
425:\begin{proposition}[Transport along concatenation]
426:\label{prop:trans-concat}
427:$\transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p)$.
428:\end{proposition}
430:\begin{proof}
432:\end{proof}
434:\subsection{Homotopy levels}
436:\begin{definition}[Contractibility, propositions, sets]
437:\label{def:hlevel}
438:A type $A : \U$ is
439:\begin{itemize}
440:\item \emph{contractible}, $\isContr(A) := \sum_{c : A} \prod_{x : A} (x = c)$;
441:\item a \emph{mere proposition}, $\isProp(A) := \prod_{x, y : A} (x = y)$;
442:\item a \emph{set} (h-set), $\isSet(A) := \prod_{x, y : A} \isProp(x = y)$.
443:\end{itemize}
446:\end{definition}
448:\begin{theorem}[Hedberg]
449:\label{thm:hedberg}
450:If $A$ has decidable equality $\prod_{x, y : A} (x = y) + \neg(x = y)$, then
452:\end{theorem}
454:\begin{corollary}
455:\label{cor:N-set}
456:$\N$ is a set.
457:\end{corollary}
459:\begin{proof}
460:Equality on $\N$ is decidable by induction on both arguments and Peano's
461:fourth axiom $\suc\,m = \suc\,n \Rightarrow m = n$. Apply Hedberg.
462:\end{proof}
464:\section{The Univalence Axiom}
465:\label{sec:univalence}
467:\subsection{Equivalence of types}
469:\begin{definition}[Quasi-inverse and equivalence]
470:\label{def:equiv}
471:A function $f : A \to B$ has a \emph{quasi-inverse} if there exist
472:$g : B \to A$ and homotopies $\eta : g \circ f \sim \mathrm{id}_A$ and
473:$\varepsilon : f \circ g \sim \mathrm{id}_B$. The proposition
474:$\mathsf{isEquiv}(f)$ is the half-adjoint version
475:\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
476:proposition. We write $A \eqv B := \sum_{f : A \to B} \mathsf{isEquiv}(f)$.
477:\end{definition}
479:\begin{proposition}[idtoeqv]
480:\label{prop:idtoeqv}
482:$\idtoeqv : (A =_\U B) \to (A \eqv B)$ taking $\refl_A$ to the identity
484:\end{proposition}
486:\begin{proof}
488:\end{proof}
490:\subsection{The axiom}
492:\begin{theorem}[Voevodsky's univalence axiom]
493:\label{thm:univalence}
494:For all types $A, B : \U$, the canonical map $\idtoeqv$ is itself an
496:\[
497:\ua : (A \eqv B) \to (A =_\U B), \qquad
498:\idtoeqv \circ \ua = \mathrm{id}_{A \eqv B}, \qquad
499:\ua \circ \idtoeqv = \mathrm{id}_{A =_\U B}.
501:\end{theorem}
504:(\Cref{sec:cubical}) it is a theorem.
506:\subsection{Consequences for arithmetic}
508:\begin{definition}[Type of NNOs]
509:\label{def:nno-type}
511:\[
512:\mathrm{NNO} := \sum_{X : \U}\;\sum_{x_0 : X}\;\sum_{s : X \to X}\;
513:\mathsf{isInitial}(X, x_0, s),
515:where $\mathsf{isInitial}(X, x_0, s)$ is the universal property of
516:\Cref{prop:nno} expressed as a $\Sigma$-type.
517:\end{definition}
519:\begin{theorem}[Contractibility of NNO]
520:\label{thm:nno-contractible}
521:$\mathrm{NNO}$ is contractible.
522:\end{theorem}
524:\begin{proof}
525:We exhibit $(\N, \zero, \suc, \mathsf{init}_\N)$ as the centre and supply
528:\emph{Step 1. Equivalence at the carrier.}
529:By \Cref{prop:nno} the standard structure $(\N, \zero, \suc)$ is initial.
531:both directions yields mutually inverse maps $f : \N \to X$ and
532:$g : X \to \N$ with $g \circ f = \mathrm{id}_\N$ and
533:$f \circ g = \mathrm{id}_X$ (each by uniqueness of the universal
535:$e : \N \eqv X$. Univalence (\Cref{thm:univalence}) promotes this to a
536:path $p := \ua(e) : \N =_\U X$.
538:\emph{Step 2. Paths in $\Sigma$-types.}
539:Recall that a path in $\sum_{a : A} B(a)$ between $(a, b)$ and
541:$p : a =_A a'$ and $q : \transport^B(p)(b) =_{B(a')} b'$
542:\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
543:$\Sigma$-tuples
544:$(a_1, a_2, \ldots, a_n)$ and $(a_1', a_2', \ldots, a_n')$ is a tuple of
545:paths $(p_1, p_2, \ldots, p_n)$ where $p_k$ lives \emph{over} the
546:preceding $p_1, \ldots, p_{k-1}$.
548:\emph{Step 3. Constructing the path componentwise.}
550:\begin{enumerate}
551:\item $p : \N =_\U X$ is the carrier path from Step~1.
552:\item $p_0 : \transport^{(X \mapsto X)}(p)(\zero) =_X x_0$. Because
553:$\ua(e)$ transports along the equivalence $e$, the left-hand side
554:reduces to $e(\zero)$, and the universal property of $\N$ forces
555:$e(\zero) = x_0$ (the unique map $\N \to X$ sends $\zero$ to $x_0$),
557:\item $p_s : \transport^{(X \mapsto X \to X)}(p)(\suc) = s$.
558:The type family $X \mapsto X \to X$ has transport given by conjugation
559:by $e$, so the left-hand side reduces to $e \circ \suc \circ e^{-1}$.
560:Naturality of the universal recursor yields $e \circ \suc = s \circ e$,
561:whence $e \circ \suc \circ e^{-1} = s$, supplying $p_s$.
562:\item $p_*$: the initiality witness $\mathsf{isInitial}$ is a mere
566:\end{enumerate}
568:\emph{Step 4. Conclusion.}
569:Bundling $(p, p_0, p_s, p_*)$ via the iterated $\Sigma$-path
571:$(\N, \zero, \suc, \mathsf{init}_\N) =_{\mathrm{NNO}} (X, x_0, s, \cdot)$.
572:Since $(X, x_0, s, \cdot)$ was arbitrary, $\mathrm{NNO}$ is contractible.
576:\cite[\S5.4 and \S2.7]{HoTTBook}.
577:\end{proof}
579:\begin{corollary}
580:\label{cor:58-canonical}
581:For any NNO $(X, x_0, s)$ the term $s^{58}\,x_0$ is, after transport along
582:the canonical equality $\N = X$, equal to $\overline{58} : \N$.
583:\end{corollary}
585:\Cref{cor:58-canonical} is the formal expression of the slogan ``58 is
588:\subsection{Function extensionality}
590:\begin{theorem}[Function extensionality from univalence]
591:\label{thm:funext}
592:If $f, g : \prod_{x : A} B(x)$ and there is a homotopy
593:$h : \prod_{x : A} (f\,x = g\,x)$, then $f = g$.
594:\end{theorem}
596:\begin{proof}[Proof sketch]
597:Voevodsky proved this by representing $\prod_{x : A} B(x)$ via a clever
598:$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.
599:\end{proof}
601:\section{Higher Inductive Types}
602:\label{sec:hits}
605:\emph{paths} as well as points.
607:\subsection{The interval and propositional truncation}
609:\begin{definition}[Interval]
611:$\mathsf{seg} : 0_I = 1_I$.
612:\end{definition}
614:\begin{definition}[Propositional truncation]
615:\label{def:trunc}
616:$\|A\|$ has $|a| : \|A\|$ for $a : A$ and a path constructor
617:$\prod_{x, y : \|A\|}(x = y)$. Its eliminator allows mapping $\|A\| \to P$
619:\end{definition}
621:\subsection{The circle}
623:\begin{definition}[Circle]
624:\label{def:circle}
625:$\Sone$ has constructors $\base : \Sone$ and a path
626:$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
627:$b : P(\base)$, and $\ell : \transport^P(\looppath)(b) = b$, there is
628:$\mathsf{ind}_{\Sone}(P, b, \ell) : \prod_{x : \Sone} P(x)$, computing as
629:$\mathsf{ind}_{\Sone}(P, b, \ell)(\base) \equiv b$ and a corresponding rule
630:on $\looppath$.
631:\end{definition}
633:\begin{theorem}[Loop space of $S^1$]
634:\label{thm:pi1}
635:$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
636:Indeed $(\base = \base) \eqv \Z$ as a type, before truncation.
637:\end{theorem}
639:\begin{proof}[Proof sketch]
641:$\mathsf{code} : \Sone \to \U$ by $\mathsf{code}(\base) := \Z$ and on
642:$\looppath$ by univalence and the successor equivalence
643:$\mathsf{succ} : \Z \eqv \Z$. Then
644:$(\base = -) \sim \mathsf{code}$ by the encode--decode method
645:(Licata--Shulman \cite{LicataShulman}); evaluating at $\base$ gives
646:$(\base = \base) \eqv \Z$.
647:\end{proof}
649:\Cref{thm:pi1} is the first non-trivial theorem of \emph{synthetic homotopy
654:\subsection{Spheres, suspensions, and pushouts}
656:The $n$-sphere $S^n$ is defined recursively as $\Sigma S^{n-1}$ where
657:$\Sigma$ is the unreduced suspension HIT. The pushout of
658:$f : C \to A$ and $g : C \to B$ has constructors for $A$, $B$, and a path
661:\begin{theorem}[Hopf fibration, internal]
662:\label{thm:hopf}
663:There is a fibration $h : S^3 \to S^2$ with fibers $S^1$, definable as a
665:particular $\pi_3(S^2) \eqv \Z$ via the Hopf invariant
666:\cite[\S8.5]{HoTTBook}.
667:\end{theorem}
669:\subsection{Eilenberg--MacLane spaces}
671:For each abelian group $G$ and $n \geq 1$ there is a HIT $K(G, n)$ with
672:$\pi_n = G$ and $\pi_k = 0$ for $k \neq n$
673:\cite{LicataFinster}. Synthetic cohomology
674:$H^n(X; G) := \|X \to K(G, n)\|_0$ recovers ordinary singular cohomology
677:\subsection{Real numbers as a higher inductive--inductive type}
678:\label{sec:reals}
680:\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
681:\label{thm:reals}
682:There is a higher inductive--inductive type $\R_c$ presenting the
683:\emph{Cauchy reals}: an h-set with constructors for rational injections
684:$\mathsf{rat} : \Q \to \R_c$, a Cauchy-completion limit operation, and a
686:positive rational. $\R_c$ has the universal property of the Cauchy
687:completion of $\Q$ in the category of metric spaces internal to HoTT, and
689:\end{theorem}
691:The construction is \emph{higher} because of the path constructor and
692:\emph{inductive--inductive} because the path constructor mentions a
695:\section{Cubical Type Theory}
696:\label{sec:cubical}
699:canonicity: a closed term of $\N$ may be propositionally but not
703:\subsection{Intervals and faces}
705:\begin{definition}[Cube category]
706:\label{def:cube}
707:Cohen--Coquand--Huber--M\"ortberg \cite{CCHM} introduce a primitive
708:interval object $\mathbb{I}$ generated by $0, 1 : \mathbb{I}$, the
709:operations $\sqcup, \sqcap, \neg$ making $\mathbb{I}$ into a de Morgan
710:algebra, and the algebra of \emph{face formulas} $\varphi$ over the
712:\end{definition}
714:A path $p : a =_A b$ is then a function $\mathbb{I} \to A$ with $p(0) = a$
719:\subsection{Composition and Glue}
721:The crucial operations are \emph{composition} (filling open boxes) and
722:\emph{Glue} (gluing types along an equivalence). The Glue type
723:$\mathsf{Glue}\,A\,[\varphi \mapsto (T, f)]$ where $f : T \eqv A$ on the
724:face $\varphi$ supplies a constructive proof of univalence: every
725:equivalence is realized as a path in $\U$.
727:\begin{theorem}[Univalence in cubical type theory]
728:\label{thm:cubical-univalence}
729:Cubical type theory in the CCHM model proves $\ua$ as a defined term, and
730:$\idtoeqv \circ \ua$ reduces to the identity by computation, not by
731:postulate \cite{CCHM, CubicalAgda}.
732:\end{theorem}
734:\subsection{Implementations}
736:The Cubical Agda mode \cite{CubicalAgda} and the
737:\texttt{cubicaltt} prototype implement the system; the \texttt{redtt} and
738:\texttt{cooltt} projects extend it with cartesian intervals and modalities.
740:\Cref{sec:univalence,sec:hits} can be \emph{computed}, not just postulated.
742:\section{Variants: 2LTT, Modal, and Directed HoTT}
743:\label{sec:variants}
745:\subsection{Two-level type theory}
747:Two-level type theory (Annenkov--Capriotti--Kraus--Sattler \cite{2LTT})
749:fragment is used to formalize semantics (e.g.\ inverse diagrams of types
754:\subsection{Modal HoTT}
756:Modal type theory adds operators $\square, \diamondsuit$ corresponding to
758:Schreiber--Shulman cohesive HoTT \cite{SchreiberShulman}, where the
760:$\mathrm{disc} \dashv \Pi \dashv \mathrm{codisc}$ for cohesive
761:$(\infty,1)$-toposes, and the spatial type theory of Riley
762:\cite{Riley}.
764:\subsection{Directed HoTT}
767:\emph{morphisms}, so that types correspond to $(\infty, n)$-categories
768:rather than $\infty$-groupoids. Riehl--Shulman \cite{RiehlShulman} develop
769:\emph{simplicial type theory} with a primitive directed interval $\Delta^1$
771:\cite{CisinskiNguyen} is an active research frontier.
773:\section{Transcendentals in HoTT}
774:\label{sec:transcendentals}
776:We work inside $\R_c$ from \Cref{sec:reals}.
778:\subsection{$\pi$ as the period of $\exp$ on $i\R$}
780:\begin{definition}[Real exponential]
781:The map $\exp : \R_c \to \R_c$ is defined as the unique solution to
782:$y' = y, y(0) = 1$ in $\R_c$ -- equivalently, by the power series
783:$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.
784:\end{definition}
786:\begin{definition}[Pi]
787:\label{def:pi}
788:Define $\sin : \R_c \to \R_c$ by the power series
789:$\sum_{k=0}^\infty (-1)^k x^{2k+1}/(2k+1)!$. The unique-existence
791:\[
792:\sum_{p : \R_c}\;\bigl(\sin(p) = 0\bigr) \times \bigl(p > 0\bigr) \times
793:\bigl(\prod_{x : \R_c}\;0 < x < p \to \sin(x) > 0\bigr)
795:is contractible. We define $\pi$ to be its centre.
796:\end{definition}
798:\begin{theorem}
799:\label{thm:pi-trans}
800:Lindemann's theorem ports to HoTT: $\pi$ is transcendental over $\Q$, in
802:\[
803:\sum_{p : \mathrm{Poly}(\Q)}\;\bigl(p \neq 0\bigr) \times
804:\bigl(p(\pi) = 0\bigr)
806:is empty (equivalent to $\mathbf{0}$).
807:\end{theorem}
809:\begin{proof}[Proof sketch]
812:are available constructively in $\R_c$. The port is therefore believed
816:\begin{itemize}
817:\item Cauchy completeness of $\R_c$, basic limits, the Archimedean
818:property, and elementary calculus on $\R_c$ (Booij's thesis
819:\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
820:\item Convergence of power series and analytic functions in HoTT, plus
822:(scaffolded in the agda-unimath project \cite{AgdaUnimath}).
823:\end{itemize}
825:Hermite--Lindemann auxiliary function $J(t) = \int_0^t e^{t - s}
826:f(s)\,ds$ and its bounds in $\R_c$; (ii)~the algebraic-integer estimates
828:formalization of the Cauchy integral over $\R_c$. We identify this as
829:open work in \Cref{sec:conclusion}.
830:\end{proof}
832:\subsection{$e$ as the unique fixed point of $D$}
834:\begin{definition}[Euler's number]
835:\label{def:e}
836:Let $\exp : \R_c \to \R_c$ be as above. Then $e := \exp(1)$. Equivalently,
838:$\sum_{x : \R_c}\;\sum_{f : \R_c \to \R_c}\;
839:(f' = f) \times (f(0) = 1) \times (x = f(1))$.
840:\end{definition}
842:\begin{theorem}[Hermite, ported]
843:\label{thm:e-trans}
844:$e$ is transcendental over $\Q$.
845:\end{theorem}
847:\subsection{Identification across encodings}
849:\begin{theorem}[Reals are unique in HoTT up to equivalence]
850:\label{thm:reals-unique}
853:equivalent, hence equal as types by univalence. Consequently, $\pi$ and $e$
855:\end{theorem}
857:\section{Bridge: HoTT as the Internal Language of $(\infty,1)$-Toposes}
858:\label{sec:bridge}
860:\subsection{Categorical semantics}
862:\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
863:\label{thm:aw}
864:Identity types of intensional Martin-L\"of type theory are interpreted in
867:\end{theorem}
869:Voevodsky's simplicial set model \cite{KapulkinLumsdaine} establishes that
871:$(\infty, 1)$-topos $\mathsf{sSet}$ of Kan complexes.
873:\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
874:\label{thm:shulman-it}
875:Every $(\infty, 1)$-topos $\mathcal{E}$ admits a model of HoTT with
877:the initial $(\infty, 1)$-topos.
878:\end{theorem}
880:\subsection{Co-extensiveness with categorical and structural perspectives}
884:makes them \emph{equal} -- equal as objects of $\U$, equal as theories
888:\begin{remark}[The univalent correspondence, formalized]
890:\[
891:\text{Logic} \;\longleftrightarrow\;
892:\text{Type Theory} \;\longleftrightarrow\;
893:\text{Category Theory} \;\longleftrightarrow\;
894:\text{Homotopy}
897:in $\U$ correspond to the same homotopy type. In particular, ``58 as a
899:$\mathsf{Fin}_{59} \cap \mathsf{prime}^c$, etc.), ``58 as a term''
900:($\overline{58} : \N$), ``58 as an object'' (the discrete object
901:$58 \in \mathsf{Set}$), and ``58 as a space'' (the discrete homotopy type
902:$\mathsf{B}\mathbf{1}^{58}$) are equal up to canonical paths.
903:\end{remark}
905:\section{Results}
906:\label{sec:results}
910:\begin{theorem}[Encoding-free arithmetic]
911:\label{thm:main}
913:\begin{enumerate}
914:\item the inductive type $\N$ with $\zero, \suc$;
915:\item the initial NNO in any model of HoTT with $\N$-types;
916:\item the unique pointed endo-structure $X$ with $\mathsf{isInitial}(X, x_0, s)$;
917:\item up to univalent equality, every other type satisfying any of (1)--(3).
918:\end{enumerate}
920:$\U$), so $58 := \overline{58}$ is independent of representation.
921:\end{theorem}
923:\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
924:\label{thm:pi1-result}
925:Within HoTT, $\pi_1(S^1) = \Z$ admits a fully formal proof
926:\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
927:uses no external topology, only the HIT $\Sone$ and univalence.
928:\end{theorem}
930:\begin{theorem}[Reals and transcendentals]
931:\label{thm:reals-result}
932:The Cauchy reals $\R_c$ form an h-set inside HoTT
933:(\Cref{thm:reals}). The terms $\pi$ and $e$ are unique-existence centres of
936:\end{theorem}
938:\begin{theorem}[Bridge theorem]
939:\label{thm:bridge-result}
940:HoTT is sound and complete for $(\infty, 1)$-topos semantics
941:\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
945:\end{theorem}
947:\section{Discussion}
948:\label{sec:discussion}
950:\subsection{What HoTT does not solve}
954:\begin{itemize}
955:\item \emph{Coherence beyond truncation level}: proving general coherence
956:theorems for $(\infty, 1)$-categories \emph{inside} HoTT (rather than via
958:\cite{SemisimplicialProblem} is the canonical example.
959:\item \emph{Decidability and computation under axioms}: Book HoTT loses
962:\item \emph{Set-theoretic strength}: HoTT with univalence has the
964:cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical
967:\end{itemize}
969:\subsection{Philosophical reading}
978:\subsection{Pedagogical implications}
981:topology: $\pi_1(S^1) = \Z$ in twelve lines of Agda. This is not merely a
985:\subsection{Computational realisation}
987:The Haskell companion (\Cref{sec:haskell}) and the Agda fragments
988:(\Cref{sec:agda-sketch}) demonstrate that path induction, transport, and
989:the basic equational reasoning calculus can be \emph{simulated} at the
993:\section{Companion Implementation}
994:\label{sec:haskell}
997:repository (\texttt{src/05-hott/} of the \emph{Univalent Correspondence}
999:\begin{itemize}
1000:\item A GADT \texttt{Path a b} representing identity types with constructor
1001:\texttt{Refl :: Path a a}.
1002:\item Functions \texttt{sym}, \texttt{trans}, and \texttt{transport}
1003:mirroring \Cref{lem:sym,lem:trans,def:transport}.
1004:\item A type-level naturals module with peano-style \texttt{succ} and a
1006:\item A module sketching the circle as a HIT (necessarily approximated, as
1008:\item An Agda-style sketch in comments showing the analogous direct
1010:\end{itemize}
1011:The \texttt{Main.hs} executable runs a small demonstration.
1013:\section{Agda Sketch}
1014:\label{sec:agda-sketch}
1020:\begin{lstlisting}
1046:\end{lstlisting}
1048:\section{Conclusion and Future Work}
1049:\label{sec:conclusion}
1054:$\overline{58} : \N$; the universe-level identification of all NNOs is a
1055:theorem; the transcendental constants $\pi$ and $e$ are unique-existence
1056:centres in the higher inductive--inductive type $\R_c$. Univalence makes
1066:\subsection{Open problems}
1068:\begin{enumerate}
1069:\item Formalize Lindemann--Weierstrass in Cubical Agda end-to-end.
1070:\item Develop directed univalence sufficient to express the synthetic
1071:$(\infty, 2)$-Yoneda lemma.
1072:\item Formalize the Brown representability theorem inside synthetic
1075:\end{enumerate}
1077:\begin{thebibliography}{99}
1079:\bibitem{HoTTBook}
1081:\emph{Homotopy Type Theory: Univalent Foundations of Mathematics}.
1082:Institute for Advanced Study, 2013. \texttt{arXiv:1308.0729}.
1084:\bibitem{MartinLof84}
1085:P.\ Martin-L\"of.
1086:\emph{Intuitionistic Type Theory}. Bibliopolis, 1984.
1088:\bibitem{LumsdaineGroupoid}
1089:P.\ L.\ Lumsdaine. Weak omega-categories from intensional type theory.
1090:\emph{Logical Methods in Computer Science}, 6(3:24):1--19, 2010.
1092:\bibitem{vandenBergGarner}
1093:B.\ van den Berg and R.\ Garner. Types are weak omega-groupoids.
1094:\emph{Proc.\ London Math.\ Soc.}, 102(2):370--394, 2011.
1096:\bibitem{LicataShulman}
1097:D.\ R.\ Licata and M.\ Shulman. Calculating the fundamental group of the
1099:In \emph{LICS 2013}, pp.\ 223--232.
1101:\bibitem{LicataFinster}
1102:D.\ R.\ Licata and E.\ Finster. Eilenberg--MacLane spaces in homotopy type
1103:theory. In \emph{CSL-LICS 2014}, ACM, 2014.
1105:\bibitem{Booij}
1106:A.\ B.\ Booij. \emph{Analysis in univalent type theory}. PhD thesis,
1109:\bibitem{CCHM}
1110:C.\ Cohen, T.\ Coquand, S.\ Huber, A.\ M\"ortberg.
1112:axiom. In \emph{TYPES 2015}, LIPIcs 69, pp.\ 5:1--5:34.
1114:\bibitem{CubicalAgda}
1115:A.\ Vezzosi, A.\ M\"ortberg, A.\ Abel.
1118:\emph{Proc.\ ACM Program.\ Lang.}, 3(ICFP):87:1--87:29, 2019.
1120:\bibitem{AwodeyWarren}
1121:S.\ Awodey and M.\ A.\ Warren.
1123:\emph{Math.\ Proc.\ Cambridge Philos.\ Soc.}, 146(1):45--55, 2009.
1125:\bibitem{KapulkinLumsdaine}
1126:C.\ Kapulkin and P.\ L.\ Lumsdaine.
1128:\emph{J.\ Eur.\ Math.\ Soc.}, 23(6):2071--2126, 2021.
1130:\bibitem{ShulmanInftyTopos}
1131:M.\ Shulman. All $(\infty,1)$-toposes have strict univalent universes.
1132:\texttt{arXiv:1904.07004}, 2019.
1134:\bibitem{ShulmanStrength}
1135:M.\ Shulman. Higher inductive types and the formal Blakers--Massey theorem.
1136:\emph{Proc.\ ACM Program.\ Lang.}, 4(POPL):41:1--41:30, 2020.
1138:\bibitem{2LTT}
1139:D.\ Annenkov, P.\ Capriotti, N.\ Kraus, C.\ Sattler.
1141:\emph{Math.\ Structures Comput.\ Sci.}, 33(8):688--743, 2023.
1143:\bibitem{SchreiberShulman}
1144:U.\ Schreiber and M.\ Shulman. Quantum gauge field theory in cohesive
1145:homotopy type theory. In \emph{QPL 2012}, EPTCS 158, pp.\ 109--126, 2014.
1147:\bibitem{Riley}
1148:M.\ Riley. \emph{A type theory with a tiny object}.
1151:\bibitem{RiehlShulman}
1152:E.\ Riehl and M.\ Shulman. A type theory for synthetic
1153:$\infty$-categories. \emph{Higher Structures}, 1(1):147--224, 2017.
1155:\bibitem{CisinskiNguyen}
1156:D.-C.\ Cisinski, H.\ K.\ Nguyen.
1157:The universal coCartesian fibration. \texttt{arXiv:2210.08945}, 2022.
1159:\bibitem{AgdaUnimath}
1160:The agda-unimath project. \emph{The agda-unimath library}.
1161:\texttt{https://unimath.github.io/agda-unimath/}, accessed 2026.
1163:\bibitem{SemisimplicialProblem}
1164:N.\ Kraus. The general universal property of the propositional truncation.
1165:\emph{TYPES 2014}, LIPIcs 39, pp.\ 111--145.
1167:\bibitem{Voevodsky}
1168:V.\ Voevodsky. The equivalence axiom and univalent models of type theory.
1169:\texttt{arXiv:1402.5556}, 2014.
1171:\bibitem{Wadler2015}
1172:P.\ Wadler. Propositions as types.
1173:\emph{Comm.\ ACM}, 58(12):75--84, 2015.
1175:\bibitem{Lurie}
1176:J.\ Lurie. \emph{Higher Topos Theory}.
1177:Annals of Math.\ Studies 170, Princeton, 2009.
1179:\end{thebibliography}
1181:\end{document}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{thebibliography\\}|\\\\bibitem|\\\\texttt\\{|https?://|arXiv|pp\\\\.|Proc\\\\.|PhD thesis|[A-Z]\\\\\\. \" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
617:$\prod_{x, y : \|A\|}(x = y)$. Its eliminator allows mapping $\|A\| \to P$
1082:Institute for Advanced Study, 2013. \texttt{arXiv:1308.0729}.
1094:\emph{Proc.\ London Math.\ Soc.}, 102(2):370--394, 2011.
1099:In \emph{LICS 2013}, pp.\ 223--232.
1106:A.\ B.\ Booij. \emph{Analysis in univalent type theory}. PhD thesis,
1112:axiom. In \emph{TYPES 2015}, LIPIcs 69, pp.\ 5:1--5:34.
1118:\emph{Proc.\ ACM Program.\ Lang.}, 3(ICFP):87:1--87:29, 2019.
1123:\emph{Math.\ Proc.\ Cambridge Philos.\ Soc.}, 146(1):45--55, 2009.
1132:\texttt{arXiv:1904.07004}, 2019.
1136:\emph{Proc.\ ACM Program.\ Lang.}, 4(POPL):41:1--41:30, 2020.
1145:homotopy type theory. In \emph{QPL 2012}, EPTCS 158, pp.\ 109--126, 2014.
1149:PhD thesis, Wesleyan University, 2022.
1157:The universal coCartesian fibration. \texttt{arXiv:2210.08945}, 2022.
1161:\texttt{https://unimath.github.io/agda-unimath/}, accessed 2026.
1165:\emph{TYPES 2014}, LIPIcs 39, pp.\ 111--145.
1169:\texttt{arXiv:1402.5556}, 2014.

exec
/usr/local/bin/zsh -lc 'rg -n "''^[''^%]*'"\\\\cite|"'^[''^%]*'"\\\\Cref|"'^[''^%]*'"\\\\ref\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n -F '\\begin{theorem}[' papers/05-hott/latex/05-hott.tex; rg -n -F '\\begin{definition}[' papers/05-hott/latex/05-hott.tex; rg -n -F '\\begin{remark}[' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:^[^%]*\cite|^[^%]*\Cref|^[^%]*\ref)
             ^^
error: unrecognized escape sequence

 succeeded in 0ms:
397:\begin{theorem}[Path groupoid]
448:\begin{theorem}[Hedberg]
492:\begin{theorem}[Voevodsky's univalence axiom]
519:\begin{theorem}[Contractibility of NNO]
590:\begin{theorem}[Function extensionality from univalence]
633:\begin{theorem}[Loop space of $S^1$]
661:\begin{theorem}[Hopf fibration, internal]
680:\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
727:\begin{theorem}[Univalence in cubical type theory]
842:\begin{theorem}[Hermite, ported]
849:\begin{theorem}[Reals are unique in HoTT up to equivalence]
862:\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
873:\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
910:\begin{theorem}[Encoding-free arithmetic]
923:\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
930:\begin{theorem}[Reals and transcendentals]
938:\begin{theorem}[Bridge theorem]
222:\begin{definition}[Function type]
227:\begin{definition}[Cartesian product]
253:\begin{definition}[Natural numbers]
274:\begin{definition}[Numerals]
340:\begin{definition}[Identity type]
418:\begin{definition}[Transport]
436:\begin{definition}[Contractibility, propositions, sets]
469:\begin{definition}[Quasi-inverse and equivalence]
508:\begin{definition}[Type of NNOs]
609:\begin{definition}[Interval]
614:\begin{definition}[Propositional truncation]
623:\begin{definition}[Circle]
705:\begin{definition}[Cube category]
780:\begin{definition}[Real exponential]
786:\begin{definition}[Pi]
834:\begin{definition}[Euler's number]
888:\begin{remark}[The univalent correspondence, formalized]

exec
/usr/local/bin/zsh -lc "rg -n -F 'S"'^1'"' papers/05-hott/latex/05-hott.tex; rg -n -F '\\Sone' papers/05-hott/latex/05-hott.tex; rg -n -F '\\pi_1' papers/05-hott/latex/05-hott.tex; rg -n -F '\\R_c' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
77:\newcommand{\Sone}{S^1}
124:illustrated by the circle $S^1$ with $\pi_1(S^1) = \Z$, and Booij's
178:circle, $\pi_1(S^1) = \Z$, propositional truncation, the Cauchy reals.
633:\begin{theorem}[Loop space of $S^1$]
663:There is a fibration $h : S^3 \to S^2$ with fibers $S^1$, definable as a
923:\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
925:Within HoTT, $\pi_1(S^1) = \Z$ admits a fully formal proof
981:topology: $\pi_1(S^1) = \Z$ in twelve lines of Agda. This is not merely a
77:\newcommand{\Sone}{S^1}
625:$\Sone$ has constructors $\base : \Sone$ and a path
626:$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
628:$\mathsf{ind}_{\Sone}(P, b, \ell) : \prod_{x : \Sone} P(x)$, computing as
629:$\mathsf{ind}_{\Sone}(P, b, \ell)(\base) \equiv b$ and a corresponding rule
635:$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
641:$\mathsf{code} : \Sone \to \U$ by $\mathsf{code}(\base) := \Z$ and on
927:uses no external topology, only the HIT $\Sone$ and univalence.
124:illustrated by the circle $S^1$ with $\pi_1(S^1) = \Z$, and Booij's
178:circle, $\pi_1(S^1) = \Z$, propositional truncation, the Cauchy reals.
635:$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
923:\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
925:Within HoTT, $\pi_1(S^1) = \Z$ admits a fully formal proof
981:topology: $\pi_1(S^1) = \Z$ in twelve lines of Agda. This is not merely a
682:There is a higher inductive--inductive type $\R_c$ presenting the
684:$\mathsf{rat} : \Q \to \R_c$, a Cauchy-completion limit operation, and a
686:positive rational. $\R_c$ has the universal property of the Cauchy
776:We work inside $\R_c$ from \Cref{sec:reals}.
781:The map $\exp : \R_c \to \R_c$ is defined as the unique solution to
782:$y' = y, y(0) = 1$ in $\R_c$ -- equivalently, by the power series
783:$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.
788:Define $\sin : \R_c \to \R_c$ by the power series
792:\sum_{p : \R_c}\;\bigl(\sin(p) = 0\bigr) \times \bigl(p > 0\bigr) \times
793:\bigl(\prod_{x : \R_c}\;0 < x < p \to \sin(x) > 0\bigr)
812:are available constructively in $\R_c$. The port is therefore believed
817:\item Cauchy completeness of $\R_c$, basic limits, the Archimedean
818:property, and elementary calculus on $\R_c$ (Booij's thesis
826:f(s)\,ds$ and its bounds in $\R_c$; (ii)~the algebraic-integer estimates
828:formalization of the Cauchy integral over $\R_c$. We identify this as
836:Let $\exp : \R_c \to \R_c$ be as above. Then $e := \exp(1)$. Equivalently,
838:$\sum_{x : \R_c}\;\sum_{f : \R_c \to \R_c}\;
932:The Cauchy reals $\R_c$ form an h-set inside HoTT
1056:centres in the higher inductive--inductive type $\R_c$. Univalence makes

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>80 { print FNR ":" length($0) ":" $0 }'"' papers/05-hott/latex/05-hott.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
286:97:The non-dependent recursor $\mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C$
916:81:\item the unique pointed endo-structure $X$ with $\mathsf{isInitial}(X, x_0, s)$;

exec
/usr/local/bin/zsh -lc "rg -n \"looppath\" /usr/local/texlive/2026/texmf-dist/tex /Library/TeX/texbin 2>/dev/null | sed -n '1,80p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 515ms:
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '284,288p;858,875p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '70,80p;160,168p;404,414p;468,477p;538,543p;572,577p;623,646p;656,681p;727,748p;758,772p;816,823p;923,941p;954,965p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   284	\subsection{Recursion and arithmetic}
   285	
   286	The non-dependent recursor $\mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C$
   287	is the special case where $P(n) := C$ for all $n$.
   288	
   858	\label{sec:bridge}
   859	
   860	\subsection{Categorical semantics}
   861	
   862	\begin{theorem}[Awodey--Warren \cite{AwodeyWarren}]
   863	\label{thm:aw}
   864	Identity types of intensional Martin-L\"of type theory are interpreted in
   865	weak factorisation systems; the model in simplicial sets exhibits the path
   866	groupoid as a Kan complex.
   867	\end{theorem}
   868	
   869	Voevodsky's simplicial set model \cite{KapulkinLumsdaine} establishes that
   870	HoTT with univalence has a sound interpretation in the
   871	$(\infty, 1)$-topos $\mathsf{sSet}$ of Kan complexes.
   872	
   873	\begin{theorem}[Shulman \cite{ShulmanInftyTopos}]
   874	\label{thm:shulman-it}
   875	Every $(\infty, 1)$-topos $\mathcal{E}$ admits a model of HoTT with

 succeeded in 0ms:
    70	\newcommand{\snd}{\mathsf{snd}}
    71	\newcommand{\inl}{\mathsf{inl}}
    72	\newcommand{\inr}{\mathsf{inr}}
    73	\newcommand{\Path}{\mathsf{Path}}
    74	% \looppath is a TeX primitive; use \looppathpath instead.
    75	\newcommand{\looppathpath}{\mathsf{loop}}
    76	\newcommand{\base}{\mathsf{base}}
    77	\newcommand{\Sone}{S^1}
    78	\newcommand{\op}{\mathrm{op}}
    79	\newcommand{\isContr}{\mathsf{isContr}}
    80	\newcommand{\isProp}{\mathsf{isProp}}
   160	Two natural number objects, two presentations of the reals, two $K(G,1)$'s
   161	for the same group are not merely isomorphic up to a chosen comparison map
   162	-- they are paths in the universe.
   163	
   164	This paper develops the perspective in detail. We restrict ourselves to the
   165	\emph{Book HoTT} of \cite{HoTTBook} except where noted, and present the
   166	material in standard Martin-L\"of style with one universe $\U$ for clarity;
   167	the ramified hierarchy $\U_0 : \U_1 : \U_2 : \cdots$ is needed for
   168	foundational coherence but plays no role in the arithmetic content.
   404	\end{enumerate}
   405	Moreover the higher coherences (the pentagon, the Eckmann--Hilton
   406	argument, etc.) all hold up to higher paths, making $A$ into an
   407	$\infty$-groupoid \cite{LumsdaineGroupoid, vandenBergGarner}.
   408	\end{theorem}
   409	
   410	\begin{proof}[Proof sketch]
   411	Each clause is proved by $J$ on the relevant paths. For the higher coherences
   412	one iterates $J$ at successively higher levels; see
   413	\cite[\S2.1]{HoTTBook}.
   414	\end{proof}
   468	
   469	\begin{definition}[Quasi-inverse and equivalence]
   470	\label{def:equiv}
   471	A function $f : A \to B$ has a \emph{quasi-inverse} if there exist
   472	$g : B \to A$ and homotopies $\eta : g \circ f \sim \mathrm{id}_A$ and
   473	$\varepsilon : f \circ g \sim \mathrm{id}_B$. The proposition
   474	$\mathsf{isEquiv}(f)$ is the half-adjoint version
   475	\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
   476	proposition. We write $A \eqv B := \sum_{f : A \to B} \mathsf{isEquiv}(f)$.
   477	\end{definition}
   538	\emph{Step 2. Paths in $\Sigma$-types.}
   539	Recall that a path in $\sum_{a : A} B(a)$ between $(a, b)$ and
   540	$(a', b')$ is, up to canonical isomorphism, a pair $(p, q)$ where
   541	$p : a =_A a'$ and $q : \transport^B(p)(b) =_{B(a')} b'$
   542	\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
   543	$\Sigma$-tuples
   572	Since $(X, x_0, s, \cdot)$ was arbitrary, $\mathrm{NNO}$ is contractible.
   573	The argument is the same shape as the contractibility of the type of
   574	``small structures-of-shape-$T$ on a fixed base'' once $T$ is replaced
   575	by the signature ``one constant and one unary operation''; see
   576	\cite[\S5.4 and \S2.7]{HoTTBook}.
   577	\end{proof}
   623	\begin{definition}[Circle]
   624	\label{def:circle}
   625	$\Sone$ has constructors $\base : \Sone$ and a path
   626	$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
   627	$b : P(\base)$, and $\ell : \transport^P(\looppath)(b) = b$, there is
   628	$\mathsf{ind}_{\Sone}(P, b, \ell) : \prod_{x : \Sone} P(x)$, computing as
   629	$\mathsf{ind}_{\Sone}(P, b, \ell)(\base) \equiv b$ and a corresponding rule
   630	on $\looppath$.
   631	\end{definition}
   632	
   633	\begin{theorem}[Loop space of $S^1$]
   634	\label{thm:pi1}
   635	$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
   636	Indeed $(\base = \base) \eqv \Z$ as a type, before truncation.
   637	\end{theorem}
   638	
   639	\begin{proof}[Proof sketch]
   640	Define the universal cover
   641	$\mathsf{code} : \Sone \to \U$ by $\mathsf{code}(\base) := \Z$ and on
   642	$\looppath$ by univalence and the successor equivalence
   643	$\mathsf{succ} : \Z \eqv \Z$. Then
   644	$(\base = -) \sim \mathsf{code}$ by the encode--decode method
   645	(Licata--Shulman \cite{LicataShulman}); evaluating at $\base$ gives
   646	$(\base = \base) \eqv \Z$.
   656	The $n$-sphere $S^n$ is defined recursively as $\Sigma S^{n-1}$ where
   657	$\Sigma$ is the unreduced suspension HIT. The pushout of
   658	$f : C \to A$ and $g : C \to B$ has constructors for $A$, $B$, and a path
   659	identifying $f(c)$ and $g(c)$ for each $c : C$.
   660	
   661	\begin{theorem}[Hopf fibration, internal]
   662	\label{thm:hopf}
   663	There is a fibration $h : S^3 \to S^2$ with fibers $S^1$, definable as a
   664	HIT and characterized by the long exact sequence of homotopy groups; in
   665	particular $\pi_3(S^2) \eqv \Z$ via the Hopf invariant
   666	\cite[\S8.5]{HoTTBook}.
   667	\end{theorem}
   668	
   669	\subsection{Eilenberg--MacLane spaces}
   670	
   671	For each abelian group $G$ and $n \geq 1$ there is a HIT $K(G, n)$ with
   672	$\pi_n = G$ and $\pi_k = 0$ for $k \neq n$
   673	\cite{LicataFinster}. Synthetic cohomology
   674	$H^n(X; G) := \|X \to K(G, n)\|_0$ recovers ordinary singular cohomology
   675	when $X$ is a CW-complex.
   676	
   677	\subsection{Real numbers as a higher inductive--inductive type}
   678	\label{sec:reals}
   679	
   680	\begin{theorem}[Booij \cite{Booij}, after \cite{HoTTBook}~\S11.3]
   681	\label{thm:reals}
   727	\begin{theorem}[Univalence in cubical type theory]
   728	\label{thm:cubical-univalence}
   729	Cubical type theory in the CCHM model proves $\ua$ as a defined term, and
   730	$\idtoeqv \circ \ua$ reduces to the identity by computation, not by
   731	postulate \cite{CCHM, CubicalAgda}.
   732	\end{theorem}
   733	
   734	\subsection{Implementations}
   735	
   736	The Cubical Agda mode \cite{CubicalAgda} and the
   737	\texttt{cubicaltt} prototype implement the system; the \texttt{redtt} and
   738	\texttt{cooltt} projects extend it with cartesian intervals and modalities.
   739	For our purposes the relevant fact is that all theorems of
   740	\Cref{sec:univalence,sec:hits} can be \emph{computed}, not just postulated.
   741	
   742	\section{Variants: 2LTT, Modal, and Directed HoTT}
   743	\label{sec:variants}
   744	
   745	\subsection{Two-level type theory}
   746	
   747	Two-level type theory (Annenkov--Capriotti--Kraus--Sattler \cite{2LTT})
   748	introduces a strict equality alongside the homotopical one. The strict
   758	Schreiber--Shulman cohesive HoTT \cite{SchreiberShulman}, where the
   759	cohesion modalities recover the discrete--codiscrete--shape adjoint string
   760	$\mathrm{disc} \dashv \Pi \dashv \mathrm{codisc}$ for cohesive
   761	$(\infty,1)$-toposes, and the spatial type theory of Riley
   762	\cite{Riley}.
   763	
   764	\subsection{Directed HoTT}
   765	
   766	Directed type theory replaces invertible paths with possibly non-invertible
   767	\emph{morphisms}, so that types correspond to $(\infty, n)$-categories
   768	rather than $\infty$-groupoids. Riehl--Shulman \cite{RiehlShulman} develop
   769	\emph{simplicial type theory} with a primitive directed interval $\Delta^1$
   770	and prove a synthetic Yoneda lemma; directed univalence
   771	\cite{CisinskiNguyen} is an active research frontier.
   772	
   816	\begin{itemize}
   817	\item Cauchy completeness of $\R_c$, basic limits, the Archimedean
   818	property, and elementary calculus on $\R_c$ (Booij's thesis
   819	\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
   820	\item Convergence of power series and analytic functions in HoTT, plus
   821	algebraic manipulations of polynomial rings and symmetric functions
   822	(scaffolded in the agda-unimath project \cite{AgdaUnimath}).
   823	\end{itemize}
   923	\begin{theorem}[Synthetic computation of $\pi_1(S^1)$]
   924	\label{thm:pi1-result}
   925	Within HoTT, $\pi_1(S^1) = \Z$ admits a fully formal proof
   926	\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
   927	uses no external topology, only the HIT $\Sone$ and univalence.
   928	\end{theorem}
   929	
   930	\begin{theorem}[Reals and transcendentals]
   931	\label{thm:reals-result}
   932	The Cauchy reals $\R_c$ form an h-set inside HoTT
   933	(\Cref{thm:reals}). The terms $\pi$ and $e$ are unique-existence centres of
   934	contractible types of solutions of structural conditions. Their classical
   935	properties (irrationality, transcendence) port mechanically.
   936	\end{theorem}
   937	
   938	\begin{theorem}[Bridge theorem]
   939	\label{thm:bridge-result}
   940	HoTT is sound and complete for $(\infty, 1)$-topos semantics
   941	\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
   954	\begin{itemize}
   955	\item \emph{Coherence beyond truncation level}: proving general coherence
   956	theorems for $(\infty, 1)$-categories \emph{inside} HoTT (rather than via
   957	2LTT) is non-trivial. The semisimplicial types problem
   958	\cite{SemisimplicialProblem} is the canonical example.
   959	\item \emph{Decidability and computation under axioms}: Book HoTT loses
   960	canonicity. Cubical type theory restores it but at the cost of a more
   961	intricate calculus.
   962	\item \emph{Set-theoretic strength}: HoTT with univalence has the
   963	proof-theoretic strength of ZFC + ``there exist many inaccessible
   964	cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical
   965	practice. Whether all of analytic number theory ports remains an open

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$1'"\\n\" if /\\\\label\\{(["'^}]*)'"\\}/' papers/05-hott/latex/05-hott.tex | sort | uniq -d" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$1'"\\n\" if /\\\\bibitem\\{(["'^}]*)'"\\}/' papers/05-hott/latex/05-hott.tex | sort | uniq -d" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:cite(?:\\[["'^'"\\]]*\\])?|Cref|cref|ref)\\{(["'^}]*)'"\\}/g){print \""'$.:$&'"\\n\"}' papers/05-hott/latex/05-hott.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
165:\cite{HoTTBook}
172:\ref{sec:framework}
173:\ref{sec:nat}
174:\ref{sec:identity}
175:\ref{sec:univalence}
177:\ref{sec:hits}
179:\ref{sec:cubical}
180:\ref{sec:variants}
181:\ref{sec:transcendentals}
182:\ref{sec:bridge}
183:\ref{sec:results}
183:\ref{sec:conclusion}
211:\cite{MartinLof84}
212:\cite[Appendix~A]{HoTTBook}
320:\Cref{thm:funext}
328:\ref{prop:nno}
331:\Cref{sec:univalence}
407:\cite{LumsdaineGroupoid, vandenBergGarner}
413:\cite[\S2.1]{HoTTBook}
475:\cite[\S4.2]{HoTTBook}
504:\Cref{sec:cubical}
516:\Cref{prop:nno}
529:\Cref{prop:nno}
535:\Cref{thm:univalence}
542:\cite[Theorem~2.7.2]{HoTTBook}
576:\cite[\S5.4 and \S2.7]{HoTTBook}
585:\Cref{cor:58-canonical}
598:\cite[\S4.9]{HoTTBook}
645:\cite{LicataShulman}
649:\Cref{thm:pi1}
666:\cite[\S8.5]{HoTTBook}
673:\cite{LicataFinster}
680:\cite{Booij}
680:\cite{HoTTBook}
707:\cite{CCHM}
731:\cite{CCHM, CubicalAgda}
736:\cite{CubicalAgda}
740:\Cref{sec:univalence,sec:hits}
747:\cite{2LTT}
758:\cite{SchreiberShulman}
762:\cite{Riley}
768:\cite{RiehlShulman}
771:\cite{CisinskiNguyen}
776:\Cref{sec:reals}
819:\cite{Booij}
819:\cite[\S11.3]{HoTTBook}
822:\cite{AgdaUnimath}
829:\Cref{sec:conclusion}
862:\cite{AwodeyWarren}
869:\cite{KapulkinLumsdaine}
873:\cite{ShulmanInftyTopos}
926:\cite{LicataShulman}
933:\Cref{thm:reals}
941:\cite{ShulmanInftyTopos}
958:\cite{SemisimplicialProblem}
964:\cite{ShulmanStrength}
987:\Cref{sec:haskell}
988:\Cref{sec:agda-sketch}
1003:\Cref{lem:sym,lem:trans,def:transport}

codex
Reviewed [05-hott.tex](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1). I could not run a full LaTeX compile because the sandbox blocks all writes, including `/tmp`, so there is no fresh `.log` for confirmed overfull/underfull boxes. Static checks found no missing installed packages, no duplicate labels, and no unresolved `\ref`/`\Cref`/`\cite` targets.

**Issues**
1. [Line 75](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:75), [626](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:626), [627](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:627), [630](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:630), [642](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:642): `\looppathpath` is defined, but the body uses `\looppath`. This is likely an undefined control sequence.
   Fix: replace those body uses with `\looppathpath`, or define a clearer macro like `\newcommand{\loopSone}{\mathsf{loop}}` and use it consistently.

2. [Line 286](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:286): long inline recursor type is an overfull-box risk.
   Fix: put the type in display math:
   ```tex
   The non-dependent recursor
   \[
   \mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C
   \]
   is the special case ...
   ```

3. Citation spacing uses breakable spaces before `\cite`, which can leave citations stranded at line starts. Affected lines: 165, 211, 212, 407, 413, 475, 542, 576, 598, 645, 666, 673, 680, 707, 731, 736, 747, 758, 762, 768, 771, 819, 822, 862, 869, 873, 926, 941, 958, 964.
   Fix: use nonbreaking spaces, e.g. `HoTT~\cite{HoTTBook}`, `see~\cite[...]`, `semantics~\cite{...}`.

4. [Line 180](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:180) and [657](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:657): sentence-ending periods after all-caps abbreviations get abbreviation spacing.
   Fix: use `HoTT\@.` and `HIT\@.` if sentence spacing matters.

5. [Lines 680](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:680), [862](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:862), [873](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:873): citations are embedded in theorem headings, unlike most other citations.
   Fix: keep headings citation-free and move citations into the theorem body.

6. Circle notation is inconsistent: raw `$S^1$` / `\pi_1(S^1)` appears at lines 124, 178, 633, 923, 925, 981, while `\Sone` is used elsewhere.
   Fix: use `\Sone` consistently, e.g. `\pi_1(\Sone)`.

7. [Lines 1167](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1167), [1171](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1171), [1175](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1175): `Voevodsky`, `Wadler2015`, and `Lurie` bibitems are uncited.
   Fix: cite them where relevant or remove the entries.
2026-05-04T01:40:16.836999Z ERROR codex_core::session: failed to record rollout items: thread 019df0a0-9a1e-7c40-820c-b923369ae9c0 not found
tokens used
96,090
Reviewed [05-hott.tex](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1). I could not run a full LaTeX compile because the sandbox blocks all writes, including `/tmp`, so there is no fresh `.log` for confirmed overfull/underfull boxes. Static checks found no missing installed packages, no duplicate labels, and no unresolved `\ref`/`\Cref`/`\cite` targets.

**Issues**
1. [Line 75](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:75), [626](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:626), [627](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:627), [630](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:630), [642](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:642): `\looppathpath` is defined, but the body uses `\looppath`. This is likely an undefined control sequence.
   Fix: replace those body uses with `\looppathpath`, or define a clearer macro like `\newcommand{\loopSone}{\mathsf{loop}}` and use it consistently.

2. [Line 286](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:286): long inline recursor type is an overfull-box risk.
   Fix: put the type in display math:
   ```tex
   The non-dependent recursor
   \[
   \mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C
   \]
   is the special case ...
   ```

3. Citation spacing uses breakable spaces before `\cite`, which can leave citations stranded at line starts. Affected lines: 165, 211, 212, 407, 413, 475, 542, 576, 598, 645, 666, 673, 680, 707, 731, 736, 747, 758, 762, 768, 771, 819, 822, 862, 869, 873, 926, 941, 958, 964.
   Fix: use nonbreaking spaces, e.g. `HoTT~\cite{HoTTBook}`, `see~\cite[...]`, `semantics~\cite{...}`.

4. [Line 180](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:180) and [657](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:657): sentence-ending periods after all-caps abbreviations get abbreviation spacing.
   Fix: use `HoTT\@.` and `HIT\@.` if sentence spacing matters.

5. [Lines 680](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:680), [862](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:862), [873](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:873): citations are embedded in theorem headings, unlike most other citations.
   Fix: keep headings citation-free and move citations into the theorem body.

6. Circle notation is inconsistent: raw `$S^1$` / `\pi_1(S^1)` appears at lines 124, 178, 633, 923, 925, 981, while `\Sone` is used elsewhere.
   Fix: use `\Sone` consistently, e.g. `\pi_1(\Sone)`.

7. [Lines 1167](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1167), [1171](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1171), [1175](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:1175): `Voevodsky`, `Wadler2015`, and `Lurie` bibitems are uncited.
   Fix: cite them where relevant or remove the entries.
