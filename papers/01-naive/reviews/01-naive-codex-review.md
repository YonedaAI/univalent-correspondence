---
reviewer: codex (OpenAI)
type: formatting
paper: 01-naive
date: 2026-05-04T01:30:33Z
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
session id: 019df09b-c964-7e92-bf8d-34d13a11a0a5
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/01-naive/latex/01-naive.tex for formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fix suggestions. Do not modify the file; only produce the review.
codex
I’ll inspect the TeX source first, then run a compile into a temporary output directory so the review is based on actual diagnostics without touching the source.
exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
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
    17	% Code listings
    18	\usepackage{listings}
    19	
    20	% Page layout
    21	\usepackage[margin=1in]{geometry}
    22	
    23	% GrokRxiv sidebar
    24	\usepackage{everypage}
    25	\usepackage{xcolor}
    26	
    27	% Theorem environments
    28	\newtheorem{theorem}{Theorem}[section]
    29	\newtheorem{proposition}[theorem]{Proposition}
    30	\newtheorem{lemma}[theorem]{Lemma}
    31	\newtheorem{corollary}[theorem]{Corollary}
    32	\theoremstyle{definition}
    33	\newtheorem{definition}[theorem]{Definition}
    34	\newtheorem{example}[theorem]{Example}
    35	\theoremstyle{remark}
    36	\newtheorem{remark}[theorem]{Remark}
    37	
    38	% GrokRxiv sidebar definition
    39	\definecolor{grokgray}{RGB}{110,110,110}
    40	\AddEverypageHook{%
    41	  \ifnum\value{page}=1
    42	    \begin{tikzpicture}[remember picture, overlay]
    43	      \node[
    44	        rotate=90,
    45	        anchor=south,
    46	        font=\Large\sffamily\bfseries\color{grokgray},
    47	        inner sep=0pt
    48	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    49	      {GrokRxiv:2026.05.naive-perspective-numbers\quad
    50	       [\,math.HO\,]\quad
    51	       03 May 2026};
    52	    \end{tikzpicture}
    53	  \fi
    54	}
    55	
    56	% Listings styling
    57	\lstset{
    58	  basicstyle=\ttfamily\small,
    59	  columns=fullflexible,
    60	  breaklines=true,
    61	  showstringspaces=false,
    62	  frame=single,
    63	  framesep=4pt
    64	}
    65	
    66	\title{The Naive Perspective: \\ Numbers as Symbols and Quantities \\
    67	\large Paper I of the Univalent Correspondence Series}
    68	
    69	\author{YonedaAI Research \\
    70	\textit{Univalent Correspondence Working Group} \\
    71	\textit{Independent Research Collective} \\
    72	\texttt{research@yonedaai.example}}
    73	
    74	\date{3 May 2026}
    75	
    76	\begin{document}
    77	\maketitle
    78	
    79	\begin{abstract}
    80	This is the first paper in a six-part series, plus synthesis, on what we call
    81	the \emph{Univalent Correspondence}: six perspectives on what a natural number
    82	``is''. Across the series we proceed from the naive level (this paper),
    83	through set-theoretic encoding, universal property, the Yoneda perspective,
    84	Homotopy Type Theory (HoTT), and the categorical/structural view, before
    85	unifying the latter four under Voevodsky's univalence axiom. The present
    86	paper occupies the \emph{naive} or pre-formal level, where a number is at
    87	once a symbol (``58'', \textsf{LVIII}, \texttt{||||\,||||}) and a quantity
    88	(the cardinality of a counted collection). We treat numerals as syntax and
    89	the underlying number as semantics, and we trace this distinction through
    90	the historical arc that runs from Mill's empiricism, Husserl's phenomenology
    91	of arithmetic, and Frege's critique of psychologism, into Benacerraf's
    92	identification problem. We argue that the naive level is simultaneously
    93	\emph{insufficient}---because of symbol/object confusion, the multiplicity
    94	of equally adequate representations, and a foundational underdetermination
    95	that already foreshadows the structuralist response---and \emph{indispensable},
    96	because it is the interface where embodied counting, finger arithmetic,
    97	and culturally transmitted numeral systems anchor mathematical content in
    98	human cognition. We close by showing that the naive level is precisely
    99	where the structuralist's question, ``what role does this object play?'',
   100	first arises, thereby motivating each of the five formal levels developed
   101	in subsequent papers. We also provide a small Haskell artifact demonstrating
   102	the syntax-semantics distinction by parsing four numeral systems (Hindu-Arabic,
   103	Roman, tally, Babylonian sexagesimal) into a single structural normal form.
   104	\end{abstract}
   105	
   106	\tableofcontents
   107	\bigskip
   108	
   109	\section{Introduction}
   110	\label{sec:introduction}
   111	
   112	\subsection{The question}
   113	
   114	What is the number~58? On the page in front of you it is two glyphs, ``5''
   115	and ``8''. In a Roman inscription it is the four-glyph sequence
   116	\textsf{LVIII}. On a tally sheet kept by a shepherd it is fifty-eight scratches.
   117	In Babylonian sexagesimal cuneiform it is a single wedge cluster meaning
   118	``58''. Each of these is unambiguously a way of writing 58, and yet they share
   119	no graphical features, no spelling, no length. Whatever 58 \emph{is}, it
   120	cannot be any one of these inscriptions, for it survives translation between
   121	all of them.
   122	
   123	This paper is about the level of mathematical reflection at which one notices
   124	this fact for the first time. We call this the \emph{naive} level, in the
   125	technical, non-pejorative sense of being prior to formal axiomatization. It
   126	is the level of the schoolchild learning to count, of the merchant tallying
   127	goods, of the cuneiform scribe, and of every adult human who knows the
   128	arithmetical facts of daily life without ever having read a definition of
   129	the natural numbers. We will argue that this level is, at the same time,
   130	deeply inadequate as a foundation and absolutely indispensable as a
   131	phenomenology. The tension between these two claims sets up the entire
   132	remainder of the series.
   133	
   134	\subsection{Place in the series}
   135	
   136	The series of which this paper is the first instalment is organized around
   137	the following six-row table, which we will call the \emph{columns table}
   138	throughout:
   139	
   140	\begin{center}
   141	\begin{tabular}{l|l}
   142	\textbf{Level} & \textbf{What 58 \emph{is}} \\ \hline
   143	Naive & A symbol; a quantity \\
   144	Set-theoretic (von Neumann) & $\{0, 1, \ldots, 57\}$ \\
   145	Universal property & The 58th iteration of $\mathrm{succ}$ in any initial successor structure \\
   146	Yoneda & The representable functor $\mathrm{Hom}(-, 58)$ \\
   147	HoTT & A canonical term in the inductive type $\mathbb{N}$, up to path equivalence \\
   148	Categorical / structural & An invariant under structure-preserving morphisms of arithmetic \\
   149	\end{tabular}
   150	\end{center}
   151	
   152	Subsequent papers will treat rows two through six in turn, and the synthesis
   153	paper will argue that rows three through six are, under the univalence
   154	axiom, literally---not metaphorically---the same theory viewed through
   155	different windows.
   156	
   157	The job of \emph{this} paper is to establish row one with care, both as a
   158	positive description of how mathematical content is normally encountered
   159	and as a critical diagnosis of why we cannot stop there.
   160	
   161	\subsection{Outline}
   162	
   163	\Cref{sec:numerals-syntax} surveys numeral systems, treating them as syntax,
   164	and articulates the syntax--semantics distinction in the form it takes at the
   165	naive level. \Cref{sec:counting-quantity} develops the dual aspect---numbers
   166	as quantities arising from counting and grouping---and connects this to
   167	embodied cognition. \Cref{sec:pre-fregean} traces the pre-Fregean intellectual
   168	history through Mill, Husserl, and Frege, with attention to Frege's critique
   169	of psychologism and his Sinn/Bedeutung distinction. \Cref{sec:insufficient}
   170	states three convergent reasons the naive level is insufficient as a
   171	foundation: the symbol/object confusion, multiplicity of representations,
   172	and Benacerraf's identification problem (anticipated already at the naive
   173	level). \Cref{sec:indispensable} argues conversely that the naive level is
   174	indispensable: counting, finger arithmetic, and embodied schemas are
   175	constitutive of the meaning of arithmetic, not optional pedagogical scaffolding.
   176	\Cref{sec:bridge} shows that the naive level is the natural locus for the
   177	structuralist's question, ``what role does this object play?'', and that
   178	this question is what every subsequent paper formalizes.
   179	\Cref{sec:results} states the principal results of the paper as theorems---a
   180	syntax/semantics adequacy lemma, a no-canonical-numeral theorem, and a
   181	naive Benacerraf principle. \Cref{sec:haskell} describes a small Haskell
   182	artifact that parses several numeral systems and reduces them all to a
   183	single structural normal form. \Cref{sec:discussion,sec:conclusion} reflect
   184	on connections and future work.
   185	
   186	\section{Mathematical Framework}
   187	\label{sec:framework}
   188	
   189	This paper is unusual within the series in that its mathematical framework
   190	is deliberately minimal: the entire point is to operate \emph{below} the
   191	threshold of axiomatic formalization. Nevertheless, we will need just enough
   192	formal language to say precisely what numerals are, what counting is, and
   193	what it means for two numerals to denote the same number. We collect this
   194	machinery here.
   195	
   196	\subsection{Numerals as words over a finite alphabet}
   197	
   198	\begin{definition}[Numeral system]
   199	\label{def:numeral-system}
   200	A \emph{numeral system} is a triple $\mathcal{N} = (\Sigma, L, \llbracket\,
   201	\cdot\, \rrbracket)$ where:
   202	\begin{enumerate}
   203	\item $\Sigma$ is a finite alphabet of \emph{glyphs};
   204	\item $L \subseteq \Sigma^*$ is a (possibly partial) language of well-formed
   205	\emph{numerals}; and
   206	\item $\llbracket\, \cdot\, \rrbracket : L \to \mathbb{N}$ is a
   207	\emph{denotation function} mapping each well-formed numeral to a natural
   208	number.
   209	\end{enumerate}
   210	We do not, at this stage, presuppose any particular formalization of
   211	$\mathbb{N}$; the codomain is the pretheoretic collection of natural
   212	numbers as understood by the practitioners of the system.
   213	\end{definition}
   214	
   215	\begin{example}[Hindu-Arabic decimal positional system]
   216	\label{ex:hindu-arabic}
   217	$\Sigma_{10} = \{0, 1, 2, \ldots, 9\}$, $L_{10}$ is the set of finite
   218	non-empty strings over $\Sigma_{10}$ with no leading $0$ except for the
   219	string ``$0$'' itself, and
   220	$\llbracket d_{n-1} d_{n-2} \cdots d_1 d_0 \rrbracket = \sum_{i=0}^{n-1}
   221	d_i \cdot 10^i$.
   222	\end{example}
   223	
   224	\begin{example}[Tally]
   225	\label{ex:tally}
   226	$\Sigma_{|} = \{\,|\,\}$, $L_{|} = \{\,|\,\}^*$ (all finite strings),
   227	$\llbracket s \rrbracket = $ the length of $s$. We will sometimes use
   228	``gate-five'' tally with a closing diagonal stroke; this changes
   229	$\Sigma_{|}$ but not the denotation.
   230	\end{example}
   231	
   232	\begin{example}[Roman]
   233	\label{ex:roman}
   234	$\Sigma_R = \{\,\textsf{I}, \textsf{V}, \textsf{X}, \textsf{L},
   235	\textsf{C}, \textsf{D}, \textsf{M}\,\}$ with the usual subtractive
   236	constraints determining $L_R$, and the standard semantics yielding
   237	$\llbracket \textsf{LVIII}\rrbracket = 58$.
   238	\end{example}
   239	
   240	\begin{example}[Babylonian sexagesimal]
   241	\label{ex:babylonian}
   242	A base-60 positional system using two cuneiform glyphs (one for ones, one
   243	for tens) to compose digits 1--59, with positional weights $60^i$. The
   244	historical absence of a true zero glyph in early Babylonian usage means
   245	$L$ is partial and ambiguity is resolved by context; modern transliterations
   246	add an explicit zero placeholder.
   247	\end{example}
   248	
   249	\subsection{Equivalence of numerals}
   250	
   251	\begin{definition}[Numeral equivalence]
   252	\label{def:numeral-equivalence}
   253	Two numerals $w_1 \in L_1$ and $w_2 \in L_2$ in possibly different numeral
   254	systems $\mathcal{N}_1, \mathcal{N}_2$ are \emph{equivalent}, written
   255	$w_1 \sim w_2$, iff $\llbracket w_1 \rrbracket_1 = \llbracket w_2
   256	\rrbracket_2$.
   257	\end{definition}
   258	
   259	\begin{remark}
   260	\label{rem:symbol-vs-number}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|eqref|cite|label|includegraphics|input|usepackage|bibliography|bibliographystyle|url|href)|TODO|FIXME|overfull|underfull\" papers/01-naive/latex/01-naive.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|eqref|cite|label|includegraphics|input|usepackage|bibliography|bibliographystyle|url|href)|TODO|FIXME|overfull|underfull)
                                                                                                                                     ^
error: unopened group

exec
/usr/local/bin/zsh -lc "pwd && rg --files -g '01-naive.tex' -g '*.bib' -g '*.sty' -g '*.cls'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
papers/01-naive/latex/01-naive.tex

codex
The first pass shows a single standalone TeX source and no adjacent bibliography/style files. I’m reading the rest of the document and then I’ll compile with diagnostics so I can separate real failures from cosmetic source-level concerns.
exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '261,560p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   261	Already in \cref{def:numeral-equivalence}, we have implicitly committed to
   262	a substantive thesis: that there is some target codomain in which
   263	$\llbracket w_1 \rrbracket_1$ and $\llbracket w_2 \rrbracket_2$ can be
   264	\emph{compared}. A consistently naive theorist who refuses any abstraction
   265	beyond the inscriptions themselves cannot even state when two numerals
   266	``mean the same thing''. The bare existence of \cref{def:numeral-equivalence}
   267	is therefore evidence that the naive level is not internally stable: as
   268	soon as one wishes to compare across numeral systems, one is reaching
   269	beyond pure syntax.
   270	\end{remark}
   271	
   272	\subsection{Counting as a function}
   273	
   274	\begin{definition}[Counting function]
   275	\label{def:counting}
   276	Let $X$ be a finite set whose elements are physically or conceptually
   277	individuable. A \emph{counting} of $X$ is a bijection $c : \{1, 2, \ldots,
   278	n\} \to X$ for some $n \in \mathbb{N}$. The number $n$ is called the
   279	\emph{cardinality} of $X$.
   280	\end{definition}
   281	
   282	\begin{remark}
   283	The \emph{availability} of \cref{def:counting} again presupposes more
   284	than the strictly naive theorist allows: it presupposes the natural numbers
   285	as an indexing device. We will return to this regress in
   286	\cref{sec:insufficient}.
   287	\end{remark}
   288	
   289	\section{Numerals as Syntax}
   290	\label{sec:numerals-syntax}
   291	
   292	\subsection{Positional, additive, and tally systems}
   293	
   294	The world's historical numeral systems can be roughly classified along two
   295	orthogonal axes: \emph{base} (the size of the radix used to bundle
   296	quantities) and \emph{principle} (positional vs.\ additive vs.\ pure tally).
   297	
   298	\paragraph{Tally.} The pure tally is base-1 in the sense that each unit
   299	contributes additively and there is no bundling. It is the simplest
   300	syntactic system one can imagine. Bone artifacts such as the Lebombo bone
   301	(c.\ 42{,}000 BCE) and the Ishango bone (c.\ 18{,}000--20{,}000 BCE) are
   302	typically interpreted as tallies.
   303	
   304	\paragraph{Additive systems.} Roman, Egyptian, and Greek alphabetic
   305	numerals are additive: distinct glyphs encode distinct values, and the
   306	value of a numeral is obtained (with local subtractive corrections) by
   307	summing the values of its glyphs. Such systems compress the tally---one
   308	glyph for ten, another for fifty, another for a hundred---without yet
   309	exploiting position.
   310	
   311	\paragraph{Positional systems.} The Babylonian sexagesimal system,
   312	Mesoamerican vigesimal systems, and the Hindu-Arabic decimal system are
   313	positional: a small alphabet of glyphs is reused at each ``place,'' and
   314	the place itself contributes a power of the base. Positional systems are
   315	exponentially more compact than additive ones in the length of the
   316	numeral required to denote a given number.
   317	
   318	\begin{proposition}[Compression by positionality]
   319	\label{prop:positional-compression}
   320	Let $b \geq 2$ be a base. A positional numeral system of base $b$ requires
   321	a numeral of length $\Theta(\log_b n)$ to denote $n$, whereas a pure tally
   322	system requires length $n$, and an additive system with $k$ glyphs of
   323	distinct values requires length $\Theta(n / v_{\max})$ where $v_{\max}$
   324	is the largest glyph value (asymptotically linear in $n$).
   325	\end{proposition}
   326	
   327	\begin{proof}[Proof sketch]
   328	Standard. For positional, $n$ has $\lfloor \log_b n \rfloor + 1$ digits.
   329	For tally, length equals $n$. For additive, the optimal greedy
   330	representation uses $\Theta(n / v_{\max})$ tokens of the largest available
   331	glyph, plus $O(1)$ corrections.
   332	\end{proof}
   333	
   334	\subsection{Syntax versus semantics, naively stated}
   335	
   336	\begin{definition}[Naive syntax-semantics distinction]
   337	\label{def:naive-ss}
   338	Within a numeral system $\mathcal{N} = (\Sigma, L, \llbracket\,\cdot\,
   339	\rrbracket)$:
   340	\begin{itemize}
   341	\item the \emph{syntactic} content of a numeral $w$ is $w$ itself, the
   342	finite string of glyphs;
   343	\item the \emph{semantic} content is the value $\llbracket w \rrbracket$.
   344	\end{itemize}
   345	The fundamental observation of the naive level is that distinct syntactic
   346	strings can have identical semantic content---even \emph{within} one numeral
   347	system (e.g.\ \textsf{IIII} vs.\ \textsf{IV} in pre-medieval vs.\ medieval
   348	Roman usage)---and \emph{a fortiori} across systems.
   349	\end{definition}
   350	
   351	We emphasize that \cref{def:naive-ss} is a \emph{weak} version of the
   352	syntax/semantics distinction. The semantic codomain is the natural numbers
   353	treated as a primitive concept; we have not (yet) said what natural numbers
   354	are. The remaining papers in the series can each be read as offering a
   355	candidate filling of this gap.
   356	
   357	\subsection{Multiplicity and underdetermination}
   358	
   359	The fact that there are infinitely many numeral systems for the same
   360	underlying $\mathbb{N}$ is not a defect of any one system; it is a feature
   361	of the situation. But it generates a diagnostic question that returns
   362	again and again throughout the series: \emph{which features of the
   363	representation are essential to the number, and which are accidents of
   364	the inscription?} Phrasing this question already commits one to thinking
   365	of numbers as something \emph{other than} their inscriptions. We will see
   366	in \cref{sec:insufficient} that this is the first crack in the naive
   367	edifice.
   368	
   369	\section{Counting and Quantity}
   370	\label{sec:counting-quantity}
   371	
   372	\subsection{The dual aspect: number as quantity}
   373	
   374	The other face of the naive level is the use of numbers to express
   375	\emph{quantity}. A flock has 58 sheep; a sentence has 58 letters; a year
   376	has 365 days. The number-as-quantity face is older than any numeral
   377	system: archeological and ethnographic evidence of one-to-one correspondence
   378	between counted items and tally marks predates positional notation by tens
   379	of thousands of years.
   380	
   381	\begin{definition}[Naive cardinality, repeated for emphasis]
   382	\label{def:naive-cardinality}
   383	The \emph{cardinality} of a finite collection $X$ is the result of placing
   384	the elements of $X$ in one-to-one correspondence with an initial segment
   385	of the count sequence. In particular, two collections have the same
   386	cardinality iff they can be put into one-to-one correspondence with each
   387	other. We do not, at this stage, presuppose anywhere that this number
   388	``inhabits.''
   389	\end{definition}
   390	
   391	\begin{example}[Hume's principle, anticipated]
   392	\label{ex:hume}
   393	The following is sometimes called Hume's principle (after a remark in
   394	Hume's \emph{Treatise} I.iii.1): the number of $F$s equals the number of
   395	$G$s iff the $F$s and the $G$s can be put in one-to-one correspondence.
   396	This is the naive level's characterization of cardinal identity. Frege
   397	famously elevated it to a foundational role in his \emph{Grundlagen}
   398	(1884), and neologicism (Wright, Hale, Heck) takes it as definitionally
   399	sufficient for arithmetic.
   400	\end{example}
   401	
   402	\subsection{The count sequence and embodied cognition}
   403	
   404	The cognitive science literature documents that human and pre-linguistic
   405	infant counting relies on at least two distinct systems: a precise
   406	\emph{small number system} (subitizing, accurate up to about 4) and an
   407	approximate large number system whose Weber-fraction discriminability is
   408	roughly logarithmic. Numerals expand the precise system arbitrarily by
   409	piggy-backing on language and on culturally transmitted iteration schemes
   410	(``next, next, next''). Lakoff and N\'u\~nez argue that the count sequence
   411	itself is a conceptual metaphor grounded in embodied schemas: motion along
   412	a path, the iteration of grasping motions, the sequential pointing of a
   413	finger. We do not endorse all the metaphysics in their account, but we
   414	follow them on one thesis that we will need: \emph{the count sequence is
   415	not optional}. There is no human acquisition of arithmetic that bypasses
   416	the embodied count.
   417	
   418	\begin{remark}[Finger arithmetic]
   419	\label{rem:fingers}
   420	A working adult who has internalized the multiplication table to 9$\times$9
   421	typically retains traces of a finger-based representation, accessible as
   422	imagery if not in overt behavior. The Chinese ``Chisanbop'' technique and
   423	the Vedic Indian finger-counting traditions are explicit, mature systems
   424	in which finger configurations \emph{are} the numerals. They illustrate
   425	that the line between syntax (numerals as inscriptions) and embodied
   426	quantity (numbers as counted) is not where one might naively think it is:
   427	fingers are inscriptions on the body.
   428	\end{remark}
   429	
   430	\subsection{Counting as proto-induction}
   431	
   432	\begin{proposition}[Naive induction principle]
   433	\label{prop:naive-induction}
   434	Any property $P$ that (i) holds of an initial segment of the count
   435	sequence and (ii) is preserved when one passes from the current count to
   436	the next, holds of every count one will reach.
   437	\end{proposition}
   438	
   439	\begin{proof}[Discussion]
   440	At the naive level, this is not a theorem; it is the implicit principle
   441	that governs counting. ``Once you've counted that high, you can keep
   442	going.'' Formalizing this principle is the work of the universal-property
   443	paper (Paper III) and the HoTT paper (Paper V). What we record here is
   444	that the principle is already \emph{operative} at the naive level, in the
   445	sense that competent counters use it without knowing they are using it.
   446	\end{proof}
   447	
   448	\subsection{Quantity does not entail abstract object}
   449	
   450	A subtle but important observation. The naive use of numbers as quantities
   451	does not, by itself, commit one to numbers being objects. ``There are 58
   452	sheep'' may, on a deflationary reading, mean only that each of the 58
   453	sheep is a sheep and no further sheep is. This deflationary reading is
   454	internally consistent and, we believe, captures something real about how
   455	numbers function in the most everyday cases. But it cannot survive the
   456	move to \emph{arithmetic}---to facts of the form $58 = 2 \cdot 29$---without
   457	some non-trivial reification. We will return to this point in
   458	\cref{sec:insufficient}.
   459	
   460	\section{The Pre-Fregean and Early Fregean Background}
   461	\label{sec:pre-fregean}
   462	
   463	\subsection{Mill's empiricism}
   464	
   465	John Stuart Mill, in his \emph{System of Logic} (1843), Book II, Chapter
   466	VI, defended the view that arithmetical propositions are inductive
   467	generalizations from physical experience. ``$2 + 1 = 3$'' is, on his view,
   468	a generalization observed to hold whenever one combines a pair of pebbles
   469	with a single pebble. This view has the merit of explaining the
   470	applicability of arithmetic to the world, but it suffers from at least
   471	two well-known defects:
   472	\begin{enumerate}
   473	\item Arithmetical propositions appear necessary; inductive generalizations
   474	do not. We do not feel that ``$2+1=3$'' could fail in the way that ``every
   475	swan is white'' could fail.
   476	\item Arithmetical propositions apply to abstract and even imagined
   477	collections in exactly the way they apply to physical collections. The
   478	inductive base, on Mill's view, ought to be physical collections; the
   479	extension to abstracta then becomes mysterious.
   480	\end{enumerate}
   481	Frege made the criticism of Mill central in his \emph{Grundlagen} (1884),
   482	\S\S 7--10. We side with the orthodox post-Fregean reading on this, while
   483	recording that contemporary cognitive science (small-number system,
   484	approximate number system, neural representations of magnitude) gives
   485	Mill's account a partial vindication \emph{at the level of psychology}:
   486	something \emph{like} an empirical magnitude-sense is part of the
   487	acquisition story, even if it is not part of the justification story.
   488	
   489	\subsection{Husserl's phenomenology of arithmetic}
   490	
   491	Edmund Husserl's \emph{Philosophie der Arithmetik} (1891) attempted to
   492	ground arithmetic in mental acts of \emph{collective combination}: the
   493	mental act of bringing items together as a multiplicity. Frege's
   494	\emph{Review of Husserl} (1894) is one of the founding documents of
   495	analytic philosophy, and its central charge is \emph{psychologism}: the
   496	confusion of an objective content (a number, an arithmetical truth) with
   497	the subjective act by which a thinker entertains it. Husserl himself
   498	later moved away from this view; the mature Husserl (\emph{Logical
   499	Investigations}, 1900--01) accepts a sharp ideal/real distinction.
   500	
   501	\subsection{Frege's critique of psychologism}
   502	
   503	Frege's critique can be summarized as a slogan: \emph{the truth that $7$
   504	is prime does not depend on anyone's thinking it.} If it did, then by
   505	varying the thinker one would vary the truth, which is absurd. The same
   506	slogan re-purposed against the strict naive level says: \emph{the number
   507	58 cannot be the inscription ``58'',} for one and the same number is
   508	inscribed by many different glyph sequences.
   509	
   510	\begin{remark}[Sinn and Bedeutung]
   511	\label{rem:sinn-bedeutung}
   512	Frege's later distinction (\emph{\"Uber Sinn und Bedeutung}, 1892)
   513	between \emph{sense} (Sinn) and \emph{reference} (Bedeutung) is the
   514	mature articulation of the syntax/semantics distinction we have been
   515	developing. ``58'' and ``$2 \cdot 29$'' are different senses of the same
   516	referent. The naive level treats sense and reference as identical (or at
   517	least as undistinguished). Distinguishing them is one of the
   518	preconditions of all the formal levels to come.
   519	\end{remark}
   520	
   521	\subsection{Frege's logicism, briefly}
   522	
   523	Frege's positive program in the \emph{Grundlagen} and \emph{Grundgesetze}
   524	was to define numbers as extensions of certain second-order concepts:
   525	the number of $F$s is the extension of the concept ``equinumerous with
   526	$F$''. Russell's paradox showed that the unrestricted comprehension
   527	needed for such extensions is inconsistent. This is not the place to
   528	recount the recovery program (Russell's type theory, Zermelo's set
   529	theory, neologicism); we record only that Frege's specific reduction
   530	fails, while his \emph{methodological} thesis---that arithmetic is
   531	prior to and independent of psychology---is the orthodox view we take
   532	forward into the rest of the series.
   533	
   534	\section{Why the Naive Level is Insufficient}
   535	\label{sec:insufficient}
   536	
   537	We give three convergent arguments. They overlap, but each isolates a
   538	distinct failure mode.
   539	
   540	\subsection{The symbol/object confusion}
   541	
   542	\begin{theorem}[Symbol/object confusion theorem]
   543	\label{thm:symbol-object}
   544	There is no consistent way, working purely at the naive level, to identify
   545	a number with its inscription. In particular, if one assumes (i) that the
   546	glyph sequence ``58'' \emph{is} the number 58, and (ii) that
   547	$58 = \mathsf{LVIII}$, then one is forced to identify the glyph sequences
   548	``58'' and ``\textsf{LVIII}'', which are manifestly distinct.
   549	\end{theorem}
   550	
   551	\begin{proof}
   552	By transitivity of identity. If ``58'' $= 58$ and $58 = \mathsf{LVIII}$,
   553	then ``58'' $= \mathsf{LVIII}$. But the strings ``58'' and
   554	``\textsf{LVIII}'' are distinct strings of distinct glyphs over different
   555	alphabets. Contradiction.
   556	\end{proof}
   557	
   558	The argument is elementary, but it has weight. It shows that the very
   559	\emph{intelligibility} of equations like $58 = \mathsf{LVIII}$ requires
   560	distinguishing the number from any one of its inscriptions. The naive

exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '561,920p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   561	level is the level at which this distinction is not yet drawn; the rest
   562	of the series is the work of drawing it carefully.
   563	
   564	\subsection{Multiplicity of representations}
   565	
   566	\begin{theorem}[No-canonical-numeral theorem]
   567	\label{thm:no-canonical-numeral}
   568	There is no privileged numeral system. Specifically, for any finite set
   569	of numeral systems $\{\mathcal{N}_1, \ldots, \mathcal{N}_k\}$ each adequate
   570	for representing every natural number, there is a further numeral system
   571	$\mathcal{N}_{k+1}$, not equivalent to any $\mathcal{N}_i$ as a
   572	syntactic object, that is also adequate.
   573	\end{theorem}
   574	
   575	\begin{proof}
   576	Given $\mathcal{N}_1, \ldots, \mathcal{N}_k$, define $\mathcal{N}_{k+1}$
   577	as the positional system over base $b' = \max_i |\Sigma_i| + 1$. By
   578	construction, $|\Sigma_{k+1}| = b'$ exceeds the alphabet size of every
   579	$\mathcal{N}_i$, so $\mathcal{N}_{k+1}$ is not equivalent as a syntactic
   580	object to any of them. Adequacy is immediate from the standard properties
   581	of positional notation.
   582	\end{proof}
   583	
   584	\Cref{thm:no-canonical-numeral} is a syntactic version of a more famous
   585	theorem we will meet in Paper II:
   586	
   587	\subsection{Naive Benacerraf}
   588	
   589	\begin{theorem}[Naive Benacerraf principle]
   590	\label{thm:naive-benacerraf}
   591	Every numeral system $\mathcal{N}_i$ adequate for $\mathbb{N}$ is
   592	``equally good'' from the standpoint of arithmetic. Hence no
   593	$\mathcal{N}_i$ can be \emph{the} number system; numbers must be the
   594	common semantic content shared by all adequate $\mathcal{N}_i$.
   595	\end{theorem}
   596	
   597	\begin{proof}[Proof sketch]
   598	Let $\mathcal{N}_i, \mathcal{N}_j$ be adequate. For any
   599	arithmetical operation $\circ$ definable in both, one verifies that
   600	$\llbracket w_1 \circ w_2 \rrbracket_i = \llbracket w_1' \circ w_2'
   601	\rrbracket_j$ whenever $w_1 \sim w_1'$ and $w_2 \sim w_2'$, where $\sim$
   602	is the cross-system equivalence of \cref{def:numeral-equivalence}. This
   603	witnesses that $\mathcal{N}_i$ and $\mathcal{N}_j$ are interconvertible
   604	without arithmetical loss.
   605	\end{proof}
   606	
   607	\begin{remark}
   608	This is essentially Benacerraf's 1965 \emph{identification problem}
   609	``one floor down''. Benacerraf's problem asks why we should regard the
   610	von Neumann encoding as canonical when the Zermelo encoding is equally
   611	adequate. The naive Benacerraf principle observes the same multiplicity
   612	already at the level of numeral systems, before set theory is even
   613	brought in. Paper II will pursue Benacerraf at the set-theoretic level
   614	proper.
   615	\end{remark}
   616	
   617	\subsection{Convergence: numbers cannot be naive things}
   618	
   619	The three arguments above (symbol/object confusion, multiplicity of
   620	representations, naive Benacerraf) jointly establish:
   621	
   622	\begin{theorem}[Inadequacy of the naive level]
   623	\label{thm:naive-inadequate}
   624	A theory of arithmetic that identifies numbers with their inscriptions,
   625	or equivalently with any single privileged numeral system, cannot account
   626	for the existence of cross-system equations like $58 = \mathsf{LVIII}$.
   627	Therefore, numbers are not naively given things; they are something
   628	shared across all adequate inscriptions.
   629	\end{theorem}
   630	
   631	\begin{proof}
   632	Combine \cref{thm:symbol-object,thm:no-canonical-numeral,thm:naive-benacerraf}.
   633	\end{proof}
   634	
   635	\Cref{thm:naive-inadequate} is the negative result of the paper: the
   636	naive level cannot be the foundational level. The remainder of the
   637	series is the constructive search for what numbers \emph{are}, given
   638	that they are not their inscriptions.
   639	
   640	\section{Why the Naive Level is Indispensable}
   641	\label{sec:indispensable}
   642	
   643	The negative results of the previous section are sometimes overread, in
   644	the foundationalist literature, as showing that the naive level should be
   645	\emph{discarded} once the formal levels are in place. We disagree, and
   646	this section explains why.
   647	
   648	\subsection{Indispensability arguments}
   649	
   650	\begin{proposition}[Acquisition indispensability]
   651	\label{prop:acquisition}
   652	No human learns arithmetic without learning to count. The count sequence
   653	and the elementary numerals are the entry point into the entire
   654	mathematical edifice; no formal system of arithmetic has ever been
   655	acquired by anyone without first traversing the naive level.
   656	\end{proposition}
   657	
   658	\begin{proof}[Empirical sketch]
   659	This is an empirical claim, supported by the developmental psychology
   660	literature (Piaget, Gelman \& Gallistel, Carey). Mathematics education
   661	universally proceeds by way of numerals and counting; no curriculum
   662	introduces the Peano axioms or the natural number object first.
   663	\end{proof}
   664	
   665	\begin{proposition}[Application indispensability]
   666	\label{prop:application}
   667	Every application of arithmetic to the empirical world proceeds via
   668	counting. The bridge from the formal natural numbers to actual sheep,
   669	electrons, or seconds is provided by an act of counting (or its
   670	extension, measurement), which is a naive operation.
   671	\end{proposition}
   672	
   673	\begin{proof}[Discussion]
   674	A formalization of arithmetic gives the structural facts (e.g.\ that
   675	$58 = 2 \cdot 29$). It does not, by itself, tell us that there are 58
   676	sheep in the field. The latter requires an act of counting that connects
   677	the formal token to the empirical scene. Counting is irreducibly naive
   678	in our sense.
   679	\end{proof}
   680	
   681	\begin{proposition}[Pedagogical indispensability]
   682	\label{prop:pedagogical}
   683	The introduction of any of the formal levels (universal property,
   684	Yoneda, HoTT) presupposes facility with the naive level. The student
   685	who is to be taught the universal property of $\mathbb{N}$ must already
   686	know what $\mathbb{N}$ \emph{is intuitively}; the universal property
   687	purports to characterize what is being introduced, and the
   688	characterization is empty if the introduced object is not already
   689	familiar.
   690	\end{proposition}
   691	
   692	\subsection{The naive level as semantic anchor}
   693	
   694	The cumulative force of \cref{prop:acquisition,prop:application,
   695	prop:pedagogical} is that the naive level is what \emph{makes the formal
   696	levels semantically non-empty}. A formal system is, considered abstractly,
   697	a manipulation of inscriptions according to rules. What gives it
   698	mathematical content is the connection to the naive practice it is
   699	designed to capture. This connection is not optional; it is constitutive.
   700	
   701	\begin{remark}[Compare: physical theories]
   702	\label{rem:physics-compare}
   703	This is similar in form to the role played in physics by operational
   704	definitions of measurement. A formal theory of mechanics is empty
   705	without the bridge laws that say what counts as a measurement of length,
   706	of time, of mass. The naive level of arithmetic plays the analogous
   707	bridging role between inscription-manipulation and quantitative content.
   708	\end{remark}
   709	
   710	\subsection{Insufficient and indispensable: not a paradox}
   711	
   712	The two main claims of the paper---that the naive level is insufficient
   713	(\cref{sec:insufficient}) and that it is indispensable
   714	(\cref{sec:indispensable})---are not in tension. They occupy different
   715	levels of analysis. The naive level is insufficient as a \emph{foundation}
   716	because it cannot answer foundational questions; it is indispensable as
   717	a \emph{phenomenology} because all foundational work begins from it and
   718	returns to it. The whole series should be read as taking this dual stance
   719	seriously: the formal levels do real foundational work, but they do so
   720	by way of, not by replacement of, the naive level.
   721	
   722	\section{Bridge to the Formal Levels: The Structuralist's Question}
   723	\label{sec:bridge}
   724	
   725	The diagnostic question that emerges from \cref{thm:naive-inadequate} is:
   726	if a number is not any of its inscriptions, what \emph{is} it? At the
   727	naive level, the natural answer is something like ``the number is what
   728	all these inscriptions have in common.'' Pressed for what they have in
   729	common, the naive theorist can offer only: the same place in the count
   730	sequence; the same arithmetical role.
   731	
   732	\begin{definition}[The structuralist's question]
   733	\label{def:structuralist-question}
   734	The \emph{structuralist's question}, asked of a putative mathematical
   735	object $X$, is: \emph{What role does $X$ play in the structure that
   736	contains it?}
   737	\end{definition}
   738	
   739	\begin{proposition}[The structuralist's question first arises naively]
   740	\label{prop:structuralist-naive}
   741	The structuralist's question is the natural follow-up to
   742	\cref{thm:naive-inadequate} as encountered at the naive level. Numbers
   743	are what their inscriptions share; what their inscriptions share is the
   744	arithmetical role; therefore, numbers are arithmetical roles.
   745	\end{proposition}
   746	
   747	This formulation is, of course, deeply unsatisfying as it stands. It
   748	trades on intuitive notions of ``role'' and ``share'' that have not been
   749	formalized. The five subsequent papers in the series can be read as
   750	five different formalizations of \cref{prop:structuralist-naive}:
   751	
   752	\begin{itemize}
   753	\item \textbf{Paper II (Set-theoretic).} A number's role is encoded by
   754	its membership profile in a chosen set-theoretic universe. Multiple
   755	encodings (von Neumann, Zermelo) instantiate the same role; their
   756	underdetermination is Benacerraf's identification problem.
   757	\item \textbf{Paper III (Universal property).} A number's role is its
   758	position in the initial successor structure $(\mathbb{N}, 0,
   759	\mathrm{succ})$, characterized by its universal property. The
   760	underdetermination of Paper II is dissolved.
   761	\item \textbf{Paper IV (Yoneda).} A number's role is its representable
   762	functor $\mathrm{Hom}(-, n)$. ``What role does $n$ play?'' becomes
   763	``what natural transformations land at $n$?''.
   764	\item \textbf{Paper V (HoTT).} A number's role is its identity (path)
   765	type within the inductive type $\mathbb{N}$. Univalence makes the
   766	role-identity equivalence native rather than merely modeled.
   767	\item \textbf{Paper VI (Categorical / structural).} A number's role
   768	is what is invariant under all structure-preserving morphisms of
   769	arithmetic.
   770	\end{itemize}
   771	
   772	The synthesis paper argues that, under univalence, papers III through
   773	VI are the same theory.
   774	
   775	\begin{remark}[The naive level is recovered, not erased]
   776	\label{rem:recovery}
   777	A subtle point. The structuralist's question, in any of its formal
   778	guises, gives a precise answer to ``what \emph{is} 58?'' But the answer
   779	is licensed by the naive level: it is licensed because the structural
   780	characterization \emph{recovers} the inscriptions and the counting practice
   781	in the right way. A formalization that gave the right structural answer
   782	but failed to recover the everyday use of ``58'' would be deficient as a
   783	theory of \emph{arithmetic} (whatever else it might be). The naive level
   784	is therefore not only a starting point but a constraint of adequacy on
   785	all the formalizations.
   786	\end{remark}
   787	
   788	\section{Results}
   789	\label{sec:results}
   790	
   791	We collect the principal results of the paper for ease of reference.
   792	
   793	\begin{theorem}[Symbol/object confusion]
   794	The strict identification of a number with any one of its inscriptions
   795	is inconsistent with the existence of cross-system equations.
   796	(\cref{thm:symbol-object})
   797	\end{theorem}
   798	
   799	\begin{theorem}[No-canonical-numeral]
   800	There is no privileged numeral system; for any finite set of adequate
   801	numeral systems there is a further adequate system not equivalent as a
   802	syntactic object to any of them. (\cref{thm:no-canonical-numeral})
   803	\end{theorem}
   804	
   805	\begin{theorem}[Naive Benacerraf principle]
   806	All adequate numeral systems are interconvertible without arithmetical
   807	loss; numbers are the shared semantic content of all of them.
   808	(\cref{thm:naive-benacerraf})
   809	\end{theorem}
   810	
   811	\begin{theorem}[Inadequacy of the naive level]
   812	A theory that identifies numbers with their inscriptions, or with any
   813	single privileged numeral system, cannot underwrite cross-system
   814	arithmetic. (\cref{thm:naive-inadequate})
   815	\end{theorem}
   816	
   817	\begin{proposition}[Indispensability of the naive level]
   818	The naive level is constitutive of (a) acquisition of arithmetic, (b)
   819	application of arithmetic, and (c) pedagogical introduction of formal
   820	arithmetic. (Combination of \cref{prop:acquisition,prop:application,
   821	prop:pedagogical}.)
   822	\end{proposition}
   823	
   824	\begin{proposition}[Naive emergence of structuralism]
   825	The structuralist's question, ``what role does $n$ play?'', arises
   826	naturally from the inadequacy of the naive level and is the unifying
   827	question of papers II through VI. (\cref{prop:structuralist-naive})
   828	\end{proposition}
   829	
   830	\section{The Haskell Artifact: A Multi-System Numeral Parser}
   831	\label{sec:haskell}
   832	
   833	To illustrate the syntax/semantics distinction concretely we provide a
   834	small Haskell program that parses numerals in four systems---decimal,
   835	Roman, tally, and a simplified Babylonian sexagesimal---and reduces them
   836	all to a single structural normal form, namely a Peano natural number.
   837	
   838	The program is intentionally minimal. Its purpose is not industrial
   839	parsing but illustration of the following correspondence: distinct
   840	syntactic constructors (the parsers) feed a single semantic constructor
   841	(the normal form). What we model in code is exactly the diagram
   842	
   843	\[
   844	\begin{array}{ccc}
   845	\text{numeral} & \xrightarrow{\;\text{parse}\;} & \text{semantic value (Peano natural)}
   846	\end{array}
   847	\]
   848	with several different parsers and one shared codomain. We then test that
   849	\textsf{LVIII}, \texttt{58}, \texttt{||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,|||\,|||} (58 strokes), and the
   850	sexagesimal $(0; 58)$ all reduce to the same Peano value.
   851	
   852	\subsection{Module structure}
   853	
   854	The artifact is split into the following modules:
   855	\begin{itemize}
   856	\item \texttt{Naive.Peano}: the structural normal form (Peano naturals)
   857	and basic arithmetic.
   858	\item \texttt{Naive.Decimal}: a Hindu-Arabic decimal parser.
   859	\item \texttt{Naive.Roman}: a Roman numeral parser handling subtractive
   860	notation.
   861	\item \texttt{Naive.Tally}: a tally parser.
   862	\item \texttt{Naive.Babylonian}: a simplified base-60 parser.
   863	\item \texttt{Main}: tests that all four parsers agree on a fixed sample.
   864	\end{itemize}
   865	The full source is at \texttt{src/01-naive/} in the project repository.
   866	
   867	\subsection{The shared codomain}
   868	
   869	\begin{lstlisting}[language=Haskell]
   870	data Peano = Z | S Peano deriving (Eq, Show)
   871	
   872	fromInt :: Int -> Peano
   873	fromInt n
   874	  | n <= 0    = Z
   875	  | otherwise = S (fromInt (n - 1))
   876	
   877	toInt :: Peano -> Int
   878	toInt Z     = 0
   879	toInt (S k) = 1 + toInt k
   880	
   881	addP :: Peano -> Peano -> Peano
   882	addP Z     y = y
   883	addP (S x) y = S (addP x y)
   884	\end{lstlisting}
   885	
   886	This is the structural normal form into which all four parsers reduce.
   887	We will return to this datum in Paper III, where we will recognize
   888	\texttt{Peano} as an instance of the universal property of $\mathbb{N}$,
   889	and in Paper V, where it appears as the inductive type defining
   890	$\mathbb{N}$ in HoTT.
   891	
   892	\subsection{Decimal, Roman, tally, Babylonian}
   893	
   894	A sketch of each parser:
   895	
   896	\begin{lstlisting}[language=Haskell]
   897	parseDecimal :: String -> Maybe Peano
   898	parseDecimal = fmap fromInt . readMaybe
   899	
   900	romanValue :: Char -> Maybe Int
   901	romanValue c = lookup c
   902	  [('I',1),('V',5),('X',10),('L',50),('C',100),('D',500),('M',1000)]
   903	
   904	parseRoman :: String -> Maybe Peano
   905	parseRoman = fmap fromInt . roman . map romanValue
   906	  where
   907	    roman vs = case sequence vs of
   908	      Nothing -> Nothing
   909	      Just xs -> Just (foldr step 0 (zip xs (drop 1 xs ++ [0])))
   910	    step (x,y) acc = if x < y then acc - x else acc + x
   911	
   912	-- Tally: count only '|'; '/' is a grouping symbol that
   913	-- contributes 0. Any other character fails.
   914	parseTally :: String -> Maybe Peano
   915	parseTally s
   916	  | all (`elem` "|/") s = Just (fromInt (length (filter (=='|') s)))
   917	  | otherwise           = Nothing
   918	
   919	-- Babylonian: not a string parser. Given a pre-tokenized
   920	-- list of (digit, place) pairs, return the denotation.

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(Cref|cref|ref|eqref|cite|label|includegraphics|input|usepackage|bibliography|bibliographystyle|url|href|AddEverypageHook)|TODO|FIXME' papers/01-naive/latex/01-naive.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
4:\usepackage{amsmath, amssymb, amsthm}
7:\usepackage{tikz-cd}
8:\usepackage{tikz}
11:\usepackage{hyperref}
12:\usepackage{cleveref}
15:\usepackage{graphicx}
18:\usepackage{listings}
21:\usepackage[margin=1in]{geometry}
24:\usepackage{everypage}
25:\usepackage{xcolor}
40:\AddEverypageHook{%
110:\label{sec:introduction}
163:\Cref{sec:numerals-syntax} surveys numeral systems, treating them as syntax,
165:naive level. \Cref{sec:counting-quantity} develops the dual aspect---numbers
167:embodied cognition. \Cref{sec:pre-fregean} traces the pre-Fregean intellectual
169:of psychologism and his Sinn/Bedeutung distinction. \Cref{sec:insufficient}
173:level). \Cref{sec:indispensable} argues conversely that the naive level is
176:\Cref{sec:bridge} shows that the naive level is the natural locus for the
179:\Cref{sec:results} states the principal results of the paper as theorems---a
181:naive Benacerraf principle. \Cref{sec:haskell} describes a small Haskell
183:single structural normal form. \Cref{sec:discussion,sec:conclusion} reflect
187:\label{sec:framework}
199:\label{def:numeral-system}
216:\label{ex:hindu-arabic}
225:\label{ex:tally}
233:\label{ex:roman}
241:\label{ex:babylonian}
252:\label{def:numeral-equivalence}
260:\label{rem:symbol-vs-number}
261:Already in \cref{def:numeral-equivalence}, we have implicitly committed to
266:``mean the same thing''. The bare existence of \cref{def:numeral-equivalence}
275:\label{def:counting}
283:The \emph{availability} of \cref{def:counting} again presupposes more
286:\cref{sec:insufficient}.
290:\label{sec:numerals-syntax}
319:\label{prop:positional-compression}
337:\label{def:naive-ss}
351:We emphasize that \cref{def:naive-ss} is a \emph{weak} version of the
366:in \cref{sec:insufficient} that this is the first crack in the naive
370:\label{sec:counting-quantity}
382:\label{def:naive-cardinality}
392:\label{ex:hume}
419:\label{rem:fingers}
433:\label{prop:naive-induction}
458:\cref{sec:insufficient}.
461:\label{sec:pre-fregean}
511:\label{rem:sinn-bedeutung}
535:\label{sec:insufficient}
543:\label{thm:symbol-object}
567:\label{thm:no-canonical-numeral}
584:\Cref{thm:no-canonical-numeral} is a syntactic version of a more famous
590:\label{thm:naive-benacerraf}
602:is the cross-system equivalence of \cref{def:numeral-equivalence}. This
623:\label{thm:naive-inadequate}
632:Combine \cref{thm:symbol-object,thm:no-canonical-numeral,thm:naive-benacerraf}.
635:\Cref{thm:naive-inadequate} is the negative result of the paper: the
641:\label{sec:indispensable}
651:\label{prop:acquisition}
666:\label{prop:application}
682:\label{prop:pedagogical}
694:The cumulative force of \cref{prop:acquisition,prop:application,
702:\label{rem:physics-compare}
713:(\cref{sec:insufficient}) and that it is indispensable
714:(\cref{sec:indispensable})---are not in tension. They occupy different
723:\label{sec:bridge}
725:The diagnostic question that emerges from \cref{thm:naive-inadequate} is:
733:\label{def:structuralist-question}
740:\label{prop:structuralist-naive}
742:\cref{thm:naive-inadequate} as encountered at the naive level. Numbers
750:five different formalizations of \cref{prop:structuralist-naive}:
776:\label{rem:recovery}
789:\label{sec:results}
796:(\cref{thm:symbol-object})
802:syntactic object to any of them. (\cref{thm:no-canonical-numeral})
808:(\cref{thm:naive-benacerraf})
814:arithmetic. (\cref{thm:naive-inadequate})
820:arithmetic. (Combination of \cref{prop:acquisition,prop:application,
827:question of papers II through VI. (\cref{prop:structuralist-naive})
831:\label{sec:haskell}
953:\label{rem:artifact-notes}
966:\label{sec:discussion}
997:the naive practice. This is the methodological role of \cref{rem:recovery}.
1038:\label{sec:conclusion}
1044:(\cref{thm:symbol-object}), no inscription is canonical
1045:(\cref{thm:no-canonical-numeral}), and adequate inscriptions are
1046:interconvertible (\cref{thm:naive-benacerraf}). Indispensable, because
1048:through it (\cref{prop:acquisition,prop:application,prop:pedagogical}).
1051:question: \emph{what role does $n$ play?} (\cref{def:structuralist-question}).
1075:\label{app:naive-sequence}
1107:\label{app:lviii-example}
1140:\label{app:naive}

exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '921,1220p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   921	fromBabylonian :: [(Int,Int)] -> Maybe Peano
   922	fromBabylonian places
   923	  | all valid places = Just (fromInt (sum
   924	      [d * 60 ^ p | (d,p) <- places]))
   925	  | otherwise        = Nothing
   926	  where valid (d, p) = 0 <= d && d < 60 && p >= 0
   927	\end{lstlisting}
   928	
   929	\subsection{The agreement test}
   930	
   931	\begin{lstlisting}[language=Haskell]
   932	main :: IO ()
   933	main = do
   934	  let dec   = parseDecimal   "58"
   935	      rom   = parseRoman     "LVIII"
   936	      tally = parseTally     (replicate 58 '|')
   937	      bab   = fromBabylonian [(58, 0)]
   938	  putStrLn $ "decimal:    " ++ show dec
   939	  putStrLn $ "roman:      " ++ show rom
   940	  putStrLn $ "tally:      " ++ show tally
   941	  putStrLn $ "babylonian: " ++ show bab
   942	  putStrLn $ "all equal?  " ++ show (and
   943	    [ dec == rom, rom == tally, tally == bab ])
   944	\end{lstlisting}
   945	
   946	The point of the test is exactly the point of the paper: four glyphically
   947	unrelated inscriptions reduce to the same structural object. The
   948	Haskell type system enforces this: all four reduction functions have
   949	codomain \texttt{Maybe Peano}, so equality of their outputs is
   950	meaningful.
   951	
   952	\begin{remark}[Notes on the artifact]
   953	\label{rem:artifact-notes}
   954	Two terminological points are worth flagging. First, \texttt{parseTally}
   955	counts only \texttt{'|'} marks; the diagonal \texttt{'/'} is treated as
   956	a grouping symbol contributing zero to the count. Hence, on this
   957	parser, \texttt{"//|||"} and \texttt{"|||"} both denote 3. The choice
   958	matches the paper's emphasis on denotation rather than well-formedness
   959	of inscription. Second, \texttt{fromBabylonian} is not a string parser
   960	but a denotation function on pre-tokenized \texttt{[(digit, place)]}
   961	lists. We retain \texttt{parseBabylonian} as a legacy alias in the
   962	shipped module. The full source treats this naming explicitly.
   963	\end{remark}
   964	
   965	\section{Discussion}
   966	\label{sec:discussion}
   967	
   968	\subsection{Connections to the rest of the series}
   969	
   970	The naive level establishes the desiderata that each formal level must
   971	meet. We summarize the form these desiderata take in each subsequent
   972	paper:
   973	
   974	\begin{itemize}
   975	\item \emph{Paper II (set-theoretic)} must explain how the multiplicity
   976	of inscriptions can be reduced to a single set-theoretic encoding---and
   977	must confront the residual underdetermination at the next level (von
   978	Neumann vs.\ Zermelo encoding).
   979	\item \emph{Paper III (universal property)} must show that the
   980	structural role identified at the naive level is captured by initiality
   981	in the category of successor structures; in particular, the unique
   982	recursion morphism must reproduce the everyday operations the naive
   983	level uses.
   984	\item \emph{Paper IV (Yoneda)} must show that the structural role is
   985	captured by the representable functor; in particular, the maps from
   986	$\mathrm{Hom}(-, n)$ to other functors $F$ correspond to elements of
   987	$F(n)$ in a way that respects the everyday operations.
   988	\item \emph{Paper V (HoTT)} must show that the structural role is
   989	captured by the inductive type, with identity types capturing the
   990	intuitive ``same number'' relation native to the naive level.
   991	\item \emph{Paper VI (categorical/structural)} must show that the
   992	structural role is exactly the invariant content under
   993	structure-preserving morphisms.
   994	\end{itemize}
   995	
   996	In each case, success of the formal level is measured by recovery of
   997	the naive practice. This is the methodological role of \cref{rem:recovery}.
   998	
   999	\subsection{The deflationary alternative}
  1000	
  1001	A reader might worry that we have stacked the deck in favor of
  1002	realism about numbers. Could one not, instead, embrace a thoroughly
  1003	nominalist view in which numerals are all there is, and arithmetic is
  1004	a syntactic discipline of inscription manipulation? The literature
  1005	contains serious such proposals (Field, Hellman, in different ways).
  1006	We do not engage them in detail here; for our purposes it is enough to
  1007	note that any such program must \emph{still} explain why distinct
  1008	inscriptions of ``58'' (decimal, Roman, tally) are interchangeable in
  1009	arithmetical contexts. That explanation is, in the end, a structural
  1010	explanation; the nominalist's parsimony, if successful, is purchased
  1011	at the cost of accepting structural facts about inscriptions.
  1012	
  1013	\subsection{Limitations}
  1014	
  1015	We have restricted attention throughout to the natural numbers. The
  1016	naive level for the rationals, the reals, the complex numbers, the
  1017	$p$-adic numbers, and the algebraic and transcendental numbers raises
  1018	analogous but distinct issues. In particular, the relationship between
  1019	the naive level and the universal-property level is more delicate for
  1020	the real numbers, where the naive level is itself partly definitional
  1021	(``what we mean by a real number is a Cauchy-completion / Dedekind cut /
  1022	positional infinite expansion''). We defer these to a future companion
  1023	piece.
  1024	
  1025	\subsection{The role of computer science}
  1026	
  1027	A subtler limitation: we have spoken of numerals as inscriptions on
  1028	paper or stone. In the present era much arithmetic happens in machines,
  1029	where numerals are voltage patterns, register configurations, or
  1030	floating-point bit fields. The syntax/semantics distinction extends in
  1031	the obvious way, with the wrinkle that inexact representations
  1032	(floating-point) raise their own issues. We mention this only to flag
  1033	that the naive level is not a fixed historical relic; it is a layer of
  1034	mathematical practice that travels into new technological substrates
  1035	without losing its character.
  1036	
  1037	\section{Conclusion}
  1038	\label{sec:conclusion}
  1039	
  1040	We have argued that the naive perspective on number---numerals as syntax,
  1041	quantities as semantics, with the two related by counting and
  1042	denotation---is at once foundationally inadequate and practically
  1043	indispensable. Inadequate, because numbers are not their inscriptions
  1044	(\cref{thm:symbol-object}), no inscription is canonical
  1045	(\cref{thm:no-canonical-numeral}), and adequate inscriptions are
  1046	interconvertible (\cref{thm:naive-benacerraf}). Indispensable, because
  1047	acquisition, application, and pedagogy of arithmetic all proceed
  1048	through it (\cref{prop:acquisition,prop:application,prop:pedagogical}).
  1049	
  1050	The diagnostic move out of the naive level is the structuralist's
  1051	question: \emph{what role does $n$ play?} (\cref{def:structuralist-question}).
  1052	The remaining papers in this series formalize this question in five
  1053	distinct ways and argue, in the synthesis, that under the univalence
  1054	axiom the last four formalizations are equivalent.
  1055	
  1056	\subsection{Future work}
  1057	
  1058	\begin{itemize}
  1059	\item Extend the naive analysis to rationals, reals, and complex
  1060	numbers, with attention to the role of completion and continuity.
  1061	\item Develop the cognitive-science side of the indispensability
  1062	arguments more thoroughly: small-number system, approximate number
  1063	system, magnitude representations.
  1064	\item Pursue the question of inscription on machines (digital,
  1065	neuromorphic, quantum), where the naive level is mediated by hardware.
  1066	\item Connect the naive level to category-theoretic ``free models'':
  1067	on a structuralist reading, the naive level corresponds to working with
  1068	the free model on one generator, before any quotient by structural
  1069	identifications.
  1070	\end{itemize}
  1071	
  1072	\appendix
  1073	
  1074	\section{The Naive Sequence in Detail}
  1075	\label{app:naive-sequence}
  1076	
  1077	For completeness we record the first 60 values of the count sequence in
  1078	each of our four numeral systems. The point is purely illustrative: the
  1079	table makes vivid the shared semantic content of glyphically unrelated
  1080	inscriptions.
  1081	
  1082	\begin{center}
  1083	\renewcommand{\arraystretch}{1.05}
  1084	\begin{tabular}{r|l|l|l}
  1085	\textbf{Decimal} & \textbf{Roman} & \textbf{Tally (gate-five)} & \textbf{Sexagesimal} \\ \hline
  1086	0  & ---           & (empty)              & 0 \\
  1087	1  & I             & |                    & 1 \\
  1088	2  & II            & ||                   & 2 \\
  1089	3  & III           & |||                  & 3 \\
  1090	4  & IV            & ||||                 & 4 \\
  1091	5  & V             & ||||/                & 5 \\
  1092	\vdots & \vdots    & \vdots               & \vdots \\
  1093	10 & X             & two gate-fives       & 10 \\
  1094	20 & XX            & four gate-fives      & 20 \\
  1095	50 & L             & ten gate-fives       & 50 \\
  1096	58 & LVIII         & 11 gate-fives + 3    & 58 \\
  1097	59 & LIX           & 11 gate-fives + 4    & 59 \\
  1098	60 & LX            & 12 gate-fives        & $1{;}0$ \\
  1099	\end{tabular}
  1100	\end{center}
  1101	
  1102	The qualitative jump at row 60 in the sexagesimal column---where the
  1103	representation acquires a second positional place---illustrates how
  1104	positional systems amplify compactness at integer powers of the base.
  1105	
  1106	\section{A Worked Example: Why $58 = \mathsf{LVIII}$ is Non-Trivial}
  1107	\label{app:lviii-example}
  1108	
  1109	We work the example through in detail, in part to illustrate the
  1110	mechanics of the syntax/semantics distinction, and in part to show how
  1111	much of arithmetic the naive theorist already implicitly uses.
  1112	
  1113	\paragraph{Decimal side.} The string ``58'' parses, in the standard
  1114	positional algorithm, as $5 \cdot 10 + 8$. To compute this we need the
  1115	multiplication $5 \cdot 10 = 50$ and the addition $50 + 8 = 58$. Both
  1116	operations are themselves unfolded by the count sequence: we know
  1117	$50 + 8 = 58$ because counting from 50 by ones for eight steps gives
  1118	51, 52, 53, 54, 55, 56, 57, 58.
  1119	
  1120	\paragraph{Roman side.} The string \textsf{LVIII} parses, by the additive
  1121	rule (no leading subtractive in this case), as
  1122	$\mathsf{L} + \mathsf{V} + \mathsf{I} + \mathsf{I} + \mathsf{I} =
  1123	50 + 5 + 1 + 1 + 1$. We compute $50 + 5 = 55$ (counting from 50 by
  1124	ones for five steps) and $55 + 1 + 1 + 1 = 58$ (three more steps).
  1125	
  1126	\paragraph{Equality.} Both sides reduce to 58 (in the count-sequence
  1127	sense). The equation $58 = \mathsf{LVIII}$ is therefore the assertion
  1128	that two distinct procedures terminate at the same count. The naive
  1129	theorist's grasp of this assertion presupposes (a) the count sequence,
  1130	(b) the additive principle, (c) confidence that procedures starting
  1131	from different inscriptions but tracking the same quantity will agree.
  1132	None of these is a primitive of pure inscription manipulation.
  1133	
  1134	\paragraph{Lifting.} The structural lift in subsequent papers will say:
  1135	forget the procedures; the equation reflects the fact that both
  1136	inscriptions designate the same element of the initial successor
  1137	structure / the same Peano term / the same path in $\mathbb{N}$.
  1138	
  1139	\section{On the Word ``Naive''}
  1140	\label{app:naive}
  1141	
  1142	We have used ``naive'' throughout in a technical sense; we now record
  1143	the choice. Two alternative terms are available: \emph{pre-formal} and
  1144	\emph{pre-theoretic}.
  1145	
  1146	``Pre-formal'' is accurate but suggests temporal priority where we
  1147	intend logical priority: the naive level is not what comes \emph{before}
  1148	formalization in time but what \emph{lies underneath} it, even after
  1149	formalization is complete.
  1150	
  1151	``Pre-theoretic'' is misleading because the naive level has plenty of
  1152	implicit theory in it: counting, succession, the additive principle. It
  1153	is pre-axiomatic, not pre-theoretic.
  1154	
  1155	``Naive'' has the disadvantage of pejorative overtones in everyday
  1156	English; we use it in the established mathematical sense (cf.\ ``naive
  1157	set theory'', ``naive Bayes'') of \emph{prior to formalization but
  1158	serviceable for many purposes}. We hope the reader will tolerate the
  1159	term in this technical sense.
  1160	
  1161	\begin{thebibliography}{99}
  1162	
  1163	\bibitem{awodey1996}
  1164	S.~Awodey,
  1165	\emph{Structure in Mathematics and Logic: A Categorical Perspective},
  1166	Philosophia Mathematica \textbf{4} (1996), 209--237.
  1167	
  1168	\bibitem{benacerraf1965}
  1169	P.~Benacerraf,
  1170	\emph{What Numbers Could Not Be},
  1171	The Philosophical Review \textbf{74} (1965), 47--73.
  1172	
  1173	\bibitem{benacerraf1973}
  1174	P.~Benacerraf,
  1175	\emph{Mathematical Truth},
  1176	The Journal of Philosophy \textbf{70} (1973), 661--679.
  1177	
  1178	\bibitem{carey}
  1179	S.~Carey,
  1180	\emph{The Origin of Concepts},
  1181	Oxford University Press, 2009.
  1182	
  1183	\bibitem{dehaene}
  1184	S.~Dehaene,
  1185	\emph{The Number Sense}, Oxford University Press, 1997.
  1186	
  1187	\bibitem{field1980}
  1188	H.~Field,
  1189	\emph{Science Without Numbers}, Princeton University Press, 1980.
  1190	
  1191	\bibitem{frege1884}
  1192	G.~Frege,
  1193	\emph{Die Grundlagen der Arithmetik}, Breslau, 1884.
  1194	English translation by J.~L.~Austin, Blackwell, 1953.
  1195	
  1196	\bibitem{frege1892}
  1197	G.~Frege,
  1198	\emph{\"Uber Sinn und Bedeutung},
  1199	Zeitschrift f\"ur Philosophie und philosophische Kritik \textbf{100}
  1200	(1892), 25--50.
  1201	
  1202	\bibitem{frege1894}
  1203	G.~Frege,
  1204	Review of Husserl's \emph{Philosophie der Arithmetik},
  1205	Zeitschrift f\"ur Philosophie und philosophische Kritik \textbf{103}
  1206	(1894), 313--332.
  1207	
  1208	\bibitem{geier}
  1209	M.~Geier (ed.),
  1210	\emph{Frege's Lectures on Logic}, Open Court, 2004.
  1211	
  1212	\bibitem{gelman-gallistel}
  1213	R.~Gelman and C.~R.~Gallistel,
  1214	\emph{The Child's Understanding of Number},
  1215	Harvard University Press, 1978.
  1216	
  1217	\bibitem{hale-wright}
  1218	B.~Hale and C.~Wright,
  1219	\emph{The Reason's Proper Study},
  1220	Oxford University Press, 2001.

exec
/usr/local/bin/zsh -lc "wc -l papers/01-naive/latex/01-naive.tex && sed -n '1,120p' papers/01-naive/latex/01-naive.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
    1270 papers/01-naive/latex/01-naive.tex
\documentclass[12pt]{article}

% Core math
\usepackage{amsmath, amssymb, amsthm}

% Diagrams
\usepackage{tikz-cd}
\usepackage{tikz}

% References
\usepackage{hyperref}
\usepackage{cleveref}

% Graphics
\usepackage{graphicx}

% Code listings
\usepackage{listings}

% Page layout
\usepackage[margin=1in]{geometry}

% GrokRxiv sidebar
\usepackage{everypage}
\usepackage{xcolor}

% Theorem environments
\newtheorem{theorem}{Theorem}[section]
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

% GrokRxiv sidebar definition
\definecolor{grokgray}{RGB}{110,110,110}
\AddEverypageHook{%
  \ifnum\value{page}=1
    \begin{tikzpicture}[remember picture, overlay]
      \node[
        rotate=90,
        anchor=south,
        font=\Large\sffamily\bfseries\color{grokgray},
        inner sep=0pt
      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
      {GrokRxiv:2026.05.naive-perspective-numbers\quad
       [\,math.HO\,]\quad
       03 May 2026};
    \end{tikzpicture}
  \fi
}

% Listings styling
\lstset{
  basicstyle=\ttfamily\small,
  columns=fullflexible,
  breaklines=true,
  showstringspaces=false,
  frame=single,
  framesep=4pt
}

\title{The Naive Perspective: \\ Numbers as Symbols and Quantities \\
\large Paper I of the Univalent Correspondence Series}

\author{YonedaAI Research \\
\textit{Univalent Correspondence Working Group} \\
\textit{Independent Research Collective} \\
\texttt{research@yonedaai.example}}

\date{3 May 2026}

\begin{document}
\maketitle

\begin{abstract}
This is the first paper in a six-part series, plus synthesis, on what we call
the \emph{Univalent Correspondence}: six perspectives on what a natural number
``is''. Across the series we proceed from the naive level (this paper),
through set-theoretic encoding, universal property, the Yoneda perspective,
Homotopy Type Theory (HoTT), and the categorical/structural view, before
unifying the latter four under Voevodsky's univalence axiom. The present
paper occupies the \emph{naive} or pre-formal level, where a number is at
once a symbol (``58'', \textsf{LVIII}, \texttt{||||\,||||}) and a quantity
(the cardinality of a counted collection). We treat numerals as syntax and
the underlying number as semantics, and we trace this distinction through
the historical arc that runs from Mill's empiricism, Husserl's phenomenology
of arithmetic, and Frege's critique of psychologism, into Benacerraf's
identification problem. We argue that the naive level is simultaneously
\emph{insufficient}---because of symbol/object confusion, the multiplicity
of equally adequate representations, and a foundational underdetermination
that already foreshadows the structuralist response---and \emph{indispensable},
because it is the interface where embodied counting, finger arithmetic,
and culturally transmitted numeral systems anchor mathematical content in
human cognition. We close by showing that the naive level is precisely
where the structuralist's question, ``what role does this object play?'',
first arises, thereby motivating each of the five formal levels developed
in subsequent papers. We also provide a small Haskell artifact demonstrating
the syntax-semantics distinction by parsing four numeral systems (Hindu-Arabic,
Roman, tally, Babylonian sexagesimal) into a single structural normal form.
\end{abstract}

\tableofcontents
\bigskip

\section{Introduction}
\label{sec:introduction}

\subsection{The question}

What is the number~58? On the page in front of you it is two glyphs, ``5''
and ``8''. In a Roman inscription it is the four-glyph sequence
\textsf{LVIII}. On a tally sheet kept by a shepherd it is fifty-eight scratches.
In Babylonian sexagesimal cuneiform it is a single wedge cluster meaning
``58''. Each of these is unambiguously a way of writing 58, and yet they share
no graphical features, no spelling, no length. Whatever 58 \emph{is}, it
cannot be any one of these inscriptions, for it survives translation between

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(llbracket|rrbracket|mathsf\\{|textsf\\{|texttt\\{|S|Theta|mathbb|mathcal|floor|ldots|times|cdot|begin\\{tabular\\}|begin\\{lstlisting\\})|\\"'^'"\\*|\\|\\}' papers/01-naive/latex/01-naive.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
72:\texttt{research@yonedaai.example}}
87:once a symbol (``58'', \textsf{LVIII}, \texttt{||||\,||||}) and a quantity
116:\textsf{LVIII}. On a tally sheet kept by a shepherd it is fifty-eight scratches.
141:\begin{tabular}{l|l}
144:Set-theoretic (von Neumann) & $\{0, 1, \ldots, 57\}$ \\
147:HoTT & A canonical term in the inductive type $\mathbb{N}$, up to path equivalence \\
200:A \emph{numeral system} is a triple $\mathcal{N} = (\Sigma, L, \llbracket\,
201:\cdot\, \rrbracket)$ where:
203:\item $\Sigma$ is a finite alphabet of \emph{glyphs};
204:\item $L \subseteq \Sigma^*$ is a (possibly partial) language of well-formed
206:\item $\llbracket\, \cdot\, \rrbracket : L \to \mathbb{N}$ is a
211:$\mathbb{N}$; the codomain is the pretheoretic collection of natural
217:$\Sigma_{10} = \{0, 1, 2, \ldots, 9\}$, $L_{10}$ is the set of finite
218:non-empty strings over $\Sigma_{10}$ with no leading $0$ except for the
220:$\llbracket d_{n-1} d_{n-2} \cdots d_1 d_0 \rrbracket = \sum_{i=0}^{n-1}
221:d_i \cdot 10^i$.
226:$\Sigma_{|} = \{\,|\,\}$, $L_{|} = \{\,|\,\}^*$ (all finite strings),
227:$\llbracket s \rrbracket = $ the length of $s$. We will sometimes use
229:$\Sigma_{|}$ but not the denotation.
234:$\Sigma_R = \{\,\textsf{I}, \textsf{V}, \textsf{X}, \textsf{L},
235:\textsf{C}, \textsf{D}, \textsf{M}\,\}$ with the usual subtractive
237:$\llbracket \textsf{LVIII}\rrbracket = 58$.
254:systems $\mathcal{N}_1, \mathcal{N}_2$ are \emph{equivalent}, written
255:$w_1 \sim w_2$, iff $\llbracket w_1 \rrbracket_1 = \llbracket w_2
256:\rrbracket_2$.
263:$\llbracket w_1 \rrbracket_1$ and $\llbracket w_2 \rrbracket_2$ can be
277:individuable. A \emph{counting} of $X$ is a bijection $c : \{1, 2, \ldots,
278:n\} \to X$ for some $n \in \mathbb{N}$. The number $n$ is called the
321:a numeral of length $\Theta(\log_b n)$ to denote $n$, whereas a pure tally
323:distinct values requires length $\Theta(n / v_{\max})$ where $v_{\max}$
330:representation uses $\Theta(n / v_{\max})$ tokens of the largest available
338:Within a numeral system $\mathcal{N} = (\Sigma, L, \llbracket\,\cdot\,
339:\rrbracket)$:
343:\item the \emph{semantic} content is the value $\llbracket w \rrbracket$.
347:system (e.g.\ \textsf{IIII} vs.\ \textsf{IV} in pre-medieval vs.\ medieval
360:underlying $\mathbb{N}$ is not a defect of any one system; it is a feature
420:A working adult who has internalized the multiplication table to 9$\times$9
456:move to \emph{arithmetic}---to facts of the form $58 = 2 \cdot 29$---without
482:\S\S 7--10. We side with the orthodox post-Fregean reading on this, while
515:developing. ``58'' and ``$2 \cdot 29$'' are different senses of the same
547:$58 = \mathsf{LVIII}$, then one is forced to identify the glyph sequences
548:``58'' and ``\textsf{LVIII}'', which are manifestly distinct.
552:By transitivity of identity. If ``58'' $= 58$ and $58 = \mathsf{LVIII}$,
553:then ``58'' $= \mathsf{LVIII}$. But the strings ``58'' and
554:``\textsf{LVIII}'' are distinct strings of distinct glyphs over different
559:\emph{intelligibility} of equations like $58 = \mathsf{LVIII}$ requires
569:of numeral systems $\{\mathcal{N}_1, \ldots, \mathcal{N}_k\}$ each adequate
571:$\mathcal{N}_{k+1}$, not equivalent to any $\mathcal{N}_i$ as a
576:Given $\mathcal{N}_1, \ldots, \mathcal{N}_k$, define $\mathcal{N}_{k+1}$
577:as the positional system over base $b' = \max_i |\Sigma_i| + 1$. By
578:construction, $|\Sigma_{k+1}| = b'$ exceeds the alphabet size of every
579:$\mathcal{N}_i$, so $\mathcal{N}_{k+1}$ is not equivalent as a syntactic
591:Every numeral system $\mathcal{N}_i$ adequate for $\mathbb{N}$ is
593:$\mathcal{N}_i$ can be \emph{the} number system; numbers must be the
594:common semantic content shared by all adequate $\mathcal{N}_i$.
598:Let $\mathcal{N}_i, \mathcal{N}_j$ be adequate. For any
600:$\llbracket w_1 \circ w_2 \rrbracket_i = \llbracket w_1' \circ w_2'
601:\rrbracket_j$ whenever $w_1 \sim w_1'$ and $w_2 \sim w_2'$, where $\sim$
603:witnesses that $\mathcal{N}_i$ and $\mathcal{N}_j$ are interconvertible
626:for the existence of cross-system equations like $58 = \mathsf{LVIII}$.
675:$58 = 2 \cdot 29$). It does not, by itself, tell us that there are 58
685:who is to be taught the universal property of $\mathbb{N}$ must already
686:know what $\mathbb{N}$ \emph{is intuitively}; the universal property
758:position in the initial successor structure $(\mathbb{N}, 0,
765:type within the inductive type $\mathbb{N}$. Univalence makes the
849:\textsf{LVIII}, \texttt{58}, \texttt{||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,|||\,|||} (58 strokes), and the
856:\item \texttt{Naive.Peano}: the structural normal form (Peano naturals)
858:\item \texttt{Naive.Decimal}: a Hindu-Arabic decimal parser.
859:\item \texttt{Naive.Roman}: a Roman numeral parser handling subtractive
861:\item \texttt{Naive.Tally}: a tally parser.
862:\item \texttt{Naive.Babylonian}: a simplified base-60 parser.
863:\item \texttt{Main}: tests that all four parsers agree on a fixed sample.
865:The full source is at \texttt{src/01-naive/} in the project repository.
869:\begin{lstlisting}[language=Haskell]
888:\texttt{Peano} as an instance of the universal property of $\mathbb{N}$,
890:$\mathbb{N}$ in HoTT.
896:\begin{lstlisting}[language=Haskell]
931:\begin{lstlisting}[language=Haskell]
949:codomain \texttt{Maybe Peano}, so equality of their outputs is
954:Two terminological points are worth flagging. First, \texttt{parseTally}
955:counts only \texttt{'|'} marks; the diagonal \texttt{'/'} is treated as
957:parser, \texttt{"//|||"} and \texttt{"|||"} both denote 3. The choice
959:of inscription. Second, \texttt{fromBabylonian} is not a string parser
960:but a denotation function on pre-tokenized \texttt{[(digit, place)]}
961:lists. We retain \texttt{parseBabylonian} as a legacy alias in the
1084:\begin{tabular}{r|l|l|l}
1106:\section{A Worked Example: Why $58 = \mathsf{LVIII}$ is Non-Trivial}
1114:positional algorithm, as $5 \cdot 10 + 8$. To compute this we need the
1115:multiplication $5 \cdot 10 = 50$ and the addition $50 + 8 = 58$. Both
1120:\paragraph{Roman side.} The string \textsf{LVIII} parses, by the additive
1122:$\mathsf{L} + \mathsf{V} + \mathsf{I} + \mathsf{I} + \mathsf{I} =
1127:sense). The equation $58 = \mathsf{LVIII}$ is therefore the assertion
1137:structure / the same Peano term / the same path in $\mathbb{N}$.

exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '1221,1280p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
  1221	
  1222	\bibitem{hellman1989}
  1223	G.~Hellman,
  1224	\emph{Mathematics Without Numbers},
  1225	Oxford University Press, 1989.
  1226	
  1227	\bibitem{husserl1891}
  1228	E.~Husserl,
  1229	\emph{Philosophie der Arithmetik}, Halle, 1891.
  1230	
  1231	\bibitem{ifrah}
  1232	G.~Ifrah,
  1233	\emph{The Universal History of Numbers},
  1234	Wiley, 2000.
  1235	
  1236	\bibitem{lakoff-nunez}
  1237	G.~Lakoff and R.~N\'u\~nez,
  1238	\emph{Where Mathematics Comes From}, Basic Books, 2000.
  1239	
  1240	\bibitem{maclane}
  1241	S.~Mac~Lane,
  1242	\emph{Categories for the Working Mathematician}, 2nd ed., Springer, 1998.
  1243	
  1244	\bibitem{mill1843}
  1245	J.~S.~Mill,
  1246	\emph{A System of Logic}, London, 1843.
  1247	
  1248	\bibitem{piaget}
  1249	J.~Piaget,
  1250	\emph{The Child's Conception of Number},
  1251	Routledge \& Kegan Paul, 1952.
  1252	
  1253	\bibitem{hottbook}
  1254	The Univalent Foundations Program,
  1255	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics},
  1256	Institute for Advanced Study, 2013. arXiv:1308.0729.
  1257	
  1258	\bibitem{wadler2015}
  1259	P.~Wadler,
  1260	\emph{Propositions as Types},
  1261	Communications of the ACM \textbf{58} (2015), 75--84.
  1262	
  1263	\bibitem{wright1983}
  1264	C.~Wright,
  1265	\emph{Frege's Conception of Numbers as Objects},
  1266	Aberdeen University Press, 1983.
  1267	
  1268	\end{thebibliography}
  1269	
  1270	\end{document}

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/latex-review-01-naive && (command -v latexmk || true) && (command -v pdflatex || true) && (command -v lualatex || true) && (command -v xelatex || true)' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/lualatex
/Library/TeX/texbin/xelatex

codex
The file is 1,270 lines and uses only inline bibliography. I found several reference targets mentioned early that I need to confirm by compile, especially around the outline and generated cross-reference text.
exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/latex-review-01-naive papers/01-naive/latex/01-naive.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 12 in 618ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/01-naive/latex/01-naive.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/latex-review-01-naive/01-naive.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file 01-naive.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
 [] 

LaTeX Warning: Reference `sec:numerals-syntax' on page 1 undefined on input lin
e 163.


LaTeX Warning: Reference `sec:counting-quantity' on page 1 undefined on input l
ine 165.


LaTeX Warning: Reference `sec:pre-fregean' on page 1 undefined on input line 16
7.


LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 1
69.


LaTeX Warning: Reference `sec:indispensable' on page 1 undefined on input line 
173.


LaTeX Warning: Reference `sec:bridge' on page 1 undefined on input line 176.


LaTeX Warning: Reference `sec:results' on page 1 undefined on input line 179.


LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 181.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 183
.


LaTeX Warning: Reference `sec:discussion' on page 1 undefined on input line 183
.

[2]
./papers/01-naive/latex/01-naive.tex:200: Undefined control sequence.
l.200 ...ple $\mathcal{N} = (\Sigma, L, \llbracket
                                                  \,
./papers/01-naive/latex/01-naive.tex:200:  ==> Fatal error occurred, no output 
PDF file produced!
Transcript written on /private/tmp/latex-review-01-naive/01-naive.log.
Latexmk: Getting log file '/private/tmp/latex-review-01-naive/01-naive.log'
Latexmk: Examining '/private/tmp/latex-review-01-naive/01-naive.fls'
Latexmk: Examining '/private/tmp/latex-review-01-naive/01-naive.log'
Latexmk: Missing input file '01-naive.toc' message in .log file:
  No file 01-naive.toc.
Latexmk: ====Problematic refs and citations with line #s in .tex file:
  Reference `sec:numerals-syntax' on page 1 undefined on input line 163
  Reference `sec:counting-quantity' on page 1 undefined on input line 165
  Reference `sec:pre-fregean' on page 1 undefined on input line 167
  Reference `sec:insufficient' on page 1 undefined on input line 169
  Reference `sec:indispensable' on page 1 undefined on input line 173
  Reference `sec:bridge' on page 1 undefined on input line 176
  Reference `sec:results' on page 1 undefined on input line 179
 And 3 more --- see log file '/private/tmp/latex-review-01-naive/01-naive.log'
Latexmk: Summary of warnings from last run of *latex:
  Latex failed to resolve 10 reference(s)
Latexmk: Errors, so I did not complete making targets
Collected error summary (may duplicate other messages):
  pdflatex: Command for 'pdflatex' gave return code 1
      Refer to '/private/tmp/latex-review-01-naive/01-naive.log' and/or above output for details
Latexmk: Sometimes, the -f option can be used to get latexmk
  to try to force complete processing.
  But normally, you will need to correct the file(s) that caused the
  error, and then rerun latexmk.
  In some cases, it is best to clean out generated files before rerunning
  latexmk after you've corrected the files.


codex
The unmodified compile stops at line 200 because `\llbracket` is undefined. To keep looking for downstream issues, I’m going to re-run from the command line with `stmaryrd` preloaded, leaving the file itself unchanged.
exec
/usr/local/bin/zsh -lc "latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/latex-review-01-naive-stmaryrd -jobname=01-naive-stmaryrd \"\\\\RequirePackage{stmaryrd}\\\\input{papers/01-naive/latex/01-naive.tex}\"" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
Rc files read (in order):
  NONE
Latexmk: This is Latexmk, John Collins, 9 March 2026. Version 4.88.
Latexmk: Filename '\RequirePackage{stmaryrd}\input{papers/01-naive/latex/01-naive.tex}' contains character not allowed for TeX file.
Latexmk: Stopping because of bad filename(s).

exec
/usr/local/bin/zsh -lc "mkdir -p /tmp/latex-review-01-naive-stmaryrd && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory=/tmp/latex-review-01-naive-stmaryrd -jobname=01-naive-stmaryrd '\\RequirePackage{stmaryrd}\\input{papers/01-naive/latex/01-naive.tex}'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 971ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
(./papers/01-naive/latex/01-naive.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)

No file 01-naive-stmaryrd.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file 01-naive-stmaryrd.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]
Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
 [] 

LaTeX Warning: Reference `sec:numerals-syntax' on page 1 undefined on input lin
e 163.


LaTeX Warning: Reference `sec:counting-quantity' on page 1 undefined on input l
ine 165.


LaTeX Warning: Reference `sec:pre-fregean' on page 1 undefined on input line 16
7.


LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 1
69.


LaTeX Warning: Reference `sec:indispensable' on page 1 undefined on input line 
173.


LaTeX Warning: Reference `sec:bridge' on page 1 undefined on input line 176.


LaTeX Warning: Reference `sec:results' on page 1 undefined on input line 179.


LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 181.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 183
.


LaTeX Warning: Reference `sec:discussion' on page 1 undefined on input line 183
.

[2] [3]

LaTeX Warning: Reference `def:numeral-equivalence' on page 1 undefined on input
 line 261.


LaTeX Warning: Reference `def:numeral-equivalence' on page 1 undefined on input
 line 266.


LaTeX Warning: Reference `def:counting' on page 1 undefined on input line 283.


LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 2
86.

[4]
Overfull \hbox (17.29555pt too wide) in paragraph at lines 338--340
[]\OT1/cmr/bx/n/12 Definition 3.2 \OT1/cmr/m/n/12 (Naive syn-tax-se-man-tics di
s-tinc-tion)\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Within a nu-meral sys-tem $\OM
S/cmsy/m/n/12 N \OT1/cmr/m/n/12 = (^^F\OML/cmm/m/it/12 ; L; \U/stmry/m/n/12 J \
OMS/cmsy/m/n/12 ^^A \U/stmry/m/n/12 K\OT1/cmr/m/n/12 )$: 

LaTeX Warning: Reference `def:naive-ss' on page 1 undefined on input line 351.


LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 3
66.

[5{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}] [6]

LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 4
58.

[7] [8]

LaTeX Warning: Reference `thm:no-canonical-numeral' on page 1 undefined on inpu
t line 584.


LaTeX Warning: Reference `def:numeral-equivalence' on page 1 undefined on input
 line 602.


LaTeX Warning: Reference `thm:naive-benacerraf' on page 1 undefined on input li
ne 632.


LaTeX Warning: Reference `thm:no-canonical-numeral' on page 1 undefined on inpu
t line 632.


LaTeX Warning: Reference `thm:symbol-object' on page 1 undefined on input line 
632.


LaTeX Warning: Reference `thm:naive-inadequate' on page 1 undefined on input li
ne 635.

[9]

LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
695.


LaTeX Warning: Reference `prop:application' on page 1 undefined on input line 6
95.


LaTeX Warning: Reference `prop:acquisition' on page 1 undefined on input line 6
95.


LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 7
13.


LaTeX Warning: Reference `sec:indispensable' on page 1 undefined on input line 
714.

[10]

LaTeX Warning: Reference `thm:naive-inadequate' on page 1 undefined on input li
ne 725.


LaTeX Warning: Reference `thm:naive-inadequate' on page 1 undefined on input li
ne 742.


LaTeX Warning: Reference `prop:structuralist-naive' on page 1 undefined on inpu
t line 750.

[11]

LaTeX Warning: Reference `thm:symbol-object' on page 1 undefined on input line 
796.


LaTeX Warning: Reference `thm:no-canonical-numeral' on page 1 undefined on inpu
t line 802.


LaTeX Warning: Reference `thm:naive-benacerraf' on page 1 undefined on input li
ne 808.


LaTeX Warning: Reference `thm:naive-inadequate' on page 1 undefined on input li
ne 814.


LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
821.


LaTeX Warning: Reference `prop:application' on page 1 undefined on input line 8
21.


LaTeX Warning: Reference `prop:acquisition' on page 1 undefined on input line 8
21.


LaTeX Warning: Reference `prop:structuralist-naive' on page 1 undefined on inpu
t line 827.


Overfull \hbox (24.33673pt too wide) in paragraph at lines 830--830
[]\OT1/cmr/bx/n/17.28 The Haskell Ar-ti-fact: A Multi-System Nu-meral Parser 
[12]
Overfull \hbox (255.98395pt too wide) in paragraph at lines 847--851
\OT1/cmr/m/n/12 with sev-eral dif-fer-ent parsers and one shared codomain. We t
hen test that \OT1/cmss/m/n/12 LVIII\OT1/cmr/m/n/12 , \OT1/cmtt/m/n/12 58\OT1/c
mr/m/n/12 , \OT1/cmtt/m/n/12 ||||||||||||||||||||||||||||||||||||||||||||||
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang1.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang2.sty) [13]
[14]

LaTeX Warning: Reference `rem:recovery' on page 1 undefined on input line 997.

[15]

LaTeX Warning: Reference `thm:symbol-object' on page 1 undefined on input line 
1044.


LaTeX Warning: Reference `thm:no-canonical-numeral' on page 1 undefined on inpu
t line 1045.


LaTeX Warning: Reference `thm:naive-benacerraf' on page 1 undefined on input li
ne 1046.


LaTeX Warning: Reference `prop:pedagogical' on page 1 undefined on input line 1
048.


LaTeX Warning: Reference `prop:application' on page 1 undefined on input line 1
048.


LaTeX Warning: Reference `prop:acquisition' on page 1 undefined on input line 1
048.


LaTeX Warning: Reference `def:structuralist-question' on page 1 undefined on in
put line 1051.

[16]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.

[17] [18] [19] (/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `01-naive-stmaryrd.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmssi12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/cm-super/sftt1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/stmaryrd/stmary10.pfb>
Output written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.pdf (19
 pages, 345657 bytes).
Transcript written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log
.

exec
/usr/local/bin/zsh -lc "pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory=/tmp/latex-review-01-naive-stmaryrd -jobname=01-naive-stmaryrd '\\RequirePackage{stmaryrd}\\input{papers/01-naive/latex/01-naive.tex}' && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory=/tmp/latex-review-01-naive-stmaryrd -jobname=01-naive-stmaryrd '\\RequirePackage{stmaryrd}\\input{papers/01-naive/latex/01-naive.tex}'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 1082ms:
)
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.out)
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.toc [1{/usr/local/texliv
e/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2])
Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
 [] 
[3] [4] [5]
Overfull \hbox (17.29555pt too wide) in paragraph at lines 338--340
[]\OT1/cmr/bx/n/12 Definition 3.2 \OT1/cmr/m/n/12 (Naive syn-tax-se-man-tics di
s-tinc-tion)\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Within a nu-meral sys-tem $\OM
S/cmsy/m/n/12 N \OT1/cmr/m/n/12 = (^^F\OML/cmm/m/it/12 ; L; \U/stmry/m/n/12 J \
OMS/cmsy/m/n/12 ^^A \U/stmry/m/n/12 K\OT1/cmr/m/n/12 )$: 
[6{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}] [7] [8] [9] [10] [11]

LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
695.

[12] [13]

LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
821.


Overfull \hbox (24.33673pt too wide) in paragraph at lines 830--830
[]\OT1/cmr/bx/n/17.28 The Haskell Ar-ti-fact: A Multi-System Nu-meral Parser 

Overfull \hbox (255.98395pt too wide) in paragraph at lines 847--851
\OT1/cmr/m/n/12 with sev-eral dif-fer-ent parsers and one shared codomain. We t
hen test that \OT1/cmss/m/n/12 LVIII\OT1/cmr/m/n/12 , \OT1/cmtt/m/n/12 58\OT1/c
mr/m/n/12 , \OT1/cmtt/m/n/12 ||||||||||||||||||||||||||||||||||||||||||||||
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang1.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang2.sty) [14]
[15] [16] [17] [18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.

[19] [20] [21] (/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmssi12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/cm-super/sftt1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/stmaryrd/stmary10.pfb>
Output written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.pdf (21
 pages, 356412 bytes).
Transcript written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log
.
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
(./papers/01-naive/latex/01-naive.tex
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.out)
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.toc [1{/usr/local/texliv
e/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2])
Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
 [] 
[3] [4] [5]
Overfull \hbox (17.29555pt too wide) in paragraph at lines 338--340
[]\OT1/cmr/bx/n/12 Definition 3.2 \OT1/cmr/m/n/12 (Naive syn-tax-se-man-tics di
s-tinc-tion)\OT1/cmr/bx/n/12 . []\OT1/cmr/m/n/12 Within a nu-meral sys-tem $\OM
S/cmsy/m/n/12 N \OT1/cmr/m/n/12 = (^^F\OML/cmm/m/it/12 ; L; \U/stmry/m/n/12 J \
OMS/cmsy/m/n/12 ^^A \U/stmry/m/n/12 K\OT1/cmr/m/n/12 )$: 
[6{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}] [7] [8] [9] [10] [11]

LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
695.

[12] [13]

LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
821.


Overfull \hbox (24.33673pt too wide) in paragraph at lines 830--830
[]\OT1/cmr/bx/n/17.28 The Haskell Ar-ti-fact: A Multi-System Nu-meral Parser 

Overfull \hbox (255.98395pt too wide) in paragraph at lines 847--851
\OT1/cmr/m/n/12 with sev-eral dif-fer-ent parsers and one shared codomain. We t
hen test that \OT1/cmss/m/n/12 LVIII\OT1/cmr/m/n/12 , \OT1/cmtt/m/n/12 58\OT1/c
mr/m/n/12 , \OT1/cmtt/m/n/12 ||||||||||||||||||||||||||||||||||||||||||||||
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang1.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstlang2.sty) [14]
[15] [16] [17] [18]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1106.

[19] [20] [21] (/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.aux)

LaTeX Warning: There were undefined references.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmitt10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmssi12.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/cm-super/sftt1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/stmaryrd/stmary10.pfb>
Output written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.pdf (21
 pages, 356420 bytes).
Transcript written on /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log
.

codex
With `stmaryrd` preloaded, the document reaches PDF output. The remaining real diagnostics are two broken `\cref` labels caused by whitespace after line breaks, four overfull boxes, a legacy package warning, and one bookmark-string warning.
exec
/usr/local/bin/zsh -lc "nl -ba papers/01-naive/latex/01-naive.tex | sed -n '134,152p;194,207p;332,344p;688,698p;816,834p;842,852p;1102,1110p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   134	\subsection{Place in the series}
   135	
   136	The series of which this paper is the first instalment is organized around
   137	the following six-row table, which we will call the \emph{columns table}
   138	throughout:
   139	
   140	\begin{center}
   141	\begin{tabular}{l|l}
   142	\textbf{Level} & \textbf{What 58 \emph{is}} \\ \hline
   143	Naive & A symbol; a quantity \\
   144	Set-theoretic (von Neumann) & $\{0, 1, \ldots, 57\}$ \\
   145	Universal property & The 58th iteration of $\mathrm{succ}$ in any initial successor structure \\
   146	Yoneda & The representable functor $\mathrm{Hom}(-, 58)$ \\
   147	HoTT & A canonical term in the inductive type $\mathbb{N}$, up to path equivalence \\
   148	Categorical / structural & An invariant under structure-preserving morphisms of arithmetic \\
   149	\end{tabular}
   150	\end{center}
   151	
   152	Subsequent papers will treat rows two through six in turn, and the synthesis
   194	machinery here.
   195	
   196	\subsection{Numerals as words over a finite alphabet}
   197	
   198	\begin{definition}[Numeral system]
   199	\label{def:numeral-system}
   200	A \emph{numeral system} is a triple $\mathcal{N} = (\Sigma, L, \llbracket\,
   201	\cdot\, \rrbracket)$ where:
   202	\begin{enumerate}
   203	\item $\Sigma$ is a finite alphabet of \emph{glyphs};
   204	\item $L \subseteq \Sigma^*$ is a (possibly partial) language of well-formed
   205	\emph{numerals}; and
   206	\item $\llbracket\, \cdot\, \rrbracket : L \to \mathbb{N}$ is a
   207	\emph{denotation function} mapping each well-formed numeral to a natural
   332	\end{proof}
   333	
   334	\subsection{Syntax versus semantics, naively stated}
   335	
   336	\begin{definition}[Naive syntax-semantics distinction]
   337	\label{def:naive-ss}
   338	Within a numeral system $\mathcal{N} = (\Sigma, L, \llbracket\,\cdot\,
   339	\rrbracket)$:
   340	\begin{itemize}
   341	\item the \emph{syntactic} content of a numeral $w$ is $w$ itself, the
   342	finite string of glyphs;
   343	\item the \emph{semantic} content is the value $\llbracket w \rrbracket$.
   344	\end{itemize}
   688	characterization is empty if the introduced object is not already
   689	familiar.
   690	\end{proposition}
   691	
   692	\subsection{The naive level as semantic anchor}
   693	
   694	The cumulative force of \cref{prop:acquisition,prop:application,
   695	prop:pedagogical} is that the naive level is what \emph{makes the formal
   696	levels semantically non-empty}. A formal system is, considered abstractly,
   697	a manipulation of inscriptions according to rules. What gives it
   698	mathematical content is the connection to the naive practice it is
   816	
   817	\begin{proposition}[Indispensability of the naive level]
   818	The naive level is constitutive of (a) acquisition of arithmetic, (b)
   819	application of arithmetic, and (c) pedagogical introduction of formal
   820	arithmetic. (Combination of \cref{prop:acquisition,prop:application,
   821	prop:pedagogical}.)
   822	\end{proposition}
   823	
   824	\begin{proposition}[Naive emergence of structuralism]
   825	The structuralist's question, ``what role does $n$ play?'', arises
   826	naturally from the inadequacy of the naive level and is the unifying
   827	question of papers II through VI. (\cref{prop:structuralist-naive})
   828	\end{proposition}
   829	
   830	\section{The Haskell Artifact: A Multi-System Numeral Parser}
   831	\label{sec:haskell}
   832	
   833	To illustrate the syntax/semantics distinction concretely we provide a
   834	small Haskell program that parses numerals in four systems---decimal,
   842	
   843	\[
   844	\begin{array}{ccc}
   845	\text{numeral} & \xrightarrow{\;\text{parse}\;} & \text{semantic value (Peano natural)}
   846	\end{array}
   847	\]
   848	with several different parsers and one shared codomain. We then test that
   849	\textsf{LVIII}, \texttt{58}, \texttt{||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,|||\,|||} (58 strokes), and the
   850	sexagesimal $(0; 58)$ all reduce to the same Peano value.
   851	
   852	\subsection{Module structure}
  1102	The qualitative jump at row 60 in the sexagesimal column---where the
  1103	representation acquires a second positional place---illustrates how
  1104	positional systems amplify compactness at integer powers of the base.
  1105	
  1106	\section{A Worked Example: Why $58 = \mathsf{LVIII}$ is Non-Trivial}
  1107	\label{app:lviii-example}
  1108	
  1109	We work the example through in detail, in part to illustrate the
  1110	mechanics of the syntax/semantics distinction, and in part to show how

exec
/usr/local/bin/zsh -lc "rg -n '"'^'"\\\\(section|subsection|subsubsection)\\{.*\\"'$|'"\\\\begin\\{tabular\\}|\\\\texttt\\{["'^}]{60,}'"\\}|\\\\Cref\\{["'^}]*$|'"\\\\cref\\{["'^}]*$|''^[[:space:]]+[A-Za-z0-9:-]+'"\\}' papers/01-naive/latex/01-naive.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n \"(Undefined control sequence|Overfull|Underfull|Warning: Reference|Package .*Warning|Token not allowed|undefined references|Label\\(s\\))\" /tmp/latex-review-01-naive/01-naive.log /tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
141:\begin{tabular}{l|l}
694:The cumulative force of \cref{prop:acquisition,prop:application,
820:arithmetic. (Combination of \cref{prop:acquisition,prop:application,
849:\textsf{LVIII}, \texttt{58}, \texttt{||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,||||\,|||\,|||} (58 strokes), and the
1084:\begin{tabular}{r|l|l|l}
1106:\section{A Worked Example: Why $58 = \mathsf{LVIII}$ is Non-Trivial}

 succeeded in 0ms:
/tmp/latex-review-01-naive/01-naive.log:657:Package everypage Warning: Functionality similar to this package has recently
/tmp/latex-review-01-naive/01-naive.log:663:Package everypage Warning: You appear to be running a version of LaTeX
/tmp/latex-review-01-naive/01-naive.log:778:Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
/tmp/latex-review-01-naive/01-naive.log:783:LaTeX Warning: Reference `sec:numerals-syntax' on page 1 undefined on input lin
/tmp/latex-review-01-naive/01-naive.log:787:LaTeX Warning: Reference `sec:counting-quantity' on page 1 undefined on input l
/tmp/latex-review-01-naive/01-naive.log:791:LaTeX Warning: Reference `sec:pre-fregean' on page 1 undefined on input line 16
/tmp/latex-review-01-naive/01-naive.log:795:LaTeX Warning: Reference `sec:insufficient' on page 1 undefined on input line 1
/tmp/latex-review-01-naive/01-naive.log:799:LaTeX Warning: Reference `sec:indispensable' on page 1 undefined on input line 
/tmp/latex-review-01-naive/01-naive.log:803:LaTeX Warning: Reference `sec:bridge' on page 1 undefined on input line 176.
/tmp/latex-review-01-naive/01-naive.log:806:LaTeX Warning: Reference `sec:results' on page 1 undefined on input line 179.
/tmp/latex-review-01-naive/01-naive.log:809:LaTeX Warning: Reference `sec:haskell' on page 1 undefined on input line 181.
/tmp/latex-review-01-naive/01-naive.log:812:LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 183
/tmp/latex-review-01-naive/01-naive.log:816:LaTeX Warning: Reference `sec:discussion' on page 1 undefined on input line 183
/tmp/latex-review-01-naive/01-naive.log:820:./papers/01-naive/latex/01-naive.tex:200: Undefined control sequence.
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:663:Package everypage Warning: Functionality similar to this package has recently
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:669:Package everypage Warning: You appear to be running a version of LaTeX
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:792:Overfull \hbox (40.40535pt too wide) in paragraph at lines 141--150
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:797:Overfull \hbox (17.29555pt too wide) in paragraph at lines 338--340
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:811:LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:816:LaTeX Warning: Reference ` prop:pedagogical' on page 1 undefined on input line 
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:820:Overfull \hbox (24.33673pt too wide) in paragraph at lines 830--830
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:825:Overfull \hbox (255.98395pt too wide) in paragraph at lines 847--851
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:842:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:846:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/latex-review-01-naive-stmaryrd/01-naive-stmaryrd.log:856:LaTeX Warning: There were undefined references.

codex
Reviewed `/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/01-naive/latex/01-naive.tex`. I did not modify it.

**Issues**

1. Line 200: compile-stopping error, `\llbracket` / `\rrbracket` are undefined.
   Fix: add `\usepackage{stmaryrd}` after line 4, or define local bracket macros and use those consistently.

2. Lines 24 and 40: `everypage` emits legacy-package warnings on current LaTeX.
   Fix: replace `\usepackage{everypage}` / `\AddEverypageHook` with a modern shipout hook, e.g. LaTeX’s `\AddToHook{shipout/background}{...}`, or use `eso-pic` for first-page background material.

3. Lines 141-150: overfull hbox, 40.4pt. The “columns table” is too wide, especially rows 145, 147, and 148.
   Fix: use `tabularx` with a wrapping second column, e.g. `\begin{tabularx}{\textwidth}{lX}`, or use `p{...}` columns / `\small`.

4. Lines 338-340: overfull hbox, 17.3pt. Long theorem title plus inline tuple does not fit.
   Fix: shorten the optional title or move the tuple to display math after the definition heading.

5. Lines 694-695: broken reference. `\cref{prop:acquisition,prop:application,` followed by a newline causes the third label to be parsed as ` prop:pedagogical` with a leading space.
   Fix: keep labels on one line or add a comment after the comma:
   `\cref{prop:acquisition,prop:application,%`
   `prop:pedagogical}`.

6. Lines 820-821: same broken-reference issue for `prop:pedagogical`.
   Fix: same as above.

7. Line 830: overfull hbox, 24.3pt. Section title is too long.
   Fix: shorten to something like `\section{The Haskell Artifact}` or insert a controlled break.

8. Lines 847-851: severe overfull hbox, 256.0pt. The long inline tally string in `\texttt{...}` cannot break.
   Fix: replace with abbreviated notation like `\texttt{||||\dots}` plus “58 strokes”, move it to a display/listing, or use a breakable package such as `seqsplit`.

9. Line 1106: `hyperref` warning: math tokens in section title are removed from PDF bookmarks.
   Fix:
   ```latex
   \section{A Worked Example: Why \texorpdfstring{$58 = \mathsf{LVIII}$}{58 = LVIII} is Non-Trivial}
   ```

No underfull boxes were reported. After preloading `stmaryrd`, all ordinary cross-references resolved except the two `prop:pedagogical` references caused by leading whitespace.
2026-05-04T01:32:34.410193Z ERROR codex_core::session: failed to record rollout items: thread 019df09b-c964-7e92-bf8d-34d13a11a0a5 not found
tokens used
81,045
Reviewed `/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/01-naive/latex/01-naive.tex`. I did not modify it.

**Issues**

1. Line 200: compile-stopping error, `\llbracket` / `\rrbracket` are undefined.
   Fix: add `\usepackage{stmaryrd}` after line 4, or define local bracket macros and use those consistently.

2. Lines 24 and 40: `everypage` emits legacy-package warnings on current LaTeX.
   Fix: replace `\usepackage{everypage}` / `\AddEverypageHook` with a modern shipout hook, e.g. LaTeX’s `\AddToHook{shipout/background}{...}`, or use `eso-pic` for first-page background material.

3. Lines 141-150: overfull hbox, 40.4pt. The “columns table” is too wide, especially rows 145, 147, and 148.
   Fix: use `tabularx` with a wrapping second column, e.g. `\begin{tabularx}{\textwidth}{lX}`, or use `p{...}` columns / `\small`.

4. Lines 338-340: overfull hbox, 17.3pt. Long theorem title plus inline tuple does not fit.
   Fix: shorten the optional title or move the tuple to display math after the definition heading.

5. Lines 694-695: broken reference. `\cref{prop:acquisition,prop:application,` followed by a newline causes the third label to be parsed as ` prop:pedagogical` with a leading space.
   Fix: keep labels on one line or add a comment after the comma:
   `\cref{prop:acquisition,prop:application,%`
   `prop:pedagogical}`.

6. Lines 820-821: same broken-reference issue for `prop:pedagogical`.
   Fix: same as above.

7. Line 830: overfull hbox, 24.3pt. Section title is too long.
   Fix: shorten to something like `\section{The Haskell Artifact}` or insert a controlled break.

8. Lines 847-851: severe overfull hbox, 256.0pt. The long inline tally string in `\texttt{...}` cannot break.
   Fix: replace with abbreviated notation like `\texttt{||||\dots}` plus “58 strokes”, move it to a display/listing, or use a breakable package such as `seqsplit`.

9. Line 1106: `hyperref` warning: math tokens in section title are removed from PDF bookmarks.
   Fix:
   ```latex
   \section{A Worked Example: Why \texorpdfstring{$58 = \mathsf{LVIII}$}{58 = LVIII} is Non-Trivial}
   ```

No underfull boxes were reported. After preloading `stmaryrd`, all ordinary cross-references resolved except the two `prop:pedagogical` references caused by leading whitespace.
