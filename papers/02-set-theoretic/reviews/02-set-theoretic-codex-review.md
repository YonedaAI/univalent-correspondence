---
reviewer: codex (OpenAI)
type: formatting
paper: 02-set-theoretic
date: 2026-05-04T01:52:02Z
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
session id: 019df0af-7605-76f3-a59a-8d2ac16d1d31
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex for FORMATTING issues only (compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems, malformed environments). Read the file with cat or similar. List all issues with line numbers and concrete fixes. Be brief and specific.
codex
I’ll inspect the TeX source directly and then try a compile/log pass if the project has enough local context to surface reference/package/box issues.
exec
/usr/local/bin/zsh -lc 'ls -la /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'wc -l /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'nl -ba /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
total 1032
drwxr-xr-x  8 mlong  staff     256 May  3 19:51 .
drwxr-xr-x  6 mlong  staff     192 May  3 19:22 ..
-rw-r--r--  1 mlong  staff   13752 May  3 19:50 02-set-theoretic.aux
-rw-r--r--  1 mlong  staff   33134 May  3 19:50 02-set-theoretic.log
-rw-r--r--  1 mlong  staff    9312 May  3 19:50 02-set-theoretic.out
-rw-r--r--  1 mlong  staff  348214 May  3 19:50 02-set-theoretic.pdf
-rw-r--r--  1 mlong  staff   54569 May  3 19:51 02-set-theoretic.tex
-rw-r--r--  1 mlong  staff    4486 May  3 19:50 02-set-theoretic.toc

 succeeded in 0ms:
    1343 /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex

 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	
    10	% References
    11	\usepackage{hyperref}
    12	\usepackage{cleveref}
    13	
    14	% Graphics
    15	\usepackage{graphicx}
    16	
    17	% Page layout
    18	\usepackage[margin=1in]{geometry}
    19	
    20	% GrokRxiv sidebar
    21	\usepackage{everypage}
    22	\usepackage{xcolor}
    23	
    24	% Code listings
    25	\usepackage{listings}
    26	
    27	% Enumerate options (label=(\roman*), etc.)
    28	\usepackage{enumitem}
    29	
    30	% Theorem environments
    31	\newtheorem{theorem}{Theorem}[section]
    32	\newtheorem{proposition}[theorem]{Proposition}
    33	\newtheorem{lemma}[theorem]{Lemma}
    34	\newtheorem{corollary}[theorem]{Corollary}
    35	\theoremstyle{definition}
    36	\newtheorem{definition}[theorem]{Definition}
    37	\newtheorem{example}[theorem]{Example}
    38	\theoremstyle{remark}
    39	\newtheorem{remark}[theorem]{Remark}
    40	
    41	% GrokRxiv sidebar
    42	\definecolor{grokgray}{RGB}{110,110,110}
    43	\AddEverypageHook{%
    44	  \ifnum\value{page}=1
    45	    \begin{tikzpicture}[remember picture, overlay]
    46	      \node[
    47	        rotate=90,
    48	        anchor=south,
    49	        font=\Large\sffamily\bfseries\color{grokgray},
    50	        inner sep=0pt
    51	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    52	      {GrokRxiv:2026.05.set-theoretic-perspective\quad
    53	       [\,math.LO\,]\quad
    54	       03 May 2026};
    55	    \end{tikzpicture}
    56	  \fi
    57	}
    58	
    59	% Listings setup for Haskell
    60	\lstdefinelanguage{Haskell}{
    61	  morekeywords={data, where, let, in, do, case, of, if, then, else, type, newtype, class, instance, module, import, deriving},
    62	  sensitive=true,
    63	  morecomment=[l]{--},
    64	  morecomment=[s]{\{-}{-\}},
    65	  morestring=[b]"
    66	}
    67	\lstset{
    68	  basicstyle=\ttfamily\small,
    69	  keywordstyle=\color{blue!70!black}\bfseries,
    70	  commentstyle=\color{green!50!black}\itshape,
    71	  stringstyle=\color{red!70!black},
    72	  showstringspaces=false,
    73	  breaklines=true,
    74	  frame=single,
    75	  framesep=4pt,
    76	  language=Haskell
    77	}
    78	
    79	\title{The Set-Theoretic Perspective: \\
    80	Numbers as von Neumann Ordinals \\
    81	\large Paper 02 of the Univalent Correspondence Series}
    82	
    83	\author{YonedaAI Research \\
    84	\textit{Formalized Foundations of Mathematics Project} \\
    85	\textit{Univalent Correspondence Series} \\
    86	\texttt{research@yonedaai.org}}
    87	
    88	\date{03 May 2026}
    89	
    90	\begin{document}
    91	
    92	\maketitle
    93	
    94	\begin{abstract}
    95	We examine the second of six perspectives in the Univalent Correspondence series:
    96	the set-theoretic level, in which natural numbers are reduced to particular
    97	elements of the cumulative hierarchy of pure sets. We work primarily in
    98	Zermelo--Fraenkel set theory with Choice (ZFC), focusing on John von Neumann's
    99	ordinal encoding $0 = \emptyset$, $n+1 = n \cup \{n\}$, where the natural number
   100	$58$ is realized as the set $\{0,1,\ldots,57\}$ of all smaller von Neumann
   101	ordinals. We contrast this with Ernst Zermelo's earlier encoding
   102	$0 = \emptyset$, $n+1 = \{n\}$, in which $58$ is realized as a chain of $58$
   103	nested singletons. Both encodings produce structures isomorphic to
   104	$(\mathbb{N},0,\mathrm{succ})$ as Peano models, yet they differ on
   105	\emph{internal} set-theoretic questions such as whether $2 \in 3$ or whether
   106	$\{\emptyset\} \in 17$. Following Paul Benacerraf's 1965 paper
   107	\emph{What Numbers Could Not Be}, we argue that this discrepancy is not a
   108	defect to be eliminated but a structural fact: numbers are not sets, and any
   109	attempt to identify them with sets generates encoding-relative
   110	\emph{junk theorems} that are meaningful about the encoding but meaningless
   111	about the number. We give a careful presentation of the ZFC axiomatization,
   112	the cumulative hierarchy $V_\alpha$, ranks, and well-foundedness; we define
   113	addition, multiplication, and order recursively on the von Neumann ordinals
   114	and verify that these definitions satisfy the Peano axioms; and we prove a
   115	general representation theorem stating that any successor structure obtained
   116	from a class function $S$ that is injective, has a base point not in its
   117	image, and admits transfinite iteration generates a model of Peano arithmetic
   118	isomorphic to the von Neumann naturals. We close with a structuralist
   119	re-reading: the set-theoretic perspective \emph{does} present numbers, but
   120	only as encodings; the structural content these encodings share is a
   121	universal property, which Paper 03 will make explicit. Our development is
   122	accompanied by a Haskell implementation that realizes both encodings as
   123	distinct types and proves, by construction, that they satisfy the same Peano
   124	interface.
   125	\end{abstract}
   126	
   127	\tableofcontents
   128	
   129	\newpage
   130	
   131	\section{Introduction}
   132	\label{sec:intro}
   133	
   134	\subsection{Where we are in the series}
   135	
   136	This is the second paper in a six-paper series, plus a synthesis volume,
   137	exploring the question \emph{``what is a natural number?''} at progressively
   138	higher levels of mathematical abstraction. Paper 01 considered the
   139	\emph{naive} level, in which a number is treated as a primitive symbol or
   140	quantity, without further analysis. The naive level is the practical
   141	starting point of arithmetic and the inevitable surface of any numeral
   142	system, but it conflates syntax with semantics: the symbols ``$58$'',
   143	``LVIII'', and ``$\underbrace{\vert\vert\cdots\vert}_{58}$'' all refer to
   144	the same number, but the naive level provides no machinery for distinguishing
   145	the numeral from the number it names.
   146	
   147	The natural next step, taken in the foundational programs of the early
   148	twentieth century, is to \emph{reduce} numbers to objects of a more basic
   149	theory. Frege \cite{frege1884} attempted such a reduction to logic; Russell
   150	and Whitehead refined and elaborated it in \emph{Principia Mathematica}
   151	\cite{principia}; Zermelo and later Fraenkel and Skolem developed the
   152	axiomatic set theory we now call ZFC. Within ZFC, John von Neumann
   153	\cite{vonNeumann1923} gave a canonical recursive definition of the ordinals
   154	that, when restricted to the finite case, produces a particular set-theoretic
   155	implementation of the natural numbers. Standard expositions of the resulting
   156	machinery include Halmos \cite{halmos1960}, Suppes \cite{suppes1960},
   157	Shoenfield \cite{shoenfield1967}, and Kunen \cite{kunen1980}.
   158	
   159	\subsection{The thesis of this paper}
   160	
   161	We make four claims:
   162	
   163	\begin{enumerate}
   164	\item \textbf{Set theory does provide a foundation for arithmetic.} The von
   165	Neumann encoding inside ZFC produces a structure
   166	$(\omega, 0, \mathrm{succ})$, where $\omega$ is the smallest inductive set, on
   167	which addition, multiplication, and order can be defined recursively, and
   168	which satisfies the (second-order) Peano axioms.
   169	
   170	\item \textbf{The encoding is not unique.} Zermelo's earlier encoding,
   171	$0 = \emptyset$, $n+1 = \{n\}$, gives a different set-theoretic structure
   172	that nevertheless also satisfies the Peano axioms. Many other encodings exist.
   173	The encodings are mutually \emph{Peano-isomorphic} but not mutually
   174	\emph{ZFC-isomorphic}: as sets, they differ.
   175	
   176	\item \textbf{The discrepancy generates junk theorems.} In von Neumann's
   177	encoding, $2 \in 3$ is true; in Zermelo's, it is false. The question
   178	``is $2$ an element of $3$?'' is meaningful inside ZFC for each
   179	encoding separately, but it is meaningless about \emph{the number} $2$ ---
   180	it is an artifact of the encoding. Following Benacerraf \cite{benacerraf1965},
   181	we conclude that numbers cannot be identified with sets.
   182	
   183	\item \textbf{The structural content survives.} What both encodings share
   184	is precisely the universal property of a Natural Number Object: they are both
   185	initial in a category of pointed sets with endomorphism. This is the
   186	structural content that Paper 03 will make explicit. The set-theoretic
   187	perspective is therefore not refuted but \emph{relocated}: it is one
   188	implementation of a structural specification, not a definition.
   189	\end{enumerate}
   190	
   191	\subsection{Outline}
   192	
   193	\Cref{sec:zfc} reviews ZFC, with particular attention to the axiom of
   194	infinity, the axiom schema of replacement, and the foundation axiom (which
   195	underwrites well-foundedness). \Cref{sec:vN} presents the von Neumann
   196	encoding, defines $\omega$, and verifies the Peano axioms. \Cref{sec:zermelo}
   197	presents Zermelo's encoding and contrasts the two. \Cref{sec:benacerraf}
   198	develops Benacerraf's identification problem and the notion of a junk
   199	theorem. \Cref{sec:operations} defines addition, multiplication, and order
   200	recursively and proves the basic algebraic identities. \Cref{sec:cumulative}
   201	introduces the cumulative hierarchy $V_\alpha$, ranks, and well-foundedness,
   202	and locates the natural numbers within it. \Cref{sec:representation} proves
   203	a representation theorem characterizing successor structures up to
   204	isomorphism. \Cref{sec:bridge} develops the structuralist re-reading and
   205	sketches the bridge to Paper 03. The Haskell implementation accompanying the
   206	paper realizes both encodings; \Cref{sec:haskell} describes its design and
   207	the Peano-axiom verification by construction.
   208	
   209	\section{Mathematical Framework: ZFC Reviewed}
   210	\label{sec:zfc}
   211	
   212	We work in classical first-order logic with equality and a single binary
   213	relation symbol $\in$.
   214	
   215	\subsection{Axioms}
   216	
   217	\begin{definition}[ZFC]\label{def:zfc}
   218	The axioms of Zermelo--Fraenkel set theory with Choice are:
   219	
   220	\begin{enumerate}
   221	\item[\textbf{(Ext)}] \emph{Extensionality.}
   222	$\forall x\, \forall y\, \bigl(\forall z\,(z \in x \leftrightarrow z \in y) \to x = y\bigr)$.
   223	
   224	\item[\textbf{(Pair)}] \emph{Pairing.}
   225	$\forall x\, \forall y\, \exists z\, \forall w\,(w \in z \leftrightarrow w = x \vee w = y)$.
   226	
   227	\item[\textbf{(Un)}] \emph{Union.}
   228	$\forall x\, \exists y\, \forall z\,(z \in y \leftrightarrow \exists w\,(w \in x \wedge z \in w))$.
   229	
   230	\item[\textbf{(Pow)}] \emph{Power set.}
   231	$\forall x\, \exists y\, \forall z\,(z \in y \leftrightarrow z \subseteq x)$.
   232	
   233	\item[\textbf{(Sep)}] \emph{Separation schema.} For each formula $\varphi(z)$
   234	not involving $y$,
   235	$\forall x\, \exists y\, \forall z\,(z \in y \leftrightarrow z \in x \wedge \varphi(z))$.
   236	
   237	\item[\textbf{(Repl)}] \emph{Replacement schema.} For each formula
   238	$\varphi(x,y)$ defining a class function $F$,
   239	$\forall A\, \exists B\, \forall y\,(y \in B \leftrightarrow \exists x \in A\, \varphi(x,y))$.
   240	
   241	\item[\textbf{(Inf)}] \emph{Infinity.}
   242	$\exists I\,\bigl(\emptyset \in I \wedge \forall x\,(x \in I \to x \cup \{x\} \in I)\bigr)$.
   243	
   244	\item[\textbf{(Found)}] \emph{Foundation.}
   245	$\forall x\,(x \neq \emptyset \to \exists y \in x\,(y \cap x = \emptyset))$.
   246	
   247	\item[\textbf{(AC)}] \emph{Choice.} Every set of nonempty sets has a choice
   248	function.
   249	\end{enumerate}
   250	\end{definition}
   251	
   252	\begin{remark}
   253	The empty set $\emptyset$ is definable: by Separation applied to any set $x$
   254	and the formula $z \neq z$, the resulting set has no elements. By Extensionality,
   255	this set is unique. \textbf{(Inf)} guarantees there is a set containing $\emptyset$
   256	and closed under $x \mapsto x \cup \{x\}$.
   257	\end{remark}
   258	
   259	\subsection{Axiom of Infinity, in detail}
   260	
   261	\begin{definition}[Inductive set]
   262	A set $I$ is \emph{inductive} when $\emptyset \in I$ and, for every $x \in I$,
   263	$x \cup \{x\} \in I$. The axiom of infinity asserts that an inductive set exists.
   264	\end{definition}
   265	
   266	\begin{proposition}[Existence of $\omega$]\label{prop:omega}
   267	There exists a unique smallest inductive set, denoted $\omega$. Equivalently,
   268	$\omega = \bigcap \{I : I \text{ is inductive}\}$ inside any inductive set,
   269	defined by Separation:
   270	\begin{equation}
   271	\omega = \{x \in I_0 : \forall I\,(I \text{ inductive} \to x \in I)\},
   272	\end{equation}
   273	where $I_0$ is any fixed inductive set guaranteed by \textbf{(Inf)}.
   274	\end{proposition}
   275	
   276	\begin{proof}
   277	The class of inductive sets is nonempty by \textbf{(Inf)}; the
   278	class-intersection is inductive (it contains $\emptyset$ since each inductive
   279	set does, and is closed under $x \mapsto x \cup \{x\}$ since each inductive
   280	set is). Separation applied to $I_0$ and the formula
   281	$\varphi(x) \equiv \forall I\,(\text{Ind}(I) \to x \in I)$ produces a set $\omega$
   282	with the required property. Uniqueness follows from Extensionality.
   283	\end{proof}
   284	
   285	\subsection{Replacement, and what it buys us}
   286	
   287	The Separation schema only carves out subsets of an existing set; it cannot
   288	generate sets ``larger'' than what is already given. Replacement is strictly
   289	stronger: it asserts that the image of a set under a definable class function
   290	is a set. This is essential for transfinite recursion (and hence for the
   291	cumulative hierarchy of \Cref{sec:cumulative}) and for the formal definition
   292	of operations such as addition by recursion on $\omega$.
   293	
   294	\begin{remark}
   295	ZFC without Replacement is Zermelo's original 1908 system $\mathrm{Z}$, which
   296	is too weak for many constructions used in ordinary mathematics (Borel
   297	hierarchies, transfinite recursion past $\omega + \omega$, etc.). For our
   298	purposes here --- defining the natural numbers and their arithmetic ---
   299	Replacement is the crucial axiom that lets us define functions by recursion.
   300	\end{remark}
   301	
   302	\subsection{Foundation and well-foundedness}
   303	
   304	\begin{definition}[Well-founded relation]
   305	A relation $R$ on a class $C$ is \emph{well-founded} when every nonempty
   306	subset $S \subseteq C$ has an $R$-minimal element: an $x \in S$ with
   307	$\{y \in S : yRx\} = \emptyset$.
   308	\end{definition}
   309	
   310	\begin{theorem}\label{thm:found}
   311	The Foundation axiom is equivalent (in ZF without Foundation) to the
   312	assertion that the membership relation $\in$ is well-founded on the universe
   313	of sets. In particular, there is no infinite descending $\in$-chain
   314	$\cdots \in x_2 \in x_1 \in x_0$, no set $x$ with $x \in x$, and no cycle
   315	$x_0 \in x_1 \in \cdots \in x_n \in x_0$.
   316	\end{theorem}
   317	
   318	\begin{proof}[Proof sketch]
   319	If $x \in x$, then $\{x\}$ has no $\in$-minimal element, contradicting
   320	Foundation. The general statement is proved by considering the transitive
   321	closure of any candidate descending chain and applying Foundation to the
   322	resulting set.
   323	\end{proof}
   324	
   325	Foundation is what allows transfinite induction on the entire set-theoretic
   326	universe. It is also what makes the von Neumann encoding (in which $n$ is
   327	literally the set of its predecessors) compatible with the standard
   328	machinery: since each $n$ is a transitive set linearly ordered by $\in$,
   329	Foundation guarantees we never run into pathologies like $n \in n$.
   330	
   331	\section{The von Neumann Encoding}
   332	\label{sec:vN}
   333	
   334	\subsection{Definition}
   335	
   336	\begin{definition}[Successor]\label{def:succ}
   337	For any set $x$, the \emph{successor} of $x$ is
   338	$x^+ := x \cup \{x\}$.
   339	\end{definition}
   340	
   341	\begin{definition}[Von Neumann naturals]\label{def:vN}
   342	We define the von Neumann naturals as elements of $\omega$ recursively:
   343	\begin{align}
   344	0_{\mathrm{vN}} &:= \emptyset, \\
   345	(n+1)_{\mathrm{vN}} &:= (n_{\mathrm{vN}})^+ = n_{\mathrm{vN}} \cup \{n_{\mathrm{vN}}\}.
   346	\end{align}
   347	\end{definition}
   348	
   349	Unrolling this definition:
   350	\begin{align*}
   351	0 &= \emptyset \\
   352	1 &= \{0\} = \{\emptyset\} \\
   353	2 &= \{0, 1\} = \{\emptyset, \{\emptyset\}\} \\
   354	3 &= \{0, 1, 2\} = \{\emptyset, \{\emptyset\}, \{\emptyset, \{\emptyset\}\}\} \\
   355	&\vdots \\
   356	n &= \{0, 1, \ldots, n-1\}
   357	\end{align*}
   358	
   359	\begin{example}\label{ex:58}
   360	The number $58$, in von Neumann form, is the set of all smaller naturals:
   361	\begin{equation}
   362	58_{\mathrm{vN}} = \{0, 1, 2, \ldots, 57\}.
   363	\end{equation}
   364	The set $58$ has exactly $58$ elements, and each of those elements is a set
   365	with strictly fewer elements. The total cumulative count of $\in$-occurrences
   366	inside $58$ is large but finite (combinatorially, $\sum_{k=0}^{57} k = 1653$).
   367	\end{example}
   368	
   369	\subsection{Membership and subset coincide}
   370	
   371	A signal feature of the von Neumann encoding is the conflation, at the
   372	finite level, of $\in$ and $\subseteq$.
   373	
   374	\begin{proposition}\label{prop:in-equals-subset}
   375	For all $m, n \in \omega$, we have $m \in n$ if and only if $m \subsetneq n$.
   376	\end{proposition}
   377	
   378	\begin{proof}
   379	We prove both directions by induction on $n$.
   380	
   381	\emph{$(\Rightarrow)$.} If $m \in n$, then since $n$ is the set of its
   382	predecessors and is transitive (\Cref{prop:transitive} below), every element
   383	of $m$ is also an element of $n$, hence $m \subseteq n$. Strict inclusion
   384	follows from $m \in n$ and $m \notin m$ (Foundation, \Cref{thm:found}).
   385	
   386	\emph{$(\Leftarrow)$.} If $m \subsetneq n$, pick any $k \in n \setminus m$
   387	of minimal $\in$-rank. Then $k \subseteq m$ (by minimality), and $k = m$
   388	follows from extensionality together with $m \subseteq n$ and the definition
   389	of $n$ as the set of its predecessors. Hence $m = k \in n$.
   390	\end{proof}
   391	
   392	\begin{proposition}[Transitivity of naturals]\label{prop:transitive}
   393	Each $n \in \omega$ is a \emph{transitive set}: if $x \in n$, then $x \subseteq n$.
   394	\end{proposition}
   395	
   396	\begin{proof}
   397	By induction. $0 = \emptyset$ is vacuously transitive. Assume $n$ is
   398	transitive and let $x \in n^+ = n \cup \{n\}$. If $x = n$, then $x = n \subseteq n^+$
   399	since $n \cup \{n\} \supseteq n$. If $x \in n$, then by the inductive
   400	hypothesis $x \subseteq n \subseteq n^+$.
   401	\end{proof}
   402	
   403	\begin{example}
   404	$2 \in 3$ holds in von Neumann: $3 = \{0,1,2\}$, so $2$ is literally one of the
   405	three elements of $3$. Equivalently, $2 = \{0,1\} \subsetneq \{0,1,2\} = 3$.
   406	This is the kind of statement that, by \Cref{prop:in-equals-subset}, is
   407	equivalent in von Neumann to the order $2 < 3$.
   408	\end{example}
   409	
   410	\subsection{Peano axioms for the von Neumann naturals}
   411	
   412	\begin{theorem}\label{thm:peano-vN}
   413	The structure $(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ satisfies the Peano axioms:
   414	\begin{enumerate}
   415	\item $0_{\mathrm{vN}} \in \omega$.
   416	\item For all $n \in \omega$, $n^+ \in \omega$.
   417	\item For all $n \in \omega$, $n^+ \neq 0_{\mathrm{vN}}$.
   418	\item For all $m,n \in \omega$, if $m^+ = n^+$ then $m = n$.
   419	\item (Induction) For every set $S \subseteq \omega$, if $0_{\mathrm{vN}} \in S$
   420	and $S$ is closed under $(\cdot)^+$, then $S = \omega$.
   421	\end{enumerate}
   422	\end{theorem}
   423	
   424	\begin{proof}
   425	\textbf{(1) and (2)} are immediate from the definition of $\omega$ as the
   426	smallest inductive set.
   427	
   428	\textbf{(3)} If $n^+ = \emptyset$, then $n \cup \{n\} = \emptyset$. But
   429	$n \in n \cup \{n\}$, contradiction.
   430	
   431	\textbf{(4)} Suppose $m^+ = n^+$, i.e.\ $m \cup \{m\} = n \cup \{n\}$. Then
   432	$m \in n^+$ and $n \in m^+$. By \Cref{prop:in-equals-subset} (applied via
   433	$\in$-trichotomy), if $m \neq n$ then either $m \in n$ and $n \in m$, which
   434	contradicts Foundation, or one is a proper subset of the other; combined
   435	with $m \in n^+$ and $n \in m^+$ this forces $m = n$.
   436	
   437	\textbf{(5)} Let $S \subseteq \omega$ be inductive (containing $0$ and
   438	closed under $(\cdot)^+$). Then $S$ itself is an inductive set, so
   439	$\omega \subseteq S$ by minimality of $\omega$. The reverse inclusion is by
   440	hypothesis.
   441	\end{proof}
   442	
   443	\section{Zermelo's Encoding}
   444	\label{sec:zermelo}
   445	
   446	Ernst Zermelo, in his 1908 axiomatization \cite{zermelo1908}, used a
   447	different recursive definition of the natural numbers.
   448	
   449	\begin{definition}[Zermelo naturals]\label{def:Z}
   450	We define the Zermelo naturals recursively:
   451	\begin{align}
   452	0_{\mathrm{Z}} &:= \emptyset, \\
   453	(n+1)_{\mathrm{Z}} &:= \{n_{\mathrm{Z}}\}.
   454	\end{align}
   455	\end{definition}
   456	
   457	Unrolling:
   458	\begin{align*}
   459	0_{\mathrm{Z}} &= \emptyset \\
   460	1_{\mathrm{Z}} &= \{\emptyset\} \\
   461	2_{\mathrm{Z}} &= \{\{\emptyset\}\} \\
   462	3_{\mathrm{Z}} &= \{\{\{\emptyset\}\}\} \\
   463	&\vdots \\
   464	n_{\mathrm{Z}} &= \underbrace{\{\{\cdots\{}_{n}\emptyset\underbrace{\}\cdots\}\}}_{n}
   465	\end{align*}
   466	
   467	\begin{example}
   468	$58_{\mathrm{Z}}$ is a chain of $58$ nested singletons:
   469	\begin{equation}
   470	58_{\mathrm{Z}} = \underbrace{\{\{\cdots\{}_{58}\emptyset\underbrace{\}\cdots\}\}}_{58}.
   471	\end{equation}
   472	Crucially, $58_{\mathrm{Z}}$ has exactly \emph{one} element (namely
   473	$57_{\mathrm{Z}}$), not $58$. The cardinality of the encoding does not match
   474	the natural number it encodes.
   475	\end{example}
   476	
   477	\subsection{Comparison: junk theorems}
   478	
   479	\begin{proposition}[Encoding-relative facts]\label{prop:junk}
   480	The following statements all have determinate truth values inside ZFC, but
   481	the answers depend on the encoding. We display together the cases where the
   482	encodings agree and where they differ:
   483	\begin{center}
   484	\begin{tabular}{lll}
   485	\textbf{Question} & \textbf{Von Neumann} & \textbf{Zermelo} \\\hline
   486	$0 \in 1$? & true & true (both: $1 = \{0\}$) \\
   487	$n \in n^+$? & true & true (by construction) \\
   488	$n \subseteq n^+$? & true & true \\
   489	$1 \in 3$? & true ($3 = \{0,1,2\}$) & \textbf{false} ($3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$) \\
   490	$1 \in 17$? & true & \textbf{false} \\
   491	$\{\emptyset\} \in 17$? & true (since $\{\emptyset\} = 1 \in 17$) & \textbf{false} \\
   492	$|n| = n$ for $n \in \omega$? & true (each $n$ has $n$ elements) & \textbf{false} ($|n|=1$ for $n \geq 1$) \\
   493	$\bigcup n = \mathrm{pred}(n)$ for $n>0$?\footnote{Here $\mathrm{pred}(n)$ denotes the ordinal predecessor: the unique $m$ with $m^+ = n$.} & true & true \\
   494	$m \subsetneq n \iff m \in n$ (on $\omega$)? & true & \textbf{false}
   495	\end{tabular}
   496	\end{center}
   497	
   498	Two rows merit closer comment. The cardinality row exhibits the most
   499	striking divergence: $|2_{\mathrm{vN}}| = |\{0,1\}| = 2$ but
   500	$|2_{\mathrm{Z}}| = |\{\{\emptyset\}\}| = 1$, so already at $n=2$ the
   501	extensional ``size'' of the encoding tracks the natural number in von
   502	Neumann but not in Zermelo. For the membership/subset equivalence in the
   503	last row, the von Neumann case holds by \Cref{prop:in-equals-subset}; in
   504	Zermelo it fails. For instance, $1_{\mathrm{Z}} = \{\emptyset\}$ is not a
   505	subset of $2_{\mathrm{Z}} = \{\{\emptyset\}\}$, because the unique element
   506	$\emptyset$ of $1_{\mathrm{Z}}$ is not an element of
   507	$\{\{\emptyset\}\}$. The reliable encoding-independent statement of the
   508	natural order is therefore the structural Peano order $m < n$ (defined,
   509	e.g., as $\exists k > 0.\, m + k = n$), not the literal $\in$ relation.
   510	\end{proposition}
   511	
   512	\begin{remark}[On adjacent cases]
   513	For pairs $(m, m+1)$ both encodings agree on $m \in m+1$: in von Neumann
   514	because $m \in m \cup \{m\}$, and in Zermelo because $m \in \{m\}$. The
   515	discrepancy is for non-adjacent pairs $(m, n)$ with $m + 1 < n$, where the
   516	von Neumann encoding has $m \in n$ via transitivity but the Zermelo encoding
   517	has $n_{\mathrm{Z}} = \{(n-1)_{\mathrm{Z}}\}$ as a singleton, so only $n - 1$ is
   518	a member of $n$.
   519	\end{remark}
   520	
   521	\begin{proof}[Justification of the table]
   522	Every entry follows directly from the recursive definitions and Foundation.
   523	The pivotal entry for our purposes is the last: in von Neumann, membership
   524	and proper inclusion coincide on $\omega$ (\Cref{prop:in-equals-subset}); in
   525	Zermelo, this fails because (for $n \geq 2$) $n_{\mathrm{Z}}$ has only one
   526	element, while many sets are subsets of it under set-theoretic inclusion.
   527	\end{proof}
   528	
   529	\begin{remark}[Junk]
   530	We call statements like ``$2 \in 3$'' \emph{junk theorems} (or
   531	\emph{junk falsehoods}). They have a determinate truth value in ZFC under any
   532	fixed encoding, but they reflect choices made by the encoder, not facts
   533	about the natural numbers as such. The number $2$ does not stand in any
   534	intrinsic membership relation to the number $3$. The membership question is
   535	well-formed only because we have committed to representing numbers as sets;
   536	under a different commitment, the answer changes.
   537	\end{remark}
   538	
   539	\subsection{Peano axioms for Zermelo}
   540	
   541	\begin{proposition}[Existence of $\omega_{\mathrm{Z}}$]\label{prop:omega-Z}
   542	There exists a unique smallest set $\omega_{\mathrm{Z}}$ containing
   543	$\emptyset$ and closed under the operation $x \mapsto \{x\}$.
   544	\end{proposition}
   545	
   546	\begin{proof}
   547	The argument parallels that of \Cref{prop:omega} but uses the alternate
   548	successor. Call a set $J$ \emph{$Z$-inductive} when $\emptyset \in J$ and,
   549	for all $x \in J$, $\{x\} \in J$. By the axiom of infinity \textbf{(Inf)},
   550	the standard inductive set $I_0$ exists; by Pairing, the singleton operation
   551	$x \mapsto \{x\}$ is total. Applying the recursion theorem
   552	(\Cref{thm:recursion} below, whose proof depends only on Replacement
   553	applied to $\omega$ and not on either encoding), the recursion
   554	$f(0) = \emptyset$, $f(n^+) = \{f(n)\}$ defines a function $f: \omega \to V$
   555	whose range is a set $J_0$ by Replacement. The set $J_0$ is $Z$-inductive
   556	by construction. Then by Separation,
   557	\[
   558	\omega_{\mathrm{Z}} := \{x \in J_0 : \forall J\,(\text{$Z$-Ind}(J) \to x \in J)\},
   559	\]
   560	is the smallest $Z$-inductive set; it is unique by Extensionality.
   561	\end{proof}
   562	
   563	\begin{theorem}\label{thm:peano-Z}
   564	The structure $(\omega_{\mathrm{Z}}, 0_{\mathrm{Z}}, n \mapsto \{n\})$ satisfies
   565	the Peano axioms.
   566	\end{theorem}
   567	
   568	\begin{proof}
   569	\textbf{(1)} $0_{\mathrm{Z}} = \emptyset \in \omega_{\mathrm{Z}}$ by
   570	\Cref{prop:omega-Z}.
   571	
   572	\textbf{(2)} If $n \in \omega_{\mathrm{Z}}$, then $\{n\} \in \omega_{\mathrm{Z}}$
   573	by closure of $\omega_{\mathrm{Z}}$ under $x \mapsto \{x\}$.
   574	
   575	\textbf{(3)} $\{n\} \neq \emptyset$ since $n \in \{n\}$.
   576	
   577	\textbf{(4)} If $\{m\} = \{n\}$, then $m \in \{n\}$, so $m = n$.
   578	
   579	\textbf{(5)} Let $S \subseteq \omega_{\mathrm{Z}}$ be $Z$-inductive (containing
   580	$0_{\mathrm{Z}}$ and closed under $x \mapsto \{x\}$). Then $S$ is itself
   581	$Z$-inductive, so $\omega_{\mathrm{Z}} \subseteq S$ by minimality of
   582	$\omega_{\mathrm{Z}}$. The reverse inclusion is by hypothesis.
   583	\end{proof}
   584	
   585	\subsection{Iso as Peano models, not as sets}
   586	
   587	\begin{theorem}\label{thm:peano-iso}
   588	There is a unique bijection $\Phi: \omega \to \omega_{\mathrm{Z}}$ satisfying
   589	$\Phi(0_{\mathrm{vN}}) = 0_{\mathrm{Z}}$ and
   590	$\Phi(n^+) = \{\Phi(n)\}$ for all $n$. The bijection $\Phi$ is an isomorphism
   591	of Peano structures.
   592	\end{theorem}
   593	
   594	\begin{proof}
   595	Existence and uniqueness of $\Phi$ follow from the recursion theorem on
   596	$\omega$, which we may take as a consequence of Replacement and the
   597	universal property of $\omega$ as the initial Peano structure (see
   598	\Cref{sec:representation}). The bijection is automatic since both encodings
   599	are initial.
   600	\end{proof}
   601	
   602	\begin{remark}
   603	$\Phi$ is an isomorphism of Peano structures (i.e.\ of $(N, 0, S)$-algebras),
   604	but it is \emph{not} an isomorphism of sets in any deeper sense:
   605	$2_{\mathrm{vN}} = \{0,1\}$ has two elements while $2_{\mathrm{Z}} = \{\{0\}\}$
   606	has one. The encodings are equally good Peano models and equally bad
   607	candidates for ``the truth about $2$.''
   608	\end{remark}
   609	
   610	\section{Benacerraf and the Identification Problem}
   611	\label{sec:benacerraf}
   612	
   613	\subsection{The argument}
   614	
   615	In ``What Numbers Could Not Be'' (1965), Paul Benacerraf
   616	\cite{benacerraf1965} considers two children, Ernie and Johnny, each taught
   617	arithmetic via a different set-theoretic encoding (one Zermelo, one von
   618	Neumann). Each child's arithmetic is correct: addition, multiplication, and
   619	order all behave normally. Yet they disagree on whether $3 \in 17$ (true in
   620	von Neumann, false in Zermelo). Benacerraf
   621	argues:
   622	
   623	\begin{enumerate}[label=(\roman*)]
   624	\item Both encodings satisfy the structural conditions we use to identify
   625	``the natural numbers.''
   626	\item Neither has any feature, available within set theory, that privileges
   627	it as ``the truth.''
   628	\item If numbers are sets, then there must be a fact of the matter as to
   629	which sets they are. Since there is no such fact, numbers are not sets.
   630	\end{enumerate}
   631	
   632	The conclusion --- numbers are not sets --- is the central result of the
   633	paper, and it is the negative half of the structuralist thesis. Benacerraf
   634	revisits related epistemological worries about the relationship between
   635	mathematical truth and platonist ontology in \cite{benacerraf1973}; the
   636	mature philosophical articulation of structuralism on the positive side is
   637	due to Shapiro \cite{shapiro1997}. This positive half (numbers are positions
   638	in structures) is what motivates the move to universal properties (Paper 03),
   639	Yoneda (Paper 04), HoTT (Paper 05) --- whose canonical reference is the HoTT
   640	Book \cite{HoTTBook} --- and structural categorical foundations (Paper 06)
   641	in the rest of the series.
   642	
   643	\subsection{Formalization of Benacerraf's argument}
   644	
   645	We can formalize the argument as follows. Let $\mathcal{P}$ denote the
   646	class of all Peano structures (sets $X$ equipped with $0_X \in X$ and
   647	$S_X: X \to X$ satisfying the Peano axioms).
   648	
   649	\begin{theorem}[No canonical Peano structure]\label{thm:no-canonical}
   650	There is no formula $\varphi(X, 0, S)$ in the language of ZFC such that, in
   651	every model of ZFC, $\varphi$ uniquely identifies a Peano structure
   652	$(X, 0, S)$ with the property that any other Peano structure $(Y, 0', S')$
   653	is isomorphic to $(X, 0, S)$ via a unique isomorphism, \emph{and}
   654	$\varphi$ uses no choices of encoding.
   655	\end{theorem}
   656	
   657	\begin{proof}[Sketch]
   658	Any formula $\varphi$ identifying a particular Peano structure must
   659	specify the carrier set, which means committing to a particular extension
   660	inside the cumulative hierarchy. Since there are many extensionally distinct
   661	sets that satisfy any given Peano axiomatization (by the methods of
   662	\Cref{sec:vN} and \Cref{sec:zermelo}), no such formula is encoding-neutral.
   663	The most one can ask of $\varphi$ is that it identifies a Peano structure
   664	\emph{up to isomorphism}, but this is already given by the structural
   665	description of \Cref{sec:representation}, and is precisely what motivates
   666	abandoning set-level identification.
   667	\end{proof}
   668	
   669	\subsection{Junk theorems formalized}
   670	
   671	\begin{definition}[Junk theorem]
   672	Let $T$ be a theory and $E$ an encoding of a structure $(N, 0, S)$ inside
   673	$T$ (i.e.\ a translation of the language of $(N, 0, S)$ into the language of
   674	$T$). A formula $\psi$ in the language of $T$ involving the encoded
   675	constants is a \emph{junk theorem} relative to $E$ if $\psi$ is provable in
   676	$T$ but not invariant under reasonable changes of encoding $E \to E'$.
   677	\end{definition}
   678	
   679	\begin{example}
   680	The formula $\psi := 1 \in 3$ is a junk theorem of ZFC under the von Neumann
   681	encoding: it is provable (since $3_{\mathrm{vN}} = \{0,1,2\}$), but its truth
   682	value is reversed under the Zermelo encoding (since
   683	$3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$, and $1_{\mathrm{Z}} = \{\emptyset\}
   684	\neq 2_{\mathrm{Z}}$). By contrast, $\psi := S(2) = 3$ is not a junk theorem:
   685	it holds in every Peano-isomorphic encoding. The membership relation across
   686	non-adjacent ordinals is exactly the kind of fact that is forced by the
   687	encoding rather than by the structure.
   688	\end{example}
   689	
   690	\begin{remark}[Junk vs.\ structural]
   691	A statement is \emph{structural} when its truth value is preserved by every
   692	isomorphism of Peano structures; junk theorems are precisely the
   693	non-structural statements that nevertheless have determinate truth values
   694	once an encoding is fixed. The set-theoretic perspective generates many
   695	junk theorems; the categorical and HoTT perspectives generate none, by
   696	construction.
   697	\end{remark}
   698	
   699	\section{Arithmetic Operations as Recursive Definitions}
   700	\label{sec:operations}
   701	
   702	We now show that the von Neumann encoding supports a full development of
   703	arithmetic. The development is entirely standard; we include it for the
   704	record and to demonstrate concretely that the structural Peano axioms are
   705	\emph{sufficient} (the additional set-theoretic content is not needed).
   706	The same definitions, mutatis mutandis, apply to the Zermelo encoding.
   707	
   708	\subsection{The recursion theorem}
   709	
   710	\begin{theorem}[Recursion on $\omega$]\label{thm:recursion}
   711	Let $X$ be any set, $a \in X$ a base point, and $g: X \to X$ a function.
   712	Then there is a unique function $f: \omega \to X$ satisfying
   713	\begin{align}
   714	f(0) &= a, \\
   715	f(n^+) &= g(f(n)) \quad \text{for all } n \in \omega.
   716	\end{align}
   717	\end{theorem}
   718	
   719	\begin{proof}[Proof sketch]
   720	Define $f$ as the union of all finite \emph{attempts} --- functions
   721	$h: m \to X$ with $m \in \omega$ satisfying the recursion equations on
   722	their domain. Replacement and Separation guarantee that the union of all
   723	attempts is a set; induction guarantees that $f$ is well-defined and
   724	total on $\omega$.
   725	\end{proof}
   726	
   727	\subsection{Addition}
   728	
   729	\begin{definition}[Addition]\label{def:add}
   730	For $m \in \omega$, define $m + (\cdot) : \omega \to \omega$ by recursion:
   731	\begin{align}
   732	m + 0 &:= m, \\
   733	m + n^+ &:= (m + n)^+.
   734	\end{align}
   735	\end{definition}
   736	
   737	\begin{proposition}[Properties of addition]\label{prop:add-props}
   738	For all $m, n, k \in \omega$:
   739	\begin{enumerate}
   740	\item $0 + n = n$ (left identity).
   741	\item $(m + n) + k = m + (n + k)$ (associativity).
   742	\item $m + n = n + m$ (commutativity).
   743	\end{enumerate}
   744	\end{proposition}
   745	
   746	\begin{proof}
   747	\textbf{(1)} Induct on $n$. Base: $0 + 0 = 0$. Step: assume $0 + n = n$;
   748	then $0 + n^+ = (0 + n)^+ = n^+$.
   749	
   750	\textbf{(2)} Induct on $k$. Base: $(m+n) + 0 = m + n = m + (n + 0)$. Step:
   751	$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.
   752	
   753	\textbf{(3)} Commutativity is the deepest of the three properties; it
   754	requires a nested double induction. We prove it by establishing two
   755	auxiliary lemmas first.
   756	
   757	\emph{Lemma A: $0 + n = n + 0 = n$.} The right equation is
   758	\Cref{def:add}; the left is part (1).
   759	
   760	\emph{Lemma B: $m^+ + n = (m + n)^+$.} Induct on $n$. Base:
   761	$m^+ + 0 = m^+ = (m + 0)^+$. Step: assuming $m^+ + n = (m + n)^+$,
   762	\[
   763	m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,
   764	\]
   765	where the last step uses \Cref{def:add}.
   766	
   767	\emph{Main induction (on $n$).} Base ($n = 0$): $m + 0 = m = 0 + m$ by Lemma A.
   768	
   769	Step: assume $m + n = n + m$ for all $m$. Then for any fixed $m$,
   770	\begin{align*}
   771	m + n^+ &= (m + n)^+ &&\text{(\Cref{def:add})} \\
   772	        &= (n + m)^+ &&\text{(inductive hypothesis)} \\
   773	        &= n^+ + m &&\text{(Lemma B with $m, n$ swapped)},
   774	\end{align*}
   775	which establishes $m + n^+ = n^+ + m$ and completes the induction on $n$.
   776	\end{proof}
   777	
   778	\subsection{Multiplication}
   779	
   780	\begin{definition}[Multiplication]\label{def:mult}
   781	For $m \in \omega$, define $m \cdot (\cdot): \omega \to \omega$ by:
   782	\begin{align}
   783	m \cdot 0 &:= 0, \\
   784	m \cdot n^+ &:= m \cdot n + m.
   785	\end{align}
   786	\end{definition}
   787	
   788	\begin{proposition}\label{prop:mult-props}
   789	Multiplication is associative, commutative, has $1 := 0^+$ as a two-sided
   790	identity, and distributes over addition.
   791	\end{proposition}
   792	
   793	\begin{proof}
   794	Standard inductions on $\omega$, parallel to those for addition. The
   795	distributivity proof goes by induction on the right argument:
   796	$m \cdot (n + 0) = m \cdot n = m \cdot n + 0 = m \cdot n + m \cdot 0$,
   797	and $m \cdot (n + k^+) = m \cdot (n + k)^+ = m \cdot (n+k) + m =
   798	m \cdot n + m \cdot k + m = m \cdot n + m \cdot k^+$.
   799	\end{proof}
   800	
   801	\subsection{Order}
   802	
   803	\begin{definition}[Order]\label{def:order}
   804	For $m, n \in \omega$, write $m < n$ iff $m \in n$, and $m \leq n$ iff
   805	$m \in n \vee m = n$.
   806	\end{definition}
   807	
   808	\begin{remark}
   809	This definition is encoding-specific: it works directly for von Neumann.
   810	For Zermelo, one defines $m <_{\mathrm{Z}} n$ iff $m \in_T n$ where $\in_T$ is
   811	the transitive closure of $\in$. Equivalently and more cleanly, define
   812	$m < n$ iff there exists $k > 0$ with $m + k = n$, which is structural.
   813	\end{remark}
   814	
   815	\begin{proposition}[Linearity]
   816	$<$ is a strict total order on $\omega$.
   817	\end{proposition}
   818	
   819	\begin{proof}
   820	Trichotomy is by induction. Transitivity follows from \Cref{prop:transitive}:
   821	if $m \in n$ and $n \in k$, then $n \subseteq k$ by transitivity of $k$, so
   822	$m \in k$. Irreflexivity is Foundation.
   823	\end{proof}
   824	
   825	\section{The Cumulative Hierarchy}
   826	\label{sec:cumulative}
   827	
   828	\subsection{Definition by transfinite recursion}
   829	
   830	\begin{definition}[Cumulative hierarchy]\label{def:Valpha}
   831	By transfinite recursion on the class of ordinals $\mathrm{Ord}$, define
   832	\begin{align}
   833	V_0 &:= \emptyset, \\
   834	V_{\alpha+1} &:= \mathcal{P}(V_\alpha), \\
   835	V_\lambda &:= \bigcup_{\beta < \lambda} V_\beta \quad (\lambda \text{ limit}).
   836	\end{align}
   837	The class $V := \bigcup_{\alpha \in \mathrm{Ord}} V_\alpha$ is the
   838	\emph{universe of sets}.
   839	\end{definition}
   840	
   841	\begin{theorem}[ZFC sees only $V$]\label{thm:V-is-everything}
   842	In ZFC, every set $x$ belongs to some $V_\alpha$. Hence $V = \mathrm{Universe}$.
   843	\end{theorem}
   844	
   845	\begin{proof}[Sketch]
   846	Define the rank function $\mathrm{rk}: V \to \mathrm{Ord}$ by transfinite
   847	recursion: $\mathrm{rk}(x) := \sup\{\mathrm{rk}(y) + 1 : y \in x\}$.
   848	Foundation guarantees this recursion terminates. Then
   849	$x \in V_{\mathrm{rk}(x) + 1}$.
   850	\end{proof}
   851	
   852	\subsection{Ranks of natural numbers}
   853	
   854	\begin{proposition}\label{prop:ranks}
   855	For each $n \in \omega$:
   856	\begin{enumerate}
   857	\item $\mathrm{rk}(n_{\mathrm{vN}}) = n$.
   858	\item $\mathrm{rk}(n_{\mathrm{Z}}) = n$.
   859	\end{enumerate}
   860	\end{proposition}
   861	
   862	\begin{proof}
   863	For von Neumann: $\mathrm{rk}(0) = 0$, and inductively
   864	$\mathrm{rk}(n^+) = \sup\{\mathrm{rk}(k) + 1 : k \in n^+\} = \sup\{k+1 : k \leq n\} = n+1$.
   865	
   866	For Zermelo: $\mathrm{rk}(\{n_{\mathrm{Z}}\}) = \mathrm{rk}(n_{\mathrm{Z}}) + 1$, and
   867	the result follows by induction.
   868	\end{proof}
   869	
   870	\begin{remark}
   871	Both encodings produce naturals at the same rank in $V$, but they live at
   872	\emph{different positions} within $V_{n+1}$. Von Neumann's $n$ is the
   873	``flat'' set $\{0,1,\ldots,n-1\}$; Zermelo's is the ``tall thin'' nested
   874	singleton.
   875	\end{remark}
   876	
   877	\subsection{$\omega$ as the first limit ordinal}
   878	
   879	\begin{theorem}\label{thm:omega-first-limit}
   880	$\omega \in V_{\omega+1}$ but $\omega \notin V_\omega$. The set $\omega$
   881	is the smallest infinite ordinal: the first ordinal that is not a successor.
   882	\end{theorem}
   883	
   884	\begin{proof}
   885	$\omega = \bigcup_{n \in \omega} n$, so each $n \in V_n \subseteq V_\omega$,
   886	hence $\omega \subseteq V_\omega$ and $\omega \in V_{\omega+1}$. To see
   887	$\omega \notin V_\omega$: every element of $V_\omega$ has finite rank, and
   888	$\mathrm{rk}(\omega) = \omega$.
   889	\end{proof}
   890	
   891	\subsection{Visualizing the hierarchy}
   892	
   893	\begin{figure}[ht]
   894	\centering
   895	\begin{tikzpicture}[scale=0.9]
   896	% V_alpha levels (rungs)
   897	\foreach \name/\h in {V_0/0, V_1/1, V_2/2, V_3/3, V_4/4, V_\omega/5.5, V_{\omega+1}/6.5} {
   898	  \draw[thick] (-4, \h) -- (4, \h);
   899	  \node[anchor=west] at (4.1, \h) {$\name$};
   900	}
   901	
   902	% Mid-rung labels: each number lives in V_{n+1}, so we place it midway
   903	% between V_n and V_{n+1}.
   904	\node at (0, 0.5) {$0 = \emptyset$};
   905	\node at (0, 1.5) {$1 = \{\emptyset\}$};
   906	\node at (0, 2.5) {$2 = \{0,1\}$};
   907	\node at (0, 3.5) {$3 = \{0,1,2\}$};
   908	\node at (0, 4.5) {$4 = \{0,1,2,3\}$};
   909	\node at (0, 4.95) {$\vdots$};
   910	\node at (0, 6.0) {$\omega = \{0,1,2,\ldots\}$};
   911	
   912	% Vertical guide for the "successor builds upward" intuition
   913	\draw[->, thick, gray] (-2.5, 0.5) -- (-2.5, 4.5)
   914	   node[midway, left, gray] {$x \mapsto x \cup \{x\}$};
   915	\end{tikzpicture}
   916	\caption{The cumulative hierarchy $V_\alpha$. Each natural number $n$ first
   917	appears at level $V_{n+1}$. The set $\omega$ first appears at level
   918	$V_{\omega+1}$.}
   919	\label{fig:hierarchy}
   920	\end{figure}
   921	
   922	\section{A Representation Theorem}
   923	\label{sec:representation}
   924	
   925	We extract from the foregoing the following algebraic statement, which
   926	expresses the structural fact that all encodings of the natural numbers
   927	are mutually isomorphic.
   928	
   929	\begin{definition}[Successor structure]\label{def:succ-struct}
   930	A \emph{successor structure} is a triple $(X, x_0, s)$ where $X$ is a set,
   931	$x_0 \in X$, and $s: X \to X$. A morphism $(X, x_0, s) \to (Y, y_0, t)$
   932	is a function $f: X \to Y$ with $f(x_0) = y_0$ and $f \circ s = t \circ f$.
   933	\end{definition}
   934	
   935	\begin{definition}[Initial Peano structure]\label{def:init-peano}
   936	A successor structure $(N, 0, S)$ is \emph{initial} (or a \emph{Peano
   937	structure}) when, for every successor structure $(X, x_0, s)$, there exists
   938	a unique morphism $h: (N, 0, S) \to (X, x_0, s)$.
   939	\end{definition}
   940	
   941	\begin{theorem}[Initiality of $\omega$]\label{thm:initiality}
   942	$(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ is an initial Peano structure.
   943	Equivalently: for every set $X$, every $a \in X$, and every $g: X \to X$,
   944	there is a unique $f: \omega \to X$ with $f(0) = a$ and $f(n^+) = g(f(n))$.
   945	This $f$ is the recursion theorem (\Cref{thm:recursion}).
   946	\end{theorem}
   947	
   948	\begin{proof}
   949	This is precisely the recursion theorem, recast as initiality. Existence is
   950	by recursion on $\omega$; uniqueness is by induction.
   951	\end{proof}
   952	
   953	\begin{theorem}[Uniqueness of Peano structures]\label{thm:uniqueness}
   954	If $(N, 0, S)$ and $(N', 0', S')$ are both initial Peano structures, then
   955	there is a unique isomorphism between them.
   956	\end{theorem}
   957	
   958	\begin{proof}
   959	Universal property: by initiality of $(N, 0, S)$, there is a unique
   960	$h: N \to N'$. By initiality of $(N', 0', S')$, there is a unique
   961	$h': N' \to N$. The composites $h' \circ h$ and $h \circ h'$ are
   962	endomorphisms of an initial structure, hence equal to the identity by
   963	uniqueness.
   964	\end{proof}
   965	
   966	\begin{corollary}\label{cor:vN-Z-iso}
   967	The von Neumann and Zermelo successor structures are isomorphic via a unique
   968	isomorphism, namely $\Phi$ of \Cref{thm:peano-iso}.
   969	\end{corollary}
   970	
   971	This is the structural content that survives Benacerraf's critique. Both
   972	encodings are initial Peano structures; they are therefore canonically
   973	identified at the structural level. What differs is the
   974	encoding-specific data: cardinalities of the carrier sets at each level,
   975	membership relations, etc. The structural mathematics survives; the
   976	junk does not.
   977	
   978	\section{Bridge to Structuralism}
   979	\label{sec:bridge}
   980	
   981	\subsection{Reading the structuralist response}
   982	
   983	The standard structuralist response to Benacerraf is to assert that
   984	``numbers are positions in structures, not particular objects.'' Within
   985	the set-theoretic perspective alone, this assertion is hard to formalize:
   986	the structuralist seems to be invoking abstract structures that are not
   987	themselves sets.
   988	
   989	What Paper 03 will show is that the universal property of an initial
   990	Peano structure is precisely the structuralist content the response was
   991	gesturing at. \Cref{thm:initiality,thm:uniqueness} together say:
   992	
   993	\begin{quote}
   994	There is a structure (the initial successor structure), unique up to unique
   995	isomorphism, defined entirely by its relationships with all other successor
   996	structures. This structure can be \emph{implemented} in many ways inside
   997	ZFC; no implementation is canonical, but every implementation is
   998	equivalent to every other in the only way that matters --- via the
   999	universal mapping property.
  1000	\end{quote}
  1001	
  1002	\subsection{The set-theoretic perspective relocated}
  1003	
  1004	We can therefore retract the temptation to read the von Neumann encoding
  1005	as ontology. The set-theoretic perspective is best understood as
  1006	\emph{realizing} or \emph{instantiating} a structural specification, not
  1007	as defining what the natural numbers \emph{are}. The number $58$ is not
  1008	the set $\{0,1,\ldots,57\}$; rather, the set $\{0,1,\ldots,57\}$ is one
  1009	particular ZFC-implementation of the position $58$ inside the abstract
  1010	initial successor structure.
  1011	
  1012	\subsection{What set theory still gets right}
  1013	
  1014	Despite Benacerraf's critique, the set-theoretic perspective is not
  1015	worthless. It contributes:
  1016	
  1017	\begin{itemize}
  1018	\item \textbf{Existence.} Without an existence proof, the universal property
  1019	of \Cref{def:init-peano} is mere stipulation. Set theory shows that an
  1020	initial Peano structure exists (the axiom of infinity gives one), so the
  1021	specification is not vacuous.
  1022	
  1023	\item \textbf{A working metatheory.} ZFC is rich enough to prove the
  1024	recursion theorem, define addition and multiplication, prove the soundness
  1025	of induction, and develop most of ordinary mathematics. The structural
  1026	specification needs a host theory; ZFC is one (other choices: ETCS, IZF,
  1027	HoTT itself).
  1028	
  1029	\item \textbf{Cumulative hierarchy as a model of well-foundedness.} The
  1030	$V_\alpha$ stratification, while encoding-relative in detail, captures the
  1031	genuine structural fact that any well-founded iteration of \emph{some}
  1032	generative operation eventually exhausts what can be reached.
  1033	
  1034	\item \textbf{Decidable arithmetic.} The recursive definitions of $+$,
  1035	$\cdot$, and $<$ are decidable; the resulting theory of arithmetic is
  1036	$\Sigma_1$-complete and useful in practice.
  1037	\end{itemize}
  1038	
  1039	\subsection{What set theory misses}
  1040	
  1041	\begin{itemize}
  1042	\item \textbf{Structural identity.} Set-theoretic equality is extensional:
  1043	two sets are equal iff they have the same elements. There is no native
  1044	notion of ``equal as Peano structures'' inside ZFC; isomorphism must be
  1045	defined externally and tracked manually.
  1046	
  1047	\item \textbf{Encoding-independence.} As shown, the set-theoretic statement
  1048	``$2 \in 3$'' is encoding-relative. The structural statement ``$\mathrm{succ}(\mathrm{succ}(0)) < \mathrm{succ}^3(0)$'' is not.
  1049	
  1050	\item \textbf{Universal properties as theorems, not metatheorems.} In
  1051	ZFC, ``$\omega$ is initial'' is a theorem, but the very statement of
  1052	initiality requires quantifying over class-many successor structures
  1053	(properly handled, but unwieldy). In a categorical or type-theoretic
  1054	foundation, the universal property is the \emph{definition} and the
  1055	existence/uniqueness are immediate consequences.
  1056	
  1057	\item \textbf{Univalence.} ZFC has no analog of the univalence axiom of
  1058	HoTT; it cannot internalize ``isomorphic structures are the same'' as a
  1059	theorem of the system. The closest one comes is to work systematically
  1060	``up to isomorphism,'' which is a metatheoretic discipline rather than
  1061	a feature of the formalism.
  1062	\end{itemize}
  1063	
  1064	\subsection{Forward to Paper 03}
  1065	
  1066	The next paper in the series develops the universal-property level
  1067	explicitly: a Natural Number Object in any category with a terminal object,
  1068	the categorical NNO, the relationship between NNO and induction, and the
  1069	extraction of arithmetic operations from initiality alone. The bridge from
  1070	this paper to the next is precisely the move from
  1071	\Cref{thm:initiality}'s ``$\omega$ is initial in $\mathbf{Set}^{\bullet,\to}$''
  1072	to the encoding-free formulation
  1073	``$N$ is initial in any category $\mathcal{C}^{\bullet,\to}$ with a terminal
  1074	object.''
  1075	
  1076	\section{Haskell Implementation}
  1077	\label{sec:haskell}
  1078	
  1079	The accompanying Haskell code (\texttt{src/02-set-theoretic/}) implements
  1080	both encodings, defines a common Peano interface they both satisfy, and
  1081	provides a converter realizing the canonical isomorphism $\Phi$ of
  1082	\Cref{thm:peano-iso}.
  1083	
  1084	\subsection{The hereditarily finite set type}
  1085	
  1086	We model pure sets as a recursive datatype:
  1087	
  1088	\begin{lstlisting}
  1089	-- A finite set built recursively from the empty set.
  1090	-- Extensional equality is enforced in the Eq instance by sorting
  1091	-- and deduplicating the underlying list before comparison; a
  1092	-- canonical-form helper (omitted here) makes this efficient.
  1093	newtype HFSet = HFSet { elements :: [HFSet] }
  1094	  deriving (Show)
  1095	
  1096	instance Ord HFSet where
  1097	  compare (HFSet xs) (HFSet ys) =
  1098	    compare (sort xs) (sort ys)
  1099	
  1100	instance Eq HFSet where
  1101	  HFSet xs == HFSet ys = sort xs == sort ys
  1102	
  1103	emptySet :: HFSet
  1104	emptySet = HFSet []
  1105	\end{lstlisting}
  1106	
  1107	\subsection{Von Neumann encoding}
  1108	
  1109	\begin{lstlisting}
  1110	-- Successor: x |-> x \cup {x}
  1111	vnSucc :: HFSet -> HFSet
  1112	vnSucc x = HFSet (elements x ++ [x])
  1113	
  1114	vnEncode :: Int -> HFSet
  1115	vnEncode 0 = emptySet
  1116	vnEncode n = vnSucc (vnEncode (n - 1))
  1117	\end{lstlisting}
  1118	
  1119	\subsection{Zermelo encoding}
  1120	
  1121	\begin{lstlisting}
  1122	-- Successor: x |-> {x}
  1123	zSucc :: HFSet -> HFSet
  1124	zSucc x = HFSet [x]
  1125	
  1126	zEncode :: Int -> HFSet
  1127	zEncode 0 = emptySet
  1128	zEncode n = zSucc (zEncode (n - 1))
  1129	\end{lstlisting}
  1130	
  1131	\subsection{The Peano interface}
  1132	
  1133	A typeclass captures the structural specification independent of either
  1134	encoding:
  1135	
  1136	\begin{lstlisting}
  1137	class Peano a where
  1138	  zero :: a
  1139	  suc  :: a -> a
  1140	  isZero :: a -> Bool
  1141	  pred_ :: a -> Maybe a   -- partial; (-) on naturals is partial
  1142	
  1143	instance Peano HFSet where
  1144	  -- These instances need to be coupled with a tagged type to
  1145	  -- disambiguate vN vs Zermelo; see VNNat and ZNat in the source.
  1146	\end{lstlisting}
  1147	
  1148	The full source disambiguates by tagging: \texttt{newtype VNNat = VNNat HFSet}
  1149	and \texttt{newtype ZNat = ZNat HFSet}, each with its own \texttt{Peano} instance.
  1150	The main demonstration in \texttt{Main.hs} computes both encodings of
  1151	$0,1,\ldots,5$, prints them, verifies the Peano axioms by construction (e.g.\
  1152	$\mathrm{succ}(m) = \mathrm{succ}(n) \implies m = n$ via injectivity of the
  1153	constructor), and applies the canonical isomorphism to convert between them.
  1154	
  1155	\subsection{Junk theorems made explicit}
  1156	
  1157	The Haskell code also includes a function that demonstrates a junk theorem
  1158	empirically:
  1159	
  1160	\begin{lstlisting}
  1161	-- Demonstrate that "1 in 3" depends on encoding.
  1162	junkTheorem :: IO ()
  1163	junkTheorem = do
  1164	  let one_vN  = vnEncode 1; three_vN = vnEncode 3
  1165	  let one_Z   = zEncode  1; three_Z  = zEncode  3
  1166	  putStrLn $ "vN: 1 in 3 = " ++ show (one_vN `inVN` three_vN)
  1167	  putStrLn $ "Z:  1 in 3 = " ++ show (one_Z  `inZ`  three_Z)
  1168	  -- Output:
  1169	  --   vN: 1 in 3 = True   (since 3_vN = {0,1,2})
  1170	  --   Z:  1 in 3 = False  (since 3_Z  = {2}; only 2 is in it)
  1171	\end{lstlisting}
  1172	
  1173	This program is a working witness that the encoding is genuinely choosing
  1174	between distinct sets, not merely between distinct notations.
  1175	
  1176	\section{Discussion}
  1177	\label{sec:discussion}
  1178	
  1179	\subsection{Comparison with logicism and constructivism}
  1180	
  1181	The set-theoretic foundationalism we have presented is closer to
  1182	Russell--Whitehead's logicist program than to a strict constructivism.
  1183	The naturals are obtained by an unbounded inductive process whose existence
  1184	is asserted by an axiom (Infinity). This is not predicatively justified
  1185	in a strict sense (the inductive set is defined as the intersection of
  1186	\emph{all} inductive sets, a quantification over a complete totality), but
  1187	it is mainstream classical mathematics.
  1188	
  1189	Constructive alternatives --- IZF, CZF, Martin-L\"of type theory --- avoid
  1190	this by treating $\mathbb{N}$ as primitive (an inductive type) rather than
  1191	as a derived set. Paper 05 treats this perspective via HoTT.
  1192	
  1193	\subsection{Comparison with categorical foundations}
  1194	
  1195	Lawvere's Elementary Theory of the Category of Sets (ETCS,
  1196	\cite{lawvere1964}) gives a categorical axiomatization of the category
  1197	$\mathbf{Set}$ that is bi-interpretable with bounded Zermelo set theory
  1198	plus replacement (McLarty \cite{mclarty2004}). In ETCS, the natural number
  1199	object is specified by its universal property (Paper 03's level), not by a
  1200	particular encoding. ETCS is therefore structurally cleaner than ZFC for
  1201	foundational purposes, while equally adequate for ordinary mathematics. The
  1202	underlying functorial-semantics machinery is developed in Lawvere
  1203	\cite{lawvere1963}, and the broader topos-theoretic context is treated by
  1204	Mac Lane and Moerdijk \cite{maclane-moerdijk}.
  1205	
  1206	\subsection{Limitations of this paper}
  1207	
  1208	We have not discussed:
  1209	\begin{itemize}
  1210	\item \emph{Large cardinal hypotheses.} Inaccessible, measurable, etc.
  1211	cardinals refine the cumulative hierarchy beyond the ordinals reachable
  1212	in vanilla ZFC. They are foundational for set theory but tangential to
  1213	the natural-numbers question.
  1214	
  1215	\item \emph{The constructible universe $L$.} G\"odel's inner model
  1216	exhibits a minimal model of ZFC; the natural numbers are the same in $L$
  1217	as in $V$, so this is not pertinent.
  1218	
  1219	\item \emph{Forcing.} Independence results do not affect our development.
  1220	
  1221	\item \emph{Alternative set theories.} NF (Quine), KP (Kripke--Platek),
  1222	and other systems give variant encodings; we have considered only ZFC.
  1223	\end{itemize}
  1224	
  1225	\subsection{What this paper has accomplished}
  1226	
  1227	We have presented two distinct set-theoretic encodings of the natural
  1228	numbers (von Neumann ordinals and Zermelo nested singletons), shown that
  1229	both satisfy the Peano axioms, and identified the encoding-relative facts
  1230	(``junk theorems'') that distinguish them. We have located the natural
  1231	numbers in the cumulative hierarchy and proven a representation theorem
  1232	identifying all initial Peano structures up to unique isomorphism. We have
  1233	described the structuralist response (numbers are positions, not sets)
  1234	and pointed forward to the universal-property and HoTT formulations of
  1235	that response.
  1236	
  1237	\section{Conclusion}
  1238	\label{sec:conclusion}
  1239	
  1240	The set-theoretic perspective gives us $\omega$ via the axiom of infinity
  1241	and the recursive successor $x \mapsto x \cup \{x\}$. It supports a full
  1242	arithmetic, fits cleanly into the cumulative hierarchy, and makes the
  1243	natural numbers concrete: the number $58$ \emph{is} the set $\{0,1,\ldots,57\}$
  1244	--- in the von Neumann encoding.
  1245	
  1246	But the qualifier ``in the von Neumann encoding'' is fatal to the
  1247	foundationalist ambition. Zermelo's encoding is equally valid; so is the
  1248	Peano-axiomatic specification with no encoding at all; and so are the
  1249	many other encodings one could devise. Each gives a working arithmetic
  1250	that satisfies the Peano axioms, but each disagrees with the others on
  1251	internal questions about element-of, cardinality, and rank. These
  1252	disagreements are not pathologies; they are evidence that no encoding
  1253	gives \emph{the} natural numbers --- only one realization of them.
  1254	
  1255	What we have learned is that the natural numbers are characterized
  1256	structurally, not extensionally. This characterization is the universal
  1257	property of an initial Peano structure (\Cref{def:init-peano}), and its
  1258	sharpening into the categorical Natural Number Object will occupy
  1259	Paper 03. The set-theoretic perspective remains useful as a metatheory
  1260	and an existence proof, but the identity of the natural numbers
  1261	themselves lives at one level of abstraction higher.
  1262	
  1263	\subsection*{Acknowledgments}
  1264	
  1265	This paper is part of the YonedaAI Univalent Correspondence series. The
  1266	series approaches a single mathematical object --- the natural numbers ---
  1267	through six distinct lenses, and shows in the synthesis volume that under
  1268	the univalence axiom, all six perspectives become literally the same
  1269	mathematical content rather than analogous content. We thank the
  1270	anonymous referees of the series for sharpening many arguments.
  1271	
  1272	\begin{thebibliography}{99}
  1273	
  1274	\bibitem{benacerraf1965}
  1275	P.~Benacerraf, ``What Numbers Could Not Be,''
  1276	\emph{The Philosophical Review}, vol. 74, no. 1, pp. 47--73, 1965.
  1277	
  1278	\bibitem{benacerraf1973}
  1279	P.~Benacerraf, ``Mathematical Truth,''
  1280	\emph{The Journal of Philosophy}, vol. 70, no. 19, pp. 661--679, 1973.
  1281	
  1282	\bibitem{frege1884}
  1283	G.~Frege, \emph{Die Grundlagen der Arithmetik},
  1284	W. Koebner, Breslau, 1884.
  1285	
  1286	\bibitem{halmos1960}
  1287	P.~Halmos, \emph{Naive Set Theory},
  1288	Van Nostrand, 1960.
  1289	
  1290	\bibitem{kunen1980}
  1291	K.~Kunen, \emph{Set Theory: An Introduction to Independence Proofs},
  1292	North-Holland, 1980.
  1293	
  1294	\bibitem{lawvere1964}
  1295	F. W.~Lawvere, ``An Elementary Theory of the Category of Sets,''
  1296	\emph{Proc. Nat. Acad. Sci. USA}, vol. 52, pp. 1506--1511, 1964.
  1297	
  1298	\bibitem{lawvere1963}
  1299	F. W.~Lawvere, ``Functorial Semantics of Algebraic Theories,''
  1300	PhD thesis, Columbia University, 1963.
  1301	
  1302	\bibitem{maclane-moerdijk}
  1303	S.~Mac Lane and I.~Moerdijk, \emph{Sheaves in Geometry and Logic},
  1304	Springer, 1992.
  1305	
  1306	\bibitem{mclarty2004}
  1307	C.~McLarty, ``Exploring Categorical Structuralism,''
  1308	\emph{Philosophia Mathematica}, vol. 12, no. 1, pp. 37--53, 2004.
  1309	
  1310	\bibitem{principia}
  1311	A. N.~Whitehead and B.~Russell, \emph{Principia Mathematica}, Cambridge
  1312	University Press, 1910--1913.
  1313	
  1314	\bibitem{shoenfield1967}
  1315	J. R.~Shoenfield, \emph{Mathematical Logic},
  1316	Addison-Wesley, 1967.
  1317	
  1318	\bibitem{shapiro1997}
  1319	S.~Shapiro, \emph{Philosophy of Mathematics: Structure and Ontology},
  1320	Oxford University Press, 1997.
  1321	
  1322	\bibitem{suppes1960}
  1323	P.~Suppes, \emph{Axiomatic Set Theory},
  1324	Van Nostrand, 1960.
  1325	
  1326	\bibitem{vonNeumann1923}
  1327	J.~von Neumann, ``Zur Einf\"uhrung der transfiniten Zahlen,''
  1328	\emph{Acta litt. ac scient. Reg. Univ. Hung. Francisco-Josephinae},
  1329	sectio sci. math., vol. 1, pp. 199--208, 1923.
  1330	
  1331	\bibitem{HoTTBook}
  1332	The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent
  1333	Foundations of Mathematics}, Institute for Advanced Study, 2013.
  1334	\href{https://homotopytypetheory.org/book}{homotopytypetheory.org/book}.
  1335	arXiv:1308.0729.
  1336	
  1337	\bibitem{zermelo1908}
  1338	E.~Zermelo, ``Untersuchungen \"uber die Grundlagen der Mengenlehre I,''
  1339	\emph{Math. Ann.}, vol. 65, pp. 261--281, 1908.
  1340	
  1341	\end{thebibliography}
  1342	
  1343	\end{document}

codex
The source is 1,343 lines and there is an existing build log next to it. I’m checking the log now, then I’ll reopen the exact source lines for anything the log flags.
exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Reference|Citation|multiply defined|Rerun|Missing|Error|Emergency stop|Fatal)" /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.log' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
574:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
622:Package everypage Warning: Functionality similar to this package has recently
628:Package everypage Warning: You appear to be running a version of LaTeX
790:Overfull \hbox (6.93091pt too wide) in paragraph at lines 237--240
800:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
804:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
808:Package hyperref Warning: Token not allowed in a PDF string (Unicode):

exec
/usr/local/bin/zsh -lc "sed -n '400,920p' /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex | nl -ba -v400" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   400	hypothesis $x \subseteq n \subseteq n^+$.
   401	\end{proof}
   402	
   403	\begin{example}
   404	$2 \in 3$ holds in von Neumann: $3 = \{0,1,2\}$, so $2$ is literally one of the
   405	three elements of $3$. Equivalently, $2 = \{0,1\} \subsetneq \{0,1,2\} = 3$.
   406	This is the kind of statement that, by \Cref{prop:in-equals-subset}, is
   407	equivalent in von Neumann to the order $2 < 3$.
   408	\end{example}
   409	
   410	\subsection{Peano axioms for the von Neumann naturals}
   411	
   412	\begin{theorem}\label{thm:peano-vN}
   413	The structure $(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ satisfies the Peano axioms:
   414	\begin{enumerate}
   415	\item $0_{\mathrm{vN}} \in \omega$.
   416	\item For all $n \in \omega$, $n^+ \in \omega$.
   417	\item For all $n \in \omega$, $n^+ \neq 0_{\mathrm{vN}}$.
   418	\item For all $m,n \in \omega$, if $m^+ = n^+$ then $m = n$.
   419	\item (Induction) For every set $S \subseteq \omega$, if $0_{\mathrm{vN}} \in S$
   420	and $S$ is closed under $(\cdot)^+$, then $S = \omega$.
   421	\end{enumerate}
   422	\end{theorem}
   423	
   424	\begin{proof}
   425	\textbf{(1) and (2)} are immediate from the definition of $\omega$ as the
   426	smallest inductive set.
   427	
   428	\textbf{(3)} If $n^+ = \emptyset$, then $n \cup \{n\} = \emptyset$. But
   429	$n \in n \cup \{n\}$, contradiction.
   430	
   431	\textbf{(4)} Suppose $m^+ = n^+$, i.e.\ $m \cup \{m\} = n \cup \{n\}$. Then
   432	$m \in n^+$ and $n \in m^+$. By \Cref{prop:in-equals-subset} (applied via
   433	$\in$-trichotomy), if $m \neq n$ then either $m \in n$ and $n \in m$, which
   434	contradicts Foundation, or one is a proper subset of the other; combined
   435	with $m \in n^+$ and $n \in m^+$ this forces $m = n$.
   436	
   437	\textbf{(5)} Let $S \subseteq \omega$ be inductive (containing $0$ and
   438	closed under $(\cdot)^+$). Then $S$ itself is an inductive set, so
   439	$\omega \subseteq S$ by minimality of $\omega$. The reverse inclusion is by
   440	hypothesis.
   441	\end{proof}
   442	
   443	\section{Zermelo's Encoding}
   444	\label{sec:zermelo}
   445	
   446	Ernst Zermelo, in his 1908 axiomatization \cite{zermelo1908}, used a
   447	different recursive definition of the natural numbers.
   448	
   449	\begin{definition}[Zermelo naturals]\label{def:Z}
   450	We define the Zermelo naturals recursively:
   451	\begin{align}
   452	0_{\mathrm{Z}} &:= \emptyset, \\
   453	(n+1)_{\mathrm{Z}} &:= \{n_{\mathrm{Z}}\}.
   454	\end{align}
   455	\end{definition}
   456	
   457	Unrolling:
   458	\begin{align*}
   459	0_{\mathrm{Z}} &= \emptyset \\
   460	1_{\mathrm{Z}} &= \{\emptyset\} \\
   461	2_{\mathrm{Z}} &= \{\{\emptyset\}\} \\
   462	3_{\mathrm{Z}} &= \{\{\{\emptyset\}\}\} \\
   463	&\vdots \\
   464	n_{\mathrm{Z}} &= \underbrace{\{\{\cdots\{}_{n}\emptyset\underbrace{\}\cdots\}\}}_{n}
   465	\end{align*}
   466	
   467	\begin{example}
   468	$58_{\mathrm{Z}}$ is a chain of $58$ nested singletons:
   469	\begin{equation}
   470	58_{\mathrm{Z}} = \underbrace{\{\{\cdots\{}_{58}\emptyset\underbrace{\}\cdots\}\}}_{58}.
   471	\end{equation}
   472	Crucially, $58_{\mathrm{Z}}$ has exactly \emph{one} element (namely
   473	$57_{\mathrm{Z}}$), not $58$. The cardinality of the encoding does not match
   474	the natural number it encodes.
   475	\end{example}
   476	
   477	\subsection{Comparison: junk theorems}
   478	
   479	\begin{proposition}[Encoding-relative facts]\label{prop:junk}
   480	The following statements all have determinate truth values inside ZFC, but
   481	the answers depend on the encoding. We display together the cases where the
   482	encodings agree and where they differ:
   483	\begin{center}
   484	\begin{tabular}{lll}
   485	\textbf{Question} & \textbf{Von Neumann} & \textbf{Zermelo} \\\hline
   486	$0 \in 1$? & true & true (both: $1 = \{0\}$) \\
   487	$n \in n^+$? & true & true (by construction) \\
   488	$n \subseteq n^+$? & true & true \\
   489	$1 \in 3$? & true ($3 = \{0,1,2\}$) & \textbf{false} ($3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$) \\
   490	$1 \in 17$? & true & \textbf{false} \\
   491	$\{\emptyset\} \in 17$? & true (since $\{\emptyset\} = 1 \in 17$) & \textbf{false} \\
   492	$|n| = n$ for $n \in \omega$? & true (each $n$ has $n$ elements) & \textbf{false} ($|n|=1$ for $n \geq 1$) \\
   493	$\bigcup n = \mathrm{pred}(n)$ for $n>0$?\footnote{Here $\mathrm{pred}(n)$ denotes the ordinal predecessor: the unique $m$ with $m^+ = n$.} & true & true \\
   494	$m \subsetneq n \iff m \in n$ (on $\omega$)? & true & \textbf{false}
   495	\end{tabular}
   496	\end{center}
   497	
   498	Two rows merit closer comment. The cardinality row exhibits the most
   499	striking divergence: $|2_{\mathrm{vN}}| = |\{0,1\}| = 2$ but
   500	$|2_{\mathrm{Z}}| = |\{\{\emptyset\}\}| = 1$, so already at $n=2$ the
   501	extensional ``size'' of the encoding tracks the natural number in von
   502	Neumann but not in Zermelo. For the membership/subset equivalence in the
   503	last row, the von Neumann case holds by \Cref{prop:in-equals-subset}; in
   504	Zermelo it fails. For instance, $1_{\mathrm{Z}} = \{\emptyset\}$ is not a
   505	subset of $2_{\mathrm{Z}} = \{\{\emptyset\}\}$, because the unique element
   506	$\emptyset$ of $1_{\mathrm{Z}}$ is not an element of
   507	$\{\{\emptyset\}\}$. The reliable encoding-independent statement of the
   508	natural order is therefore the structural Peano order $m < n$ (defined,
   509	e.g., as $\exists k > 0.\, m + k = n$), not the literal $\in$ relation.
   510	\end{proposition}
   511	
   512	\begin{remark}[On adjacent cases]
   513	For pairs $(m, m+1)$ both encodings agree on $m \in m+1$: in von Neumann
   514	because $m \in m \cup \{m\}$, and in Zermelo because $m \in \{m\}$. The
   515	discrepancy is for non-adjacent pairs $(m, n)$ with $m + 1 < n$, where the
   516	von Neumann encoding has $m \in n$ via transitivity but the Zermelo encoding
   517	has $n_{\mathrm{Z}} = \{(n-1)_{\mathrm{Z}}\}$ as a singleton, so only $n - 1$ is
   518	a member of $n$.
   519	\end{remark}
   520	
   521	\begin{proof}[Justification of the table]
   522	Every entry follows directly from the recursive definitions and Foundation.
   523	The pivotal entry for our purposes is the last: in von Neumann, membership
   524	and proper inclusion coincide on $\omega$ (\Cref{prop:in-equals-subset}); in
   525	Zermelo, this fails because (for $n \geq 2$) $n_{\mathrm{Z}}$ has only one
   526	element, while many sets are subsets of it under set-theoretic inclusion.
   527	\end{proof}
   528	
   529	\begin{remark}[Junk]
   530	We call statements like ``$2 \in 3$'' \emph{junk theorems} (or
   531	\emph{junk falsehoods}). They have a determinate truth value in ZFC under any
   532	fixed encoding, but they reflect choices made by the encoder, not facts
   533	about the natural numbers as such. The number $2$ does not stand in any
   534	intrinsic membership relation to the number $3$. The membership question is
   535	well-formed only because we have committed to representing numbers as sets;
   536	under a different commitment, the answer changes.
   537	\end{remark}
   538	
   539	\subsection{Peano axioms for Zermelo}
   540	
   541	\begin{proposition}[Existence of $\omega_{\mathrm{Z}}$]\label{prop:omega-Z}
   542	There exists a unique smallest set $\omega_{\mathrm{Z}}$ containing
   543	$\emptyset$ and closed under the operation $x \mapsto \{x\}$.
   544	\end{proposition}
   545	
   546	\begin{proof}
   547	The argument parallels that of \Cref{prop:omega} but uses the alternate
   548	successor. Call a set $J$ \emph{$Z$-inductive} when $\emptyset \in J$ and,
   549	for all $x \in J$, $\{x\} \in J$. By the axiom of infinity \textbf{(Inf)},
   550	the standard inductive set $I_0$ exists; by Pairing, the singleton operation
   551	$x \mapsto \{x\}$ is total. Applying the recursion theorem
   552	(\Cref{thm:recursion} below, whose proof depends only on Replacement
   553	applied to $\omega$ and not on either encoding), the recursion
   554	$f(0) = \emptyset$, $f(n^+) = \{f(n)\}$ defines a function $f: \omega \to V$
   555	whose range is a set $J_0$ by Replacement. The set $J_0$ is $Z$-inductive
   556	by construction. Then by Separation,
   557	\[
   558	\omega_{\mathrm{Z}} := \{x \in J_0 : \forall J\,(\text{$Z$-Ind}(J) \to x \in J)\},
   559	\]
   560	is the smallest $Z$-inductive set; it is unique by Extensionality.
   561	\end{proof}
   562	
   563	\begin{theorem}\label{thm:peano-Z}
   564	The structure $(\omega_{\mathrm{Z}}, 0_{\mathrm{Z}}, n \mapsto \{n\})$ satisfies
   565	the Peano axioms.
   566	\end{theorem}
   567	
   568	\begin{proof}
   569	\textbf{(1)} $0_{\mathrm{Z}} = \emptyset \in \omega_{\mathrm{Z}}$ by
   570	\Cref{prop:omega-Z}.
   571	
   572	\textbf{(2)} If $n \in \omega_{\mathrm{Z}}$, then $\{n\} \in \omega_{\mathrm{Z}}$
   573	by closure of $\omega_{\mathrm{Z}}$ under $x \mapsto \{x\}$.
   574	
   575	\textbf{(3)} $\{n\} \neq \emptyset$ since $n \in \{n\}$.
   576	
   577	\textbf{(4)} If $\{m\} = \{n\}$, then $m \in \{n\}$, so $m = n$.
   578	
   579	\textbf{(5)} Let $S \subseteq \omega_{\mathrm{Z}}$ be $Z$-inductive (containing
   580	$0_{\mathrm{Z}}$ and closed under $x \mapsto \{x\}$). Then $S$ is itself
   581	$Z$-inductive, so $\omega_{\mathrm{Z}} \subseteq S$ by minimality of
   582	$\omega_{\mathrm{Z}}$. The reverse inclusion is by hypothesis.
   583	\end{proof}
   584	
   585	\subsection{Iso as Peano models, not as sets}
   586	
   587	\begin{theorem}\label{thm:peano-iso}
   588	There is a unique bijection $\Phi: \omega \to \omega_{\mathrm{Z}}$ satisfying
   589	$\Phi(0_{\mathrm{vN}}) = 0_{\mathrm{Z}}$ and
   590	$\Phi(n^+) = \{\Phi(n)\}$ for all $n$. The bijection $\Phi$ is an isomorphism
   591	of Peano structures.
   592	\end{theorem}
   593	
   594	\begin{proof}
   595	Existence and uniqueness of $\Phi$ follow from the recursion theorem on
   596	$\omega$, which we may take as a consequence of Replacement and the
   597	universal property of $\omega$ as the initial Peano structure (see
   598	\Cref{sec:representation}). The bijection is automatic since both encodings
   599	are initial.
   600	\end{proof}
   601	
   602	\begin{remark}
   603	$\Phi$ is an isomorphism of Peano structures (i.e.\ of $(N, 0, S)$-algebras),
   604	but it is \emph{not} an isomorphism of sets in any deeper sense:
   605	$2_{\mathrm{vN}} = \{0,1\}$ has two elements while $2_{\mathrm{Z}} = \{\{0\}\}$
   606	has one. The encodings are equally good Peano models and equally bad
   607	candidates for ``the truth about $2$.''
   608	\end{remark}
   609	
   610	\section{Benacerraf and the Identification Problem}
   611	\label{sec:benacerraf}
   612	
   613	\subsection{The argument}
   614	
   615	In ``What Numbers Could Not Be'' (1965), Paul Benacerraf
   616	\cite{benacerraf1965} considers two children, Ernie and Johnny, each taught
   617	arithmetic via a different set-theoretic encoding (one Zermelo, one von
   618	Neumann). Each child's arithmetic is correct: addition, multiplication, and
   619	order all behave normally. Yet they disagree on whether $3 \in 17$ (true in
   620	von Neumann, false in Zermelo). Benacerraf
   621	argues:
   622	
   623	\begin{enumerate}[label=(\roman*)]
   624	\item Both encodings satisfy the structural conditions we use to identify
   625	``the natural numbers.''
   626	\item Neither has any feature, available within set theory, that privileges
   627	it as ``the truth.''
   628	\item If numbers are sets, then there must be a fact of the matter as to
   629	which sets they are. Since there is no such fact, numbers are not sets.
   630	\end{enumerate}
   631	
   632	The conclusion --- numbers are not sets --- is the central result of the
   633	paper, and it is the negative half of the structuralist thesis. Benacerraf
   634	revisits related epistemological worries about the relationship between
   635	mathematical truth and platonist ontology in \cite{benacerraf1973}; the
   636	mature philosophical articulation of structuralism on the positive side is
   637	due to Shapiro \cite{shapiro1997}. This positive half (numbers are positions
   638	in structures) is what motivates the move to universal properties (Paper 03),
   639	Yoneda (Paper 04), HoTT (Paper 05) --- whose canonical reference is the HoTT
   640	Book \cite{HoTTBook} --- and structural categorical foundations (Paper 06)
   641	in the rest of the series.
   642	
   643	\subsection{Formalization of Benacerraf's argument}
   644	
   645	We can formalize the argument as follows. Let $\mathcal{P}$ denote the
   646	class of all Peano structures (sets $X$ equipped with $0_X \in X$ and
   647	$S_X: X \to X$ satisfying the Peano axioms).
   648	
   649	\begin{theorem}[No canonical Peano structure]\label{thm:no-canonical}
   650	There is no formula $\varphi(X, 0, S)$ in the language of ZFC such that, in
   651	every model of ZFC, $\varphi$ uniquely identifies a Peano structure
   652	$(X, 0, S)$ with the property that any other Peano structure $(Y, 0', S')$
   653	is isomorphic to $(X, 0, S)$ via a unique isomorphism, \emph{and}
   654	$\varphi$ uses no choices of encoding.
   655	\end{theorem}
   656	
   657	\begin{proof}[Sketch]
   658	Any formula $\varphi$ identifying a particular Peano structure must
   659	specify the carrier set, which means committing to a particular extension
   660	inside the cumulative hierarchy. Since there are many extensionally distinct
   661	sets that satisfy any given Peano axiomatization (by the methods of
   662	\Cref{sec:vN} and \Cref{sec:zermelo}), no such formula is encoding-neutral.
   663	The most one can ask of $\varphi$ is that it identifies a Peano structure
   664	\emph{up to isomorphism}, but this is already given by the structural
   665	description of \Cref{sec:representation}, and is precisely what motivates
   666	abandoning set-level identification.
   667	\end{proof}
   668	
   669	\subsection{Junk theorems formalized}
   670	
   671	\begin{definition}[Junk theorem]
   672	Let $T$ be a theory and $E$ an encoding of a structure $(N, 0, S)$ inside
   673	$T$ (i.e.\ a translation of the language of $(N, 0, S)$ into the language of
   674	$T$). A formula $\psi$ in the language of $T$ involving the encoded
   675	constants is a \emph{junk theorem} relative to $E$ if $\psi$ is provable in
   676	$T$ but not invariant under reasonable changes of encoding $E \to E'$.
   677	\end{definition}
   678	
   679	\begin{example}
   680	The formula $\psi := 1 \in 3$ is a junk theorem of ZFC under the von Neumann
   681	encoding: it is provable (since $3_{\mathrm{vN}} = \{0,1,2\}$), but its truth
   682	value is reversed under the Zermelo encoding (since
   683	$3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$, and $1_{\mathrm{Z}} = \{\emptyset\}
   684	\neq 2_{\mathrm{Z}}$). By contrast, $\psi := S(2) = 3$ is not a junk theorem:
   685	it holds in every Peano-isomorphic encoding. The membership relation across
   686	non-adjacent ordinals is exactly the kind of fact that is forced by the
   687	encoding rather than by the structure.
   688	\end{example}
   689	
   690	\begin{remark}[Junk vs.\ structural]
   691	A statement is \emph{structural} when its truth value is preserved by every
   692	isomorphism of Peano structures; junk theorems are precisely the
   693	non-structural statements that nevertheless have determinate truth values
   694	once an encoding is fixed. The set-theoretic perspective generates many
   695	junk theorems; the categorical and HoTT perspectives generate none, by
   696	construction.
   697	\end{remark}
   698	
   699	\section{Arithmetic Operations as Recursive Definitions}
   700	\label{sec:operations}
   701	
   702	We now show that the von Neumann encoding supports a full development of
   703	arithmetic. The development is entirely standard; we include it for the
   704	record and to demonstrate concretely that the structural Peano axioms are
   705	\emph{sufficient} (the additional set-theoretic content is not needed).
   706	The same definitions, mutatis mutandis, apply to the Zermelo encoding.
   707	
   708	\subsection{The recursion theorem}
   709	
   710	\begin{theorem}[Recursion on $\omega$]\label{thm:recursion}
   711	Let $X$ be any set, $a \in X$ a base point, and $g: X \to X$ a function.
   712	Then there is a unique function $f: \omega \to X$ satisfying
   713	\begin{align}
   714	f(0) &= a, \\
   715	f(n^+) &= g(f(n)) \quad \text{for all } n \in \omega.
   716	\end{align}
   717	\end{theorem}
   718	
   719	\begin{proof}[Proof sketch]
   720	Define $f$ as the union of all finite \emph{attempts} --- functions
   721	$h: m \to X$ with $m \in \omega$ satisfying the recursion equations on
   722	their domain. Replacement and Separation guarantee that the union of all
   723	attempts is a set; induction guarantees that $f$ is well-defined and
   724	total on $\omega$.
   725	\end{proof}
   726	
   727	\subsection{Addition}
   728	
   729	\begin{definition}[Addition]\label{def:add}
   730	For $m \in \omega$, define $m + (\cdot) : \omega \to \omega$ by recursion:
   731	\begin{align}
   732	m + 0 &:= m, \\
   733	m + n^+ &:= (m + n)^+.
   734	\end{align}
   735	\end{definition}
   736	
   737	\begin{proposition}[Properties of addition]\label{prop:add-props}
   738	For all $m, n, k \in \omega$:
   739	\begin{enumerate}
   740	\item $0 + n = n$ (left identity).
   741	\item $(m + n) + k = m + (n + k)$ (associativity).
   742	\item $m + n = n + m$ (commutativity).
   743	\end{enumerate}
   744	\end{proposition}
   745	
   746	\begin{proof}
   747	\textbf{(1)} Induct on $n$. Base: $0 + 0 = 0$. Step: assume $0 + n = n$;
   748	then $0 + n^+ = (0 + n)^+ = n^+$.
   749	
   750	\textbf{(2)} Induct on $k$. Base: $(m+n) + 0 = m + n = m + (n + 0)$. Step:
   751	$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.
   752	
   753	\textbf{(3)} Commutativity is the deepest of the three properties; it
   754	requires a nested double induction. We prove it by establishing two
   755	auxiliary lemmas first.
   756	
   757	\emph{Lemma A: $0 + n = n + 0 = n$.} The right equation is
   758	\Cref{def:add}; the left is part (1).
   759	
   760	\emph{Lemma B: $m^+ + n = (m + n)^+$.} Induct on $n$. Base:
   761	$m^+ + 0 = m^+ = (m + 0)^+$. Step: assuming $m^+ + n = (m + n)^+$,
   762	\[
   763	m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,
   764	\]
   765	where the last step uses \Cref{def:add}.
   766	
   767	\emph{Main induction (on $n$).} Base ($n = 0$): $m + 0 = m = 0 + m$ by Lemma A.
   768	
   769	Step: assume $m + n = n + m$ for all $m$. Then for any fixed $m$,
   770	\begin{align*}
   771	m + n^+ &= (m + n)^+ &&\text{(\Cref{def:add})} \\
   772	        &= (n + m)^+ &&\text{(inductive hypothesis)} \\
   773	        &= n^+ + m &&\text{(Lemma B with $m, n$ swapped)},
   774	\end{align*}
   775	which establishes $m + n^+ = n^+ + m$ and completes the induction on $n$.
   776	\end{proof}
   777	
   778	\subsection{Multiplication}
   779	
   780	\begin{definition}[Multiplication]\label{def:mult}
   781	For $m \in \omega$, define $m \cdot (\cdot): \omega \to \omega$ by:
   782	\begin{align}
   783	m \cdot 0 &:= 0, \\
   784	m \cdot n^+ &:= m \cdot n + m.
   785	\end{align}
   786	\end{definition}
   787	
   788	\begin{proposition}\label{prop:mult-props}
   789	Multiplication is associative, commutative, has $1 := 0^+$ as a two-sided
   790	identity, and distributes over addition.
   791	\end{proposition}
   792	
   793	\begin{proof}
   794	Standard inductions on $\omega$, parallel to those for addition. The
   795	distributivity proof goes by induction on the right argument:
   796	$m \cdot (n + 0) = m \cdot n = m \cdot n + 0 = m \cdot n + m \cdot 0$,
   797	and $m \cdot (n + k^+) = m \cdot (n + k)^+ = m \cdot (n+k) + m =
   798	m \cdot n + m \cdot k + m = m \cdot n + m \cdot k^+$.
   799	\end{proof}
   800	
   801	\subsection{Order}
   802	
   803	\begin{definition}[Order]\label{def:order}
   804	For $m, n \in \omega$, write $m < n$ iff $m \in n$, and $m \leq n$ iff
   805	$m \in n \vee m = n$.
   806	\end{definition}
   807	
   808	\begin{remark}
   809	This definition is encoding-specific: it works directly for von Neumann.
   810	For Zermelo, one defines $m <_{\mathrm{Z}} n$ iff $m \in_T n$ where $\in_T$ is
   811	the transitive closure of $\in$. Equivalently and more cleanly, define
   812	$m < n$ iff there exists $k > 0$ with $m + k = n$, which is structural.
   813	\end{remark}
   814	
   815	\begin{proposition}[Linearity]
   816	$<$ is a strict total order on $\omega$.
   817	\end{proposition}
   818	
   819	\begin{proof}
   820	Trichotomy is by induction. Transitivity follows from \Cref{prop:transitive}:
   821	if $m \in n$ and $n \in k$, then $n \subseteq k$ by transitivity of $k$, so
   822	$m \in k$. Irreflexivity is Foundation.
   823	\end{proof}
   824	
   825	\section{The Cumulative Hierarchy}
   826	\label{sec:cumulative}
   827	
   828	\subsection{Definition by transfinite recursion}
   829	
   830	\begin{definition}[Cumulative hierarchy]\label{def:Valpha}
   831	By transfinite recursion on the class of ordinals $\mathrm{Ord}$, define
   832	\begin{align}
   833	V_0 &:= \emptyset, \\
   834	V_{\alpha+1} &:= \mathcal{P}(V_\alpha), \\
   835	V_\lambda &:= \bigcup_{\beta < \lambda} V_\beta \quad (\lambda \text{ limit}).
   836	\end{align}
   837	The class $V := \bigcup_{\alpha \in \mathrm{Ord}} V_\alpha$ is the
   838	\emph{universe of sets}.
   839	\end{definition}
   840	
   841	\begin{theorem}[ZFC sees only $V$]\label{thm:V-is-everything}
   842	In ZFC, every set $x$ belongs to some $V_\alpha$. Hence $V = \mathrm{Universe}$.
   843	\end{theorem}
   844	
   845	\begin{proof}[Sketch]
   846	Define the rank function $\mathrm{rk}: V \to \mathrm{Ord}$ by transfinite
   847	recursion: $\mathrm{rk}(x) := \sup\{\mathrm{rk}(y) + 1 : y \in x\}$.
   848	Foundation guarantees this recursion terminates. Then
   849	$x \in V_{\mathrm{rk}(x) + 1}$.
   850	\end{proof}
   851	
   852	\subsection{Ranks of natural numbers}
   853	
   854	\begin{proposition}\label{prop:ranks}
   855	For each $n \in \omega$:
   856	\begin{enumerate}
   857	\item $\mathrm{rk}(n_{\mathrm{vN}}) = n$.
   858	\item $\mathrm{rk}(n_{\mathrm{Z}}) = n$.
   859	\end{enumerate}
   860	\end{proposition}
   861	
   862	\begin{proof}
   863	For von Neumann: $\mathrm{rk}(0) = 0$, and inductively
   864	$\mathrm{rk}(n^+) = \sup\{\mathrm{rk}(k) + 1 : k \in n^+\} = \sup\{k+1 : k \leq n\} = n+1$.
   865	
   866	For Zermelo: $\mathrm{rk}(\{n_{\mathrm{Z}}\}) = \mathrm{rk}(n_{\mathrm{Z}}) + 1$, and
   867	the result follows by induction.
   868	\end{proof}
   869	
   870	\begin{remark}
   871	Both encodings produce naturals at the same rank in $V$, but they live at
   872	\emph{different positions} within $V_{n+1}$. Von Neumann's $n$ is the
   873	``flat'' set $\{0,1,\ldots,n-1\}$; Zermelo's is the ``tall thin'' nested
   874	singleton.
   875	\end{remark}
   876	
   877	\subsection{$\omega$ as the first limit ordinal}
   878	
   879	\begin{theorem}\label{thm:omega-first-limit}
   880	$\omega \in V_{\omega+1}$ but $\omega \notin V_\omega$. The set $\omega$
   881	is the smallest infinite ordinal: the first ordinal that is not a successor.
   882	\end{theorem}
   883	
   884	\begin{proof}
   885	$\omega = \bigcup_{n \in \omega} n$, so each $n \in V_n \subseteq V_\omega$,
   886	hence $\omega \subseteq V_\omega$ and $\omega \in V_{\omega+1}$. To see
   887	$\omega \notin V_\omega$: every element of $V_\omega$ has finite rank, and
   888	$\mathrm{rk}(\omega) = \omega$.
   889	\end{proof}
   890	
   891	\subsection{Visualizing the hierarchy}
   892	
   893	\begin{figure}[ht]
   894	\centering
   895	\begin{tikzpicture}[scale=0.9]
   896	% V_alpha levels (rungs)
   897	\foreach \name/\h in {V_0/0, V_1/1, V_2/2, V_3/3, V_4/4, V_\omega/5.5, V_{\omega+1}/6.5} {
   898	  \draw[thick] (-4, \h) -- (4, \h);
   899	  \node[anchor=west] at (4.1, \h) {$\name$};
   900	}
   901	
   902	% Mid-rung labels: each number lives in V_{n+1}, so we place it midway
   903	% between V_n and V_{n+1}.
   904	\node at (0, 0.5) {$0 = \emptyset$};
   905	\node at (0, 1.5) {$1 = \{\emptyset\}$};
   906	\node at (0, 2.5) {$2 = \{0,1\}$};
   907	\node at (0, 3.5) {$3 = \{0,1,2\}$};
   908	\node at (0, 4.5) {$4 = \{0,1,2,3\}$};
   909	\node at (0, 4.95) {$\vdots$};
   910	\node at (0, 6.0) {$\omega = \{0,1,2,\ldots\}$};
   911	
   912	% Vertical guide for the "successor builds upward" intuition
   913	\draw[->, thick, gray] (-2.5, 0.5) -- (-2.5, 4.5)
   914	   node[midway, left, gray] {$x \mapsto x \cup \{x\}$};
   915	\end{tikzpicture}
   916	\caption{The cumulative hierarchy $V_\alpha$. Each natural number $n$ first
   917	appears at level $V_{n+1}$. The set $\omega$ first appears at level
   918	$V_{\omega+1}$.}
   919	\label{fig:hierarchy}
   920	\end{figure}

exec
/usr/local/bin/zsh -lc "sed -n '920,1343p' /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex | nl -ba -v920" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   920	\end{figure}
   921	
   922	\section{A Representation Theorem}
   923	\label{sec:representation}
   924	
   925	We extract from the foregoing the following algebraic statement, which
   926	expresses the structural fact that all encodings of the natural numbers
   927	are mutually isomorphic.
   928	
   929	\begin{definition}[Successor structure]\label{def:succ-struct}
   930	A \emph{successor structure} is a triple $(X, x_0, s)$ where $X$ is a set,
   931	$x_0 \in X$, and $s: X \to X$. A morphism $(X, x_0, s) \to (Y, y_0, t)$
   932	is a function $f: X \to Y$ with $f(x_0) = y_0$ and $f \circ s = t \circ f$.
   933	\end{definition}
   934	
   935	\begin{definition}[Initial Peano structure]\label{def:init-peano}
   936	A successor structure $(N, 0, S)$ is \emph{initial} (or a \emph{Peano
   937	structure}) when, for every successor structure $(X, x_0, s)$, there exists
   938	a unique morphism $h: (N, 0, S) \to (X, x_0, s)$.
   939	\end{definition}
   940	
   941	\begin{theorem}[Initiality of $\omega$]\label{thm:initiality}
   942	$(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ is an initial Peano structure.
   943	Equivalently: for every set $X$, every $a \in X$, and every $g: X \to X$,
   944	there is a unique $f: \omega \to X$ with $f(0) = a$ and $f(n^+) = g(f(n))$.
   945	This $f$ is the recursion theorem (\Cref{thm:recursion}).
   946	\end{theorem}
   947	
   948	\begin{proof}
   949	This is precisely the recursion theorem, recast as initiality. Existence is
   950	by recursion on $\omega$; uniqueness is by induction.
   951	\end{proof}
   952	
   953	\begin{theorem}[Uniqueness of Peano structures]\label{thm:uniqueness}
   954	If $(N, 0, S)$ and $(N', 0', S')$ are both initial Peano structures, then
   955	there is a unique isomorphism between them.
   956	\end{theorem}
   957	
   958	\begin{proof}
   959	Universal property: by initiality of $(N, 0, S)$, there is a unique
   960	$h: N \to N'$. By initiality of $(N', 0', S')$, there is a unique
   961	$h': N' \to N$. The composites $h' \circ h$ and $h \circ h'$ are
   962	endomorphisms of an initial structure, hence equal to the identity by
   963	uniqueness.
   964	\end{proof}
   965	
   966	\begin{corollary}\label{cor:vN-Z-iso}
   967	The von Neumann and Zermelo successor structures are isomorphic via a unique
   968	isomorphism, namely $\Phi$ of \Cref{thm:peano-iso}.
   969	\end{corollary}
   970	
   971	This is the structural content that survives Benacerraf's critique. Both
   972	encodings are initial Peano structures; they are therefore canonically
   973	identified at the structural level. What differs is the
   974	encoding-specific data: cardinalities of the carrier sets at each level,
   975	membership relations, etc. The structural mathematics survives; the
   976	junk does not.
   977	
   978	\section{Bridge to Structuralism}
   979	\label{sec:bridge}
   980	
   981	\subsection{Reading the structuralist response}
   982	
   983	The standard structuralist response to Benacerraf is to assert that
   984	``numbers are positions in structures, not particular objects.'' Within
   985	the set-theoretic perspective alone, this assertion is hard to formalize:
   986	the structuralist seems to be invoking abstract structures that are not
   987	themselves sets.
   988	
   989	What Paper 03 will show is that the universal property of an initial
   990	Peano structure is precisely the structuralist content the response was
   991	gesturing at. \Cref{thm:initiality,thm:uniqueness} together say:
   992	
   993	\begin{quote}
   994	There is a structure (the initial successor structure), unique up to unique
   995	isomorphism, defined entirely by its relationships with all other successor
   996	structures. This structure can be \emph{implemented} in many ways inside
   997	ZFC; no implementation is canonical, but every implementation is
   998	equivalent to every other in the only way that matters --- via the
   999	universal mapping property.
  1000	\end{quote}
  1001	
  1002	\subsection{The set-theoretic perspective relocated}
  1003	
  1004	We can therefore retract the temptation to read the von Neumann encoding
  1005	as ontology. The set-theoretic perspective is best understood as
  1006	\emph{realizing} or \emph{instantiating} a structural specification, not
  1007	as defining what the natural numbers \emph{are}. The number $58$ is not
  1008	the set $\{0,1,\ldots,57\}$; rather, the set $\{0,1,\ldots,57\}$ is one
  1009	particular ZFC-implementation of the position $58$ inside the abstract
  1010	initial successor structure.
  1011	
  1012	\subsection{What set theory still gets right}
  1013	
  1014	Despite Benacerraf's critique, the set-theoretic perspective is not
  1015	worthless. It contributes:
  1016	
  1017	\begin{itemize}
  1018	\item \textbf{Existence.} Without an existence proof, the universal property
  1019	of \Cref{def:init-peano} is mere stipulation. Set theory shows that an
  1020	initial Peano structure exists (the axiom of infinity gives one), so the
  1021	specification is not vacuous.
  1022	
  1023	\item \textbf{A working metatheory.} ZFC is rich enough to prove the
  1024	recursion theorem, define addition and multiplication, prove the soundness
  1025	of induction, and develop most of ordinary mathematics. The structural
  1026	specification needs a host theory; ZFC is one (other choices: ETCS, IZF,
  1027	HoTT itself).
  1028	
  1029	\item \textbf{Cumulative hierarchy as a model of well-foundedness.} The
  1030	$V_\alpha$ stratification, while encoding-relative in detail, captures the
  1031	genuine structural fact that any well-founded iteration of \emph{some}
  1032	generative operation eventually exhausts what can be reached.
  1033	
  1034	\item \textbf{Decidable arithmetic.} The recursive definitions of $+$,
  1035	$\cdot$, and $<$ are decidable; the resulting theory of arithmetic is
  1036	$\Sigma_1$-complete and useful in practice.
  1037	\end{itemize}
  1038	
  1039	\subsection{What set theory misses}
  1040	
  1041	\begin{itemize}
  1042	\item \textbf{Structural identity.} Set-theoretic equality is extensional:
  1043	two sets are equal iff they have the same elements. There is no native
  1044	notion of ``equal as Peano structures'' inside ZFC; isomorphism must be
  1045	defined externally and tracked manually.
  1046	
  1047	\item \textbf{Encoding-independence.} As shown, the set-theoretic statement
  1048	``$2 \in 3$'' is encoding-relative. The structural statement ``$\mathrm{succ}(\mathrm{succ}(0)) < \mathrm{succ}^3(0)$'' is not.
  1049	
  1050	\item \textbf{Universal properties as theorems, not metatheorems.} In
  1051	ZFC, ``$\omega$ is initial'' is a theorem, but the very statement of
  1052	initiality requires quantifying over class-many successor structures
  1053	(properly handled, but unwieldy). In a categorical or type-theoretic
  1054	foundation, the universal property is the \emph{definition} and the
  1055	existence/uniqueness are immediate consequences.
  1056	
  1057	\item \textbf{Univalence.} ZFC has no analog of the univalence axiom of
  1058	HoTT; it cannot internalize ``isomorphic structures are the same'' as a
  1059	theorem of the system. The closest one comes is to work systematically
  1060	``up to isomorphism,'' which is a metatheoretic discipline rather than
  1061	a feature of the formalism.
  1062	\end{itemize}
  1063	
  1064	\subsection{Forward to Paper 03}
  1065	
  1066	The next paper in the series develops the universal-property level
  1067	explicitly: a Natural Number Object in any category with a terminal object,
  1068	the categorical NNO, the relationship between NNO and induction, and the
  1069	extraction of arithmetic operations from initiality alone. The bridge from
  1070	this paper to the next is precisely the move from
  1071	\Cref{thm:initiality}'s ``$\omega$ is initial in $\mathbf{Set}^{\bullet,\to}$''
  1072	to the encoding-free formulation
  1073	``$N$ is initial in any category $\mathcal{C}^{\bullet,\to}$ with a terminal
  1074	object.''
  1075	
  1076	\section{Haskell Implementation}
  1077	\label{sec:haskell}
  1078	
  1079	The accompanying Haskell code (\texttt{src/02-set-theoretic/}) implements
  1080	both encodings, defines a common Peano interface they both satisfy, and
  1081	provides a converter realizing the canonical isomorphism $\Phi$ of
  1082	\Cref{thm:peano-iso}.
  1083	
  1084	\subsection{The hereditarily finite set type}
  1085	
  1086	We model pure sets as a recursive datatype:
  1087	
  1088	\begin{lstlisting}
  1089	-- A finite set built recursively from the empty set.
  1090	-- Extensional equality is enforced in the Eq instance by sorting
  1091	-- and deduplicating the underlying list before comparison; a
  1092	-- canonical-form helper (omitted here) makes this efficient.
  1093	newtype HFSet = HFSet { elements :: [HFSet] }
  1094	  deriving (Show)
  1095	
  1096	instance Ord HFSet where
  1097	  compare (HFSet xs) (HFSet ys) =
  1098	    compare (sort xs) (sort ys)
  1099	
  1100	instance Eq HFSet where
  1101	  HFSet xs == HFSet ys = sort xs == sort ys
  1102	
  1103	emptySet :: HFSet
  1104	emptySet = HFSet []
  1105	\end{lstlisting}
  1106	
  1107	\subsection{Von Neumann encoding}
  1108	
  1109	\begin{lstlisting}
  1110	-- Successor: x |-> x \cup {x}
  1111	vnSucc :: HFSet -> HFSet
  1112	vnSucc x = HFSet (elements x ++ [x])
  1113	
  1114	vnEncode :: Int -> HFSet
  1115	vnEncode 0 = emptySet
  1116	vnEncode n = vnSucc (vnEncode (n - 1))
  1117	\end{lstlisting}
  1118	
  1119	\subsection{Zermelo encoding}
  1120	
  1121	\begin{lstlisting}
  1122	-- Successor: x |-> {x}
  1123	zSucc :: HFSet -> HFSet
  1124	zSucc x = HFSet [x]
  1125	
  1126	zEncode :: Int -> HFSet
  1127	zEncode 0 = emptySet
  1128	zEncode n = zSucc (zEncode (n - 1))
  1129	\end{lstlisting}
  1130	
  1131	\subsection{The Peano interface}
  1132	
  1133	A typeclass captures the structural specification independent of either
  1134	encoding:
  1135	
  1136	\begin{lstlisting}
  1137	class Peano a where
  1138	  zero :: a
  1139	  suc  :: a -> a
  1140	  isZero :: a -> Bool
  1141	  pred_ :: a -> Maybe a   -- partial; (-) on naturals is partial
  1142	
  1143	instance Peano HFSet where
  1144	  -- These instances need to be coupled with a tagged type to
  1145	  -- disambiguate vN vs Zermelo; see VNNat and ZNat in the source.
  1146	\end{lstlisting}
  1147	
  1148	The full source disambiguates by tagging: \texttt{newtype VNNat = VNNat HFSet}
  1149	and \texttt{newtype ZNat = ZNat HFSet}, each with its own \texttt{Peano} instance.
  1150	The main demonstration in \texttt{Main.hs} computes both encodings of
  1151	$0,1,\ldots,5$, prints them, verifies the Peano axioms by construction (e.g.\
  1152	$\mathrm{succ}(m) = \mathrm{succ}(n) \implies m = n$ via injectivity of the
  1153	constructor), and applies the canonical isomorphism to convert between them.
  1154	
  1155	\subsection{Junk theorems made explicit}
  1156	
  1157	The Haskell code also includes a function that demonstrates a junk theorem
  1158	empirically:
  1159	
  1160	\begin{lstlisting}
  1161	-- Demonstrate that "1 in 3" depends on encoding.
  1162	junkTheorem :: IO ()
  1163	junkTheorem = do
  1164	  let one_vN  = vnEncode 1; three_vN = vnEncode 3
  1165	  let one_Z   = zEncode  1; three_Z  = zEncode  3
  1166	  putStrLn $ "vN: 1 in 3 = " ++ show (one_vN `inVN` three_vN)
  1167	  putStrLn $ "Z:  1 in 3 = " ++ show (one_Z  `inZ`  three_Z)
  1168	  -- Output:
  1169	  --   vN: 1 in 3 = True   (since 3_vN = {0,1,2})
  1170	  --   Z:  1 in 3 = False  (since 3_Z  = {2}; only 2 is in it)
  1171	\end{lstlisting}
  1172	
  1173	This program is a working witness that the encoding is genuinely choosing
  1174	between distinct sets, not merely between distinct notations.
  1175	
  1176	\section{Discussion}
  1177	\label{sec:discussion}
  1178	
  1179	\subsection{Comparison with logicism and constructivism}
  1180	
  1181	The set-theoretic foundationalism we have presented is closer to
  1182	Russell--Whitehead's logicist program than to a strict constructivism.
  1183	The naturals are obtained by an unbounded inductive process whose existence
  1184	is asserted by an axiom (Infinity). This is not predicatively justified
  1185	in a strict sense (the inductive set is defined as the intersection of
  1186	\emph{all} inductive sets, a quantification over a complete totality), but
  1187	it is mainstream classical mathematics.
  1188	
  1189	Constructive alternatives --- IZF, CZF, Martin-L\"of type theory --- avoid
  1190	this by treating $\mathbb{N}$ as primitive (an inductive type) rather than
  1191	as a derived set. Paper 05 treats this perspective via HoTT.
  1192	
  1193	\subsection{Comparison with categorical foundations}
  1194	
  1195	Lawvere's Elementary Theory of the Category of Sets (ETCS,
  1196	\cite{lawvere1964}) gives a categorical axiomatization of the category
  1197	$\mathbf{Set}$ that is bi-interpretable with bounded Zermelo set theory
  1198	plus replacement (McLarty \cite{mclarty2004}). In ETCS, the natural number
  1199	object is specified by its universal property (Paper 03's level), not by a
  1200	particular encoding. ETCS is therefore structurally cleaner than ZFC for
  1201	foundational purposes, while equally adequate for ordinary mathematics. The
  1202	underlying functorial-semantics machinery is developed in Lawvere
  1203	\cite{lawvere1963}, and the broader topos-theoretic context is treated by
  1204	Mac Lane and Moerdijk \cite{maclane-moerdijk}.
  1205	
  1206	\subsection{Limitations of this paper}
  1207	
  1208	We have not discussed:
  1209	\begin{itemize}
  1210	\item \emph{Large cardinal hypotheses.} Inaccessible, measurable, etc.
  1211	cardinals refine the cumulative hierarchy beyond the ordinals reachable
  1212	in vanilla ZFC. They are foundational for set theory but tangential to
  1213	the natural-numbers question.
  1214	
  1215	\item \emph{The constructible universe $L$.} G\"odel's inner model
  1216	exhibits a minimal model of ZFC; the natural numbers are the same in $L$
  1217	as in $V$, so this is not pertinent.
  1218	
  1219	\item \emph{Forcing.} Independence results do not affect our development.
  1220	
  1221	\item \emph{Alternative set theories.} NF (Quine), KP (Kripke--Platek),
  1222	and other systems give variant encodings; we have considered only ZFC.
  1223	\end{itemize}
  1224	
  1225	\subsection{What this paper has accomplished}
  1226	
  1227	We have presented two distinct set-theoretic encodings of the natural
  1228	numbers (von Neumann ordinals and Zermelo nested singletons), shown that
  1229	both satisfy the Peano axioms, and identified the encoding-relative facts
  1230	(``junk theorems'') that distinguish them. We have located the natural
  1231	numbers in the cumulative hierarchy and proven a representation theorem
  1232	identifying all initial Peano structures up to unique isomorphism. We have
  1233	described the structuralist response (numbers are positions, not sets)
  1234	and pointed forward to the universal-property and HoTT formulations of
  1235	that response.
  1236	
  1237	\section{Conclusion}
  1238	\label{sec:conclusion}
  1239	
  1240	The set-theoretic perspective gives us $\omega$ via the axiom of infinity
  1241	and the recursive successor $x \mapsto x \cup \{x\}$. It supports a full
  1242	arithmetic, fits cleanly into the cumulative hierarchy, and makes the
  1243	natural numbers concrete: the number $58$ \emph{is} the set $\{0,1,\ldots,57\}$
  1244	--- in the von Neumann encoding.
  1245	
  1246	But the qualifier ``in the von Neumann encoding'' is fatal to the
  1247	foundationalist ambition. Zermelo's encoding is equally valid; so is the
  1248	Peano-axiomatic specification with no encoding at all; and so are the
  1249	many other encodings one could devise. Each gives a working arithmetic
  1250	that satisfies the Peano axioms, but each disagrees with the others on
  1251	internal questions about element-of, cardinality, and rank. These
  1252	disagreements are not pathologies; they are evidence that no encoding
  1253	gives \emph{the} natural numbers --- only one realization of them.
  1254	
  1255	What we have learned is that the natural numbers are characterized
  1256	structurally, not extensionally. This characterization is the universal
  1257	property of an initial Peano structure (\Cref{def:init-peano}), and its
  1258	sharpening into the categorical Natural Number Object will occupy
  1259	Paper 03. The set-theoretic perspective remains useful as a metatheory
  1260	and an existence proof, but the identity of the natural numbers
  1261	themselves lives at one level of abstraction higher.
  1262	
  1263	\subsection*{Acknowledgments}
  1264	
  1265	This paper is part of the YonedaAI Univalent Correspondence series. The
  1266	series approaches a single mathematical object --- the natural numbers ---
  1267	through six distinct lenses, and shows in the synthesis volume that under
  1268	the univalence axiom, all six perspectives become literally the same
  1269	mathematical content rather than analogous content. We thank the
  1270	anonymous referees of the series for sharpening many arguments.
  1271	
  1272	\begin{thebibliography}{99}
  1273	
  1274	\bibitem{benacerraf1965}
  1275	P.~Benacerraf, ``What Numbers Could Not Be,''
  1276	\emph{The Philosophical Review}, vol. 74, no. 1, pp. 47--73, 1965.
  1277	
  1278	\bibitem{benacerraf1973}
  1279	P.~Benacerraf, ``Mathematical Truth,''
  1280	\emph{The Journal of Philosophy}, vol. 70, no. 19, pp. 661--679, 1973.
  1281	
  1282	\bibitem{frege1884}
  1283	G.~Frege, \emph{Die Grundlagen der Arithmetik},
  1284	W. Koebner, Breslau, 1884.
  1285	
  1286	\bibitem{halmos1960}
  1287	P.~Halmos, \emph{Naive Set Theory},
  1288	Van Nostrand, 1960.
  1289	
  1290	\bibitem{kunen1980}
  1291	K.~Kunen, \emph{Set Theory: An Introduction to Independence Proofs},
  1292	North-Holland, 1980.
  1293	
  1294	\bibitem{lawvere1964}
  1295	F. W.~Lawvere, ``An Elementary Theory of the Category of Sets,''
  1296	\emph{Proc. Nat. Acad. Sci. USA}, vol. 52, pp. 1506--1511, 1964.
  1297	
  1298	\bibitem{lawvere1963}
  1299	F. W.~Lawvere, ``Functorial Semantics of Algebraic Theories,''
  1300	PhD thesis, Columbia University, 1963.
  1301	
  1302	\bibitem{maclane-moerdijk}
  1303	S.~Mac Lane and I.~Moerdijk, \emph{Sheaves in Geometry and Logic},
  1304	Springer, 1992.
  1305	
  1306	\bibitem{mclarty2004}
  1307	C.~McLarty, ``Exploring Categorical Structuralism,''
  1308	\emph{Philosophia Mathematica}, vol. 12, no. 1, pp. 37--53, 2004.
  1309	
  1310	\bibitem{principia}
  1311	A. N.~Whitehead and B.~Russell, \emph{Principia Mathematica}, Cambridge
  1312	University Press, 1910--1913.
  1313	
  1314	\bibitem{shoenfield1967}
  1315	J. R.~Shoenfield, \emph{Mathematical Logic},
  1316	Addison-Wesley, 1967.
  1317	
  1318	\bibitem{shapiro1997}
  1319	S.~Shapiro, \emph{Philosophy of Mathematics: Structure and Ontology},
  1320	Oxford University Press, 1997.
  1321	
  1322	\bibitem{suppes1960}
  1323	P.~Suppes, \emph{Axiomatic Set Theory},
  1324	Van Nostrand, 1960.
  1325	
  1326	\bibitem{vonNeumann1923}
  1327	J.~von Neumann, ``Zur Einf\"uhrung der transfiniten Zahlen,''
  1328	\emph{Acta litt. ac scient. Reg. Univ. Hung. Francisco-Josephinae},
  1329	sectio sci. math., vol. 1, pp. 199--208, 1923.
  1330	
  1331	\bibitem{HoTTBook}
  1332	The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent
  1333	Foundations of Mathematics}, Institute for Advanced Study, 2013.
  1334	\href{https://homotopytypetheory.org/book}{homotopytypetheory.org/book}.
  1335	arXiv:1308.0729.
  1336	
  1337	\bibitem{zermelo1908}
  1338	E.~Zermelo, ``Untersuchungen \"uber die Grundlagen der Mengenlehre I,''
  1339	\emph{Math. Ann.}, vol. 65, pp. 261--281, 1908.
  1340	
  1341	\end{thebibliography}
  1342	
  1343	\end{document}

exec
/usr/local/bin/zsh -lc "sed -n '780,812p' /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
File: umsb.fd 2013/01/14 v3.01 AMS symbols B
)
(./02-set-theoretic.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/u
pdmap/pdftex.map}

] [2])
\tf@toc=\write5
\openout5 = `02-set-theoretic.toc'.

 [3] [4]
Overfull \hbox (6.93091pt too wide) in paragraph at lines 237--240
[]\OT1/cmr/m/it/12 Replacement schema. \OT1/cmr/m/n/12 For each for-mula $\OML/
cmm/m/it/12 '\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 x; y\OT1/cmr/m/n/12 )$ defin-ing
 a class func-tion $\OML/cmm/m/it/12 F$\OT1/cmr/m/n/12 , $\OMS/cmsy/m/n/12 8\OM
L/cmm/m/it/12 A \OMS/cmsy/m/n/12 9\OML/cmm/m/it/12 B \OMS/cmsy/m/n/12 8\OML/cmm
/m/it/12 y \OT1/cmr/m/n/12 (\OML/cmm/m/it/12 y \OMS/cmsy/m/n/12 2
 []

[5] [6] [7] [8] [9] [10] [11] [12] [13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 877.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\omega' on input line 877.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 877.

[14] [15] [16] [17{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/
cm-super-ts1.enc}]

exec
/usr/local/bin/zsh -lc "sed -n '620,635p' /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:


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


exec
/usr/local/bin/zsh -lc "sed -n '230,245p' /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex | nl -ba -v230" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   230	\item[\textbf{(Pow)}] \emph{Power set.}
   231	$\forall x\, \exists y\, \forall z\,(z \in y \leftrightarrow z \subseteq x)$.
   232	
   233	\item[\textbf{(Sep)}] \emph{Separation schema.} For each formula $\varphi(z)$
   234	not involving $y$,
   235	$\forall x\, \exists y\, \forall z\,(z \in y \leftrightarrow z \in x \wedge \varphi(z))$.
   236	
   237	\item[\textbf{(Repl)}] \emph{Replacement schema.} For each formula
   238	$\varphi(x,y)$ defining a class function $F$,
   239	$\forall A\, \exists B\, \forall y\,(y \in B \leftrightarrow \exists x \in A\, \varphi(x,y))$.
   240	
   241	\item[\textbf{(Inf)}] \emph{Infinity.}
   242	$\exists I\,\bigl(\emptyset \in I \wedge \forall x\,(x \in I \to x \cup \{x\} \in I)\bigr)$.
   243	
   244	\item[\textbf{(Found)}] \emph{Foundation.}
   245	$\forall x\,(x \neq \emptyset \to \exists y \in x\,(y \cap x = \emptyset))$.

codex
The existing log shows a clean build apart from one overfull box, PDF bookmark warnings, and a legacy-package warning. I’m doing an isolated compile into `/tmp` so the review is against the current source without changing the repo outputs.
exec
/usr/local/bin/zsh -lc 'tmpdir=$(mktemp -d)
cd /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory="$tmpdir" 02-set-theoretic.tex >/dev/null
pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory="$tmpdir" 02-set-theoretic.tex >/dev/null
printf '"'%s\\n' \""'$tmpdir"
rg -n "(''^!|LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Reference|Citation|multiply defined|Rerun|Missing|Error|Emergency stop|Fatal)" "$tmpdir/02-set-theoretic.log"' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 977ms:
/var/folders/6z/np99jwkj4ys5z6l5y0xpwdx80000gn/T/tmp.XMiYoPvTR2
575:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
623:Package everypage Warning: Functionality similar to this package has recently
629:Package everypage Warning: You appear to be running a version of LaTeX
794:Overfull \hbox (6.93091pt too wide) in paragraph at lines 237--240
804:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
808:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
812:Package hyperref Warning: Token not allowed in a PDF string (Unicode):

exec
/usr/local/bin/zsh -lc 'command -v chktex >/dev/null && chktex -q -n 8 -n 13 -n 24 -n 36 /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
Warning 18 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 65: Use either `` or '' as an alternative to `"'.
  morestring=[b]"  
                ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 137: You should not use punctuation in front of quotes.
exploring the question \emph{``what is a natural number?''} at progressively  
                                                       ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 149: Non-breaking space (`~') should have been used.
theory. Frege \cite{frege1884} attempted such a reduction to logic; Russell  
             ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 151: Non-breaking space (`~') should have been used.
\cite{principia}; Zermelo and later Fraenkel and Skolem developed the  
^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 153: Non-breaking space (`~') should have been used.
\cite{vonNeumann1923} gave a canonical recursive definition of the ordinals  
^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 156: Non-breaking space (`~') should have been used.
machinery include Halmos \cite{halmos1960}, Suppes \cite{suppes1960},  
                        ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 156: Non-breaking space (`~') should have been used.
machinery include Halmos \cite{halmos1960}, Suppes \cite{suppes1960},  
                                                  ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 157: Non-breaking space (`~') should have been used.
Shoenfield \cite{shoenfield1967}, and Kunen \cite{kunen1980}.  
          ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 157: Non-breaking space (`~') should have been used.
Shoenfield \cite{shoenfield1967}, and Kunen \cite{kunen1980}.  
                                           ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 178: You should not use punctuation in front of quotes.
``is $2$ an element of $3$?'' is meaningful inside ZFC for each  
                          ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 180: Non-breaking space (`~') should have been used.
it is an artifact of the encoding. Following Benacerraf \cite{benacerraf1965},  
                                                       ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 345: You should enclose the previous parenthesis with `{}'.
(n+1)_{\mathrm{vN}} &:= (n_{\mathrm{vN}})^+ = n_{\mathrm{vN}} \cup \{n_{\mathrm{vN}}\}.  
    ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 345: You should enclose the previous parenthesis with `{}'.
(n+1)_{\mathrm{vN}} &:= (n_{\mathrm{vN}})^+ = n_{\mathrm{vN}} \cup \{n_{\mathrm{vN}}\}.  
                                        ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 413: You should enclose the previous parenthesis with `{}'.
The structure $(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ satisfies the Peano axioms:  
                                               ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 420: You should enclose the previous parenthesis with `{}'.
and $S$ is closed under $(\cdot)^+$, then $S = \omega$.  
                               ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 438: You should enclose the previous parenthesis with `{}'.
closed under $(\cdot)^+$). Then $S$ itself is an inductive set, so  
                    ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 446: Non-breaking space (`~') should have been used.
Ernst Zermelo, in his 1908 axiomatization \cite{zermelo1908}, used a  
                                         ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 453: You should enclose the previous parenthesis with `{}'.
(n+1)_{\mathrm{Z}} &:= \{n_{\mathrm{Z}}\}.  
    ^
Warning 44 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 485: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\textbf{Question} & \textbf{Von Neumann} & \textbf{Zermelo} \\\hline  
                                                              ^^^^^^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 517: You should enclose the previous parenthesis with `{}'.
has $n_{\mathrm{Z}} = \{(n-1)_{\mathrm{Z}}\}$ as a singleton, so only $n - 1$ is  
                            ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 607: You should not use punctuation in front of quotes.
candidates for ``the truth about $2$.''  
                                    ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 616: Non-breaking space (`~') should have been used.
\cite{benacerraf1965} considers two children, Ernie and Johnny, each taught  
^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 625: You should not use punctuation in front of quotes.
``the natural numbers.''  
                     ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 627: You should not use punctuation in front of quotes.
it as ``the truth.''  
                 ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 635: Non-breaking space (`~') should have been used.
mathematical truth and platonist ontology in \cite{benacerraf1973}; the  
                                            ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 637: Non-breaking space (`~') should have been used.
due to Shapiro \cite{shapiro1997}. This positive half (numbers are positions  
              ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 640: Non-breaking space (`~') should have been used.
Book \cite{HoTTBook} --- and structural categorical foundations (Paper 06)  
    ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 733: You should enclose the previous parenthesis with `{}'.
m + n^+ &:= (m + n)^+.  
                  ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 748: You should enclose the previous parenthesis with `{}'.
then $0 + n^+ = (0 + n)^+ = n^+$.  
                      ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 751: You should enclose the previous parenthesis with `{}'.
$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.  
                         ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 751: You should enclose the previous parenthesis with `{}'.
$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.  
                                         ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 751: You should enclose the previous parenthesis with `{}'.
$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.  
                                                       ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 760: You should enclose the previous parenthesis with `{}'.
\emph{Lemma B: $m^+ + n = (m + n)^+$.} Induct on $n$. Base:  
                                ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 761: You should enclose the previous parenthesis with `{}'.
$m^+ + 0 = m^+ = (m + 0)^+$. Step: assuming $m^+ + n = (m + n)^+$,  
                       ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 761: You should enclose the previous parenthesis with `{}'.
$m^+ + 0 = m^+ = (m + 0)^+$. Step: assuming $m^+ + n = (m + n)^+$,  
                                                             ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 763: You should enclose the previous parenthesis with `{}'.
m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,  
                    ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 763: You should enclose the previous parenthesis with `{}'.
m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,  
                               ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 763: You should enclose the previous parenthesis with `{}'.
m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,  
                                  ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 763: You should enclose the previous parenthesis with `{}'.
m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,  
                                                ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 771: You should enclose the previous parenthesis with `{}'.
m + n^+ &= (m + n)^+ &&\text{(\Cref{def:add})} \\  
                 ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 772: You should enclose the previous parenthesis with `{}'.
        &= (n + m)^+ &&\text{(inductive hypothesis)} \\  
                 ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 797: You should enclose the previous parenthesis with `{}'.
and $m \cdot (n + k^+) = m \cdot (n + k)^+ = m \cdot (n+k) + m =  
                                       ^
Warning 3 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 942: You should enclose the previous parenthesis with `{}'.
$(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ is an initial Peano structure.  
                                 ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 984: You should not use punctuation in front of quotes.
``numbers are positions in structures, not particular objects.'' Within  
                                                             ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1060: You should not use punctuation in front of quotes.
``up to isomorphism,'' which is a metatheoretic discipline rather than  
                   ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1074: You should not use punctuation in front of quotes.
object.''  
      ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1196: Non-breaking space (`~') should have been used.
\cite{lawvere1964}) gives a categorical axiomatization of the category  
^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1198: Non-breaking space (`~') should have been used.
plus replacement (McLarty \cite{mclarty2004}). In ETCS, the natural number  
                         ^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1203: Non-breaking space (`~') should have been used.
\cite{lawvere1963}, and the broader topos-theoretic context is treated by  
^
Warning 2 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1204: Non-breaking space (`~') should have been used.
Mac Lane and Moerdijk \cite{maclane-moerdijk}.  
                     ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1275: You should not use punctuation in front of quotes.
P.~Benacerraf, ``What Numbers Could Not Be,''  
                                          ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1279: You should not use punctuation in front of quotes.
P.~Benacerraf, ``Mathematical Truth,''  
                                   ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1295: You should not use punctuation in front of quotes.
F. W.~Lawvere, ``An Elementary Theory of the Category of Sets,''  
                                                             ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1299: You should not use punctuation in front of quotes.
F. W.~Lawvere, ``Functorial Semantics of Algebraic Theories,''  
                                                           ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1307: You should not use punctuation in front of quotes.
C.~McLarty, ``Exploring Categorical Structuralism,''  
                                                 ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1327: You should not use punctuation in front of quotes.
J.~von Neumann, ``Zur Einf\"uhrung der transfiniten Zahlen,''  
                                                          ^
Warning 12 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1328: Interword spacing (`\ ') should perhaps be used.
\emph{Acta litt. ac scient. Reg. Univ. Hung. Francisco-Josephinae},  
                ^
Warning 12 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1329: Interword spacing (`\ ') should perhaps be used.
sectio sci. math., vol. 1, pp. 199--208, 1923.  
           ^
Warning 38 in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex line 1338: You should not use punctuation in front of quotes.
E.~Zermelo, ``Untersuchungen \"uber die Grundlagen der Mengenlehre I,''  
                                                                    ^

codex
Reviewing current source plus a clean two-pass `pdflatex` build:

- [02-set-theoretic.tex:21](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:21), [43](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:43): `everypage` is legacy and warns on modern LaTeX. Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with `\AddToHook{shipout/background}{...}`.

- [02-set-theoretic.tex:237](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:237)-[240](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:240): overfull `\hbox` by `6.93091pt` from the long Replacement axiom inline formula. Fix: put the formula in display math, preferably split with `aligned`.

- [02-set-theoretic.tex:877](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:877): section title math causes `hyperref` PDF bookmark warnings. Fix:
  ```latex
  \subsection{\texorpdfstring{$\omega$}{omega} as the first limit ordinal}
  ```

- Citation tie spacing: lines 149, 151, 153, 156, 157, 180, 446, 616, 635, 637, 640, 1196, 1198, 1203, 1204 use normal spaces before `\cite`, allowing bad line breaks. Fix pattern: `Frege~\cite{frege1884}`.

No compilation errors, missing packages, undefined references/citations, malformed environments, or underfull boxes showed up in the two-pass build.
2026-05-04T01:53:46.381365Z ERROR codex_core::session: failed to record rollout items: thread 019df0af-7605-76f3-a59a-8d2ac16d1d31 not found
tokens used
68,090
Reviewing current source plus a clean two-pass `pdflatex` build:

- [02-set-theoretic.tex:21](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:21), [43](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:43): `everypage` is legacy and warns on modern LaTeX. Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with `\AddToHook{shipout/background}{...}`.

- [02-set-theoretic.tex:237](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:237)-[240](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:240): overfull `\hbox` by `6.93091pt` from the long Replacement axiom inline formula. Fix: put the formula in display math, preferably split with `aligned`.

- [02-set-theoretic.tex:877](/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex:877): section title math causes `hyperref` PDF bookmark warnings. Fix:
  ```latex
  \subsection{\texorpdfstring{$\omega$}{omega} as the first limit ordinal}
  ```

- Citation tie spacing: lines 149, 151, 153, 156, 157, 180, 446, 616, 635, 637, 640, 1196, 1198, 1203, 1204 use normal spaces before `\cite`, allowing bad line breaks. Fix pattern: `Frege~\cite{frege1884}`.

No compilation errors, missing packages, undefined references/citations, malformed environments, or underfull boxes showed up in the two-pass build.
