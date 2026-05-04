---
reviewer: codex (OpenAI)
type: formatting
paper: 02-set-theoretic
round: final
date: 2026-05-04T14:18:20Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
model: gpt-5.5
provider: openai
approval: never
sandbox: danger-full-access
reasoning effort: high
reasoning summaries: none
session id: 019df35a-b42a-70f2-b8ca-6083548a05a1
--------
user
Final-pass formatting review of /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex/02-set-theoretic.tex. The paper has already been through formatting review. ONLY identify issues that would BLOCK pdflatex compilation or cause visibly broken output (compilation errors, undefined references, broken \ref/\cite, severe overfull boxes, missing packages). Do NOT suggest stylistic improvements. List blocking issues with line numbers and exact fixes; if none, say 'NO BLOCKING ISSUES'.
codex
I’ll verify this against the actual TeX source and, if the project is buildable locally, run a focused `pdflatex` pass/log scan so the result is based on blocking evidence rather than visual preference.
exec
/usr/local/bin/zsh -lc "nl -ba latex/02-set-theoretic.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
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
    86	\texttt{research@yonedaai.com}}
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
   239	\[
   240	\forall A\, \exists B\, \forall y\,
   241	   \bigl(y \in B \leftrightarrow \exists x \in A\,\, \varphi(x,y)\bigr).
   242	\]
   243	
   244	\item[\textbf{(Inf)}] \emph{Infinity.}
   245	$\exists I\,\bigl(\emptyset \in I \wedge \forall x\,(x \in I \to x \cup \{x\} \in I)\bigr)$.
   246	
   247	\item[\textbf{(Found)}] \emph{Foundation.}
   248	$\forall x\,(x \neq \emptyset \to \exists y \in x\,(y \cap x = \emptyset))$.
   249	
   250	\item[\textbf{(AC)}] \emph{Choice.} Every set of nonempty sets has a choice
   251	function.
   252	\end{enumerate}
   253	\end{definition}
   254	
   255	\begin{remark}
   256	The empty set $\emptyset$ is definable: by Separation applied to any set $x$
   257	and the formula $z \neq z$, the resulting set has no elements. By Extensionality,
   258	this set is unique. \textbf{(Inf)} guarantees there is a set containing $\emptyset$
   259	and closed under $x \mapsto x \cup \{x\}$.
   260	\end{remark}

exec
/usr/local/bin/zsh -lc "find . -maxdepth 3 -type f | sort | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 succeeded in 0ms:
./images/02-set-theoretic-og.png
./images/02-set-theoretic.png
./latex/02-set-theoretic.aux
./latex/02-set-theoretic.log
./latex/02-set-theoretic.out
./latex/02-set-theoretic.tex
./latex/02-set-theoretic.toc
./pdf/02-set-theoretic.pdf
./reviews/02-set-theoretic-codex-review-final.md
./reviews/02-set-theoretic-codex-review.md
./reviews/02-set-theoretic-review-final.md
./reviews/02-set-theoretic-review-round-1.md
./reviews/02-set-theoretic-review-round-2.md
./reviews/02-set-theoretic-review.md

exec
/usr/local/bin/zsh -lc "pwd && rg -n \"(\\\\ref\\{|\\\\cite\\{|\\\\input\\{|\\\\include\\{|\\\\usepackage\\{|TODO|undefined|overfull|label\\{|bibliography\\{|bibliographystyle\\{|addbibresource\\{)\" latex/02-set-theoretic.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 exited 2 in 0ms:
/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
rg: regex parse error:
    (?:(\ref\{|\cite\{|\input\{|\include\{|\usepackage\{|TODO|undefined|overfull|label\{|bibliography\{|bibliographystyle\{|addbibresource\{))
               ^^
error: unrecognized escape sequence

codex
The first pass shows this is a single-file LaTeX source with an existing PDF/log beside it. I’m going to compile from the `latex` directory now and scan the fresh log for fatal errors, undefined references/citations, and serious box warnings.
exec
/usr/local/bin/zsh -lc "wc -l latex/02-set-theoretic.tex && nl -ba latex/02-set-theoretic.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 succeeded in 0ms:
    1347 latex/02-set-theoretic.tex
   261	
   262	\subsection{Axiom of Infinity, in detail}
   263	
   264	\begin{definition}[Inductive set]
   265	A set $I$ is \emph{inductive} when $\emptyset \in I$ and, for every $x \in I$,
   266	$x \cup \{x\} \in I$. The axiom of infinity asserts that an inductive set exists.
   267	\end{definition}
   268	
   269	\begin{proposition}[Existence of $\omega$]\label{prop:omega}
   270	There exists a unique smallest inductive set, denoted $\omega$. Equivalently,
   271	$\omega = \bigcap \{I : I \text{ is inductive}\}$ inside any inductive set,
   272	defined by Separation:
   273	\begin{equation}
   274	\omega = \{x \in I_0 : \forall I\,(I \text{ inductive} \to x \in I)\},
   275	\end{equation}
   276	where $I_0$ is any fixed inductive set guaranteed by \textbf{(Inf)}.
   277	\end{proposition}
   278	
   279	\begin{proof}
   280	The class of inductive sets is nonempty by \textbf{(Inf)}; the
   281	class-intersection is inductive (it contains $\emptyset$ since each inductive
   282	set does, and is closed under $x \mapsto x \cup \{x\}$ since each inductive
   283	set is). Separation applied to $I_0$ and the formula
   284	$\varphi(x) \equiv \forall I\,(\text{Ind}(I) \to x \in I)$ produces a set $\omega$
   285	with the required property. Uniqueness follows from Extensionality.
   286	\end{proof}
   287	
   288	\subsection{Replacement, and what it buys us}
   289	
   290	The Separation schema only carves out subsets of an existing set; it cannot
   291	generate sets ``larger'' than what is already given. Replacement is strictly
   292	stronger: it asserts that the image of a set under a definable class function
   293	is a set. This is essential for transfinite recursion (and hence for the
   294	cumulative hierarchy of \Cref{sec:cumulative}) and for the formal definition
   295	of operations such as addition by recursion on $\omega$.
   296	
   297	\begin{remark}
   298	ZFC without Replacement is Zermelo's original 1908 system $\mathrm{Z}$, which
   299	is too weak for many constructions used in ordinary mathematics (Borel
   300	hierarchies, transfinite recursion past $\omega + \omega$, etc.). For our
   301	purposes here --- defining the natural numbers and their arithmetic ---
   302	Replacement is the crucial axiom that lets us define functions by recursion.
   303	\end{remark}
   304	
   305	\subsection{Foundation and well-foundedness}
   306	
   307	\begin{definition}[Well-founded relation]
   308	A relation $R$ on a class $C$ is \emph{well-founded} when every nonempty
   309	subset $S \subseteq C$ has an $R$-minimal element: an $x \in S$ with
   310	$\{y \in S : yRx\} = \emptyset$.
   311	\end{definition}
   312	
   313	\begin{theorem}\label{thm:found}
   314	The Foundation axiom is equivalent (in ZF without Foundation) to the
   315	assertion that the membership relation $\in$ is well-founded on the universe
   316	of sets. In particular, there is no infinite descending $\in$-chain
   317	$\cdots \in x_2 \in x_1 \in x_0$, no set $x$ with $x \in x$, and no cycle
   318	$x_0 \in x_1 \in \cdots \in x_n \in x_0$.
   319	\end{theorem}
   320	
   321	\begin{proof}[Proof sketch]
   322	If $x \in x$, then $\{x\}$ has no $\in$-minimal element, contradicting
   323	Foundation. The general statement is proved by considering the transitive
   324	closure of any candidate descending chain and applying Foundation to the
   325	resulting set.
   326	\end{proof}
   327	
   328	Foundation is what allows transfinite induction on the entire set-theoretic
   329	universe. It is also what makes the von Neumann encoding (in which $n$ is
   330	literally the set of its predecessors) compatible with the standard
   331	machinery: since each $n$ is a transitive set linearly ordered by $\in$,
   332	Foundation guarantees we never run into pathologies like $n \in n$.
   333	
   334	\section{The von Neumann Encoding}
   335	\label{sec:vN}
   336	
   337	\subsection{Definition}
   338	
   339	\begin{definition}[Successor]\label{def:succ}
   340	For any set $x$, the \emph{successor} of $x$ is
   341	$x^+ := x \cup \{x\}$.
   342	\end{definition}
   343	
   344	\begin{definition}[Von Neumann naturals]\label{def:vN}
   345	We define the von Neumann naturals as elements of $\omega$ recursively:
   346	\begin{align}
   347	0_{\mathrm{vN}} &:= \emptyset, \\
   348	(n+1)_{\mathrm{vN}} &:= (n_{\mathrm{vN}})^+ = n_{\mathrm{vN}} \cup \{n_{\mathrm{vN}}\}.
   349	\end{align}
   350	\end{definition}
   351	
   352	Unrolling this definition:
   353	\begin{align*}
   354	0 &= \emptyset \\
   355	1 &= \{0\} = \{\emptyset\} \\
   356	2 &= \{0, 1\} = \{\emptyset, \{\emptyset\}\} \\
   357	3 &= \{0, 1, 2\} = \{\emptyset, \{\emptyset\}, \{\emptyset, \{\emptyset\}\}\} \\
   358	&\vdots \\
   359	n &= \{0, 1, \ldots, n-1\}
   360	\end{align*}
   361	
   362	\begin{example}\label{ex:58}
   363	The number $58$, in von Neumann form, is the set of all smaller naturals:
   364	\begin{equation}
   365	58_{\mathrm{vN}} = \{0, 1, 2, \ldots, 57\}.
   366	\end{equation}
   367	The set $58$ has exactly $58$ elements, and each of those elements is a set
   368	with strictly fewer elements. The total cumulative count of $\in$-occurrences
   369	inside $58$ is large but finite (combinatorially, $\sum_{k=0}^{57} k = 1653$).
   370	\end{example}
   371	
   372	\subsection{Membership and subset coincide}
   373	
   374	A signal feature of the von Neumann encoding is the conflation, at the
   375	finite level, of $\in$ and $\subseteq$.
   376	
   377	\begin{proposition}\label{prop:in-equals-subset}
   378	For all $m, n \in \omega$, we have $m \in n$ if and only if $m \subsetneq n$.
   379	\end{proposition}
   380	
   381	\begin{proof}
   382	We prove both directions by induction on $n$.
   383	
   384	\emph{$(\Rightarrow)$.} If $m \in n$, then since $n$ is the set of its
   385	predecessors and is transitive (\Cref{prop:transitive} below), every element
   386	of $m$ is also an element of $n$, hence $m \subseteq n$. Strict inclusion
   387	follows from $m \in n$ and $m \notin m$ (Foundation, \Cref{thm:found}).
   388	
   389	\emph{$(\Leftarrow)$.} If $m \subsetneq n$, pick any $k \in n \setminus m$
   390	of minimal $\in$-rank. Then $k \subseteq m$ (by minimality), and $k = m$
   391	follows from extensionality together with $m \subseteq n$ and the definition
   392	of $n$ as the set of its predecessors. Hence $m = k \in n$.
   393	\end{proof}
   394	
   395	\begin{proposition}[Transitivity of naturals]\label{prop:transitive}
   396	Each $n \in \omega$ is a \emph{transitive set}: if $x \in n$, then $x \subseteq n$.
   397	\end{proposition}
   398	
   399	\begin{proof}
   400	By induction. $0 = \emptyset$ is vacuously transitive. Assume $n$ is
   401	transitive and let $x \in n^+ = n \cup \{n\}$. If $x = n$, then $x = n \subseteq n^+$
   402	since $n \cup \{n\} \supseteq n$. If $x \in n$, then by the inductive
   403	hypothesis $x \subseteq n \subseteq n^+$.
   404	\end{proof}
   405	
   406	\begin{example}
   407	$2 \in 3$ holds in von Neumann: $3 = \{0,1,2\}$, so $2$ is literally one of the
   408	three elements of $3$. Equivalently, $2 = \{0,1\} \subsetneq \{0,1,2\} = 3$.
   409	This is the kind of statement that, by \Cref{prop:in-equals-subset}, is
   410	equivalent in von Neumann to the order $2 < 3$.
   411	\end{example}
   412	
   413	\subsection{Peano axioms for the von Neumann naturals}
   414	
   415	\begin{theorem}\label{thm:peano-vN}
   416	The structure $(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ satisfies the Peano axioms:
   417	\begin{enumerate}
   418	\item $0_{\mathrm{vN}} \in \omega$.
   419	\item For all $n \in \omega$, $n^+ \in \omega$.
   420	\item For all $n \in \omega$, $n^+ \neq 0_{\mathrm{vN}}$.
   421	\item For all $m,n \in \omega$, if $m^+ = n^+$ then $m = n$.
   422	\item (Induction) For every set $S \subseteq \omega$, if $0_{\mathrm{vN}} \in S$
   423	and $S$ is closed under $(\cdot)^+$, then $S = \omega$.
   424	\end{enumerate}
   425	\end{theorem}
   426	
   427	\begin{proof}
   428	\textbf{(1) and (2)} are immediate from the definition of $\omega$ as the
   429	smallest inductive set.
   430	
   431	\textbf{(3)} If $n^+ = \emptyset$, then $n \cup \{n\} = \emptyset$. But
   432	$n \in n \cup \{n\}$, contradiction.
   433	
   434	\textbf{(4)} Suppose $m^+ = n^+$, i.e.\ $m \cup \{m\} = n \cup \{n\}$. Then
   435	$m \in n^+$ and $n \in m^+$. By \Cref{prop:in-equals-subset} (applied via
   436	$\in$-trichotomy), if $m \neq n$ then either $m \in n$ and $n \in m$, which
   437	contradicts Foundation, or one is a proper subset of the other; combined
   438	with $m \in n^+$ and $n \in m^+$ this forces $m = n$.
   439	
   440	\textbf{(5)} Let $S \subseteq \omega$ be inductive (containing $0$ and
   441	closed under $(\cdot)^+$). Then $S$ itself is an inductive set, so
   442	$\omega \subseteq S$ by minimality of $\omega$. The reverse inclusion is by
   443	hypothesis.
   444	\end{proof}
   445	
   446	\section{Zermelo's Encoding}
   447	\label{sec:zermelo}
   448	
   449	Ernst Zermelo, in his 1908 axiomatization \cite{zermelo1908}, used a
   450	different recursive definition of the natural numbers.
   451	
   452	\begin{definition}[Zermelo naturals]\label{def:Z}
   453	We define the Zermelo naturals recursively:
   454	\begin{align}
   455	0_{\mathrm{Z}} &:= \emptyset, \\
   456	(n+1)_{\mathrm{Z}} &:= \{n_{\mathrm{Z}}\}.
   457	\end{align}
   458	\end{definition}
   459	
   460	Unrolling:
   461	\begin{align*}
   462	0_{\mathrm{Z}} &= \emptyset \\
   463	1_{\mathrm{Z}} &= \{\emptyset\} \\
   464	2_{\mathrm{Z}} &= \{\{\emptyset\}\} \\
   465	3_{\mathrm{Z}} &= \{\{\{\emptyset\}\}\} \\
   466	&\vdots \\
   467	n_{\mathrm{Z}} &= \underbrace{\{\{\cdots\{}_{n}\emptyset\underbrace{\}\cdots\}\}}_{n}
   468	\end{align*}
   469	
   470	\begin{example}
   471	$58_{\mathrm{Z}}$ is a chain of $58$ nested singletons:
   472	\begin{equation}
   473	58_{\mathrm{Z}} = \underbrace{\{\{\cdots\{}_{58}\emptyset\underbrace{\}\cdots\}\}}_{58}.
   474	\end{equation}
   475	Crucially, $58_{\mathrm{Z}}$ has exactly \emph{one} element (namely
   476	$57_{\mathrm{Z}}$), not $58$. The cardinality of the encoding does not match
   477	the natural number it encodes.
   478	\end{example}
   479	
   480	\subsection{Comparison: junk theorems}
   481	
   482	\begin{proposition}[Encoding-relative facts]\label{prop:junk}
   483	The following statements all have determinate truth values inside ZFC, but
   484	the answers depend on the encoding. We display together the cases where the
   485	encodings agree and where they differ. (Below, $\mathrm{pred}(n)$ denotes
   486	the ordinal predecessor: the unique $m$ with $m^+ = n$.)
   487	\begin{center}
   488	\begin{tabular}{lll}
   489	\textbf{Question} & \textbf{Von Neumann} & \textbf{Zermelo} \\\hline
   490	$0 \in 1$? & true & true (both: $1 = \{0\}$) \\
   491	$n \in n^+$? & true & true (by construction) \\
   492	$n \subseteq n^+$? & true & true \\
   493	$1 \in 3$? & true ($3 = \{0,1,2\}$) & \textbf{false} ($3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$) \\
   494	$1 \in 17$? & true & \textbf{false} \\
   495	$\{\emptyset\} \in 17$? & true (since $\{\emptyset\} = 1 \in 17$) & \textbf{false} \\
   496	$|n| = n$ for $n \in \omega$? & true (each $n$ has $n$ elements) & \textbf{false} ($|n|=1$ for $n \geq 1$) \\
   497	$\bigcup n = \mathrm{pred}(n)$ for $n>0$? & true & true \\
   498	$m \subsetneq n \iff m \in n$ (on $\omega$)? & true & \textbf{false}
   499	\end{tabular}
   500	\end{center}
   501	
   502	Two rows merit closer comment. The cardinality row exhibits the most
   503	striking divergence: $|2_{\mathrm{vN}}| = |\{0,1\}| = 2$ but
   504	$|2_{\mathrm{Z}}| = |\{\{\emptyset\}\}| = 1$, so already at $n=2$ the
   505	extensional ``size'' of the encoding tracks the natural number in von
   506	Neumann but not in Zermelo. For the membership/subset equivalence in the
   507	last row, the von Neumann case holds by \Cref{prop:in-equals-subset}; in
   508	Zermelo it fails. For instance, $1_{\mathrm{Z}} = \{\emptyset\}$ is not a
   509	subset of $2_{\mathrm{Z}} = \{\{\emptyset\}\}$, because the unique element
   510	$\emptyset$ of $1_{\mathrm{Z}}$ is not an element of
   511	$\{\{\emptyset\}\}$. The reliable encoding-independent statement of the
   512	natural order is therefore the structural Peano order $m < n$ (defined,
   513	e.g., as $\exists k > 0.\, m + k = n$), not the literal $\in$ relation.
   514	\end{proposition}
   515	
   516	\begin{remark}[On adjacent cases]
   517	For pairs $(m, m+1)$ both encodings agree on $m \in m+1$: in von Neumann
   518	because $m \in m \cup \{m\}$, and in Zermelo because $m \in \{m\}$. The
   519	discrepancy is for non-adjacent pairs $(m, n)$ with $m + 1 < n$, where the
   520	von Neumann encoding has $m \in n$ via transitivity but the Zermelo encoding
   521	has $n_{\mathrm{Z}} = \{(n-1)_{\mathrm{Z}}\}$ as a singleton, so only $n - 1$ is
   522	a member of $n$.
   523	\end{remark}
   524	
   525	\begin{proof}[Justification of the table]
   526	Every entry follows directly from the recursive definitions and Foundation.
   527	The pivotal entry for our purposes is the last: in von Neumann, membership
   528	and proper inclusion coincide on $\omega$ (\Cref{prop:in-equals-subset}); in
   529	Zermelo, this fails because (for $n \geq 2$) $n_{\mathrm{Z}}$ has only one
   530	element, while many sets are subsets of it under set-theoretic inclusion.
   531	\end{proof}
   532	
   533	\begin{remark}[Junk]
   534	We call statements like ``$2 \in 3$'' \emph{junk theorems} (or
   535	\emph{junk falsehoods}). They have a determinate truth value in ZFC under any
   536	fixed encoding, but they reflect choices made by the encoder, not facts
   537	about the natural numbers as such. The number $2$ does not stand in any
   538	intrinsic membership relation to the number $3$. The membership question is
   539	well-formed only because we have committed to representing numbers as sets;
   540	under a different commitment, the answer changes.
   541	\end{remark}
   542	
   543	\subsection{Peano axioms for Zermelo}
   544	
   545	\begin{proposition}[Existence of $\omega_{\mathrm{Z}}$]\label{prop:omega-Z}
   546	There exists a unique smallest set $\omega_{\mathrm{Z}}$ containing
   547	$\emptyset$ and closed under the operation $x \mapsto \{x\}$.
   548	\end{proposition}
   549	
   550	\begin{proof}
   551	The argument parallels that of \Cref{prop:omega} but uses the alternate
   552	successor. Call a set $J$ \emph{$Z$-inductive} when $\emptyset \in J$ and,
   553	for all $x \in J$, $\{x\} \in J$. By the axiom of infinity \textbf{(Inf)},
   554	the standard inductive set $I_0$ exists; by Pairing, the singleton operation
   555	$x \mapsto \{x\}$ is total. Applying the recursion theorem
   556	(\Cref{thm:recursion} below, whose proof depends only on Replacement
   557	applied to $\omega$ and not on either encoding), the recursion
   558	$f(0) = \emptyset$, $f(n^+) = \{f(n)\}$ defines a function $f: \omega \to V$
   559	whose range is a set $J_0$ by Replacement. The set $J_0$ is $Z$-inductive
   560	by construction. Then by Separation,
   561	\[
   562	\omega_{\mathrm{Z}} := \{x \in J_0 : \forall J\,(\text{$Z$-Ind}(J) \to x \in J)\},
   563	\]
   564	is the smallest $Z$-inductive set; it is unique by Extensionality.
   565	\end{proof}
   566	
   567	\begin{theorem}\label{thm:peano-Z}
   568	The structure $(\omega_{\mathrm{Z}}, 0_{\mathrm{Z}}, n \mapsto \{n\})$ satisfies
   569	the Peano axioms.
   570	\end{theorem}
   571	
   572	\begin{proof}
   573	\textbf{(1)} $0_{\mathrm{Z}} = \emptyset \in \omega_{\mathrm{Z}}$ by
   574	\Cref{prop:omega-Z}.
   575	
   576	\textbf{(2)} If $n \in \omega_{\mathrm{Z}}$, then $\{n\} \in \omega_{\mathrm{Z}}$
   577	by closure of $\omega_{\mathrm{Z}}$ under $x \mapsto \{x\}$.
   578	
   579	\textbf{(3)} $\{n\} \neq \emptyset$ since $n \in \{n\}$.
   580	
   581	\textbf{(4)} If $\{m\} = \{n\}$, then $m \in \{n\}$, so $m = n$.
   582	
   583	\textbf{(5)} Let $S \subseteq \omega_{\mathrm{Z}}$ be $Z$-inductive (containing
   584	$0_{\mathrm{Z}}$ and closed under $x \mapsto \{x\}$). Then $S$ is itself
   585	$Z$-inductive, so $\omega_{\mathrm{Z}} \subseteq S$ by minimality of
   586	$\omega_{\mathrm{Z}}$. The reverse inclusion is by hypothesis.
   587	\end{proof}
   588	
   589	\subsection{Iso as Peano models, not as sets}
   590	
   591	\begin{theorem}\label{thm:peano-iso}
   592	There is a unique bijection $\Phi: \omega \to \omega_{\mathrm{Z}}$ satisfying
   593	$\Phi(0_{\mathrm{vN}}) = 0_{\mathrm{Z}}$ and
   594	$\Phi(n^+) = \{\Phi(n)\}$ for all $n$. The bijection $\Phi$ is an isomorphism
   595	of Peano structures.
   596	\end{theorem}
   597	
   598	\begin{proof}
   599	Existence and uniqueness of $\Phi$ follow from the recursion theorem on
   600	$\omega$, which we may take as a consequence of Replacement and the
   601	universal property of $\omega$ as the initial Peano structure (see
   602	\Cref{sec:representation}). The bijection is automatic since both encodings
   603	are initial.
   604	\end{proof}
   605	
   606	\begin{remark}
   607	$\Phi$ is an isomorphism of Peano structures (i.e.\ of $(N, 0, S)$-algebras),
   608	but it is \emph{not} an isomorphism of sets in any deeper sense:
   609	$2_{\mathrm{vN}} = \{0,1\}$ has two elements while $2_{\mathrm{Z}} = \{\{0\}\}$
   610	has one. The encodings are equally good Peano models and equally bad
   611	candidates for ``the truth about $2$.''
   612	\end{remark}
   613	
   614	\section{Benacerraf and the Identification Problem}
   615	\label{sec:benacerraf}
   616	
   617	\subsection{The argument}
   618	
   619	In ``What Numbers Could Not Be'' (1965), Paul Benacerraf
   620	\cite{benacerraf1965} considers two children, Ernie and Johnny, each taught

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\\\ref{\" latex/02-set-theoretic.tex; rg -n -F \"\\\\Cref{\" latex/02-set-theoretic.tex; rg -n -F \"\\\\cite{\" latex/02-set-theoretic.tex; rg -n -F \"\\\\label{\" latex/02-set-theoretic.tex; rg -n -F \"\\\\bibliography\" latex/02-set-theoretic.tex; rg -n -F \"\\\\bibitem\" latex/02-set-theoretic.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 succeeded in 0ms:
193:\Cref{sec:zfc} reviews ZFC, with particular attention to the axiom of
195:underwrites well-foundedness). \Cref{sec:vN} presents the von Neumann
196:encoding, defines $\omega$, and verifies the Peano axioms. \Cref{sec:zermelo}
197:presents Zermelo's encoding and contrasts the two. \Cref{sec:benacerraf}
199:theorem. \Cref{sec:operations} defines addition, multiplication, and order
200:recursively and proves the basic algebraic identities. \Cref{sec:cumulative}
202:and locates the natural numbers within it. \Cref{sec:representation} proves
204:isomorphism. \Cref{sec:bridge} develops the structuralist re-reading and
206:paper realizes both encodings; \Cref{sec:haskell} describes its design and
294:cumulative hierarchy of \Cref{sec:cumulative}) and for the formal definition
385:predecessors and is transitive (\Cref{prop:transitive} below), every element
387:follows from $m \in n$ and $m \notin m$ (Foundation, \Cref{thm:found}).
409:This is the kind of statement that, by \Cref{prop:in-equals-subset}, is
435:$m \in n^+$ and $n \in m^+$. By \Cref{prop:in-equals-subset} (applied via
507:last row, the von Neumann case holds by \Cref{prop:in-equals-subset}; in
528:and proper inclusion coincide on $\omega$ (\Cref{prop:in-equals-subset}); in
551:The argument parallels that of \Cref{prop:omega} but uses the alternate
556:(\Cref{thm:recursion} below, whose proof depends only on Replacement
574:\Cref{prop:omega-Z}.
602:\Cref{sec:representation}). The bijection is automatic since both encodings
666:\Cref{sec:vN} and \Cref{sec:zermelo}), no such formula is encoding-neutral.
669:description of \Cref{sec:representation}, and is precisely what motivates
762:\Cref{def:add}; the left is part (1).
769:where the last step uses \Cref{def:add}.
775:m + n^+ &= (m + n)^+ &&\text{(\Cref{def:add})} \\
824:Trichotomy is by induction. Transitivity follows from \Cref{prop:transitive}:
949:This $f$ is the recursion theorem (\Cref{thm:recursion}).
972:isomorphism, namely $\Phi$ of \Cref{thm:peano-iso}.
995:gesturing at. \Cref{thm:initiality,thm:uniqueness} together say:
1023:of \Cref{def:init-peano} is mere stipulation. Set theory shows that an
1075:\Cref{thm:initiality}'s ``$\omega$ is initial in $\mathbf{Set}^{\bullet,\to}$''
1086:\Cref{thm:peano-iso}.
1261:property of an initial Peano structure (\Cref{def:init-peano}), and its
149:theory. Frege \cite{frege1884} attempted such a reduction to logic; Russell
151:\cite{principia}; Zermelo and later Fraenkel and Skolem developed the
153:\cite{vonNeumann1923} gave a canonical recursive definition of the ordinals
156:machinery include Halmos \cite{halmos1960}, Suppes \cite{suppes1960},
157:Shoenfield \cite{shoenfield1967}, and Kunen \cite{kunen1980}.
180:it is an artifact of the encoding. Following Benacerraf \cite{benacerraf1965},
449:Ernst Zermelo, in his 1908 axiomatization \cite{zermelo1908}, used a
620:\cite{benacerraf1965} considers two children, Ernie and Johnny, each taught
639:mathematical truth and platonist ontology in \cite{benacerraf1973}; the
641:due to Shapiro \cite{shapiro1997}. This positive half (numbers are positions
644:Book \cite{HoTTBook} --- and structural categorical foundations (Paper 06)
1200:\cite{lawvere1964}) gives a categorical axiomatization of the category
1202:plus replacement (McLarty \cite{mclarty2004}). In ETCS, the natural number
1207:\cite{lawvere1963}, and the broader topos-theoretic context is treated by
1208:Mac Lane and Moerdijk \cite{maclane-moerdijk}.
132:\label{sec:intro}
210:\label{sec:zfc}
217:\begin{definition}[ZFC]\label{def:zfc}
269:\begin{proposition}[Existence of $\omega$]\label{prop:omega}
313:\begin{theorem}\label{thm:found}
335:\label{sec:vN}
339:\begin{definition}[Successor]\label{def:succ}
344:\begin{definition}[Von Neumann naturals]\label{def:vN}
362:\begin{example}\label{ex:58}
377:\begin{proposition}\label{prop:in-equals-subset}
395:\begin{proposition}[Transitivity of naturals]\label{prop:transitive}
415:\begin{theorem}\label{thm:peano-vN}
447:\label{sec:zermelo}
452:\begin{definition}[Zermelo naturals]\label{def:Z}
482:\begin{proposition}[Encoding-relative facts]\label{prop:junk}
545:\begin{proposition}[Existence of $\omega_{\mathrm{Z}}$]\label{prop:omega-Z}
567:\begin{theorem}\label{thm:peano-Z}
591:\begin{theorem}\label{thm:peano-iso}
615:\label{sec:benacerraf}
653:\begin{theorem}[No canonical Peano structure]\label{thm:no-canonical}
704:\label{sec:operations}
714:\begin{theorem}[Recursion on $\omega$]\label{thm:recursion}
733:\begin{definition}[Addition]\label{def:add}
741:\begin{proposition}[Properties of addition]\label{prop:add-props}
784:\begin{definition}[Multiplication]\label{def:mult}
792:\begin{proposition}\label{prop:mult-props}
807:\begin{definition}[Order]\label{def:order}
830:\label{sec:cumulative}
834:\begin{definition}[Cumulative hierarchy]\label{def:Valpha}
845:\begin{theorem}[ZFC sees only $V$]\label{thm:V-is-everything}
858:\begin{proposition}\label{prop:ranks}
883:\begin{theorem}\label{thm:omega-first-limit}
923:\label{fig:hierarchy}
927:\label{sec:representation}
933:\begin{definition}[Successor structure]\label{def:succ-struct}
939:\begin{definition}[Initial Peano structure]\label{def:init-peano}
945:\begin{theorem}[Initiality of $\omega$]\label{thm:initiality}
957:\begin{theorem}[Uniqueness of Peano structures]\label{thm:uniqueness}
970:\begin{corollary}\label{cor:vN-Z-iso}
983:\label{sec:bridge}
1081:\label{sec:haskell}
1181:\label{sec:discussion}
1242:\label{sec:conclusion}
1278:\bibitem{benacerraf1965}
1282:\bibitem{benacerraf1973}
1286:\bibitem{frege1884}
1290:\bibitem{halmos1960}
1294:\bibitem{kunen1980}
1298:\bibitem{lawvere1964}
1302:\bibitem{lawvere1963}
1306:\bibitem{maclane-moerdijk}
1310:\bibitem{mclarty2004}
1314:\bibitem{principia}
1318:\bibitem{shoenfield1967}
1322:\bibitem{shapiro1997}
1326:\bibitem{suppes1960}
1330:\bibitem{vonNeumann1923}
1335:\bibitem{HoTTBook}
1341:\bibitem{zermelo1908}

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error 02-set-theoretic.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
 succeeded in 598ms:

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
(/usr/local/texlive/2026/texmf-dist/tex/latex/enumitem/enumitem.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(./02-set-theoretic.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./02-set-theoretic.out) (./02-set-theoretic.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./02-set-theoretic.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/u
pdmap/pdftex.map}] [2]) [3] [4] [5] [6] [7] [8] [9] [10] [11] [12] [13]
[14] [15] [16] [17{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/
cm-super-ts1.enc}] [18] [19] [20] [21] [22] (./02-set-theoretic.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb><
/usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></us
r/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/
local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/lo
cal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/t
exlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/
texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/t
exlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texliv
e/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/cm-super/sftt1095.pfb>
Output written on 02-set-theoretic.pdf (22 pages, 349013 bytes).
Transcript written on 02-set-theoretic.log.

exec
/usr/local/bin/zsh -lc "nl -ba latex/02-set-theoretic.tex | sed -n '621,1040p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 succeeded in 0ms:
   621	arithmetic via a different set-theoretic encoding (one Zermelo, one von
   622	Neumann). Each child's arithmetic is correct: addition, multiplication, and
   623	order all behave normally. Yet they disagree on whether $3 \in 17$ (true in
   624	von Neumann, false in Zermelo). Benacerraf
   625	argues:
   626	
   627	\begin{enumerate}[label=(\roman*)]
   628	\item Both encodings satisfy the structural conditions we use to identify
   629	``the natural numbers.''
   630	\item Neither has any feature, available within set theory, that privileges
   631	it as ``the truth.''
   632	\item If numbers are sets, then there must be a fact of the matter as to
   633	which sets they are. Since there is no such fact, numbers are not sets.
   634	\end{enumerate}
   635	
   636	The conclusion --- numbers are not sets --- is the central result of the
   637	paper, and it is the negative half of the structuralist thesis. Benacerraf
   638	revisits related epistemological worries about the relationship between
   639	mathematical truth and platonist ontology in \cite{benacerraf1973}; the
   640	mature philosophical articulation of structuralism on the positive side is
   641	due to Shapiro \cite{shapiro1997}. This positive half (numbers are positions
   642	in structures) is what motivates the move to universal properties (Paper 03),
   643	Yoneda (Paper 04), HoTT (Paper 05) --- whose canonical reference is the HoTT
   644	Book \cite{HoTTBook} --- and structural categorical foundations (Paper 06)
   645	in the rest of the series.
   646	
   647	\subsection{Formalization of Benacerraf's argument}
   648	
   649	We can formalize the argument as follows. Let $\mathcal{P}$ denote the
   650	class of all Peano structures (sets $X$ equipped with $0_X \in X$ and
   651	$S_X: X \to X$ satisfying the Peano axioms).
   652	
   653	\begin{theorem}[No canonical Peano structure]\label{thm:no-canonical}
   654	There is no formula $\varphi(X, 0, S)$ in the language of ZFC such that, in
   655	every model of ZFC, $\varphi$ uniquely identifies a Peano structure
   656	$(X, 0, S)$ with the property that any other Peano structure $(Y, 0', S')$
   657	is isomorphic to $(X, 0, S)$ via a unique isomorphism, \emph{and}
   658	$\varphi$ uses no choices of encoding.
   659	\end{theorem}
   660	
   661	\begin{proof}[Sketch]
   662	Any formula $\varphi$ identifying a particular Peano structure must
   663	specify the carrier set, which means committing to a particular extension
   664	inside the cumulative hierarchy. Since there are many extensionally distinct
   665	sets that satisfy any given Peano axiomatization (by the methods of
   666	\Cref{sec:vN} and \Cref{sec:zermelo}), no such formula is encoding-neutral.
   667	The most one can ask of $\varphi$ is that it identifies a Peano structure
   668	\emph{up to isomorphism}, but this is already given by the structural
   669	description of \Cref{sec:representation}, and is precisely what motivates
   670	abandoning set-level identification.
   671	\end{proof}
   672	
   673	\subsection{Junk theorems formalized}
   674	
   675	\begin{definition}[Junk theorem]
   676	Let $T$ be a theory and $E$ an encoding of a structure $(N, 0, S)$ inside
   677	$T$ (i.e.\ a translation of the language of $(N, 0, S)$ into the language of
   678	$T$). A formula $\psi$ in the language of $T$ involving the encoded
   679	constants is a \emph{junk theorem} relative to $E$ if $\psi$ is provable in
   680	$T$ but not invariant under reasonable changes of encoding $E \to E'$.
   681	\end{definition}
   682	
   683	\begin{example}
   684	The formula $\psi := 1 \in 3$ is a junk theorem of ZFC under the von Neumann
   685	encoding: it is provable (since $3_{\mathrm{vN}} = \{0,1,2\}$), but its truth
   686	value is reversed under the Zermelo encoding (since
   687	$3_{\mathrm{Z}} = \{2_{\mathrm{Z}}\}$, and $1_{\mathrm{Z}} = \{\emptyset\}
   688	\neq 2_{\mathrm{Z}}$). By contrast, $\psi := S(2) = 3$ is not a junk theorem:
   689	it holds in every Peano-isomorphic encoding. The membership relation across
   690	non-adjacent ordinals is exactly the kind of fact that is forced by the
   691	encoding rather than by the structure.
   692	\end{example}
   693	
   694	\begin{remark}[Junk vs.\ structural]
   695	A statement is \emph{structural} when its truth value is preserved by every
   696	isomorphism of Peano structures; junk theorems are precisely the
   697	non-structural statements that nevertheless have determinate truth values
   698	once an encoding is fixed. The set-theoretic perspective generates many
   699	junk theorems; the categorical and HoTT perspectives generate none, by
   700	construction.
   701	\end{remark}
   702	
   703	\section{Arithmetic Operations as Recursive Definitions}
   704	\label{sec:operations}
   705	
   706	We now show that the von Neumann encoding supports a full development of
   707	arithmetic. The development is entirely standard; we include it for the
   708	record and to demonstrate concretely that the structural Peano axioms are
   709	\emph{sufficient} (the additional set-theoretic content is not needed).
   710	The same definitions, mutatis mutandis, apply to the Zermelo encoding.
   711	
   712	\subsection{The recursion theorem}
   713	
   714	\begin{theorem}[Recursion on $\omega$]\label{thm:recursion}
   715	Let $X$ be any set, $a \in X$ a base point, and $g: X \to X$ a function.
   716	Then there is a unique function $f: \omega \to X$ satisfying
   717	\begin{align}
   718	f(0) &= a, \\
   719	f(n^+) &= g(f(n)) \quad \text{for all } n \in \omega.
   720	\end{align}
   721	\end{theorem}
   722	
   723	\begin{proof}[Proof sketch]
   724	Define $f$ as the union of all finite \emph{attempts} --- functions
   725	$h: m \to X$ with $m \in \omega$ satisfying the recursion equations on
   726	their domain. Replacement and Separation guarantee that the union of all
   727	attempts is a set; induction guarantees that $f$ is well-defined and
   728	total on $\omega$.
   729	\end{proof}
   730	
   731	\subsection{Addition}
   732	
   733	\begin{definition}[Addition]\label{def:add}
   734	For $m \in \omega$, define $m + (\cdot) : \omega \to \omega$ by recursion:
   735	\begin{align}
   736	m + 0 &:= m, \\
   737	m + n^+ &:= (m + n)^+.
   738	\end{align}
   739	\end{definition}
   740	
   741	\begin{proposition}[Properties of addition]\label{prop:add-props}
   742	For all $m, n, k \in \omega$:
   743	\begin{enumerate}
   744	\item $0 + n = n$ (left identity).
   745	\item $(m + n) + k = m + (n + k)$ (associativity).
   746	\item $m + n = n + m$ (commutativity).
   747	\end{enumerate}
   748	\end{proposition}
   749	
   750	\begin{proof}
   751	\textbf{(1)} Induct on $n$. Base: $0 + 0 = 0$. Step: assume $0 + n = n$;
   752	then $0 + n^+ = (0 + n)^+ = n^+$.
   753	
   754	\textbf{(2)} Induct on $k$. Base: $(m+n) + 0 = m + n = m + (n + 0)$. Step:
   755	$(m+n) + k^+ = ((m+n) + k)^+ = (m + (n+k))^+ = m + (n+k)^+ = m + (n + k^+)$.
   756	
   757	\textbf{(3)} Commutativity is the deepest of the three properties; it
   758	requires a nested double induction. We prove it by establishing two
   759	auxiliary lemmas first.
   760	
   761	\emph{Lemma A: $0 + n = n + 0 = n$.} The right equation is
   762	\Cref{def:add}; the left is part (1).
   763	
   764	\emph{Lemma B: $m^+ + n = (m + n)^+$.} Induct on $n$. Base:
   765	$m^+ + 0 = m^+ = (m + 0)^+$. Step: assuming $m^+ + n = (m + n)^+$,
   766	\[
   767	m^+ + n^+ = (m^+ + n)^+ = ((m+n)^+)^+ = (m + n^+)^+,
   768	\]
   769	where the last step uses \Cref{def:add}.
   770	
   771	\emph{Main induction (on $n$).} Base ($n = 0$): $m + 0 = m = 0 + m$ by Lemma A.
   772	
   773	Step: assume $m + n = n + m$ for all $m$. Then for any fixed $m$,
   774	\begin{align*}
   775	m + n^+ &= (m + n)^+ &&\text{(\Cref{def:add})} \\
   776	        &= (n + m)^+ &&\text{(inductive hypothesis)} \\
   777	        &= n^+ + m &&\text{(Lemma B with $m, n$ swapped)},
   778	\end{align*}
   779	which establishes $m + n^+ = n^+ + m$ and completes the induction on $n$.
   780	\end{proof}
   781	
   782	\subsection{Multiplication}
   783	
   784	\begin{definition}[Multiplication]\label{def:mult}
   785	For $m \in \omega$, define $m \cdot (\cdot): \omega \to \omega$ by:
   786	\begin{align}
   787	m \cdot 0 &:= 0, \\
   788	m \cdot n^+ &:= m \cdot n + m.
   789	\end{align}
   790	\end{definition}
   791	
   792	\begin{proposition}\label{prop:mult-props}
   793	Multiplication is associative, commutative, has $1 := 0^+$ as a two-sided
   794	identity, and distributes over addition.
   795	\end{proposition}
   796	
   797	\begin{proof}
   798	Standard inductions on $\omega$, parallel to those for addition. The
   799	distributivity proof goes by induction on the right argument:
   800	$m \cdot (n + 0) = m \cdot n = m \cdot n + 0 = m \cdot n + m \cdot 0$,
   801	and $m \cdot (n + k^+) = m \cdot (n + k)^+ = m \cdot (n+k) + m =
   802	m \cdot n + m \cdot k + m = m \cdot n + m \cdot k^+$.
   803	\end{proof}
   804	
   805	\subsection{Order}
   806	
   807	\begin{definition}[Order]\label{def:order}
   808	For $m, n \in \omega$, write $m < n$ iff $m \in n$, and $m \leq n$ iff
   809	$m \in n \vee m = n$.
   810	\end{definition}
   811	
   812	\begin{remark}
   813	This definition is encoding-specific: it works directly for von Neumann.
   814	For Zermelo, one defines $m <_{\mathrm{Z}} n$ iff $m \in_T n$ where $\in_T$ is
   815	the transitive closure of $\in$. Equivalently and more cleanly, define
   816	$m < n$ iff there exists $k > 0$ with $m + k = n$, which is structural.
   817	\end{remark}
   818	
   819	\begin{proposition}[Linearity]
   820	$<$ is a strict total order on $\omega$.
   821	\end{proposition}
   822	
   823	\begin{proof}
   824	Trichotomy is by induction. Transitivity follows from \Cref{prop:transitive}:
   825	if $m \in n$ and $n \in k$, then $n \subseteq k$ by transitivity of $k$, so
   826	$m \in k$. Irreflexivity is Foundation.
   827	\end{proof}
   828	
   829	\section{The Cumulative Hierarchy}
   830	\label{sec:cumulative}
   831	
   832	\subsection{Definition by transfinite recursion}
   833	
   834	\begin{definition}[Cumulative hierarchy]\label{def:Valpha}
   835	By transfinite recursion on the class of ordinals $\mathrm{Ord}$, define
   836	\begin{align}
   837	V_0 &:= \emptyset, \\
   838	V_{\alpha+1} &:= \mathcal{P}(V_\alpha), \\
   839	V_\lambda &:= \bigcup_{\beta < \lambda} V_\beta \quad (\lambda \text{ limit}).
   840	\end{align}
   841	The class $V := \bigcup_{\alpha \in \mathrm{Ord}} V_\alpha$ is the
   842	\emph{universe of sets}.
   843	\end{definition}
   844	
   845	\begin{theorem}[ZFC sees only $V$]\label{thm:V-is-everything}
   846	In ZFC, every set $x$ belongs to some $V_\alpha$. Hence $V = \mathrm{Universe}$.
   847	\end{theorem}
   848	
   849	\begin{proof}[Sketch]
   850	Define the rank function $\mathrm{rk}: V \to \mathrm{Ord}$ by transfinite
   851	recursion: $\mathrm{rk}(x) := \sup\{\mathrm{rk}(y) + 1 : y \in x\}$.
   852	Foundation guarantees this recursion terminates. Then
   853	$x \in V_{\mathrm{rk}(x) + 1}$.
   854	\end{proof}
   855	
   856	\subsection{Ranks of natural numbers}
   857	
   858	\begin{proposition}\label{prop:ranks}
   859	For each $n \in \omega$:
   860	\begin{enumerate}
   861	\item $\mathrm{rk}(n_{\mathrm{vN}}) = n$.
   862	\item $\mathrm{rk}(n_{\mathrm{Z}}) = n$.
   863	\end{enumerate}
   864	\end{proposition}
   865	
   866	\begin{proof}
   867	For von Neumann: $\mathrm{rk}(0) = 0$, and inductively
   868	$\mathrm{rk}(n^+) = \sup\{\mathrm{rk}(k) + 1 : k \in n^+\} = \sup\{k+1 : k \leq n\} = n+1$.
   869	
   870	For Zermelo: $\mathrm{rk}(\{n_{\mathrm{Z}}\}) = \mathrm{rk}(n_{\mathrm{Z}}) + 1$, and
   871	the result follows by induction.
   872	\end{proof}
   873	
   874	\begin{remark}
   875	Both encodings produce naturals at the same rank in $V$, but they live at
   876	\emph{different positions} within $V_{n+1}$. Von Neumann's $n$ is the
   877	``flat'' set $\{0,1,\ldots,n-1\}$; Zermelo's is the ``tall thin'' nested
   878	singleton.
   879	\end{remark}
   880	
   881	\subsection{\texorpdfstring{$\omega$}{omega} as the first limit ordinal}
   882	
   883	\begin{theorem}\label{thm:omega-first-limit}
   884	$\omega \in V_{\omega+1}$ but $\omega \notin V_\omega$. The set $\omega$
   885	is the smallest infinite ordinal: the first ordinal that is not a successor.
   886	\end{theorem}
   887	
   888	\begin{proof}
   889	$\omega = \bigcup_{n \in \omega} n$, so each $n \in V_n \subseteq V_\omega$,
   890	hence $\omega \subseteq V_\omega$ and $\omega \in V_{\omega+1}$. To see
   891	$\omega \notin V_\omega$: every element of $V_\omega$ has finite rank, and
   892	$\mathrm{rk}(\omega) = \omega$.
   893	\end{proof}
   894	
   895	\subsection{Visualizing the hierarchy}
   896	
   897	\begin{figure}[ht]
   898	\centering
   899	\begin{tikzpicture}[scale=0.9]
   900	% V_alpha levels (rungs)
   901	\foreach \name/\h in {V_0/0, V_1/1, V_2/2, V_3/3, V_4/4, V_\omega/5.5, V_{\omega+1}/6.5} {
   902	  \draw[thick] (-4, \h) -- (4, \h);
   903	  \node[anchor=west] at (4.1, \h) {$\name$};
   904	}
   905	
   906	% Mid-rung labels: each number lives in V_{n+1}, so we place it midway
   907	% between V_n and V_{n+1}.
   908	\node at (0, 0.5) {$0 = \emptyset$};
   909	\node at (0, 1.5) {$1 = \{\emptyset\}$};
   910	\node at (0, 2.5) {$2 = \{0,1\}$};
   911	\node at (0, 3.5) {$3 = \{0,1,2\}$};
   912	\node at (0, 4.5) {$4 = \{0,1,2,3\}$};
   913	\node at (0, 4.95) {$\vdots$};
   914	\node at (0, 6.0) {$\omega = \{0,1,2,\ldots\}$};
   915	
   916	% Vertical guide for the "successor builds upward" intuition
   917	\draw[->, thick, gray] (-2.5, 0.5) -- (-2.5, 4.5)
   918	   node[midway, left, gray] {$x \mapsto x \cup \{x\}$};
   919	\end{tikzpicture}
   920	\caption{The cumulative hierarchy $V_\alpha$. Each natural number $n$ first
   921	appears at level $V_{n+1}$. The set $\omega$ first appears at level
   922	$V_{\omega+1}$.}
   923	\label{fig:hierarchy}
   924	\end{figure}
   925	
   926	\section{A Representation Theorem}
   927	\label{sec:representation}
   928	
   929	We extract from the foregoing the following algebraic statement, which
   930	expresses the structural fact that all encodings of the natural numbers
   931	are mutually isomorphic.
   932	
   933	\begin{definition}[Successor structure]\label{def:succ-struct}
   934	A \emph{successor structure} is a triple $(X, x_0, s)$ where $X$ is a set,
   935	$x_0 \in X$, and $s: X \to X$. A morphism $(X, x_0, s) \to (Y, y_0, t)$
   936	is a function $f: X \to Y$ with $f(x_0) = y_0$ and $f \circ s = t \circ f$.
   937	\end{definition}
   938	
   939	\begin{definition}[Initial Peano structure]\label{def:init-peano}
   940	A successor structure $(N, 0, S)$ is \emph{initial} (or a \emph{Peano
   941	structure}) when, for every successor structure $(X, x_0, s)$, there exists
   942	a unique morphism $h: (N, 0, S) \to (X, x_0, s)$.
   943	\end{definition}
   944	
   945	\begin{theorem}[Initiality of $\omega$]\label{thm:initiality}
   946	$(\omega, 0_{\mathrm{vN}}, (\cdot)^+)$ is an initial Peano structure.
   947	Equivalently: for every set $X$, every $a \in X$, and every $g: X \to X$,
   948	there is a unique $f: \omega \to X$ with $f(0) = a$ and $f(n^+) = g(f(n))$.
   949	This $f$ is the recursion theorem (\Cref{thm:recursion}).
   950	\end{theorem}
   951	
   952	\begin{proof}
   953	This is precisely the recursion theorem, recast as initiality. Existence is
   954	by recursion on $\omega$; uniqueness is by induction.
   955	\end{proof}
   956	
   957	\begin{theorem}[Uniqueness of Peano structures]\label{thm:uniqueness}
   958	If $(N, 0, S)$ and $(N', 0', S')$ are both initial Peano structures, then
   959	there is a unique isomorphism between them.
   960	\end{theorem}
   961	
   962	\begin{proof}
   963	Universal property: by initiality of $(N, 0, S)$, there is a unique
   964	$h: N \to N'$. By initiality of $(N', 0', S')$, there is a unique
   965	$h': N' \to N$. The composites $h' \circ h$ and $h \circ h'$ are
   966	endomorphisms of an initial structure, hence equal to the identity by
   967	uniqueness.
   968	\end{proof}
   969	
   970	\begin{corollary}\label{cor:vN-Z-iso}
   971	The von Neumann and Zermelo successor structures are isomorphic via a unique
   972	isomorphism, namely $\Phi$ of \Cref{thm:peano-iso}.
   973	\end{corollary}
   974	
   975	This is the structural content that survives Benacerraf's critique. Both
   976	encodings are initial Peano structures; they are therefore canonically
   977	identified at the structural level. What differs is the
   978	encoding-specific data: cardinalities of the carrier sets at each level,
   979	membership relations, etc. The structural mathematics survives; the
   980	junk does not.
   981	
   982	\section{Bridge to Structuralism}
   983	\label{sec:bridge}
   984	
   985	\subsection{Reading the structuralist response}
   986	
   987	The standard structuralist response to Benacerraf is to assert that
   988	``numbers are positions in structures, not particular objects.'' Within
   989	the set-theoretic perspective alone, this assertion is hard to formalize:
   990	the structuralist seems to be invoking abstract structures that are not
   991	themselves sets.
   992	
   993	What Paper 03 will show is that the universal property of an initial
   994	Peano structure is precisely the structuralist content the response was
   995	gesturing at. \Cref{thm:initiality,thm:uniqueness} together say:
   996	
   997	\begin{quote}
   998	There is a structure (the initial successor structure), unique up to unique
   999	isomorphism, defined entirely by its relationships with all other successor
  1000	structures. This structure can be \emph{implemented} in many ways inside
  1001	ZFC; no implementation is canonical, but every implementation is
  1002	equivalent to every other in the only way that matters --- via the
  1003	universal mapping property.
  1004	\end{quote}
  1005	
  1006	\subsection{The set-theoretic perspective relocated}
  1007	
  1008	We can therefore retract the temptation to read the von Neumann encoding
  1009	as ontology. The set-theoretic perspective is best understood as
  1010	\emph{realizing} or \emph{instantiating} a structural specification, not
  1011	as defining what the natural numbers \emph{are}. The number $58$ is not
  1012	the set $\{0,1,\ldots,57\}$; rather, the set $\{0,1,\ldots,57\}$ is one
  1013	particular ZFC-implementation of the position $58$ inside the abstract
  1014	initial successor structure.
  1015	
  1016	\subsection{What set theory still gets right}
  1017	
  1018	Despite Benacerraf's critique, the set-theoretic perspective is not
  1019	worthless. It contributes:
  1020	
  1021	\begin{itemize}
  1022	\item \textbf{Existence.} Without an existence proof, the universal property
  1023	of \Cref{def:init-peano} is mere stipulation. Set theory shows that an
  1024	initial Peano structure exists (the axiom of infinity gives one), so the
  1025	specification is not vacuous.
  1026	
  1027	\item \textbf{A working metatheory.} ZFC is rich enough to prove the
  1028	recursion theorem, define addition and multiplication, prove the soundness
  1029	of induction, and develop most of ordinary mathematics. The structural
  1030	specification needs a host theory; ZFC is one (other choices: ETCS, IZF,
  1031	HoTT itself).
  1032	
  1033	\item \textbf{Cumulative hierarchy as a model of well-foundedness.} The
  1034	$V_\alpha$ stratification, while encoding-relative in detail, captures the
  1035	genuine structural fact that any well-founded iteration of \emph{some}
  1036	generative operation eventually exhausts what can be reached.
  1037	
  1038	\item \textbf{Decidable arithmetic.} The recursive definitions of $+$,
  1039	$\cdot$, and $<$ are decidable; the resulting theory of arithmetic is
  1040	$\Sigma_1$-complete and useful in practice.

exec
/usr/local/bin/zsh -lc "nl -ba latex/02-set-theoretic.tex | sed -n '1041,1347p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic
 succeeded in 0ms:
  1041	\end{itemize}
  1042	
  1043	\subsection{What set theory misses}
  1044	
  1045	\begin{itemize}
  1046	\item \textbf{Structural identity.} Set-theoretic equality is extensional:
  1047	two sets are equal iff they have the same elements. There is no native
  1048	notion of ``equal as Peano structures'' inside ZFC; isomorphism must be
  1049	defined externally and tracked manually.
  1050	
  1051	\item \textbf{Encoding-independence.} As shown, the set-theoretic statement
  1052	``$2 \in 3$'' is encoding-relative. The structural statement ``$\mathrm{succ}(\mathrm{succ}(0)) < \mathrm{succ}^3(0)$'' is not.
  1053	
  1054	\item \textbf{Universal properties as theorems, not metatheorems.} In
  1055	ZFC, ``$\omega$ is initial'' is a theorem, but the very statement of
  1056	initiality requires quantifying over class-many successor structures
  1057	(properly handled, but unwieldy). In a categorical or type-theoretic
  1058	foundation, the universal property is the \emph{definition} and the
  1059	existence/uniqueness are immediate consequences.
  1060	
  1061	\item \textbf{Univalence.} ZFC has no analog of the univalence axiom of
  1062	HoTT; it cannot internalize ``isomorphic structures are the same'' as a
  1063	theorem of the system. The closest one comes is to work systematically
  1064	``up to isomorphism,'' which is a metatheoretic discipline rather than
  1065	a feature of the formalism.
  1066	\end{itemize}
  1067	
  1068	\subsection{Forward to Paper 03}
  1069	
  1070	The next paper in the series develops the universal-property level
  1071	explicitly: a Natural Number Object in any category with a terminal object,
  1072	the categorical NNO, the relationship between NNO and induction, and the
  1073	extraction of arithmetic operations from initiality alone. The bridge from
  1074	this paper to the next is precisely the move from
  1075	\Cref{thm:initiality}'s ``$\omega$ is initial in $\mathbf{Set}^{\bullet,\to}$''
  1076	to the encoding-free formulation
  1077	``$N$ is initial in any category $\mathcal{C}^{\bullet,\to}$ with a terminal
  1078	object.''
  1079	
  1080	\section{Haskell Implementation}
  1081	\label{sec:haskell}
  1082	
  1083	The accompanying Haskell code (\texttt{src/02-set-theoretic/}) implements
  1084	both encodings, defines a common Peano interface they both satisfy, and
  1085	provides a converter realizing the canonical isomorphism $\Phi$ of
  1086	\Cref{thm:peano-iso}.
  1087	
  1088	\subsection{The hereditarily finite set type}
  1089	
  1090	We model pure sets as a recursive datatype:
  1091	
  1092	\begin{lstlisting}
  1093	-- A finite set built recursively from the empty set.
  1094	-- Extensional equality is enforced in the Eq instance by sorting
  1095	-- and deduplicating the underlying list before comparison; a
  1096	-- canonical-form helper (omitted here) makes this efficient.
  1097	newtype HFSet = HFSet { elements :: [HFSet] }
  1098	  deriving (Show)
  1099	
  1100	instance Ord HFSet where
  1101	  compare (HFSet xs) (HFSet ys) =
  1102	    compare (sort xs) (sort ys)
  1103	
  1104	instance Eq HFSet where
  1105	  HFSet xs == HFSet ys = sort xs == sort ys
  1106	
  1107	emptySet :: HFSet
  1108	emptySet = HFSet []
  1109	\end{lstlisting}
  1110	
  1111	\subsection{Von Neumann encoding}
  1112	
  1113	\begin{lstlisting}
  1114	-- Successor: x |-> x \cup {x}
  1115	vnSucc :: HFSet -> HFSet
  1116	vnSucc x = HFSet (elements x ++ [x])
  1117	
  1118	vnEncode :: Int -> HFSet
  1119	vnEncode 0 = emptySet
  1120	vnEncode n = vnSucc (vnEncode (n - 1))
  1121	\end{lstlisting}
  1122	
  1123	\subsection{Zermelo encoding}
  1124	
  1125	\begin{lstlisting}
  1126	-- Successor: x |-> {x}
  1127	zSucc :: HFSet -> HFSet
  1128	zSucc x = HFSet [x]
  1129	
  1130	zEncode :: Int -> HFSet
  1131	zEncode 0 = emptySet
  1132	zEncode n = zSucc (zEncode (n - 1))
  1133	\end{lstlisting}
  1134	
  1135	\subsection{The Peano interface}
  1136	
  1137	A typeclass captures the structural specification independent of either
  1138	encoding:
  1139	
  1140	\begin{lstlisting}
  1141	class Peano a where
  1142	  zero :: a
  1143	  suc  :: a -> a
  1144	  isZero :: a -> Bool
  1145	  pred_ :: a -> Maybe a   -- partial; (-) on naturals is partial
  1146	
  1147	instance Peano HFSet where
  1148	  -- These instances need to be coupled with a tagged type to
  1149	  -- disambiguate vN vs Zermelo; see VNNat and ZNat in the source.
  1150	\end{lstlisting}
  1151	
  1152	The full source disambiguates by tagging: \texttt{newtype VNNat = VNNat HFSet}
  1153	and \texttt{newtype ZNat = ZNat HFSet}, each with its own \texttt{Peano} instance.
  1154	The main demonstration in \texttt{Main.hs} computes both encodings of
  1155	$0,1,\ldots,5$, prints them, verifies the Peano axioms by construction (e.g.\
  1156	$\mathrm{succ}(m) = \mathrm{succ}(n) \implies m = n$ via injectivity of the
  1157	constructor), and applies the canonical isomorphism to convert between them.
  1158	
  1159	\subsection{Junk theorems made explicit}
  1160	
  1161	The Haskell code also includes a function that demonstrates a junk theorem
  1162	empirically:
  1163	
  1164	\begin{lstlisting}
  1165	-- Demonstrate that "1 in 3" depends on encoding.
  1166	junkTheorem :: IO ()
  1167	junkTheorem = do
  1168	  let one_vN  = vnEncode 1; three_vN = vnEncode 3
  1169	  let one_Z   = zEncode  1; three_Z  = zEncode  3
  1170	  putStrLn $ "vN: 1 in 3 = " ++ show (one_vN `inVN` three_vN)
  1171	  putStrLn $ "Z:  1 in 3 = " ++ show (one_Z  `inZ`  three_Z)
  1172	  -- Output:
  1173	  --   vN: 1 in 3 = True   (since 3_vN = {0,1,2})
  1174	  --   Z:  1 in 3 = False  (since 3_Z  = {2}; only 2 is in it)
  1175	\end{lstlisting}
  1176	
  1177	This program is a working witness that the encoding is genuinely choosing
  1178	between distinct sets, not merely between distinct notations.
  1179	
  1180	\section{Discussion}
  1181	\label{sec:discussion}
  1182	
  1183	\subsection{Comparison with logicism and constructivism}
  1184	
  1185	The set-theoretic foundationalism we have presented is closer to
  1186	Russell--Whitehead's logicist program than to a strict constructivism.
  1187	The naturals are obtained by an unbounded inductive process whose existence
  1188	is asserted by an axiom (Infinity). This is not predicatively justified
  1189	in a strict sense (the inductive set is defined as the intersection of
  1190	\emph{all} inductive sets, a quantification over a complete totality), but
  1191	it is mainstream classical mathematics.
  1192	
  1193	Constructive alternatives --- IZF, CZF, Martin-L\"of type theory --- avoid
  1194	this by treating $\mathbb{N}$ as primitive (an inductive type) rather than
  1195	as a derived set. Paper 05 treats this perspective via HoTT.
  1196	
  1197	\subsection{Comparison with categorical foundations}
  1198	
  1199	Lawvere's Elementary Theory of the Category of Sets (ETCS,
  1200	\cite{lawvere1964}) gives a categorical axiomatization of the category
  1201	$\mathbf{Set}$ that is bi-interpretable with bounded Zermelo set theory
  1202	plus replacement (McLarty \cite{mclarty2004}). In ETCS, the natural number
  1203	object is specified by its universal property (Paper 03's level), not by a
  1204	particular encoding. ETCS is therefore structurally cleaner than ZFC for
  1205	foundational purposes, while equally adequate for ordinary mathematics. The
  1206	underlying functorial-semantics machinery is developed in Lawvere
  1207	\cite{lawvere1963}, and the broader topos-theoretic context is treated by
  1208	Mac Lane and Moerdijk \cite{maclane-moerdijk}.
  1209	
  1210	\subsection{Limitations of this paper}
  1211	
  1212	We have not discussed:
  1213	\begin{itemize}
  1214	\item \emph{Large cardinal hypotheses.} Inaccessible, measurable, etc.
  1215	cardinals refine the cumulative hierarchy beyond the ordinals reachable
  1216	in vanilla ZFC. They are foundational for set theory but tangential to
  1217	the natural-numbers question.
  1218	
  1219	\item \emph{The constructible universe $L$.} G\"odel's inner model
  1220	exhibits a minimal model of ZFC; the natural numbers are the same in $L$
  1221	as in $V$, so this is not pertinent.
  1222	
  1223	\item \emph{Forcing.} Independence results do not affect our development.
  1224	
  1225	\item \emph{Alternative set theories.} NF (Quine), KP (Kripke--Platek),
  1226	and other systems give variant encodings; we have considered only ZFC.
  1227	\end{itemize}
  1228	
  1229	\subsection{What this paper has accomplished}
  1230	
  1231	We have presented two distinct set-theoretic encodings of the natural
  1232	numbers (von Neumann ordinals and Zermelo nested singletons), shown that
  1233	both satisfy the Peano axioms, and identified the encoding-relative facts
  1234	(``junk theorems'') that distinguish them. We have located the natural
  1235	numbers in the cumulative hierarchy and proven a representation theorem
  1236	identifying all initial Peano structures up to unique isomorphism. We have
  1237	described the structuralist response (numbers are positions, not sets)
  1238	and pointed forward to the universal-property and HoTT formulations of
  1239	that response.
  1240	
  1241	\section{Conclusion}
  1242	\label{sec:conclusion}
  1243	
  1244	The set-theoretic perspective gives us $\omega$ via the axiom of infinity
  1245	and the recursive successor $x \mapsto x \cup \{x\}$. It supports a full
  1246	arithmetic, fits cleanly into the cumulative hierarchy, and makes the
  1247	natural numbers concrete: the number $58$ \emph{is} the set $\{0,1,\ldots,57\}$
  1248	--- in the von Neumann encoding.
  1249	
  1250	But the qualifier ``in the von Neumann encoding'' is fatal to the
  1251	foundationalist ambition. Zermelo's encoding is equally valid; so is the
  1252	Peano-axiomatic specification with no encoding at all; and so are the
  1253	many other encodings one could devise. Each gives a working arithmetic
  1254	that satisfies the Peano axioms, but each disagrees with the others on
  1255	internal questions about element-of, cardinality, and rank. These
  1256	disagreements are not pathologies; they are evidence that no encoding
  1257	gives \emph{the} natural numbers --- only one realization of them.
  1258	
  1259	What we have learned is that the natural numbers are characterized
  1260	structurally, not extensionally. This characterization is the universal
  1261	property of an initial Peano structure (\Cref{def:init-peano}), and its
  1262	sharpening into the categorical Natural Number Object will occupy
  1263	Paper 03. The set-theoretic perspective remains useful as a metatheory
  1264	and an existence proof, but the identity of the natural numbers
  1265	themselves lives at one level of abstraction higher.
  1266	
  1267	\subsection*{Acknowledgments}
  1268	
  1269	This paper is part of the YonedaAI Univalent Correspondence series. The
  1270	series approaches a single mathematical object --- the natural numbers ---
  1271	through six distinct lenses, and shows in the synthesis volume that under
  1272	the univalence axiom, all six perspectives become literally the same
  1273	mathematical content rather than analogous content. We thank the
  1274	anonymous referees of the series for sharpening many arguments.
  1275	
  1276	\begin{thebibliography}{99}
  1277	
  1278	\bibitem{benacerraf1965}
  1279	P.~Benacerraf, ``What Numbers Could Not Be,''
  1280	\emph{The Philosophical Review}, vol. 74, no. 1, pp. 47--73, 1965.
  1281	
  1282	\bibitem{benacerraf1973}
  1283	P.~Benacerraf, ``Mathematical Truth,''
  1284	\emph{The Journal of Philosophy}, vol. 70, no. 19, pp. 661--679, 1973.
  1285	
  1286	\bibitem{frege1884}
  1287	G.~Frege, \emph{Die Grundlagen der Arithmetik},
  1288	W. Koebner, Breslau, 1884.
  1289	
  1290	\bibitem{halmos1960}
  1291	P.~Halmos, \emph{Naive Set Theory},
  1292	Van Nostrand, 1960.
  1293	
  1294	\bibitem{kunen1980}
  1295	K.~Kunen, \emph{Set Theory: An Introduction to Independence Proofs},
  1296	North-Holland, 1980.
  1297	
  1298	\bibitem{lawvere1964}
  1299	F. W.~Lawvere, ``An Elementary Theory of the Category of Sets,''
  1300	\emph{Proc. Nat. Acad. Sci. USA}, vol. 52, pp. 1506--1511, 1964.
  1301	
  1302	\bibitem{lawvere1963}
  1303	F. W.~Lawvere, ``Functorial Semantics of Algebraic Theories,''
  1304	PhD thesis, Columbia University, 1963.
  1305	
  1306	\bibitem{maclane-moerdijk}
  1307	S.~Mac Lane and I.~Moerdijk, \emph{Sheaves in Geometry and Logic},
  1308	Springer, 1992.
  1309	
  1310	\bibitem{mclarty2004}
  1311	C.~McLarty, ``Exploring Categorical Structuralism,''
  1312	\emph{Philosophia Mathematica}, vol. 12, no. 1, pp. 37--53, 2004.
  1313	
  1314	\bibitem{principia}
  1315	A. N.~Whitehead and B.~Russell, \emph{Principia Mathematica}, Cambridge
  1316	University Press, 1910--1913.
  1317	
  1318	\bibitem{shoenfield1967}
  1319	J. R.~Shoenfield, \emph{Mathematical Logic},
  1320	Addison-Wesley, 1967.
  1321	
  1322	\bibitem{shapiro1997}
  1323	S.~Shapiro, \emph{Philosophy of Mathematics: Structure and Ontology},
  1324	Oxford University Press, 1997.
  1325	
  1326	\bibitem{suppes1960}
  1327	P.~Suppes, \emph{Axiomatic Set Theory},
  1328	Van Nostrand, 1960.
  1329	
  1330	\bibitem{vonNeumann1923}
  1331	J.~von Neumann, ``Zur Einf\"uhrung der transfiniten Zahlen,''
  1332	\emph{Acta litt. ac scient. Reg. Univ. Hung. Francisco-Josephinae},
  1333	sectio sci. math., vol. 1, pp. 199--208, 1923.
  1334	
  1335	\bibitem{HoTTBook}
  1336	The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent
  1337	Foundations of Mathematics}, Institute for Advanced Study, 2013.
  1338	\href{https://homotopytypetheory.org/book}{homotopytypetheory.org/book}.
  1339	arXiv:1308.0729.
  1340	
  1341	\bibitem{zermelo1908}
  1342	E.~Zermelo, ``Untersuchungen \"uber die Grundlagen der Mengenlehre I,''
  1343	\emph{Math. Ann.}, vol. 65, pp. 261--281, 1908.
  1344	
  1345	\end{thebibliography}
  1346	
  1347	\end{document}

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error 02-set-theoretic.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
 succeeded in 600ms:
))
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/enumitem/enumitem.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(./02-set-theoretic.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./02-set-theoretic.out) (./02-set-theoretic.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./02-set-theoretic.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/u
pdmap/pdftex.map}] [2]) [3] [4] [5] [6] [7] [8] [9] [10] [11] [12] [13]
[14] [15] [16] [17{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/
cm-super-ts1.enc}] [18] [19] [20] [21] [22] (./02-set-theoretic.aux) )</usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/
texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/t
exlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/cm-super/sftt1095.pfb>
Output written on 02-set-theoretic.pdf (22 pages, 349020 bytes).
Transcript written on 02-set-theoretic.log.

codex
The second `pdflatex` pass completed and produced a 22-page PDF. I’m doing the final log scan now for the specific blocker classes you named, including hidden undefined-reference and overfull diagnostics.
exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|Undefined|undefined|Citation|Reference|Label'"\\(s\\)|Rerun|Overfull|Underfull|Missing|not found|Emergency stop|Fatal|Error|Warning)\" 02-set-theoretic.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
 succeeded in 0ms:
574:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
622:Package everypage Warning: Functionality similar to this package has recently
628:Package everypage Warning: You appear to be running a version of LaTeX

exec
/usr/local/bin/zsh -lc 'rg -n "''^'"\\\\\\w+|bibcite|newlabel\" 02-set-theoretic.aux | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
 succeeded in 0ms:
15:\newlabel{sec:intro}{{1}{4}{Introduction}{section.1}{}}
16:\newlabel{sec:intro@cref}{{[section][1][]1}{[1][4][]4}{}{}{}}
21:\newlabel{sec:zfc}{{2}{5}{Mathematical Framework: ZFC Reviewed}{section.2}{}}
22:\newlabel{sec:zfc@cref}{{[section][2][]2}{[1][5][]5}{}{}{}}
24:\newlabel{def:zfc}{{2.1}{5}{ZFC}{theorem.2.1}{}}
25:\newlabel{def:zfc@cref}{{[theorem][1][2]2.1}{[1][5][]5}{}{}{}}
27:\newlabel{prop:omega}{{2.4}{6}{Existence of $\omega $}{theorem.2.4}{}}
28:\newlabel{prop:omega@cref}{{[theorem][4][2]2.4}{[1][6][]6}{}{}{}}
31:\newlabel{thm:found}{{2.7}{6}{}{theorem.2.7}{}}
32:\newlabel{thm:found@cref}{{[theorem][7][2]2.7}{[1][6][]6}{}{}{}}
34:\newlabel{sec:vN}{{3}{7}{The von Neumann Encoding}{section.3}{}}
35:\newlabel{sec:vN@cref}{{[section][3][]3}{[1][6][]7}{}{}{}}
37:\newlabel{def:succ}{{3.1}{7}{Successor}{theorem.3.1}{}}
38:\newlabel{def:succ@cref}{{[theorem][1][3]3.1}{[1][6][]7}{}{}{}}
39:\newlabel{def:vN}{{3.2}{7}{Von Neumann naturals}{theorem.3.2}{}}
40:\newlabel{def:vN@cref}{{[theorem][2][3]3.2}{[1][7][]7}{}{}{}}
41:\newlabel{ex:58}{{3.3}{7}{}{theorem.3.3}{}}
42:\newlabel{ex:58@cref}{{[theorem][3][3]3.3}{[1][7][]7}{}{}{}}
44:\newlabel{prop:in-equals-subset}{{3.4}{7}{}{theorem.3.4}{}}
45:\newlabel{prop:in-equals-subset@cref}{{[theorem][4][3]3.4}{[1][7][]7}{}{}{}}
46:\newlabel{prop:transitive}{{3.5}{7}{Transitivity of naturals}{theorem.3.5}{}}
47:\newlabel{prop:transitive@cref}{{[theorem][5][3]3.5}{[1][7][]7}{}{}{}}
50:\newlabel{thm:peano-vN}{{3.7}{8}{}{theorem.3.7}{}}
51:\newlabel{thm:peano-vN@cref}{{[theorem][7][3]3.7}{[1][8][]8}{}{}{}}
53:\newlabel{sec:zermelo}{{4}{8}{Zermelo's Encoding}{section.4}{}}
54:\newlabel{sec:zermelo@cref}{{[section][4][]4}{[1][8][]8}{}{}{}}
55:\newlabel{def:Z}{{4.1}{8}{Zermelo naturals}{theorem.4.1}{}}
56:\newlabel{def:Z@cref}{{[theorem][1][4]4.1}{[1][8][]8}{}{}{}}
58:\newlabel{prop:junk}{{4.3}{9}{Encoding-relative facts}{theorem.4.3}{}}
59:\newlabel{prop:junk@cref}{{[theorem][3][4]4.3}{[1][9][]9}{}{}{}}
61:\newlabel{prop:omega-Z}{{4.6}{10}{Existence of $\omega _{\mathrm {Z}}$}{theorem.4.6}{}}
62:\newlabel{prop:omega-Z@cref}{{[theorem][6][4]4.6}{[1][10][]10}{}{}{}}
63:\newlabel{thm:peano-Z}{{4.7}{10}{}{theorem.4.7}{}}
64:\newlabel{thm:peano-Z@cref}{{[theorem][7][4]4.7}{[1][10][]10}{}{}{}}
70:\newlabel{thm:peano-iso}{{4.8}{11}{}{theorem.4.8}{}}
71:\newlabel{thm:peano-iso@cref}{{[theorem][8][4]4.8}{[1][10][]11}{}{}{}}
73:\newlabel{sec:benacerraf}{{5}{11}{Benacerraf and the Identification Problem}{section.5}{}}
74:\newlabel{sec:benacerraf@cref}{{[section][5][]5}{[1][11][]11}{}{}{}}
77:\newlabel{thm:no-canonical}{{5.1}{12}{No canonical Peano structure}{theorem.5.1}{}}
78:\newlabel{thm:no-canonical@cref}{{[theorem][1][5]5.1}{[1][11][]12}{}{}{}}
81:\newlabel{sec:operations}{{6}{12}{Arithmetic Operations as Recursive Definitions}{section.6}{}}
82:\newlabel{sec:operations@cref}{{[section][6][]6}{[1][12][]12}{}{}{}}
84:\newlabel{thm:recursion}{{6.1}{12}{Recursion on $\omega $}{theorem.6.1}{}}
85:\newlabel{thm:recursion@cref}{{[theorem][1][6]6.1}{[1][12][]12}{}{}{}}
87:\newlabel{def:add}{{6.2}{13}{Addition}{theorem.6.2}{}}
88:\newlabel{def:add@cref}{{[theorem][2][6]6.2}{[1][13][]13}{}{}{}}
89:\newlabel{prop:add-props}{{6.3}{13}{Properties of addition}{theorem.6.3}{}}
90:\newlabel{prop:add-props@cref}{{[theorem][3][6]6.3}{[1][13][]13}{}{}{}}
92:\newlabel{def:mult}{{6.4}{13}{Multiplication}{theorem.6.4}{}}
93:\newlabel{def:mult@cref}{{[theorem][4][6]6.4}{[1][13][]13}{}{}{}}
94:\newlabel{prop:mult-props}{{6.5}{14}{}{theorem.6.5}{}}
95:\newlabel{prop:mult-props@cref}{{[theorem][5][6]6.5}{[1][13][]14}{}{}{}}
97:\newlabel{def:order}{{6.6}{14}{Order}{theorem.6.6}{}}
98:\newlabel{def:order@cref}{{[theorem][6][6]6.6}{[1][14][]14}{}{}{}}
100:\newlabel{sec:cumulative}{{7}{14}{The Cumulative Hierarchy}{section.7}{}}
101:\newlabel{sec:cumulative@cref}{{[section][7][]7}{[1][14][]14}{}{}{}}
103:\newlabel{def:Valpha}{{7.1}{14}{Cumulative hierarchy}{theorem.7.1}{}}
104:\newlabel{def:Valpha@cref}{{[theorem][1][7]7.1}{[1][14][]14}{}{}{}}
105:\newlabel{thm:V-is-everything}{{7.2}{14}{ZFC sees only $V$}{theorem.7.2}{}}
106:\newlabel{thm:V-is-everything@cref}{{[theorem][2][7]7.2}{[1][14][]14}{}{}{}}
108:\newlabel{prop:ranks}{{7.3}{14}{}{theorem.7.3}{}}
109:\newlabel{prop:ranks@cref}{{[theorem][3][7]7.3}{[1][14][]14}{}{}{}}
111:\newlabel{thm:omega-first-limit}{{7.5}{15}{}{theorem.7.5}{}}
112:\newlabel{thm:omega-first-limit@cref}{{[theorem][5][7]7.5}{[1][15][]15}{}{}{}}
115:\newlabel{fig:hierarchy}{{1}{15}{The cumulative hierarchy $V_\alpha $. Each natural number $n$ first appears at level $V_{n+1}$. The set $\omega $ first appears at level $V_{\omega +1}$}{figure.1}{}}
116:\newlabel{fig:hierarchy@cref}{{[figure][1][]1}{[1][15][]15}{}{}{}}
118:\newlabel{sec:representation}{{8}{15}{A Representation Theorem}{section.8}{}}
119:\newlabel{sec:representation@cref}{{[section][8][]8}{[1][15][]15}{}{}{}}
120:\newlabel{def:succ-struct}{{8.1}{15}{Successor structure}{theorem.8.1}{}}
121:\newlabel{def:succ-struct@cref}{{[theorem][1][8]8.1}{[1][15][]15}{}{}{}}
122:\newlabel{def:init-peano}{{8.2}{16}{Initial Peano structure}{theorem.8.2}{}}
123:\newlabel{def:init-peano@cref}{{[theorem][2][8]8.2}{[1][15][]16}{}{}{}}
124:\newlabel{thm:initiality}{{8.3}{16}{Initiality of $\omega $}{theorem.8.3}{}}
125:\newlabel{thm:initiality@cref}{{[theorem][3][8]8.3}{[1][16][]16}{}{}{}}
126:\newlabel{thm:uniqueness}{{8.4}{16}{Uniqueness of Peano structures}{theorem.8.4}{}}
127:\newlabel{thm:uniqueness@cref}{{[theorem][4][8]8.4}{[1][16][]16}{}{}{}}
128:\newlabel{cor:vN-Z-iso}{{8.5}{16}{}{theorem.8.5}{}}
129:\newlabel{cor:vN-Z-iso@cref}{{[theorem][5][8]8.5}{[1][16][]16}{}{}{}}
131:\newlabel{sec:bridge}{{9}{16}{Bridge to Structuralism}{section.9}{}}
132:\newlabel{sec:bridge@cref}{{[section][9][]9}{[1][16][]16}{}{}{}}
139:\newlabel{sec:haskell}{{10}{18}{Haskell Implementation}{section.10}{}}
140:\newlabel{sec:haskell@cref}{{[section][10][]10}{[1][18][]18}{}{}{}}
151:\newlabel{sec:discussion}{{11}{20}{Discussion}{section.11}{}}
152:\newlabel{sec:discussion@cref}{{[section][11][]11}{[1][19][]20}{}{}{}}
157:\bibcite{benacerraf1965}{1}
158:\bibcite{benacerraf1973}{2}
159:\bibcite{frege1884}{3}
160:\bibcite{halmos1960}{4}
161:\bibcite{kunen1980}{5}
162:\bibcite{lawvere1964}{6}
163:\bibcite{lawvere1963}{7}
165:\newlabel{sec:conclusion}{{12}{21}{Conclusion}{section.12}{}}
166:\newlabel{sec:conclusion@cref}{{[section][12][]12}{[1][21][]21}{}{}{}}
167:\bibcite{maclane-moerdijk}{8}
168:\bibcite{mclarty2004}{9}
169:\bibcite{principia}{10}
170:\bibcite{shoenfield1967}{11}
171:\bibcite{shapiro1997}{12}
172:\bibcite{suppes1960}{13}
173:\bibcite{vonNeumann1923}{14}
174:\bibcite{HoTTBook}{15}
175:\bibcite{zermelo1908}{16}

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\\\includegraphics\" 02-set-theoretic.tex; rg -n -F \"\\\\href\" 02-set-theoretic.tex; rg -n -F \"\\\\url\" 02-set-theoretic.tex; rg -n -F \"\\\\begin{tikzcd}\" 02-set-theoretic.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/02-set-theoretic/latex
 exited 1 in 0ms:
1338:\href{https://homotopytypetheory.org/book}{homotopytypetheory.org/book}.

codex
NO BLOCKING ISSUES

Verified with two `pdflatex -interaction=nonstopmode -halt-on-error` passes from `latex/`. Fresh log has no compilation errors, undefined refs/cites, missing files/packages, or overfull boxes.
2026-05-04T14:19:16.885926Z ERROR codex_core::session: failed to record rollout items: thread 019df35a-b42a-70f2-b8ca-6083548a05a1 not found
tokens used
62,048
NO BLOCKING ISSUES

Verified with two `pdflatex -interaction=nonstopmode -halt-on-error` passes from `latex/`. Fresh log has no compilation errors, undefined refs/cites, missing files/packages, or overfull boxes.
