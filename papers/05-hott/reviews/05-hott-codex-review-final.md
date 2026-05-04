---
reviewer: codex (OpenAI)
type: formatting (final pass)
paper: 05-hott
date: 2026-05-04T14:19:09Z
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
session id: 019df35b-73ff-7491-ab6f-d39c25a212a8
--------
user
Review /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex for LaTeX formatting issues only (this is a FINAL pass after one prior Codex round). List ONLY blocking issues: compilation errors, broken references, missing packages, or visible rendering problems. Do not suggest stylistic changes. Provide line numbers and exact fixes.
codex
I’ll inspect the target `.tex` and nearby LaTeX structure, then run a focused compile/reference check if the project has a standard build path. I’ll keep this to blocking formatting/build issues only.
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
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
    74	% \loop is a TeX primitive; we use \looppath as a safe replacement.
    75	\newcommand{\looppath}{\mathsf{loop}}
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
   124	illustrated by the circle $\Sone{}$ with $\pi_1(\Sone{}) = \Z$, and Booij's
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
   165	\emph{Book HoTT} of~\cite{HoTTBook} except where noted, and present the
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
   178	circle, $\pi_1(\Sone{}) = \Z$, propositional truncation, the Cauchy reals.
   179	Section~\ref{sec:cubical} sketches cubical type theory.
   180	Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT\@.
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
   211	the substrate~\cite{MartinLof84}. The pertinent rules are summarized below
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

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|eqref|cite|label|includegraphics|input|bibliography|bibliographystyle|usepackage|documentclass)|TODO|undefined|Missing|Package\" papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|eqref|cite|label|includegraphics|input|bibliography|bibliographystyle|usepackage|documentclass)|TODO|undefined|Missing|Package)
                                                                                                                                           ^
error: unopened group

exec
/usr/local/bin/zsh -lc 'pwd && rg --files papers/05-hott/latex | sort' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
papers/05-hott/latex/05-hott.tex

codex
The file is standalone and there’s only one `.tex` in that LaTeX folder. I hit a bad search regex on the first pass, so I’m switching to line-based inspection plus an actual LaTeX run to separate real blockers from cosmetic noise.
exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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
   286	The non-dependent recursor
   287	\[
   288	\mathsf{rec}_\N : \prod_{C : \U} C \to (\N \to C \to C) \to \N \to C
   289	\]
   290	is the special case where $P(n) := C$ for all $n$.
   291	
   292	\begin{example}[Addition]
   293	\label{ex:add}
   294	Define $+ : \N \to \N \to \N$ by
   295	$m + n := \mathsf{rec}_\N\,\N\,n\,(\lambda k.\,\suc)\,m$, equivalently by
   296	$\zero + n \equiv n$ and $(\suc\,m) + n \equiv \suc(m + n)$. Multiplication
   297	and exponentiation are defined analogously.
   298	\end{example}
   299	
   300	\begin{proposition}[NNO universal property, internal]
   301	\label{prop:nno}
   302	For any type $C : \U$, point $c_0 : C$, and endo-map $f : C \to C$, there is
   303	a unique $h : \N \to C$ with $h(\zero) = c_0$ and
   304	$h(\suc\,n) = f(h\,n)$ for all $n : \N$.
   305	\end{proposition}
   306	
   307	\begin{proof}
   308	Existence: $h := \mathsf{rec}_\N\,C\,c_0\,(\lambda n.\,f)$. Uniqueness:
   309	suppose $h' : \N \to C$ also satisfies the equations. Define the
   310	predicate $P(n) := (h\,n =_C h'\,n)$.
   311	
   312	\emph{Base case.} The recursor's computation rule gives the
   313	\emph{definitional} (judgmental) equalities $h(\zero) \equiv c_0$ and
   314	$h'(\zero) \equiv c_0$, so $P(\zero)$ is inhabited by $\refl_{c_0}$ --
   315	no propositional equality reasoning is needed.
   316	
   317	\emph{Inductive step.} Assume $P(n)$, i.e.\ $q : h\,n = h'\,n$. The
   318	computation rules give $h(\suc\,n) \equiv f(h\,n)$ and
   319	$h'(\suc\,n) \equiv f(h'\,n)$ judgmentally; applying the action on paths
   320	$\mathsf{ap}_f : (a = b) \to (f\,a = f\,b)$ yields
   321	$\mathsf{ap}_f(q) : f(h\,n) = f(h'\,n)$, i.e.\ $h(\suc\,n) = h'(\suc\,n)$.
   322	Apply $\mathsf{ind}_\N$ to conclude $\prod_{n : \N} P(n)$. Function
   323	extensionality (\Cref{thm:funext}) then gives $h = h'$.
   324	\end{proof}
   325	
   326	\subsection{$\N$ in HoTT vs.\ $\N$ in set theory}
   327	\label{sec:nat-vs-set}
   328	
   329	\begin{remark}
   330	\label{rem:benacerraf}
   331	Proposition~\ref{prop:nno} renders Benacerraf's identification problem moot
   332	\emph{within} the type theory: $\N$ is determined up to canonical bijection
   333	by its formation and elimination rules. Combined with univalence
   334	(\Cref{sec:univalence}) it is determined up to canonical \emph{equality} as a
   335	term of $\U$.
   336	\end{remark}
   337	
   338	\section{Identity Types and Path Induction}
   339	\label{sec:identity}
   340	
   341	\subsection{The identity type}
   342	
   343	\begin{definition}[Identity type]
   344	\label{def:id}
   345	For each type $A : \U$ and elements $a, b : A$ there is a type
   346	$a =_A b$, called the \emph{identity type} or \emph{path space}. It is the
   347	inductive family generated by the single constructor
   348	$\refl_a : a =_A a$ for each $a : A$.
   349	\end{definition}
   350	
   351	The eliminator -- often called \emph{path induction} or the \emph{$J$-rule}
   352	-- says that to prove a property of all paths it suffices to prove it of the
   353	constant paths.
   354	
   355	\begin{proposition}[Path induction, $J$]
   356	\label{prop:J}
   357	For every type $A : \U$ and family
   358	$C : \prod_{x, y : A} (x =_A y) \to \U$, given a section
   359	$d : \prod_{x : A} C(x, x, \refl_x)$, there is a section
   360	\[
   361	J(C, d) : \prod_{x, y : A} \prod_{p : x =_A y} C(x, y, p),
   362	\]
   363	satisfying the computation rule $J(C, d, x, x, \refl_x) \equiv d(x)$.
   364	\end{proposition}
   365	
   366	\begin{remark}
   367	\label{rem:J-vs-K}
   368	$J$ is \emph{not} the principle ``every path is $\refl$.'' That stronger
   369	statement is Streicher's $K$-axiom and is incompatible with univalence: it
   370	forces every type to be a set. HoTT keeps $J$ but rejects $K$.
   371	\end{remark}
   372	
   373	\subsection{Symmetry, transitivity, and the path groupoid}
   374	
   375	\begin{lemma}[Symmetry]
   376	\label{lem:sym}
   377	There is a function
   378	$\mathsf{sym} : \prod_{A : \U}\prod_{x, y : A} (x =_A y) \to (y =_A x)$.
   379	\end{lemma}
   380	
   381	\begin{proof}
   382	Take $C(x, y, p) := (y =_A x)$ and $d(x) := \refl_x$, then apply $J$.
   383	\end{proof}
   384	
   385	\begin{lemma}[Transitivity]
   386	\label{lem:trans}
   387	There is a function $\mathsf{trans} : \prod_{A : \U}\prod_{x, y, z : A}
   388	(x =_A y) \to (y =_A z) \to (x =_A z)$.
   389	\end{lemma}
   390	
   391	\begin{proof}
   392	Fix $A, x, y, z$ and $p : x = y$. By $J$ on $p$ it suffices to assume
   393	$y \equiv x$ and $p \equiv \refl_x$, in which case
   394	$\mathsf{trans}(\refl_x, q) := q$ is a section.
   395	\end{proof}
   396	
   397	We write $p^{-1}$ for $\mathsf{sym}(p)$ and $p \cdot q$ for
   398	$\mathsf{trans}(p, q)$.
   399	
   400	\begin{theorem}[Path groupoid]
   401	\label{thm:groupoid}
   402	For any type $A$ and $a, b, c, d : A$, $p : a = b$, $q : b = c$, $r : c = d$:
   403	\begin{enumerate}
   404	\item $\refl_a \cdot p = p$ and $p \cdot \refl_b = p$;
   405	\item $p \cdot p^{-1} = \refl_a$ and $p^{-1} \cdot p = \refl_b$;
   406	\item $(p \cdot q) \cdot r = p \cdot (q \cdot r)$.
   407	\end{enumerate}
   408	Moreover the higher coherences (the pentagon, the Eckmann--Hilton
   409	argument, etc.) all hold up to higher paths, making $A$ into an
   410	$\infty$-groupoid~\cite{LumsdaineGroupoid, vandenBergGarner}.
   411	\end{theorem}
   412	
   413	\begin{proof}[Proof sketch]
   414	Each clause is proved by $J$ on the relevant paths. For the higher coherences
   415	one iterates $J$ at successively higher levels; see
   416	\cite[\S2.1]{HoTTBook}.
   417	\end{proof}
   418	
   419	\subsection{Transport}
   420	
   421	\begin{definition}[Transport]
   422	\label{def:transport}
   423	For $P : A \to \U$, $a, b : A$, and $p : a = b$, the function
   424	$\transport^P(p) : P(a) \to P(b)$ is defined by $J$:
   425	$\transport^P(\refl_a)(u) := u$.
   426	\end{definition}
   427	
   428	\begin{proposition}[Transport along concatenation]
   429	\label{prop:trans-concat}
   430	$\transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p)$.
   431	\end{proposition}
   432	
   433	\begin{proof}
   434	$J$ on either $p$ or $q$.
   435	\end{proof}
   436	
   437	\subsection{Homotopy levels}
   438	
   439	\begin{definition}[Contractibility, propositions, sets]
   440	\label{def:hlevel}
   441	A type $A : \U$ is
   442	\begin{itemize}
   443	\item \emph{contractible}, $\isContr(A) := \sum_{c : A} \prod_{x : A} (x = c)$;
   444	\item a \emph{mere proposition}, $\isProp(A) := \prod_{x, y : A} (x = y)$;
   445	\item a \emph{set} (h-set), $\isSet(A) := \prod_{x, y : A} \isProp(x = y)$.
   446	\end{itemize}
   447	The hierarchy continues: $A$ is an $n$-type iff every identity type of $A$
   448	is an $(n-1)$-type.
   449	\end{definition}
   450	
   451	\begin{theorem}[Hedberg]
   452	\label{thm:hedberg}
   453	If $A$ has decidable equality $\prod_{x, y : A} (x = y) + \neg(x = y)$, then
   454	$A$ is a set.
   455	\end{theorem}
   456	
   457	\begin{corollary}
   458	\label{cor:N-set}
   459	$\N$ is a set.
   460	\end{corollary}
   461	
   462	\begin{proof}
   463	Equality on $\N$ is decidable by induction on both arguments and Peano's
   464	fourth axiom $\suc\,m = \suc\,n \Rightarrow m = n$. Apply Hedberg.
   465	\end{proof}
   466	
   467	\section{The Univalence Axiom}
   468	\label{sec:univalence}
   469	
   470	\subsection{Equivalence of types}
   471	
   472	\begin{definition}[Quasi-inverse and equivalence]
   473	\label{def:equiv}
   474	A function $f : A \to B$ has a \emph{quasi-inverse} if there exist
   475	$g : B \to A$ and homotopies $\eta : g \circ f \sim \mathrm{id}_A$ and
   476	$\varepsilon : f \circ g \sim \mathrm{id}_B$. The proposition
   477	$\mathsf{isEquiv}(f)$ is the half-adjoint version
   478	\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
   479	proposition. We write $A \eqv B := \sum_{f : A \to B} \mathsf{isEquiv}(f)$.
   480	\end{definition}
   481	
   482	\begin{proposition}[idtoeqv]
   483	\label{prop:idtoeqv}
   484	There is a canonical map
   485	$\idtoeqv : (A =_\U B) \to (A \eqv B)$ taking $\refl_A$ to the identity
   486	equivalence.
   487	\end{proposition}
   488	
   489	\begin{proof}
   490	$J$ on the path $A = B$.
   491	\end{proof}
   492	
   493	\subsection{The axiom}
   494	
   495	\begin{theorem}[Voevodsky's univalence axiom]
   496	\label{thm:univalence}
   497	\textup{(\cite{Voevodsky}; \cite[Axiom 2.10.3]{HoTTBook}.)}
   498	For all types $A, B : \U$, the canonical map $\idtoeqv$ is itself an
   499	equivalence:
   500	\[
   501	\ua : (A \eqv B) \to (A =_\U B), \qquad
   502	\idtoeqv \circ \ua = \mathrm{id}_{A \eqv B}, \qquad
   503	\ua \circ \idtoeqv = \mathrm{id}_{A =_\U B}.
   504	\]
   505	\end{theorem}
   506	
   507	In Book HoTT this is taken as an axiom; in cubical type theory
   508	(\Cref{sec:cubical}) it is a theorem.
   509	
   510	\subsection{Consequences for arithmetic}
   511	
   512	\begin{definition}[Type of NNOs]
   513	\label{def:nno-type}
   514	Define
   515	\[
   516	\mathrm{NNO} := \sum_{X : \U}\;\sum_{x_0 : X}\;\sum_{s : X \to X}\;
   517	\mathsf{isInitial}(X, x_0, s),
   518	\]
   519	where $\mathsf{isInitial}(X, x_0, s)$ is the universal property of
   520	\Cref{prop:nno} expressed as a $\Sigma$-type.
   521	\end{definition}
   522	
   523	\begin{theorem}[Contractibility of NNO]
   524	\label{thm:nno-contractible}
   525	$\mathrm{NNO}$ is contractible.
   526	\end{theorem}
   527	
   528	\begin{proof}
   529	We exhibit $(\N, \zero, \suc, \mathsf{init}_\N)$ as the centre and supply
   530	a proof that every other quadruple is equal to it.
   531	
   532	\emph{Step 1. Equivalence at the carrier.}
   533	By \Cref{prop:nno} the standard structure $(\N, \zero, \suc)$ is initial.
   534	For any other initial $(X, x_0, s)$, the universal property applied in
   535	both directions yields mutually inverse maps $f : \N \to X$ and
   536	$g : X \to \N$ with $g \circ f = \mathrm{id}_\N$ and
   537	$f \circ g = \mathrm{id}_X$ (each by uniqueness of the universal
   538	recursor). Half-adjointness packages this as an equivalence
   539	$e : \N \eqv X$. Univalence (\Cref{thm:univalence}) promotes this to a
   540	path $p := \ua(e) : \N =_\U X$.
   541	
   542	\emph{Step 2. Paths in $\Sigma$-types.}
   543	Recall that a path in $\sum_{a : A} B(a)$ between $(a, b)$ and
   544	$(a', b')$ is, up to canonical isomorphism, a pair $(p, q)$ where
   545	$p : a =_A a'$ and $q : \transport^B(p)(b) =_{B(a')} b'$
   546	\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
   547	$\Sigma$-tuples
   548	$(a_1, a_2, \ldots, a_n)$ and $(a_1', a_2', \ldots, a_n')$ is a tuple of
   549	paths $(p_1, p_2, \ldots, p_n)$ where $p_k$ lives \emph{over} the
   550	preceding $p_1, \ldots, p_{k-1}$.
   551	
   552	\emph{Step 3. Constructing the path componentwise.}
   553	We must produce paths $(p, p_0, p_s, p_*)$ where:
   554	\begin{enumerate}
   555	\item $p : \N =_\U X$ is the carrier path from Step~1.
   556	\item $p_0 : \transport^{(X \mapsto X)}(p)(\zero) =_X x_0$. Because
   557	$\ua(e)$ transports along the equivalence $e$, the left-hand side
   558	reduces to $e(\zero)$, and the universal property of $\N$ forces
   559	$e(\zero) = x_0$ (the unique map $\N \to X$ sends $\zero$ to $x_0$),
   560	giving the required path.
   561	\item $p_s : \transport^{(X \mapsto X \to X)}(p)(\suc) = s$.
   562	The type family $X \mapsto X \to X$ has transport given by conjugation
   563	by $e$, so the left-hand side reduces to $e \circ \suc \circ e^{-1}$.
   564	Naturality of the universal recursor yields $e \circ \suc = s \circ e$,
   565	whence $e \circ \suc \circ e^{-1} = s$, supplying $p_s$.
   566	\item $p_*$: the initiality witness $\mathsf{isInitial}$ is a mere
   567	proposition (uniqueness of the universal recursor is a Pi-type into a
   568	contractible identity type), so any two initiality proofs are
   569	identified by a unique path.
   570	\end{enumerate}
   571	
   572	\emph{Step 4. Conclusion.}
   573	Bundling $(p, p_0, p_s, p_*)$ via the iterated $\Sigma$-path
   574	constructor gives the required equality
   575	$(\N, \zero, \suc, \mathsf{init}_\N) =_{\mathrm{NNO}} (X, x_0, s, \cdot)$.
   576	Since $(X, x_0, s, \cdot)$ was arbitrary, $\mathrm{NNO}$ is contractible.
   577	The argument is the same shape as the contractibility of the type of
   578	``small structures-of-shape-$T$ on a fixed base'' once $T$ is replaced
   579	by the signature ``one constant and one unary operation''; see
   580	\cite[\S5.4 and \S2.7]{HoTTBook}.
   581	\end{proof}
   582	
   583	\begin{corollary}
   584	\label{cor:58-canonical}
   585	For any NNO $(X, x_0, s)$ the term $s^{58}\,x_0$ is, after transport along
   586	the canonical equality $\N = X$, equal to $\overline{58} : \N$.
   587	\end{corollary}
   588	
   589	\Cref{cor:58-canonical} is the formal expression of the slogan ``58 is
   590	canonical across all NNOs.''
   591	
   592	\subsection{Function extensionality}
   593	
   594	\begin{theorem}[Function extensionality from univalence]
   595	\label{thm:funext}
   596	If $f, g : \prod_{x : A} B(x)$ and there is a homotopy
   597	$h : \prod_{x : A} (f\,x = g\,x)$, then $f = g$.
   598	\end{theorem}
   599	
   600	\begin{proof}[Proof sketch]
   601	Voevodsky proved this by representing $\prod_{x : A} B(x)$ via a clever
   602	$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.
   603	\end{proof}
   604	
   605	\section{Higher Inductive Types}
   606	\label{sec:hits}
   607	
   608	A higher inductive type (HIT) extends inductive types with constructors for
   609	\emph{paths} as well as points.
   610	
   611	\subsection{The interval and propositional truncation}
   612	
   613	\begin{definition}[Interval]
   614	The type $I$ has constructors $0_I, 1_I : I$ and a path
   615	$\mathsf{seg} : 0_I = 1_I$.
   616	\end{definition}
   617	
   618	\begin{definition}[Propositional truncation]
   619	\label{def:trunc}
   620	$\|A\|$ has $|a| : \|A\|$ for $a : A$ and a path constructor

exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   621	$\prod_{x, y : \|A\|}(x = y)$. Its eliminator allows mapping $\|A\| \to P$
   622	when $P$ is a mere proposition.
   623	\end{definition}
   624	
   625	\subsection{The circle}
   626	
   627	\begin{definition}[Circle]
   628	\label{def:circle}
   629	$\Sone$ has constructors $\base : \Sone$ and a path
   630	$\looppath : \base =_{\Sone} \base$. The eliminator: given $P : \Sone \to \U$,
   631	$b : P(\base)$, and $\ell : \transport^P(\looppath)(b) = b$, there is
   632	$\mathsf{ind}_{\Sone}(P, b, \ell) : \prod_{x : \Sone} P(x)$, computing as
   633	$\mathsf{ind}_{\Sone}(P, b, \ell)(\base) \equiv b$ and a corresponding rule
   634	on $\looppath$.
   635	\end{definition}
   636	
   637	\begin{theorem}[Loop space of \texorpdfstring{$\Sone{}$}{S\^{}1}]
   638	\label{thm:pi1}
   639	$\pi_1(\Sone) := \|(\base = \base)\|_0 \eqv \Z$.
   640	Indeed $(\base = \base) \eqv \Z$ as a type, before truncation.
   641	\end{theorem}
   642	
   643	\begin{proof}[Proof sketch]
   644	Define the universal cover
   645	$\mathsf{code} : \Sone \to \U$ by $\mathsf{code}(\base) := \Z$ and on
   646	$\looppath$ by univalence and the successor equivalence
   647	$\mathsf{succ} : \Z \eqv \Z$. Then
   648	$(\base = -) \sim \mathsf{code}$ by the encode--decode method
   649	(Licata--Shulman~\cite{LicataShulman}); evaluating at $\base$ gives
   650	$(\base = \base) \eqv \Z$.
   651	\end{proof}
   652	
   653	\Cref{thm:pi1} is the first non-trivial theorem of \emph{synthetic homotopy
   654	theory}: a result of algebraic topology proved entirely inside type theory,
   655	without recourse to topological spaces, simplicial sets, or model
   656	categories.
   657	
   658	\subsection{Spheres, suspensions, and pushouts}
   659	
   660	The $n$-sphere $S^n$ is defined recursively as $\Sigma S^{n-1}$ where
   661	$\Sigma$ is the unreduced suspension HIT\@. The pushout of
   662	$f : C \to A$ and $g : C \to B$ has constructors for $A$, $B$, and a path
   663	identifying $f(c)$ and $g(c)$ for each $c : C$.
   664	
   665	\begin{theorem}[Hopf fibration, internal]
   666	\label{thm:hopf}
   667	There is a fibration $h : S^3 \to S^2$ with fibers $\Sone{}$, definable as a
   668	HIT and characterized by the long exact sequence of homotopy groups; in
   669	particular $\pi_3(S^2) \eqv \Z$ via the Hopf invariant
   670	\cite[\S8.5]{HoTTBook}.
   671	\end{theorem}
   672	
   673	\subsection{Eilenberg--MacLane spaces}
   674	
   675	For each abelian group $G$ and $n \geq 1$ there is a HIT $K(G, n)$ with
   676	$\pi_n = G$ and $\pi_k = 0$ for $k \neq n$
   677	\cite{LicataFinster}. Synthetic cohomology
   678	$H^n(X; G) := \|X \to K(G, n)\|_0$ recovers ordinary singular cohomology
   679	when $X$ is a CW-complex.
   680	
   681	\subsection{Real numbers as a higher inductive--inductive type}
   682	\label{sec:reals}
   683	
   684	\begin{theorem}[Booij; HoTT Book \S11.3]
   685	\label{thm:reals}
   686	\textup{(\cite{Booij}, after~\cite[\S11.3]{HoTTBook}.)}
   687	There is a higher inductive--inductive type $\R_c$ presenting the
   688	\emph{Cauchy reals}: an h-set with constructors for rational injections
   689	$\mathsf{rat} : \Q \to \R_c$, a Cauchy-completion limit operation, and a
   690	path constructor identifying terms whose distance witnesses are below every
   691	positive rational. $\R_c$ has the universal property of the Cauchy
   692	completion of $\Q$ in the category of metric spaces internal to HoTT, and
   693	satisfies the axioms of an Archimedean ordered field.
   694	\end{theorem}
   695	
   696	The construction is \emph{higher} because of the path constructor and
   697	\emph{inductive--inductive} because the path constructor mentions a
   698	``closeness'' relation defined simultaneously with the carrier type.
   699	
   700	\subsection{Worked example: the canonical 58 across NNOs}
   701	\label{sec:worked-example}
   702	
   703	To make \Cref{thm:nno-contractible} concrete, we walk through how an
   704	arbitrary NNO yields the same ``58'' as $\N$.
   705	
   706	\begin{example}[58 in two NNOs]
   707	\label{ex:58-two-nnos}
   708	Take two structures.
   709	\begin{itemize}
   710	\item The standard one: $(\N, \zero, \suc)$.
   711	\item A bit-string encoding: $X := \mathrm{List}(\mathbf{1})$, with
   712	$x_0 := \mathsf{nil}$ and $s := \mathsf{cons}(\star, -)$.
   713	\end{itemize}
   714	Both are easily checked to satisfy the universal property of
   715	\Cref{prop:nno}; for the bit-string version, the unique recursor sends
   716	a list of length $n$ to the value $f^n(c_0)$ in any target $(C, c_0, f)$.
   717	
   718	By \Cref{thm:nno-contractible}, the data $(\N, \zero, \suc)$ and
   719	$(X, x_0, s)$ are equal as inhabitants of $\mathrm{NNO}$. Concretely:
   720	\begin{enumerate}
   721	\item the equivalence $e : \N \eqv X$ sends $\overline{n}$ to the list
   722	of length $n$;
   723	\item univalence gives $\ua(e) : \N =_\U X$;
   724	\item transporting $\overline{58} : \N$ along $\ua(e)$ yields the
   725	58-element list of $\star$'s in $X$;
   726	\item this list is, by definition of $X$, the value of
   727	$s^{58}\,x_0$.
   728	\end{enumerate}
   729	Thus the two ``58''s are propositionally equal, and \emph{this very
   730	equality} is the content of \Cref{cor:58-canonical}.
   731	\end{example}
   732	
   733	\begin{remark}[The Yoneda perspective recovered]
   734	\label{rem:yoneda-as-univalence}
   735	Paper~04 characterises every object $A$ by its representable functor
   736	$\mathrm{Hom}(-, A)$ and shows $A \simeq B \Leftrightarrow
   737	\mathrm{Hom}(-, A) \simeq \mathrm{Hom}(-, B)$ (Yoneda). Univalence
   738	upgrades the right-to-left direction: \emph{equivalent representables
   739	yield equal objects in $\U$}, which is the type-theoretic statement of
   740	the structuralist slogan ``a thing is what it relates to.''
   741	\end{remark}
   742	
   743	\subsection{Worked example: the loop concatenation as integer addition}
   744	\label{sec:s1-example}
   745	
   746	For \Cref{thm:pi1}, let us trace what happens to specific loops.
   747	
   748	\begin{example}[Three full turns then two backward]
   749	\label{ex:loops}
   750	Inside HoTT we represent the loop ``three times around'' as the path
   751	$\looppath \cdot \looppath \cdot \looppath$ at $\base$ in $\Sone$, i.e.\ a term
   752	of $\base = \base$. By the encode--decode equivalence
   753	$(\base = \base) \eqv \Z$, this term encodes to the integer $3$.
   754	
   755	Composing with $\looppath^{-1} \cdot \looppath^{-1}$ gives, by
   756	\Cref{thm:groupoid}, the path
   757	$\looppath \cdot \looppath \cdot \looppath \cdot \looppath^{-1} \cdot \looppath^{-1}$,
   758	which the encode-decode equivalence sends to $3 + (-1) + (-1) = 1$.
   759	
   760	Decoding back yields a single $\looppath$, propositionally equal to the
   761	original concatenation. The point is not that we computed $3 - 2 = 1$
   762	(routine!), but that this very arithmetic of $\Z$ \emph{is} the
   763	fundamental group law on $\pi_1(\Sone)$ once we identify the two via
   764	the equivalence.
   765	\end{example}
   766	
   767	\section{Cubical Type Theory}
   768	\label{sec:cubical}
   769	
   770	The original presentation of HoTT takes univalence as an axiom, breaking
   771	canonicity: a closed term of $\N$ may be propositionally but not
   772	definitionally equal to a numeral. Cubical type theory restores
   773	canonicity.
   774	
   775	\subsection{Intervals and faces}
   776	
   777	\begin{definition}[Cube category]
   778	\label{def:cube}
   779	Cohen--Coquand--Huber--M\"ortberg~\cite{CCHM} introduce a primitive
   780	interval object $\mathbb{I}$ generated by $0, 1 : \mathbb{I}$, the
   781	operations $\sqcup, \sqcap, \neg$ making $\mathbb{I}$ into a de Morgan
   782	algebra, and the algebra of \emph{face formulas} $\varphi$ over the
   783	generating equations $i = 0$, $i = 1$.
   784	\end{definition}
   785	
   786	A path $p : a =_A b$ is then a function $\mathbb{I} \to A$ with $p(0) = a$
   787	and $p(1) = b$ judgmentally. Path concatenation, inversion, and dependent
   788	elimination become explicit term operations on cubical sets, not derived
   789	from $J$.
   790	
   791	\subsection{Composition and Glue}
   792	
   793	The crucial operations are \emph{composition} (filling open boxes) and
   794	\emph{Glue} (gluing types along an equivalence). The Glue type
   795	$\mathsf{Glue}\,A\,[\varphi \mapsto (T, f)]$ where $f : T \eqv A$ on the
   796	face $\varphi$ supplies a constructive proof of univalence: every
   797	equivalence is realized as a path in $\U$.
   798	
   799	\begin{theorem}[Univalence in cubical type theory]
   800	\label{thm:cubical-univalence}
   801	Cubical type theory in the CCHM model proves $\ua$ as a defined term, and
   802	$\idtoeqv \circ \ua$ reduces to the identity by computation, not by
   803	postulate~\cite{CCHM, CubicalAgda}.
   804	\end{theorem}
   805	
   806	\subsection{Implementations}
   807	
   808	The Cubical Agda mode~\cite{CubicalAgda} and the
   809	\texttt{cubicaltt} prototype implement the system; the \texttt{redtt} and
   810	\texttt{cooltt} projects extend it with cartesian intervals and modalities.
   811	For our purposes the relevant fact is that all theorems of
   812	\Cref{sec:univalence,sec:hits} can be \emph{computed}, not just postulated.
   813	
   814	\section{Variants: 2LTT, Modal, and Directed HoTT}
   815	\label{sec:variants}
   816	
   817	\subsection{Two-level type theory}
   818	
   819	Two-level type theory (Annenkov--Capriotti--Kraus--Sattler~\cite{2LTT})
   820	introduces a strict equality alongside the homotopical one. The strict
   821	fragment is used to formalize semantics (e.g.\ inverse diagrams of types
   822	representing semisimplicial types) that the homotopical fragment alone
   823	cannot encode without higher coherence. Strict equality is incompatible
   824	with univalence, so 2LTT carefully separates the two universes.
   825	
   826	\subsection{Modal HoTT}
   827	
   828	Modal type theory adds operators $\square, \diamondsuit$ corresponding to
   829	adjunctions in the categorical semantics. Examples include
   830	Schreiber--Shulman cohesive HoTT~\cite{SchreiberShulman}, where the
   831	cohesion modalities recover the discrete--codiscrete--shape adjoint string
   832	$\mathrm{disc} \dashv \Pi \dashv \mathrm{codisc}$ for cohesive
   833	$(\infty,1)$-toposes, and the spatial type theory of Riley
   834	\cite{Riley}.
   835	
   836	\subsection{Directed HoTT}
   837	
   838	Directed type theory replaces invertible paths with possibly non-invertible
   839	\emph{morphisms}, so that types correspond to $(\infty, n)$-categories
   840	rather than $\infty$-groupoids. Riehl--Shulman~\cite{RiehlShulman} develop
   841	\emph{simplicial type theory} with a primitive directed interval $\Delta^1$
   842	and prove a synthetic Yoneda lemma; directed univalence
   843	\cite{CisinskiNguyen} is an active research frontier.
   844	
   845	\section{Transcendentals in HoTT}
   846	\label{sec:transcendentals}
   847	
   848	We work inside $\R_c$ from \Cref{sec:reals}.
   849	
   850	\subsection{$\pi$ as the period of $\exp$ on $i\R$}
   851	
   852	\begin{definition}[Real exponential]
   853	The map $\exp : \R_c \to \R_c$ is defined as the unique solution to
   854	$y' = y, y(0) = 1$ in $\R_c$ -- equivalently, by the power series
   855	$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.
   856	\end{definition}
   857	
   858	\begin{definition}[Pi]
   859	\label{def:pi}
   860	Define $\sin : \R_c \to \R_c$ by the power series
   861	$\sum_{k=0}^\infty (-1)^k x^{2k+1}/(2k+1)!$. The unique-existence
   862	proposition
   863	\[
   864	\sum_{p : \R_c}\;\bigl(\sin(p) = 0\bigr) \times \bigl(p > 0\bigr) \times
   865	\bigl(\prod_{x : \R_c}\;0 < x < p \to \sin(x) > 0\bigr)
   866	\]
   867	is contractible. We define $\pi$ to be its centre.
   868	\end{definition}
   869	
   870	\begin{theorem}
   871	\label{thm:pi-trans}
   872	Lindemann's theorem ports to HoTT: $\pi$ is transcendental over $\Q$, in
   873	the sense that the type
   874	\[
   875	\sum_{p : \mathrm{Poly}(\Q)}\;\bigl(p \neq 0\bigr) \times
   876	\bigl(p(\pi) = 0\bigr)
   877	\]
   878	is empty (equivalent to $\mathbf{0}$).
   879	\end{theorem}
   880	
   881	\begin{proof}[Proof sketch]
   882	Lindemann's classical proof relies only on convergent power series,
   883	elementary symmetric functions, and bounding arguments -- all of which
   884	are available constructively in $\R_c$. The port is therefore believed
   885	to be possible based on the constructive character of the classical
   886	argument; however, to the authors' knowledge no end-to-end formalization
   887	in HoTT is yet complete. The presently available scaffolding includes:
   888	\begin{itemize}
   889	\item Cauchy completeness of $\R_c$, basic limits, the Archimedean
   890	property, and elementary calculus on $\R_c$ (Booij's thesis
   891	\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
   892	\item Convergence of power series and analytic functions in HoTT, plus
   893	algebraic manipulations of polynomial rings and symmetric functions
   894	(scaffolded in the agda-unimath project~\cite{AgdaUnimath}).
   895	\end{itemize}
   896	The pieces still missing for an end-to-end formalization are: (i)~the
   897	Hermite--Lindemann auxiliary function $J(t) = \int_0^t e^{t - s}
   898	f(s)\,ds$ and its bounds in $\R_c$; (ii)~the algebraic-integer estimates
   899	that drive the contradiction; and (iii)~the integration with a finished
   900	formalization of the Cauchy integral over $\R_c$. We identify this as
   901	open work in \Cref{sec:conclusion}.
   902	\end{proof}
   903	
   904	\subsection{$e$ as the unique fixed point of $D$}
   905	
   906	\begin{definition}[Euler's number]
   907	\label{def:e}
   908	Let $\exp : \R_c \to \R_c$ be as above. Then $e := \exp(1)$. Equivalently,
   909	$e$ is the centre of the contractible type
   910	$\sum_{x : \R_c}\;\sum_{f : \R_c \to \R_c}\;
   911	(f' = f) \times (f(0) = 1) \times (x = f(1))$.
   912	\end{definition}
   913	
   914	\begin{theorem}[Hermite, ported]
   915	\label{thm:e-trans}
   916	$e$ is transcendental over $\Q$.
   917	\end{theorem}
   918	
   919	\subsection{Identification across encodings}
   920	
   921	\begin{theorem}[Reals are unique in HoTT up to equivalence]
   922	\label{thm:reals-unique}
   923	Any two h-sets satisfying the universal property of the Cauchy reals (or
   924	the Dedekind reals, modulo the law of excluded middle for the latter) are
   925	equivalent, hence equal as types by univalence. Consequently, $\pi$ and $e$
   926	are well-defined independently of the chosen construction.
   927	\end{theorem}
   928	
   929	\section{Bridge: HoTT as the Internal Language of $(\infty,1)$-Toposes}
   930	\label{sec:bridge}
   931	
   932	\subsection{Categorical semantics}
   933	
   934	\begin{theorem}[Awodey--Warren]
   935	\label{thm:aw}
   936	\textup{(\cite{AwodeyWarren}.)}
   937	Identity types of intensional Martin-L\"of type theory are interpreted in
   938	weak factorisation systems; the model in simplicial sets exhibits the path
   939	groupoid as a Kan complex.
   940	\end{theorem}
   941	
   942	Voevodsky's simplicial set model~\cite{KapulkinLumsdaine} establishes that
   943	HoTT with univalence has a sound interpretation in the
   944	$(\infty, 1)$-topos $\mathsf{sSet}$ of Kan complexes.
   945	
   946	\begin{theorem}[Shulman]
   947	\label{thm:shulman-it}
   948	\textup{(\cite{ShulmanInftyTopos}.)}
   949	Every $(\infty, 1)$-topos $\mathcal{E}$ admits a model of HoTT with
   950	univalence; conversely, the syntactic category of HoTT is conjecturally
   951	the initial $(\infty, 1)$-topos.
   952	\end{theorem}
   953	
   954	\subsection{Co-extensiveness with categorical and structural perspectives}
   955	
   956	The Yoneda embedding (Paper~04) and the categorical structuralism of
   957	Paper~06 have always been ``equivalent up to equivalence.'' Univalence
   958	makes them \emph{equal} -- equal as objects of $\U$, equal as theories
   959	under semantic interpretation, equal as derivations modulo a translation
   960	that is itself an equivalence.
   961	
   962	\begin{remark}[The univalent correspondence, formalized]
   963	The Curry--Howard--Lambek tradition (see Wadler's exposition~\cite{Wadler2015})
   964	identifies logic, type theory, and category theory as a triple. The
   965	four-column correspondence
   966	\[
   967	\text{Logic} \;\longleftrightarrow\;
   968	\text{Type Theory} \;\longleftrightarrow\;
   969	\text{Category Theory} \;\longleftrightarrow\;
   970	\text{Homotopy}
   971	\]
   972	is, in HoTT, the statement that the four interpretations of the same term
   973	in $\U$ correspond to the same homotopy type, with the categorical column
   974	interpreted in $(\infty, 1)$-toposes (Lurie's higher topos
   975	theory~\cite{Lurie} provides the ambient setting). In particular,
   976	``58 as a proposition'' (the inhabited type
   977	$\mathsf{Fin}_{59} \cap \mathsf{prime}^c$, etc.), ``58 as a term''
   978	($\overline{58} : \N$), ``58 as an object'' (the discrete object
   979	$58 \in \mathsf{Set}$), and ``58 as a space'' (the discrete homotopy type
   980	$\mathsf{B}\mathbf{1}^{58}$) are equal up to canonical paths.

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(ref|eqref|cite|label|includegraphics|input|bibliography|bibliographystyle|usepackage|documentclass)|TODO|undefined|Missing|Package' papers/05-hott/latex/05-hott.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
4:\usepackage{amsmath, amssymb, amsthm}
7:\usepackage{tikz-cd}
8:\usepackage{tikz}
12:\usepackage{hyperref}
13:\usepackage{cleveref}
16:\usepackage{graphicx}
19:\usepackage[margin=1in]{geometry}
22:\usepackage{everypage}
23:\usepackage{xcolor}
26:\usepackage{listings}
58:\newcommand{\refl}{\mathsf{refl}}
134:implementation models paths, $\refl$, $\transport$, $\mathsf{sym}$ and
141:\label{sec:intro}
165:\emph{Book HoTT} of~\cite{HoTTBook} except where noted, and present the
172:Section~\ref{sec:framework} fixes notation for dependent type theory.
173:Section~\ref{sec:nat} defines $\N$ as an inductive type and recovers
174:primitive recursion. Section~\ref{sec:identity} introduces identity types,
175:$J$, transport, and the path groupoid. Section~\ref{sec:univalence} states
177:NNO-equivalents. Section~\ref{sec:hits} treats higher inductive types: the
179:Section~\ref{sec:cubical} sketches cubical type theory.
180:Section~\ref{sec:variants} surveys two-level, modal, and directed HoTT\@.
181:Section~\ref{sec:transcendentals} places $\pi$ and $e$ inside the Cauchy
182:reals. Section~\ref{sec:bridge} identifies HoTT as the internal language of
183:$(\infty,1)$-toposes. Section~\ref{sec:results}--\ref{sec:conclusion} record
187:\label{sec:conventions}
193:$a =_A b$ or $\Id_A(a, b)$. The constant path is $\refl_a : a =_A a$.
208:\label{sec:framework}
211:the substrate~\cite{MartinLof84}. The pertinent rules are summarized below
212:informally; for the formal calculus see \cite[Appendix~A]{HoTTBook}.
223:\label{def:fn}
228:\label{def:prod}
242:\label{sec:universes}
249:\label{sec:nat}
254:\label{def:nat}
275:\label{def:numerals}
293:\label{ex:add}
301:\label{prop:nno}
314:$h'(\zero) \equiv c_0$, so $P(\zero)$ is inhabited by $\refl_{c_0}$ --
327:\label{sec:nat-vs-set}
330:\label{rem:benacerraf}
331:Proposition~\ref{prop:nno} renders Benacerraf's identification problem moot
339:\label{sec:identity}
344:\label{def:id}
348:$\refl_a : a =_A a$ for each $a : A$.
356:\label{prop:J}
359:$d : \prod_{x : A} C(x, x, \refl_x)$, there is a section
363:satisfying the computation rule $J(C, d, x, x, \refl_x) \equiv d(x)$.
367:\label{rem:J-vs-K}
368:$J$ is \emph{not} the principle ``every path is $\refl$.'' That stronger
376:\label{lem:sym}
382:Take $C(x, y, p) := (y =_A x)$ and $d(x) := \refl_x$, then apply $J$.
386:\label{lem:trans}
393:$y \equiv x$ and $p \equiv \refl_x$, in which case
394:$\mathsf{trans}(\refl_x, q) := q$ is a section.
401:\label{thm:groupoid}
404:\item $\refl_a \cdot p = p$ and $p \cdot \refl_b = p$;
405:\item $p \cdot p^{-1} = \refl_a$ and $p^{-1} \cdot p = \refl_b$;
410:$\infty$-groupoid~\cite{LumsdaineGroupoid, vandenBergGarner}.
416:\cite[\S2.1]{HoTTBook}.
422:\label{def:transport}
425:$\transport^P(\refl_a)(u) := u$.
429:\label{prop:trans-concat}
440:\label{def:hlevel}
452:\label{thm:hedberg}
458:\label{cor:N-set}
468:\label{sec:univalence}
473:\label{def:equiv}
478:\cite[\S4.2]{HoTTBook}, ensuring $\mathsf{isEquiv}(f)$ is itself a mere
483:\label{prop:idtoeqv}
485:$\idtoeqv : (A =_\U B) \to (A \eqv B)$ taking $\refl_A$ to the identity
496:\label{thm:univalence}
497:\textup{(\cite{Voevodsky}; \cite[Axiom 2.10.3]{HoTTBook}.)}
513:\label{def:nno-type}
524:\label{thm:nno-contractible}
546:\cite[Theorem~2.7.2]{HoTTBook}. Iterating: a path between two iterated
580:\cite[\S5.4 and \S2.7]{HoTTBook}.
584:\label{cor:58-canonical}
595:\label{thm:funext}
602:$\Sigma$-type and applying univalence. See \cite[\S4.9]{HoTTBook}.
606:\label{sec:hits}
619:\label{def:trunc}
628:\label{def:circle}
638:\label{thm:pi1}
649:(Licata--Shulman~\cite{LicataShulman}); evaluating at $\base$ gives
666:\label{thm:hopf}
670:\cite[\S8.5]{HoTTBook}.
677:\cite{LicataFinster}. Synthetic cohomology
682:\label{sec:reals}
685:\label{thm:reals}
686:\textup{(\cite{Booij}, after~\cite[\S11.3]{HoTTBook}.)}
701:\label{sec:worked-example}
707:\label{ex:58-two-nnos}
734:\label{rem:yoneda-as-univalence}
744:\label{sec:s1-example}
749:\label{ex:loops}
768:\label{sec:cubical}
778:\label{def:cube}
779:Cohen--Coquand--Huber--M\"ortberg~\cite{CCHM} introduce a primitive
800:\label{thm:cubical-univalence}
803:postulate~\cite{CCHM, CubicalAgda}.
808:The Cubical Agda mode~\cite{CubicalAgda} and the
815:\label{sec:variants}
819:Two-level type theory (Annenkov--Capriotti--Kraus--Sattler~\cite{2LTT})
830:Schreiber--Shulman cohesive HoTT~\cite{SchreiberShulman}, where the
834:\cite{Riley}.
840:rather than $\infty$-groupoids. Riehl--Shulman~\cite{RiehlShulman} develop
843:\cite{CisinskiNguyen} is an active research frontier.
846:\label{sec:transcendentals}
859:\label{def:pi}
871:\label{thm:pi-trans}
891:\cite{Booij}, expanding \cite[\S11.3]{HoTTBook}).
894:(scaffolded in the agda-unimath project~\cite{AgdaUnimath}).
907:\label{def:e}
915:\label{thm:e-trans}
922:\label{thm:reals-unique}
930:\label{sec:bridge}
935:\label{thm:aw}
936:\textup{(\cite{AwodeyWarren}.)}
942:Voevodsky's simplicial set model~\cite{KapulkinLumsdaine} establishes that
947:\label{thm:shulman-it}
948:\textup{(\cite{ShulmanInftyTopos}.)}
963:The Curry--Howard--Lambek tradition (see Wadler's exposition~\cite{Wadler2015})
975:theory~\cite{Lurie} provides the ambient setting). In particular,
984:\label{sec:results}
989:\label{thm:main}
1002:\label{thm:pi1-result}
1004:\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
1009:\label{thm:reals-result}
1017:\label{thm:bridge-result}
1019:\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
1026:\label{sec:discussion}
1036:\cite{SemisimplicialProblem} is the canonical example.
1042:cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical
1108:\cite{SchreiberShulman} -- additionally require modal axioms that
1114:\label{sec:haskell}
1134:\label{sec:agda-sketch}
1169:\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '981,1340p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   981	\end{remark}
   982	
   983	\section{Results}
   984	\label{sec:results}
   985	
   986	We collect the principal contributions of this paper.
   987	
   988	\begin{theorem}[Encoding-free arithmetic]
   989	\label{thm:main}
   990	In Book HoTT with univalence, the following are equivalent:
   991	\begin{enumerate}
   992	\item the inductive type $\N$ with $\zero, \suc$;
   993	\item the initial NNO in any model of HoTT with $\N$-types;
   994	\item the unique pointed endo-structure $X$ with $\mathsf{isInitial}(X, x_0, s)$;
   995	\item up to univalent equality, every other type satisfying any of (1)--(3).
   996	\end{enumerate}
   997	The witnesses to these equivalences are themselves canonical (paths in
   998	$\U$), so $58 := \overline{58}$ is independent of representation.
   999	\end{theorem}
  1000	
  1001	\begin{theorem}[Synthetic computation of \texorpdfstring{$\pi_1(\Sone{})$}{pi\_1(S\^{}1)}]
  1002	\label{thm:pi1-result}
  1003	Within HoTT, $\pi_1(\Sone{}) = \Z$ admits a fully formal proof
  1004	\cite{LicataShulman} that mechanizes in Agda and Cubical Agda; the proof
  1005	uses no external topology, only the HIT $\Sone$ and univalence.
  1006	\end{theorem}
  1007	
  1008	\begin{theorem}[Reals and transcendentals]
  1009	\label{thm:reals-result}
  1010	The Cauchy reals $\R_c$ form an h-set inside HoTT
  1011	(\Cref{thm:reals}). The terms $\pi$ and $e$ are unique-existence centres of
  1012	contractible types of solutions of structural conditions. Their classical
  1013	properties (irrationality, transcendence) port mechanically.
  1014	\end{theorem}
  1015	
  1016	\begin{theorem}[Bridge theorem]
  1017	\label{thm:bridge-result}
  1018	HoTT is sound and complete for $(\infty, 1)$-topos semantics
  1019	\cite{ShulmanInftyTopos}. Hence the categorical (Paper~06), structural
  1020	(Paper~07), Yoneda (Paper~04), and HoTT (Paper~05) views of arithmetic are
  1021	co-extensive: a statement provable in any one is provable in any other,
  1022	modulo translation.
  1023	\end{theorem}
  1024	
  1025	\section{Discussion}
  1026	\label{sec:discussion}
  1027	
  1028	\subsection{What HoTT does not solve}
  1029	
  1030	HoTT is a foundation, not a panacea. The following remain open:
  1031	
  1032	\begin{itemize}
  1033	\item \emph{Coherence beyond truncation level}: proving general coherence
  1034	theorems for $(\infty, 1)$-categories \emph{inside} HoTT (rather than via
  1035	2LTT) is non-trivial. The semisimplicial types problem
  1036	\cite{SemisimplicialProblem} is the canonical example.
  1037	\item \emph{Decidability and computation under axioms}: Book HoTT loses
  1038	canonicity. Cubical type theory restores it but at the cost of a more
  1039	intricate calculus.
  1040	\item \emph{Set-theoretic strength}: HoTT with univalence has the
  1041	proof-theoretic strength of ZFC + ``there exist many inaccessible
  1042	cardinals'' \cite{ShulmanStrength}, comparable to standard mathematical
  1043	practice. Whether all of analytic number theory ports remains an open
  1044	research front (Paper~07 surveys this).
  1045	\end{itemize}
  1046	
  1047	\subsection{Philosophical reading}
  1048	
  1049	The shift from set theory to HoTT mirrors the shift from substantialism to
  1050	structuralism. ``58 is a thing'' becomes ``58 is a position in a
  1051	structure'' becomes ``58 is the equivalence class of all positions in
  1052	isomorphic structures'' becomes (in HoTT) ``58 is a term whose identity is
  1053	witnessed by paths.'' Univalence collapses the apparent distinction
  1054	between the last two.
  1055	
  1056	\subsection{Pedagogical implications}
  1057	
  1058	Synthetic homotopy theory provides a path-from-paths approach to algebraic
  1059	topology: $\pi_1(\Sone{}) = \Z$ in twelve lines of Agda. This is not merely a
  1060	streamlining; it indicates that homotopy is more primitive than topology
  1061	in the sense that the latter can be dispensed with.
  1062	
  1063	\subsection{Computational realisation}
  1064	
  1065	The Haskell companion (\Cref{sec:haskell}) and the Agda fragments
  1066	(\Cref{sec:agda-sketch}) demonstrate that path induction, transport, and
  1067	the basic equational reasoning calculus can be \emph{simulated} at the
  1068	type level in mainstream functional languages, even without full
  1069	dependent types. This is a useful pedagogical bridge, not a replacement.
  1070	
  1071	\subsection{Comparison with set-theoretic and categorical foundations}
  1072	
  1073	It is illuminating to put the four foundational stances side by side, as
  1074	they answer the question ``what is the natural number $58$?''.
  1075	
  1076	\begin{itemize}
  1077	\item \textbf{Set theory (Paper~02).} ``$58$ is the von Neumann ordinal
  1078	$\{0, 1, \ldots, 57\}$.'' The encoding is canonical only by stipulation;
  1079	Benacerraf's identification problem records the residual arbitrariness.
  1080	
  1081	\item \textbf{Categorical foundations (Paper~03 / Paper~04).}
  1082	``$58$ is the value of the unique recursion morphism on the natural-number
  1083	object, equivalently a position in the representable
  1084	$\mathrm{Hom}(-, \N)$.'' Encoding-independence holds up to canonical
  1085	isomorphism; the question ``but \emph{which} NNO?'' remains a residue,
  1086	albeit a small one.
  1087	
  1088	\item \textbf{HoTT (this paper).} ``$58$ is $\overline{58} : \N$, where
  1089	$\N$ is determined up to a canonical \emph{equality} of types by
  1090	univalence.'' Encoding-independence is internal: there is no extra-
  1091	theoretic notion of ``which $\N$.''
  1092	
  1093	\item \textbf{Structural / $\infty$-topos perspective (Paper~06).} ``$58$
  1094	is an invariant under all structure-preserving maps,'' which by the
  1095	internal-language theorem is the same as the HoTT statement.
  1096	\end{itemize}
  1097	
  1098	The progression is one of \emph{decreasing residue}: each step removes a
  1099	notion that the previous level could not eliminate.
  1100	
  1101	\subsection{When axiomatic univalence cannot be avoided}
  1102	
  1103	In Book HoTT, univalence is \emph{not} a constructive principle: a closed
  1104	term of $\N$ produced via univalence may fail to reduce to a numeral. For
  1105	many proofs this matters little (we only care about propositional
  1106	equality), but for executable extraction it is fatal. Cubical type theory
  1107	solves this; some applications -- notably synthetic differential geometry
  1108	\cite{SchreiberShulman} -- additionally require modal axioms that
  1109	themselves are not yet known to be cubically computational. The trade-off
  1110	between axiomatic generality and definitional reduction is an active
  1111	research front.
  1112	
  1113	\section{Companion Implementation}
  1114	\label{sec:haskell}
  1115	
  1116	The companion Haskell library is available in the project's public
  1117	source repository (under \texttt{src/05-hott/}; see the
  1118	\emph{Univalent Correspondence} project). It provides:
  1119	\begin{itemize}
  1120	\item A GADT \texttt{Path a b} representing identity types with constructor
  1121	\texttt{Refl :: Path a a}.
  1122	\item Functions \texttt{sym}, \texttt{trans}, and \texttt{transport}
  1123	mirroring \Cref{lem:sym,lem:trans,def:transport}.
  1124	\item A type-level naturals module with peano-style \texttt{succ} and a
  1125	demonstration that 58 can be constructed and equal-typed.
  1126	\item A module sketching the circle as a HIT (necessarily approximated, as
  1127	Haskell lacks higher constructors) and the encode--decode method.
  1128	\item An Agda-style sketch in comments showing the analogous direct
  1129	type-theoretic syntax.
  1130	\end{itemize}
  1131	The \texttt{Main.hs} executable runs a small demonstration.
  1132	
  1133	\section{Agda Sketch}
  1134	\label{sec:agda-sketch}
  1135	
  1136	The most natural ambient language for HoTT is Agda or Cubical Agda. We
  1137	include here an Agda-flavoured sketch of the basic constructions; full
  1138	files for Cubical Agda live alongside the Haskell sources.
  1139	
  1140	\begin{lstlisting}
  1141	-- Agda-style (comments only; the actual Agda lives elsewhere):
  1142	--
  1143	-- data Nat : Set where
  1144	--   zero : Nat
  1145	--   succ : Nat -> Nat
  1146	--
  1147	-- _==_ : {A : Set} -> A -> A -> Set
  1148	-- a == b = Path a b
  1149	--
  1150	-- refl : {A : Set} {a : A} -> a == a
  1151	-- refl = Refl
  1152	--
  1153	-- sym : {A : Set} {a b : A} -> a == b -> b == a
  1154	-- sym Refl = Refl
  1155	--
  1156	-- trans : {A : Set} {a b c : A}
  1157	--       -> a == b -> b == c -> a == c
  1158	-- trans Refl q = q
  1159	--
  1160	-- transport : {A : Set} (P : A -> Set)
  1161	--           -> {a b : A} -> a == b -> P a -> P b
  1162	-- transport P Refl x = x
  1163	--
  1164	-- ua : {A B : Set} -> A ~= B -> A == B
  1165	-- (postulated in Book HoTT, derived in Cubical)
  1166	\end{lstlisting}
  1167	
  1168	\section{Conclusion and Future Work}
  1169	\label{sec:conclusion}
  1170	
  1171	We have argued that Homotopy Type Theory provides the synthetic language
  1172	in which arithmetic, analysis, and algebraic topology share a single
  1173	foundational system. The natural number $58$ is the canonical
  1174	$\overline{58} : \N$; the universe-level identification of all NNOs is a
  1175	theorem; the transcendental constants $\pi$ and $e$ are unique-existence
  1176	centres in the higher inductive--inductive type $\R_c$. Univalence makes
  1177	the categorical and structural perspectives co-extensive with the
  1178	type-theoretic one.
  1179	
  1180	The companion Haskell code provides a hands-on, executable mirror of the
  1181	key constructions. The next paper (Paper~06) develops the categorical /
  1182	structural perspective independently and shows that it merges with the
  1183	HoTT perspective via the internal language theorem; Paper~07 (the
  1184	synthesis) closes the loop.
  1185	
  1186	\subsection{Open problems}
  1187	
  1188	\begin{enumerate}
  1189	\item Formalize Lindemann--Weierstrass in Cubical Agda end-to-end.
  1190	\item Develop directed univalence sufficient to express the synthetic
  1191	$(\infty, 2)$-Yoneda lemma.
  1192	\item Formalize the Brown representability theorem inside synthetic
  1193	homotopy theory; this would clarify the relation to the spectra
  1194	constructions in classical algebraic topology.
  1195	\end{enumerate}
  1196	
  1197	\begin{thebibliography}{99}
  1198	
  1199	\bibitem{HoTTBook}
  1200	The Univalent Foundations Program.
  1201	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics}.
  1202	Institute for Advanced Study, 2013. \texttt{arXiv:1308.0729}.
  1203	
  1204	\bibitem{MartinLof84}
  1205	P.\ Martin-L\"of.
  1206	\emph{Intuitionistic Type Theory}. Bibliopolis, 1984.
  1207	
  1208	\bibitem{LumsdaineGroupoid}
  1209	P.\ L.\ Lumsdaine. Weak omega-categories from intensional type theory.
  1210	\emph{Logical Methods in Computer Science}, 6(3:24):1--19, 2010.
  1211	
  1212	\bibitem{vandenBergGarner}
  1213	B.\ van den Berg and R.\ Garner. Types are weak omega-groupoids.
  1214	\emph{Proc.\ London Math.\ Soc.}, 102(2):370--394, 2011.
  1215	
  1216	\bibitem{LicataShulman}
  1217	D.\ R.\ Licata and M.\ Shulman. Calculating the fundamental group of the
  1218	circle in homotopy type theory.
  1219	In \emph{LICS 2013}, pp.\ 223--232.
  1220	
  1221	\bibitem{LicataFinster}
  1222	D.\ R.\ Licata and E.\ Finster. Eilenberg--MacLane spaces in homotopy type
  1223	theory. In \emph{CSL-LICS 2014}, ACM, 2014.
  1224	
  1225	\bibitem{Booij}
  1226	A.\ B.\ Booij. \emph{Analysis in univalent type theory}. PhD thesis,
  1227	University of Birmingham, 2020.
  1228	
  1229	\bibitem{CCHM}
  1230	C.\ Cohen, T.\ Coquand, S.\ Huber, A.\ M\"ortberg.
  1231	Cubical type theory: a constructive interpretation of the univalence
  1232	axiom. In \emph{TYPES 2015}, LIPIcs 69, pp.\ 5:1--5:34.
  1233	
  1234	\bibitem{CubicalAgda}
  1235	A.\ Vezzosi, A.\ M\"ortberg, A.\ Abel.
  1236	Cubical Agda: a dependently typed programming language with univalence and
  1237	higher inductive types.
  1238	\emph{Proc.\ ACM Program.\ Lang.}, 3(ICFP):87:1--87:29, 2019.
  1239	
  1240	\bibitem{AwodeyWarren}
  1241	S.\ Awodey and M.\ A.\ Warren.
  1242	Homotopy theoretic models of identity types.
  1243	\emph{Math.\ Proc.\ Cambridge Philos.\ Soc.}, 146(1):45--55, 2009.
  1244	
  1245	\bibitem{KapulkinLumsdaine}
  1246	C.\ Kapulkin and P.\ L.\ Lumsdaine.
  1247	The simplicial model of univalent foundations (after Voevodsky).
  1248	\emph{J.\ Eur.\ Math.\ Soc.}, 23(6):2071--2126, 2021.
  1249	
  1250	\bibitem{ShulmanInftyTopos}
  1251	M.\ Shulman. All $(\infty,1)$-toposes have strict univalent universes.
  1252	\texttt{arXiv:1904.07004}, 2019.
  1253	
  1254	\bibitem{ShulmanStrength}
  1255	M.\ Shulman. Higher inductive types and the formal Blakers--Massey theorem.
  1256	\emph{Proc.\ ACM Program.\ Lang.}, 4(POPL):41:1--41:30, 2020.
  1257	
  1258	\bibitem{2LTT}
  1259	D.\ Annenkov, P.\ Capriotti, N.\ Kraus, C.\ Sattler.
  1260	Two-level type theory and applications.
  1261	\emph{Math.\ Structures Comput.\ Sci.}, 33(8):688--743, 2023.
  1262	
  1263	\bibitem{SchreiberShulman}
  1264	U.\ Schreiber and M.\ Shulman. Quantum gauge field theory in cohesive
  1265	homotopy type theory. In \emph{QPL 2012}, EPTCS 158, pp.\ 109--126, 2014.
  1266	
  1267	\bibitem{Riley}
  1268	M.\ Riley. \emph{A type theory with a tiny object}.
  1269	PhD thesis, Wesleyan University, 2022.
  1270	
  1271	\bibitem{RiehlShulman}
  1272	E.\ Riehl and M.\ Shulman. A type theory for synthetic
  1273	$\infty$-categories. \emph{Higher Structures}, 1(1):147--224, 2017.
  1274	
  1275	\bibitem{CisinskiNguyen}
  1276	D.-C.\ Cisinski, H.\ K.\ Nguyen.
  1277	The universal coCartesian fibration. \texttt{arXiv:2210.08945}, 2022.
  1278	
  1279	\bibitem{AgdaUnimath}
  1280	The agda-unimath project. \emph{The agda-unimath library}.
  1281	\texttt{https://unimath.github.io/agda-unimath/}, accessed 2026.
  1282	
  1283	\bibitem{SemisimplicialProblem}
  1284	N.\ Kraus. The general universal property of the propositional truncation.
  1285	\emph{TYPES 2014}, LIPIcs 39, pp.\ 111--145.
  1286	
  1287	\bibitem{Voevodsky}
  1288	V.\ Voevodsky. The equivalence axiom and univalent models of type theory.
  1289	\texttt{arXiv:1402.5556}, 2014.
  1290	
  1291	\bibitem{Wadler2015}
  1292	P.\ Wadler. Propositions as types.
  1293	\emph{Comm.\ ACM}, 58(12):75--84, 2015.
  1294	
  1295	\bibitem{Lurie}
  1296	J.\ Lurie. \emph{Higher Topos Theory}.
  1297	Annals of Math.\ Studies 170, Princeton, 2009.
  1298	
  1299	\end{thebibliography}
  1300	
  1301	\end{document}

exec
/usr/local/bin/zsh -lc 'which latexmk || true; which pdflatex || true; which xelatex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/xelatex

exec
/usr/local/bin/zsh -lc "find . -maxdepth 4 -iname '*05*hott*' -o -iname 'Makefile' -o -iname 'latexmkrc' -o -iname '*.bib' | sort" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
./papers/05-hott
./papers/05-hott/images/05-hott-og.png
./papers/05-hott/images/05-hott.png
./papers/05-hott/latex/05-hott.aux
./papers/05-hott/latex/05-hott.log
./papers/05-hott/latex/05-hott.out
./papers/05-hott/latex/05-hott.tex
./papers/05-hott/latex/05-hott.toc
./papers/05-hott/pdf/05-hott.pdf
./papers/05-hott/reviews/05-hott-codex-review-final.md
./papers/05-hott/reviews/05-hott-codex-review.md
./papers/05-hott/reviews/05-hott-review-final.md
./papers/05-hott/reviews/05-hott-review-round-1.md
./papers/05-hott/reviews/05-hott-review-round-2.md
./papers/05-hott/reviews/05-hott-review.md
./src/05-hott

codex
The source has inline bibliography, no external `.bib`, so broken citations/references should show up directly in a clean compile. I’m compiling into a temp output directory to avoid touching the paper artifacts.
exec
/usr/local/bin/zsh -lc 'rm -rf /tmp/05-hott-latex-review && mkdir -p /tmp/05-hott-latex-review && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/05-hott-latex-review 05-hott.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex
 succeeded in 2430ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./05-hott.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
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
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/05-hott-latex-review/05-hott.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./05-hott.out) (./05-hott.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd) (./05-hott.toc
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
[2])

LaTeX Warning: Citation `HoTTBook' on page 3 undefined on input line 165.


LaTeX Warning: Reference `sec:framework' on page 3 undefined on input line 172.



LaTeX Warning: Reference `sec:nat' on page 3 undefined on input line 173.


LaTeX Warning: Reference `sec:identity' on page 3 undefined on input line 174.


LaTeX Warning: Reference `sec:univalence' on page 3 undefined on input line 175
.


LaTeX Warning: Reference `sec:hits' on page 3 undefined on input line 177.


LaTeX Warning: Reference `sec:cubical' on page 3 undefined on input line 179.


LaTeX Warning: Reference `sec:variants' on page 3 undefined on input line 180.


LaTeX Warning: Reference `sec:transcendentals' on page 3 undefined on input lin
e 181.


LaTeX Warning: Reference `sec:bridge' on page 3 undefined on input line 182.


LaTeX Warning: Reference `sec:results' on page 3 undefined on input line 183.


LaTeX Warning: Reference `sec:conclusion' on page 3 undefined on input line 183
.

[3]

LaTeX Warning: Citation `MartinLof84' on page 4 undefined on input line 211.


LaTeX Warning: Citation `HoTTBook' on page 4 undefined on input line 212.

[4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]
Overfull \hbox (3.41719pt too wide) in paragraph at lines 267--272
\OT1/cmr/m/n/12 The com-pu-ta-tion rules are $[][] \OML/cmm/m/it/12 P c[] c[] [
] \OMS/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[]$ \OT1/cmr/m/n/12 and $[][] \OML/cmm
/m/it/12 P c[] c[] \OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12 n\OT1/cmr/m/n/12 ) \OMS
/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[] n \OT1/cmr/m/n/12 ([][] \OML/cmm/m/it/12 
P c[] c[] n\OT1/cmr/m/n/12 )$. 

LaTeX Warning: Reference `thm:funext' on page 1 undefined on input line 323.

[5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


LaTeX Warning: Reference `prop:nno' on page 6 undefined on input line 331.


LaTeX Warning: Reference `sec:univalence' on page 1 undefined on input line 334
.

[6]

LaTeX Warning: Citation `LumsdaineGroupoid' on page 7 undefined on input line 4
10.


LaTeX Warning: Citation `vandenBergGarner' on page 7 undefined on input line 41
0.


LaTeX Warning: Citation `HoTTBook' on page 7 undefined on input line 416.


Overfull \hbox (27.62471pt too wide) in paragraph at lines 430--431
[]\OT1/cmr/bx/n/12 Proposition 4.8 \OT1/cmr/m/n/12 (Trans-port along con-cate-n
a-tion)\OT1/cmr/bx/n/12 . []$[][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p \OMS/cmsy/
m/n/12 ^^A \OML/cmm/m/it/12 q\OT1/cmr/m/n/12 ) = [][](\OML/cmm/m/it/12 q\OT1/cm
r/m/n/12 ) \OMS/cmsy/m/n/12 ^^N [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p\OT1/cmr
/m/n/12 )$\OT1/cmr/m/it/12 . 

LaTeX Warning: Citation `HoTTBook' on page 7 undefined on input line 478.

[7]

LaTeX Warning: Citation `Voevodsky' on page 8 undefined on input line 497.


LaTeX Warning: Citation `HoTTBook' on page 8 undefined on input line 497.


LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 508.


LaTeX Warning: Reference `prop:nno' on page 1 undefined on input line 520.


LaTeX Warning: Reference `prop:nno' on page 1 undefined on input line 533.


LaTeX Warning: Reference `thm:univalence' on page 1 undefined on input line 539
.


LaTeX Warning: Citation `HoTTBook' on page 8 undefined on input line 546.

[8]

LaTeX Warning: Citation `HoTTBook' on page 9 undefined on input line 580.


LaTeX Warning: Reference `cor:58-canonical' on page 1 undefined on input line 5
89.


LaTeX Warning: Citation `HoTTBook' on page 9 undefined on input line 602.

[9]

LaTeX Warning: Citation `LicataShulman' on page 10 undefined on input line 649.



LaTeX Warning: Reference `thm:pi1' on page 1 undefined on input line 653.


LaTeX Warning: Citation `HoTTBook' on page 10 undefined on input line 670.


LaTeX Warning: Citation `LicataFinster' on page 10 undefined on input line 677.



LaTeX Warning: Citation `Booij' on page 10 undefined on input line 686.


LaTeX Warning: Citation `HoTTBook' on page 10 undefined on input line 686.


LaTeX Warning: Reference `thm:nno-contractible' on page 1 undefined on input li
ne 703.

[10]

LaTeX Warning: Reference `prop:nno' on page 1 undefined on input line 715.


LaTeX Warning: Reference `thm:nno-contractible' on page 1 undefined on input li
ne 718.


LaTeX Warning: Reference `cor:58-canonical' on page 1 undefined on input line 7
30.


LaTeX Warning: Reference `thm:pi1' on page 1 undefined on input line 746.


LaTeX Warning: Reference `thm:groupoid' on page 1 undefined on input line 756.


LaTeX Warning: Citation `CCHM' on page 11 undefined on input line 779.

[11]

LaTeX Warning: Citation `CCHM' on page 12 undefined on input line 803.


LaTeX Warning: Citation `CubicalAgda' on page 12 undefined on input line 803.


LaTeX Warning: Citation `CubicalAgda' on page 12 undefined on input line 808.


LaTeX Warning: Reference `sec:hits' on page 1 undefined on input line 812.


LaTeX Warning: Reference `sec:univalence' on page 1 undefined on input line 812
.


LaTeX Warning: Citation `2LTT' on page 12 undefined on input line 819.


LaTeX Warning: Citation `SchreiberShulman' on page 12 undefined on input line 8
30.


LaTeX Warning: Citation `Riley' on page 12 undefined on input line 834.


LaTeX Warning: Citation `RiehlShulman' on page 12 undefined on input line 840.


LaTeX Warning: Citation `CisinskiNguyen' on page 12 undefined on input line 843
.

[12]

LaTeX Warning: Reference `sec:reals' on page 1 undefined on input line 848.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\exp' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


LaTeX Warning: Citation `Booij' on page 13 undefined on input line 891.


LaTeX Warning: Citation `HoTTBook' on page 13 undefined on input line 891.


LaTeX Warning: Citation `AgdaUnimath' on page 13 undefined on input line 894.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 901
.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.


LaTeX Warning: Citation `AwodeyWarren' on page 14 undefined on input line 936.


LaTeX Warning: Citation `KapulkinLumsdaine' on page 14 undefined on input line 
942.


LaTeX Warning: Citation `ShulmanInftyTopos' on page 14 undefined on input line 
948.


LaTeX Warning: Citation `Wadler2015' on page 14 undefined on input line 963.


LaTeX Warning: Citation `Lurie' on page 14 undefined on input line 975.

[14]

LaTeX Warning: Citation `LicataShulman' on page 15 undefined on input line 1004
.


LaTeX Warning: Reference `thm:reals' on page 1 undefined on input line 1011.


LaTeX Warning: Citation `ShulmanInftyTopos' on page 15 undefined on input line 
1019.


LaTeX Warning: Citation `SemisimplicialProblem' on page 15 undefined on input l
ine 1036.


LaTeX Warning: Citation `ShulmanStrength' on page 15 undefined on input line 10
42.

[15]

LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 1065.


LaTeX Warning: Reference `sec:agda-sketch' on page 1 undefined on input line 10
66.

[16]

LaTeX Warning: Citation `SchreiberShulman' on page 17 undefined on input line 1
108.


LaTeX Warning: Reference `def:transport' on page 1 undefined on input line 1123
.


LaTeX Warning: Reference `lem:trans' on page 1 undefined on input line 1123.


LaTeX Warning: Reference `lem:sym' on page 1 undefined on input line 1123.

[17] [18]
Underfull \hbox (badness 10000) in paragraph at lines 1280--1282
[]\OT1/cmr/m/n/12 The agda-unimath project. \OT1/cmr/m/it/12 The agda-unimath l
i-brary\OT1/cmr/m/n/12 .
[19]
Underfull \hbox (badness 2735) in paragraph at lines 1288--1290
[]\OT1/cmr/m/n/12 V. Vo-evod-sky. The equiv-a-lence ax-iom and uni-va-lent mod-
els of type the-ory.
[20] (/private/tmp/05-hott-latex-review/05-hott.aux)

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
blic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfti1200.pfb>
Output written on /private/tmp/05-hott-latex-review/05-hott.pdf (20 pages, 3850
02 bytes).
Transcript written on /private/tmp/05-hott-latex-review/05-hott.log.
Latexmk: Getting log file '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.fls'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/05-hott-latex-review/05-hott.aux
  /private/tmp/05-hott-latex-review/05-hott.out

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/05-hott-latex-review"  "05-hott.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./05-hott.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
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
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/05-hott-latex-review/05-hott.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/05-hott-latex-review/05-hott.out)
(/private/tmp/05-hott-latex-review/05-hott.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/05-hott-latex-review/05-hott.toc [1{/usr/local/texlive/2026/texmf
-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/2026/t
exmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Overfull \hbox (3.41719pt too wide) in paragraph at lines 267--272
\OT1/cmr/m/n/12 The com-pu-ta-tion rules are $[][] \OML/cmm/m/it/12 P c[] c[] [
] \OMS/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[]$ \OT1/cmr/m/n/12 and $[][] \OML/cmm
/m/it/12 P c[] c[] \OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12 n\OT1/cmr/m/n/12 ) \OMS
/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[] n \OT1/cmr/m/n/12 ([][] \OML/cmm/m/it/12 
P c[] c[] n\OT1/cmr/m/n/12 )$. 
[5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.

[6]
Overfull \hbox (27.62471pt too wide) in paragraph at lines 430--431
[]\OT1/cmr/bx/n/12 Proposition 4.8 \OT1/cmr/m/n/12 (Trans-port along con-cate-n
a-tion)\OT1/cmr/bx/n/12 . []$[][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p \OMS/cmsy/
m/n/12 ^^A \OML/cmm/m/it/12 q\OT1/cmr/m/n/12 ) = [][](\OML/cmm/m/it/12 q\OT1/cm
r/m/n/12 ) \OMS/cmsy/m/n/12 ^^N [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p\OT1/cmr
/m/n/12 )$\OT1/cmr/m/it/12 . 
[7] [8] [9] [10] [11] [12]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\exp' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.

[14] [15] [16] [17] [18]
Underfull \hbox (badness 10000) in paragraph at lines 1280--1282
[]\OT1/cmr/m/n/12 The agda-unimath project. \OT1/cmr/m/it/12 The agda-unimath l
i-brary\OT1/cmr/m/n/12 .
[19]
Underfull \hbox (badness 2735) in paragraph at lines 1288--1290
[]\OT1/cmr/m/n/12 V. Vo-evod-sky. The equiv-a-lence ax-iom and uni-va-lent mod-
els of type the-ory.
[20] (/private/tmp/05-hott-latex-review/05-hott.aux) )
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
blic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfti1200.pfb>
Output written on /private/tmp/05-hott-latex-review/05-hott.pdf (20 pages, 3883
20 bytes).
Transcript written on /private/tmp/05-hott-latex-review/05-hott.log.
Latexmk: Getting log file '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.fls'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/05-hott-latex-review/05-hott.aux
  /private/tmp/05-hott-latex-review/05-hott.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/05-hott-latex-review"  "05-hott.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./05-hott.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
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
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/05-hott-latex-review/05-hott.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/05-hott-latex-review/05-hott.out)
(/private/tmp/05-hott-latex-review/05-hott.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/05-hott-latex-review/05-hott.toc [1{/usr/local/texlive/2026/texmf
-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/2026/t
exmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Overfull \hbox (3.41719pt too wide) in paragraph at lines 267--272
\OT1/cmr/m/n/12 The com-pu-ta-tion rules are $[][] \OML/cmm/m/it/12 P c[] c[] [
] \OMS/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[]$ \OT1/cmr/m/n/12 and $[][] \OML/cmm
/m/it/12 P c[] c[] \OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12 n\OT1/cmr/m/n/12 ) \OMS
/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[] n \OT1/cmr/m/n/12 ([][] \OML/cmm/m/it/12 
P c[] c[] n\OT1/cmr/m/n/12 )$. 
[5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.

[6]
Overfull \hbox (27.62471pt too wide) in paragraph at lines 430--431
[]\OT1/cmr/bx/n/12 Proposition 4.8 \OT1/cmr/m/n/12 (Trans-port along con-cate-n
a-tion)\OT1/cmr/bx/n/12 . []$[][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p \OMS/cmsy/
m/n/12 ^^A \OML/cmm/m/it/12 q\OT1/cmr/m/n/12 ) = [][](\OML/cmm/m/it/12 q\OT1/cm
r/m/n/12 ) \OMS/cmsy/m/n/12 ^^N [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p\OT1/cmr
/m/n/12 )$\OT1/cmr/m/it/12 . 
[7] [8] [9] [10] [11] [12]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\exp' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.

[14] [15] [16] [17] [18]
Underfull \hbox (badness 10000) in paragraph at lines 1280--1282
[]\OT1/cmr/m/n/12 The agda-unimath project. \OT1/cmr/m/it/12 The agda-unimath l
i-brary\OT1/cmr/m/n/12 .
[19]
Underfull \hbox (badness 2735) in paragraph at lines 1288--1290
[]\OT1/cmr/m/n/12 V. Vo-evod-sky. The equiv-a-lence ax-iom and uni-va-lent mod-
els of type the-ory.
[20] (/private/tmp/05-hott-latex-review/05-hott.aux) )
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
blic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfti1200.pfb>
Output written on /private/tmp/05-hott-latex-review/05-hott.pdf (20 pages, 3883
20 bytes).
Transcript written on /private/tmp/05-hott-latex-review/05-hott.log.
Latexmk: Getting log file '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.fls'
Latexmk: Examining '/private/tmp/05-hott-latex-review/05-hott.log'
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: Log file says output to '/private/tmp/05-hott-latex-review/05-hott.pdf'
Latexmk: All targets (/private/tmp/05-hott-latex-review/05-hott.pdf) are up-to-date


codex
The clean build completed and resolved refs/cites after reruns. The only candidates left are rendered-output warnings, so I’m checking the final log and the affected source lines before deciding whether they meet your blocking threshold.
exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|LaTeX Warning: (Reference|Citation|There were undefined)|undefined references|Rerun|Overfull '"\\\\hbox|Underfull \\\\hbox|Package hyperref Warning: Token not allowed|Missing character|Fatal|Emergency)\" /tmp/05-hott-latex-review/05-hott.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:(^!|LaTeX Warning: (Reference|Citation|There were undefined)|undefined references|Rerun|Overfull \hbox|Underfull \hbox|Package hyperref Warning: Token not allowed|Missing character|Fatal|Emergency))
                                                                                                        ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "nl -ba papers/05-hott/latex/05-hott.tex | sed -n '260,275p;424,434p;844,856p;900,908p;926,932p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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
   424	$\transport^P(p) : P(a) \to P(b)$ is defined by $J$:
   425	$\transport^P(\refl_a)(u) := u$.
   426	\end{definition}
   427	
   428	\begin{proposition}[Transport along concatenation]
   429	\label{prop:trans-concat}
   430	$\transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p)$.
   431	\end{proposition}
   432	
   433	\begin{proof}
   434	$J$ on either $p$ or $q$.
   844	
   845	\section{Transcendentals in HoTT}
   846	\label{sec:transcendentals}
   847	
   848	We work inside $\R_c$ from \Cref{sec:reals}.
   849	
   850	\subsection{$\pi$ as the period of $\exp$ on $i\R$}
   851	
   852	\begin{definition}[Real exponential]
   853	The map $\exp : \R_c \to \R_c$ is defined as the unique solution to
   854	$y' = y, y(0) = 1$ in $\R_c$ -- equivalently, by the power series
   855	$\sum_{n=0}^{\infty} x^n / n!$, which converges in $\R_c$ by completeness.
   856	\end{definition}
   900	formalization of the Cauchy integral over $\R_c$. We identify this as
   901	open work in \Cref{sec:conclusion}.
   902	\end{proof}
   903	
   904	\subsection{$e$ as the unique fixed point of $D$}
   905	
   906	\begin{definition}[Euler's number]
   907	\label{def:e}
   908	Let $\exp : \R_c \to \R_c$ be as above. Then $e := \exp(1)$. Equivalently,
   926	are well-defined independently of the chosen construction.
   927	\end{theorem}
   928	
   929	\section{Bridge: HoTT as the Internal Language of $(\infty,1)$-Toposes}
   930	\label{sec:bridge}
   931	
   932	\subsection{Categorical semantics}

exec
/usr/local/bin/zsh -lc "pdfinfo /tmp/05-hott-latex-review/05-hott.pdf | sed -n '1,20p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
Title:           
Subject:         
Keywords:        
Author:          
Creator:         LaTeX with hyperref
Producer:        pdfTeX-1.40.29
CreationDate:    Mon May  4 08:19:48 2026 CST
ModDate:         Mon May  4 08:19:48 2026 CST
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
File size:       388320 bytes

exec
/usr/local/bin/zsh -lc 'rg -n "Overfull|Underfull|undefined|Citation|Reference|Token not allowed|Missing character|Fatal|Emergency|''^!" /tmp/05-hott-latex-review/05-hott.log' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
806:Overfull \hbox (3.41719pt too wide) in paragraph at lines 267--272
816:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
820:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
824:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
828:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
832:Overfull \hbox (27.62471pt too wide) in paragraph at lines 430--431
842:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
846:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
850:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
854:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
858:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
862:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
866:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
870:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
874:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
878:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
882:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
886:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
891:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
895:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
899:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
903:Underfull \hbox (badness 10000) in paragraph at lines 1280--1282
909:Underfull \hbox (badness 2735) in paragraph at lines 1288--1290

exec
/usr/local/bin/zsh -lc "mutool show /tmp/05-hott-latex-review/05-hott.pdf outline 2>/dev/null | sed -n '1,80p' || true" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "pdfimages -list /tmp/05-hott-latex-review/05-hott.pdf | sed -n '1,20p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 367ms:
page   num  type   width height color comp bpc  enc interp  object ID x-ppi y-ppi size ratio
--------------------------------------------------------------------------------------------

exec
/usr/local/bin/zsh -lc "sed -n '1,80p' /tmp/05-hott-latex-review/05-hott.out" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
\BOOKMARK [1][-]{section.1}{\376\377\000I\000n\000t\000r\000o\000d\000u\000c\000t\000i\000o\000n}{}% 1
\BOOKMARK [2][-]{subsection.1.1}{\376\377\000R\000o\000a\000d\000m\000a\000p}{section.1}% 2
\BOOKMARK [2][-]{subsection.1.2}{\376\377\000N\000o\000t\000a\000t\000i\000o\000n\000a\000l\000\040\000c\000o\000n\000v\000e\000n\000t\000i\000o\000n\000s}{section.1}% 3
\BOOKMARK [1][-]{section.2}{\376\377\000M\000a\000t\000h\000e\000m\000a\000t\000i\000c\000a\000l\000\040\000F\000r\000a\000m\000e\000w\000o\000r\000k}{}% 4
\BOOKMARK [2][-]{subsection.2.1}{\376\377\000D\000e\000p\000e\000n\000d\000e\000n\000t\000\040\000p\000r\000o\000d\000u\000c\000t\000s\000\040\000a\000n\000d\000\040\000s\000u\000m\000s}{section.2}% 5
\BOOKMARK [2][-]{subsection.2.2}{\376\377\000T\000h\000e\000\040\000u\000n\000i\000t\000,\000\040\000e\000m\000p\000t\000y\000,\000\040\000a\000n\000d\000\040\000s\000u\000m\000\040\000t\000y\000p\000e\000s}{section.2}% 6
\BOOKMARK [2][-]{subsection.2.3}{\376\377\000U\000n\000i\000v\000e\000r\000s\000e\000s\000\040\000a\000n\000d\000\040\000R\000u\000s\000s\000e\000l\000l\000\040\000v\000s\000.\000\040\000T\000a\000r\000s\000k\000i}{section.2}% 7
\BOOKMARK [1][-]{section.3}{\376\377\000N\000a\000t\000u\000r\000a\000l\000\040\000N\000u\000m\000b\000e\000r\000s\000\040\000a\000s\000\040\000a\000n\000\040\000I\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000T\000y\000p\000e}{}% 8
\BOOKMARK [2][-]{subsection.3.1}{\376\377\000T\000h\000e\000\040\000i\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000d\000e\000f\000i\000n\000i\000t\000i\000o\000n}{section.3}% 9
\BOOKMARK [2][-]{subsection.3.2}{\376\377\000R\000e\000c\000u\000r\000s\000i\000o\000n\000\040\000a\000n\000d\000\040\000a\000r\000i\000t\000h\000m\000e\000t\000i\000c}{section.3}% 10
\BOOKMARK [2][-]{subsection.3.3}{\376\377\000N\000\040\000i\000n\000\040\000H\000o\000T\000T\000\040\000v\000s\000.\000\040\000N\000\040\000i\000n\000\040\000s\000e\000t\000\040\000t\000h\000e\000o\000r\000y}{section.3}% 11
\BOOKMARK [1][-]{section.4}{\376\377\000I\000d\000e\000n\000t\000i\000t\000y\000\040\000T\000y\000p\000e\000s\000\040\000a\000n\000d\000\040\000P\000a\000t\000h\000\040\000I\000n\000d\000u\000c\000t\000i\000o\000n}{}% 12
\BOOKMARK [2][-]{subsection.4.1}{\376\377\000T\000h\000e\000\040\000i\000d\000e\000n\000t\000i\000t\000y\000\040\000t\000y\000p\000e}{section.4}% 13
\BOOKMARK [2][-]{subsection.4.2}{\376\377\000S\000y\000m\000m\000e\000t\000r\000y\000,\000\040\000t\000r\000a\000n\000s\000i\000t\000i\000v\000i\000t\000y\000,\000\040\000a\000n\000d\000\040\000t\000h\000e\000\040\000p\000a\000t\000h\000\040\000g\000r\000o\000u\000p\000o\000i\000d}{section.4}% 14
\BOOKMARK [2][-]{subsection.4.3}{\376\377\000T\000r\000a\000n\000s\000p\000o\000r\000t}{section.4}% 15
\BOOKMARK [2][-]{subsection.4.4}{\376\377\000H\000o\000m\000o\000t\000o\000p\000y\000\040\000l\000e\000v\000e\000l\000s}{section.4}% 16
\BOOKMARK [1][-]{section.5}{\376\377\000T\000h\000e\000\040\000U\000n\000i\000v\000a\000l\000e\000n\000c\000e\000\040\000A\000x\000i\000o\000m}{}% 17
\BOOKMARK [2][-]{subsection.5.1}{\376\377\000E\000q\000u\000i\000v\000a\000l\000e\000n\000c\000e\000\040\000o\000f\000\040\000t\000y\000p\000e\000s}{section.5}% 18
\BOOKMARK [2][-]{subsection.5.2}{\376\377\000T\000h\000e\000\040\000a\000x\000i\000o\000m}{section.5}% 19
\BOOKMARK [2][-]{subsection.5.3}{\376\377\000C\000o\000n\000s\000e\000q\000u\000e\000n\000c\000e\000s\000\040\000f\000o\000r\000\040\000a\000r\000i\000t\000h\000m\000e\000t\000i\000c}{section.5}% 20
\BOOKMARK [2][-]{subsection.5.4}{\376\377\000F\000u\000n\000c\000t\000i\000o\000n\000\040\000e\000x\000t\000e\000n\000s\000i\000o\000n\000a\000l\000i\000t\000y}{section.5}% 21
\BOOKMARK [1][-]{section.6}{\376\377\000H\000i\000g\000h\000e\000r\000\040\000I\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000T\000y\000p\000e\000s}{}% 22
\BOOKMARK [2][-]{subsection.6.1}{\376\377\000T\000h\000e\000\040\000i\000n\000t\000e\000r\000v\000a\000l\000\040\000a\000n\000d\000\040\000p\000r\000o\000p\000o\000s\000i\000t\000i\000o\000n\000a\000l\000\040\000t\000r\000u\000n\000c\000a\000t\000i\000o\000n}{section.6}% 23
\BOOKMARK [2][-]{subsection.6.2}{\376\377\000T\000h\000e\000\040\000c\000i\000r\000c\000l\000e}{section.6}% 24
\BOOKMARK [2][-]{subsection.6.3}{\376\377\000S\000p\000h\000e\000r\000e\000s\000,\000\040\000s\000u\000s\000p\000e\000n\000s\000i\000o\000n\000s\000,\000\040\000a\000n\000d\000\040\000p\000u\000s\000h\000o\000u\000t\000s}{section.6}% 25
\BOOKMARK [2][-]{subsection.6.4}{\376\377\000E\000i\000l\000e\000n\000b\000e\000r\000g\040\023\000M\000a\000c\000L\000a\000n\000e\000\040\000s\000p\000a\000c\000e\000s}{section.6}% 26
\BOOKMARK [2][-]{subsection.6.5}{\376\377\000R\000e\000a\000l\000\040\000n\000u\000m\000b\000e\000r\000s\000\040\000a\000s\000\040\000a\000\040\000h\000i\000g\000h\000e\000r\000\040\000i\000n\000d\000u\000c\000t\000i\000v\000e\040\023\000i\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000t\000y\000p\000e}{section.6}% 27
\BOOKMARK [2][-]{subsection.6.6}{\376\377\000W\000o\000r\000k\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000t\000h\000e\000\040\000c\000a\000n\000o\000n\000i\000c\000a\000l\000\040\0005\0008\000\040\000a\000c\000r\000o\000s\000s\000\040\000N\000N\000O\000s}{section.6}% 28
\BOOKMARK [2][-]{subsection.6.7}{\376\377\000W\000o\000r\000k\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000t\000h\000e\000\040\000l\000o\000o\000p\000\040\000c\000o\000n\000c\000a\000t\000e\000n\000a\000t\000i\000o\000n\000\040\000a\000s\000\040\000i\000n\000t\000e\000g\000e\000r\000\040\000a\000d\000d\000i\000t\000i\000o\000n}{section.6}% 29
\BOOKMARK [1][-]{section.7}{\376\377\000C\000u\000b\000i\000c\000a\000l\000\040\000T\000y\000p\000e\000\040\000T\000h\000e\000o\000r\000y}{}% 30
\BOOKMARK [2][-]{subsection.7.1}{\376\377\000I\000n\000t\000e\000r\000v\000a\000l\000s\000\040\000a\000n\000d\000\040\000f\000a\000c\000e\000s}{section.7}% 31
\BOOKMARK [2][-]{subsection.7.2}{\376\377\000C\000o\000m\000p\000o\000s\000i\000t\000i\000o\000n\000\040\000a\000n\000d\000\040\000G\000l\000u\000e}{section.7}% 32
\BOOKMARK [2][-]{subsection.7.3}{\376\377\000I\000m\000p\000l\000e\000m\000e\000n\000t\000a\000t\000i\000o\000n\000s}{section.7}% 33
\BOOKMARK [1][-]{section.8}{\376\377\000V\000a\000r\000i\000a\000n\000t\000s\000:\000\040\0002\000L\000T\000T\000,\000\040\000M\000o\000d\000a\000l\000,\000\040\000a\000n\000d\000\040\000D\000i\000r\000e\000c\000t\000e\000d\000\040\000H\000o\000T\000T}{}% 34
\BOOKMARK [2][-]{subsection.8.1}{\376\377\000T\000w\000o\000-\000l\000e\000v\000e\000l\000\040\000t\000y\000p\000e\000\040\000t\000h\000e\000o\000r\000y}{section.8}% 35
\BOOKMARK [2][-]{subsection.8.2}{\376\377\000M\000o\000d\000a\000l\000\040\000H\000o\000T\000T}{section.8}% 36
\BOOKMARK [2][-]{subsection.8.3}{\376\377\000D\000i\000r\000e\000c\000t\000e\000d\000\040\000H\000o\000T\000T}{section.8}% 37
\BOOKMARK [1][-]{section.9}{\376\377\000T\000r\000a\000n\000s\000c\000e\000n\000d\000e\000n\000t\000a\000l\000s\000\040\000i\000n\000\040\000H\000o\000T\000T}{}% 38
\BOOKMARK [2][-]{subsection.9.1}{\376\377\000\040\000a\000s\000\040\000t\000h\000e\000\040\000p\000e\000r\000i\000o\000d\000\040\000o\000f\000\040\000\040\000o\000n\000\040\000i\000R}{section.9}% 39
\BOOKMARK [2][-]{subsection.9.2}{\376\377\000e\000\040\000a\000s\000\040\000t\000h\000e\000\040\000u\000n\000i\000q\000u\000e\000\040\000f\000i\000x\000e\000d\000\040\000p\000o\000i\000n\000t\000\040\000o\000f\000\040\000D}{section.9}% 40
\BOOKMARK [2][-]{subsection.9.3}{\376\377\000I\000d\000e\000n\000t\000i\000f\000i\000c\000a\000t\000i\000o\000n\000\040\000a\000c\000r\000o\000s\000s\000\040\000e\000n\000c\000o\000d\000i\000n\000g\000s}{section.9}% 41
\BOOKMARK [1][-]{section.10}{\376\377\000B\000r\000i\000d\000g\000e\000:\000\040\000H\000o\000T\000T\000\040\000a\000s\000\040\000t\000h\000e\000\040\000I\000n\000t\000e\000r\000n\000a\000l\000\040\000L\000a\000n\000g\000u\000a\000g\000e\000\040\000o\000f\000\040\000\050\000,\0001\000\051\000-\000T\000o\000p\000o\000s\000e\000s}{}% 42
\BOOKMARK [2][-]{subsection.10.1}{\376\377\000C\000a\000t\000e\000g\000o\000r\000i\000c\000a\000l\000\040\000s\000e\000m\000a\000n\000t\000i\000c\000s}{section.10}% 43
\BOOKMARK [2][-]{subsection.10.2}{\376\377\000C\000o\000-\000e\000x\000t\000e\000n\000s\000i\000v\000e\000n\000e\000s\000s\000\040\000w\000i\000t\000h\000\040\000c\000a\000t\000e\000g\000o\000r\000i\000c\000a\000l\000\040\000a\000n\000d\000\040\000s\000t\000r\000u\000c\000t\000u\000r\000a\000l\000\040\000p\000e\000r\000s\000p\000e\000c\000t\000i\000v\000e\000s}{section.10}% 44
\BOOKMARK [1][-]{section.11}{\376\377\000R\000e\000s\000u\000l\000t\000s}{}% 45
\BOOKMARK [1][-]{section.12}{\376\377\000D\000i\000s\000c\000u\000s\000s\000i\000o\000n}{}% 46
\BOOKMARK [2][-]{subsection.12.1}{\376\377\000W\000h\000a\000t\000\040\000H\000o\000T\000T\000\040\000d\000o\000e\000s\000\040\000n\000o\000t\000\040\000s\000o\000l\000v\000e}{section.12}% 47
\BOOKMARK [2][-]{subsection.12.2}{\376\377\000P\000h\000i\000l\000o\000s\000o\000p\000h\000i\000c\000a\000l\000\040\000r\000e\000a\000d\000i\000n\000g}{section.12}% 48
\BOOKMARK [2][-]{subsection.12.3}{\376\377\000P\000e\000d\000a\000g\000o\000g\000i\000c\000a\000l\000\040\000i\000m\000p\000l\000i\000c\000a\000t\000i\000o\000n\000s}{section.12}% 49
\BOOKMARK [2][-]{subsection.12.4}{\376\377\000C\000o\000m\000p\000u\000t\000a\000t\000i\000o\000n\000a\000l\000\040\000r\000e\000a\000l\000i\000s\000a\000t\000i\000o\000n}{section.12}% 50
\BOOKMARK [2][-]{subsection.12.5}{\376\377\000C\000o\000m\000p\000a\000r\000i\000s\000o\000n\000\040\000w\000i\000t\000h\000\040\000s\000e\000t\000-\000t\000h\000e\000o\000r\000e\000t\000i\000c\000\040\000a\000n\000d\000\040\000c\000a\000t\000e\000g\000o\000r\000i\000c\000a\000l\000\040\000f\000o\000u\000n\000d\000a\000t\000i\000o\000n\000s}{section.12}% 51
\BOOKMARK [2][-]{subsection.12.6}{\376\377\000W\000h\000e\000n\000\040\000a\000x\000i\000o\000m\000a\000t\000i\000c\000\040\000u\000n\000i\000v\000a\000l\000e\000n\000c\000e\000\040\000c\000a\000n\000n\000o\000t\000\040\000b\000e\000\040\000a\000v\000o\000i\000d\000e\000d}{section.12}% 52
\BOOKMARK [1][-]{section.13}{\376\377\000C\000o\000m\000p\000a\000n\000i\000o\000n\000\040\000I\000m\000p\000l\000e\000m\000e\000n\000t\000a\000t\000i\000o\000n}{}% 53
\BOOKMARK [1][-]{section.14}{\376\377\000A\000g\000d\000a\000\040\000S\000k\000e\000t\000c\000h}{}% 54
\BOOKMARK [1][-]{section.15}{\376\377\000C\000o\000n\000c\000l\000u\000s\000i\000o\000n\000\040\000a\000n\000d\000\040\000F\000u\000t\000u\000r\000e\000\040\000W\000o\000r\000k}{}% 55
\BOOKMARK [2][-]{subsection.15.1}{\376\377\000O\000p\000e\000n\000\040\000p\000r\000o\000b\000l\000e\000m\000s}{section.15}% 56

exec
/usr/local/bin/zsh -lc "sed -n '800,910p' /tmp/05-hott-latex-review/05-hott.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
] [2])
\tf@toc=\write5
\openout5 = `05-hott.toc'.

 [3] [4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts
1.enc}]
Overfull \hbox (3.41719pt too wide) in paragraph at lines 267--272
\OT1/cmr/m/n/12 The com-pu-ta-tion rules are $[][] \OML/cmm/m/it/12 P c[] c[] [
] \OMS/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[]$ \OT1/cmr/m/n/12 and $[][] \OML/cmm
/m/it/12 P c[] c[] \OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12 n\OT1/cmr/m/n/12 ) \OMS
/cmsy/m/n/12 ^^Q \OML/cmm/m/it/12 c[] n \OT1/cmr/m/n/12 ([][] \OML/cmm/m/it/12 
P c[] c[] n\OT1/cmr/m/n/12 )$. 
 []

[5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 326.

[6]
Overfull \hbox (27.62471pt too wide) in paragraph at lines 430--431
[]\OT1/cmr/bx/n/12 Proposition 4.8 \OT1/cmr/m/n/12 (Trans-port along con-cate-n
a-tion)\OT1/cmr/bx/n/12 . []$[][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p \OMS/cmsy/
m/n/12 ^^A \OML/cmm/m/it/12 q\OT1/cmr/m/n/12 ) = [][](\OML/cmm/m/it/12 q\OT1/cm
r/m/n/12 ) \OMS/cmsy/m/n/12 ^^N [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 p\OT1/cmr
/m/n/12 )$\OT1/cmr/m/it/12 . 
 []

[7] [8] [9] [10] [11] [12]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\exp' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 850.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 904.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 929.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 929.

[14] [15] [16] [17] [18]
Underfull \hbox (badness 10000) in paragraph at lines 1280--1282
[]\OT1/cmr/m/n/12 The agda-unimath project. \OT1/cmr/m/it/12 The agda-unimath l
i-brary\OT1/cmr/m/n/12 .
 []

[19]
Underfull \hbox (badness 2735) in paragraph at lines 1288--1290
[]\OT1/cmr/m/n/12 V. Vo-evod-sky. The equiv-a-lence ax-iom and uni-va-lent mod-

exec
/usr/local/bin/zsh -lc "which pdftotext || true; pdftotext -layout -f 7 -l 7 /tmp/05-hott-latex-review/05-hott.pdf - | sed -n '1,120p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/opt/homebrew/bin/pdftotext
Theorem 4.6 (Path groupoid). For any type A and a, b, c, d : A, p : a = b, q : b = c,
r : c = d:

  1. refla · p = p and p · reflb = p;

  2. p · p−1 = refla and p−1 · p = reflb ;

  3. (p · q) · r = p · (q · r).

Moreover the higher coherences (the pentagon, the Eckmann–Hilton argument, etc.) all hold
up to higher paths, making A into an ∞-groupoid [3, 4].

Proof sketch. Each clause is proved by J on the relevant paths. For the higher coherences
one iterates J at successively higher levels; see [1, §2.1].

4.3    Transport
Definition 4.7 (Transport). For P : A → U, a, b : A, and p : a = b, the function
transportP (p) : P (a) → P (b) is defined by J: transportP (refla )(u) := u.

Proposition 4.8 (Transport along concatenation). transportP (p·q) = transportP (q)◦transportP (p).

Proof. J on either p or q.

4.4    Homotopy levels
Definition 4.9 (Contractibility, propositions, sets). A type A : U is

  • contractible, isContr(A) := c:A x:A (x = c);
                                P Q

  • a mere proposition, isProp(A) := x,y:A (x = y);
                                       Q

  • a set (h-set), isSet(A) := x,y:A isProp(x = y).
                               Q

The hierarchy continues: A is an n-type iff every identity type of A is an (n − 1)-type.
                                                        Q
Theorem 4.10 (Hedberg). If A has decidable equality x,y:A (x = y) + ¬(x = y), then A is
a set.

Corollary 4.11. N is a set.

Proof. Equality on N is decidable by induction on both arguments and Peano’s fourth axiom
succ m = succ n ⇒ m = n. Apply Hedberg.




                                             7

codex
Findings from a clean `latexmk -pdf` temp build:

- [05-hott.tex:430](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:430) visibly overflows by `27.62471pt`.
  Exact fix:
  ```tex
  \[
  \transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p).
  \]
  ```

- [05-hott.tex:850](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:850) PDF bookmark renders as “ as the period of  on iR” because `hyperref` strips math commands.
  Exact fix:
  ```tex
  \subsection{\texorpdfstring{$\pi$}{pi} as the period of \texorpdfstring{$\exp$}{exp} on \texorpdfstring{$i\R$}{iR}}
  ```

- [05-hott.tex:929](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:929) PDF bookmark renders `$(\infty,1)$` as `(,1)`.
  Exact fix:
  ```tex
  \section{Bridge: HoTT as the Internal Language of \texorpdfstring{$(\infty,1)$}{(infinity,1)}-Toposes}
  ```

No compilation errors, unresolved references, unresolved citations, or missing-package failures after rerun.
2026-05-04T14:20:52.956662Z ERROR codex_core::session: failed to record rollout items: thread 019df35b-73ff-7491-ab6f-d39c25a212a8 not found
tokens used
84,111
Findings from a clean `latexmk -pdf` temp build:

- [05-hott.tex:430](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:430) visibly overflows by `27.62471pt`.
  Exact fix:
  ```tex
  \[
  \transport^P(p \cdot q) = \transport^P(q) \circ \transport^P(p).
  \]
  ```

- [05-hott.tex:850](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:850) PDF bookmark renders as “ as the period of  on iR” because `hyperref` strips math commands.
  Exact fix:
  ```tex
  \subsection{\texorpdfstring{$\pi$}{pi} as the period of \texorpdfstring{$\exp$}{exp} on \texorpdfstring{$i\R$}{iR}}
  ```

- [05-hott.tex:929](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/05-hott/latex/05-hott.tex:929) PDF bookmark renders `$(\infty,1)$` as `(,1)`.
  Exact fix:
  ```tex
  \section{Bridge: HoTT as the Internal Language of \texorpdfstring{$(\infty,1)$}{(infinity,1)}-Toposes}
  ```

No compilation errors, unresolved references, unresolved citations, or missing-package failures after rerun.

---

## Fixes applied (post-review)

1. Line 430 overfull hbox: wrapped transport-along-concatenation
   equation in `\[ ... \]` display math.
2. Line 850 PDF bookmark: wrapped subsection title in `\texorpdfstring`
   for `$\pi$`, `$\exp$`, `$i\R$`.
3. Line 929 PDF bookmark: wrapped section title in `\texorpdfstring` for
   `$(\infty,1)$`.

Recompiled cleanly. No remaining compilation errors, undefined
references, or missing-package failures.
