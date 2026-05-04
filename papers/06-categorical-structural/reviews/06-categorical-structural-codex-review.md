---
reviewer: codex (OpenAI)
type: formatting
paper: 06-categorical-structural
date: 2026-05-04T01:35:36Z
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
session id: 019df09d-024b-7ca3-b446-1cf1cd44b9c7
--------
user
Review papers/latex/06-categorical-structural.tex (full path: /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/06-categorical-structural/latex/06-categorical-structural.tex) for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and fixes. Do not modify the file. Output a concise structured report.
codex
I’ll inspect the LaTeX source and nearby project files read-only, then report only concrete formatting/compile risks with line numbers and suggested fixes.
exec
/usr/local/bin/zsh -lc "pwd && rg --files -g '06-categorical-structural.tex' -g '*.bib' -g '*.sty' -g '*.cls'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
papers/06-categorical-structural/latex/06-categorical-structural.tex

exec
/usr/local/bin/zsh -lc 'wc -l papers/06-categorical-structural/latex/06-categorical-structural.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
     731 papers/06-categorical-structural/latex/06-categorical-structural.tex

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(usepackage|documentclass|input|include|bibliography|addbibresource|cite|ref|label|eqref|autoref|todo|includegraphics|begin\\{|end\\{|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|textbf|emph|vspace|hspace|\\\\\\\\|overfull|underfull|bibitem)\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(usepackage|documentclass|input|include|bibliography|addbibresource|cite|ref|label|eqref|autoref|todo|includegraphics|begin\{|end\{|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|textbf|emph|vspace|hspace|\\|overfull|underfull|bibitem))
                                                                                                                                                                                                                                                               ^
error: unopened group

codex
The first pass found the target file and no adjacent bibliography/style/class files through the quick file search. I’m reading the source in chunks now and will cross-check references and environments rather than relying on a failed broad regex.
exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '1,180p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
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
    12	% References
    13	\usepackage[hidelinks]{hyperref}
    14	\usepackage{cleveref}
    15	
    16	% Graphics
    17	\usepackage{graphicx}
    18	
    19	% Page layout
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% GrokRxiv sidebar
    23	\usepackage{everypage}
    24	\usepackage{xcolor}
    25	
    26	% Listings (Haskell)
    27	\usepackage{listings}
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
    77	\newcommand{\Mod}[1]{\mathrm{Mod}(#1)}
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
   111	\texttt{research@yonedaai.example} $\cdot$ \url{https://yonedaai.example}}
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
   166	We fix terminology and notation. All categories are locally small unless stated otherwise.
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

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '181,360p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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
   204	\section{Mathematical Structuralism}\label{sec:structuralism}
   205	
   206	\subsection{The thesis}
   207	
   208	Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
   209	
   210	Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
   211	
   212	\subsection{Three flavors}
   213	
   214	\begin{definition}[Ante rem structuralism, Shapiro]
   215	The structures of mathematics exist independently of any particular system that realizes them. Numbers are real abstract entities, but their identity is exhausted by their relational properties.
   216	\end{definition}
   217	
   218	\begin{definition}[In re structuralism, Resnik]
   219	Mathematical structures are abstractions from collections of similar systems. There is no structure ``in itself''; only patterns instantiated by concrete or abstract systems.
   220	\end{definition}
   221	
   222	\begin{definition}[Modal / eliminative structuralism, Hellman]
   223	There are no abstract structures or numbers; statements of arithmetic are read as universally quantified conditionals over all possible $\NN$-like systems: ``In any $\omega$-sequence, the seventh element after zero satisfies $\dots$'' rather than ``$7$ satisfies $\dots$''.
   224	\end{definition}
   225	
   226	\begin{example}[Three views of $58$]\hfill
   227	\begin{itemize}
   228	  \item \emph{Ante rem}: $58$ is an abstract position in the unique structure $\langle \NN, 0, \succop \rangle$.
   229	  \item \emph{In re}: $58$ is whatever is common to all things obtained by applying $\succop$ exactly $58$ times to $0$ in any concrete realization.
   230	  \item \emph{Modal}: ``$58 + 1 = 59$'' means ``it is necessary that, in any $\omega$-sequence, the $58$th iterate's successor is the $59$th iterate''.
   231	\end{itemize}
   232	\end{example}
   233	
   234	\subsection{Awodey's category-theoretic structuralism}
   235	
   236	Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
   237	
   238	\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
   239	Let $\C$ be a category and let $P$ be a property of objects of $\C$ that is expressible using only the data of $\C$ (objects, morphisms, composition, and finite limits/colimits where they exist). Then for any isomorphism $f : A \to B$, $P(A) \iff P(B)$.
   240	\end{proposition}
   241	
   242	\begin{proof}[Proof sketch]
   243	By induction on the complexity of $P$. Atomic categorical statements (commutativity of squares, existence of fillers, equality of composites) are preserved by isomorphisms because $f$ and $f^{-1}$ are inverse, and composition is preserved. For complex $P$, the inductive step is straightforward.
   244	\end{proof}
   245	
   246	\begin{remark}
   247	\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
   248	\end{remark}
   249	
   250	\section{Functorial Semantics}\label{sec:functorial}
   251	
   252	\subsection{Lawvere theories}
   253	
   254	We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
   255	
   256	\begin{definition}[Lawvere theory]
   257	A \emph{Lawvere theory} is a small category $\T$ with finite products, equipped with a generator $X$ such that every object of $\T$ is (canonically) a finite power $X^n$, $n \geq 0$. Equivalently, $\T^\op$ has finite coproducts and is the opposite of the free finite-product category on a single object plus operation symbols and axioms.
   258	\end{definition}
   259	
   260	\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
   261	Let $T_\succop$ be the Lawvere theory generated by:
   262	\begin{itemize}
   263	  \item one object $X$,
   264	  \item a constant $\zeroop : X^0 \to X$ (the ``zero''),
   265	  \item a unary operation $\succop : X \to X$ (the ``successor''),
   266	\end{itemize}
   267	with no equations. A model in $\Set$ is a triple $(M, z, s)$ where $M$ is a set, $z \in M$, and $s : M \to M$.
   268	\end{example}
   269	
   270	\begin{definition}[Initial successor structure]
   271	A model $(N, 0, \succop) \in \Mod{T_\succop}$ is \emph{initial} if for every $(M, z, s)$ there is a unique $T_\succop$-homomorphism $h : N \to M$ with $h(0) = z$ and $h \circ \succop = s \circ h$.
   272	\end{definition}
   273	
   274	\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
   275	$(\NN, 0, \succop)$ with $\succop(n) = n+1$ is initial in $\Mod{T_\succop}$, and any two initial models are uniquely isomorphic.
   276	\end{theorem}
   277	
   278	\begin{proof}
   279	Existence and uniqueness of $h$ are by primitive recursion. Two initial objects are connected by a unique morphism each way; their composites are identity by uniqueness.
   280	\end{proof}
   281	
   282	\subsection{Category of models}
   283	
   284	\begin{definition}
   285	For a Lawvere theory $\T$, let $\Mod{\T}$ denote the category of finite-product-preserving functors $\T \to \Set$ with natural transformations as morphisms.
   286	\end{definition}
   287	
   288	\begin{proposition}\label{prop:hom-as-nat}
   289	Let $\T = T_\succop$ and let $M, M' : \T \to \Set$. The data of a natural transformation $\alpha : M \Rightarrow M'$ is exactly a function $\alpha_X : M(X) \to M'(X)$ such that
   290	\[
   291	  \alpha_X(M(\zeroop)(\ast)) = M'(\zeroop)(\ast), \quad
   292	  \alpha_X \circ M(\succop) = M'(\succop) \circ \alpha_X.
   293	\]
   294	\end{proposition}
   295	
   296	\begin{proof}
   297	Naturality of $\alpha$ on the morphism $\zeroop : X^0 \to X$ asserts the commutativity of
   298	\[
   299	\begin{tikzcd}
   300	M(X^0) \arrow[r, "M(\zeroop)"] \arrow[d, "\alpha_{X^0}"'] & M(X) \arrow[d, "\alpha_X"] \\
   301	M'(X^0) \arrow[r, "M'(\zeroop)"'] & M'(X)
   302	\end{tikzcd}
   303	\]
   304	Since both functors preserve finite products, $M(X^0)$ and $M'(X^0)$ are terminal in $\Set$ (singletons $\{\ast\}$) and $\alpha_{X^0}$ is the unique map between them; the diagram thus collapses to the first displayed equation. Naturality on $\succop : X \to X$ gives directly the second displayed equation. Conversely, any pair $(\alpha_{X^0}, \alpha_X)$ satisfying these two equations extends uniquely to a natural transformation: finite-product preservation determines all higher components $\alpha_{X^n}$ as the $n$-fold product of $\alpha_X$ with itself.
   305	\end{proof}
   306	
   307	\subsection{Definable invariants}
   308	
   309	We now make precise the notion of ``numerical answer extracted from a model''.
   310	
   311	\begin{definition}[Definable invariant]\label{def:def-inv}
   312	Let $\T$ be a Lawvere theory and $\E$ a category. A \emph{definable invariant} of $\T$-models in $\E$ is a function
   313	\[
   314	  I : \Ob(\Mod{\T}) \to \Ob(\E)
   315	\]
   316	together with, for every isomorphism $\alpha : M \to M'$ in $\Mod{\T}$, an isomorphism $I(\alpha) : I(M) \to I(M')$ in $\E$, such that $I(\id_M) = \id_{I(M)}$ and $I$ preserves composition. Equivalently, $I$ is a functor from the underlying groupoid of $\Mod{\T}$ to $\E$.
   317	\end{definition}
   318	
   319	\begin{example}\label{ex:cardinality}
   320	Cardinality is a definable invariant when restricted to finite models: $|M| = |M'|$ whenever $M \iso M'$. This is the simplest example of the structural-invariance phenomenon.
   321	\end{example}
   322	
   323	\begin{example}[Order of an element]
   324	For $T_\succop$-models $(M,z,s)$ in $\Set$, define $\mathrm{ord}(M,z,s) = \min \{ n \geq 1 : s^n(z) = z \}$ if such $n$ exists, $\infty$ otherwise. This is a definable invariant: any isomorphism preserves the orbit of $z$ under $s$.
   325	\end{example}
   326	
   327	\begin{theorem}[Invariance theorem]\label{thm:invariance}
   328	Let $\T$ be a Lawvere theory and $I$ a definable invariant. For any two isomorphic models $M, M' \in \Mod{\T}$, $I(M) \iso I(M')$ in $\E$. In particular, when $\E = \Set$ and $I(M)$ is a (finite) cardinal, $|I(M)| = |I(M')|$.
   329	\end{theorem}
   330	
   331	\begin{proof}
   332	By \Cref{def:def-inv}, $I$ acts functorially on the groupoid of isomorphisms. Functors send isomorphisms to isomorphisms, so $I(M) \iso I(M')$. Cardinality is itself an isomorphism invariant on $\Set$, so $|I(M)| = |I(M')|$.
   333	\end{proof}
   334	
   335	\begin{corollary}[Structural identity of models]
   336	If $M \iso M'$ in $\Mod{\T}$, then $M$ and $M'$ agree on every definable invariant. In particular, every ``numerical answer'' computed from $M$ matches the corresponding answer computed from $M'$.
   337	\end{corollary}
   338	
   339	\section{Two Models, One Answer}\label{sec:two-models}
   340	
   341	We make \Cref{thm:invariance} concrete with two non-equal but isomorphic models of $T_\succop$. The accompanying Haskell code (\Cref{sec:haskell}) verifies each computed invariant.
   342	
   343	\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
   344	Define two finite $T_\succop$-models:
   345	\begin{align*}
   346	  M_{\mathrm{vN}}(X) &= \{\emptyset, \{\emptyset\}, \{\emptyset,\{\emptyset\}\}, \{\emptyset,\{\emptyset\},\{\emptyset,\{\emptyset\}\}\}\}, \\
   347	  M_{\mathrm{Z}}(X) &= \{\emptyset, \{\emptyset\}, \{\{\emptyset\}\}, \{\{\{\emptyset\}\}\}\},
   348	\end{align*}
   349	each with $\zeroop$ interpreted as $\emptyset$ and $\succop$ interpreted by the appropriate generation rule (von Neumann: $n \mapsto n \cup \{n\}$; Zermelo: $n \mapsto \{n\}$).
   350	\end{example}
   351	
   352	\begin{proposition}\label{prop:vN-Z-iso}
   353	$M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$ in $\Mod{T_\succop}$, but $M_{\mathrm{vN}}(X) \neq M_{\mathrm{Z}}(X)$ as sets in ZFC.
   354	\end{proposition}
   355	
   356	\begin{proof}
   357	Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
   358	\end{proof}
   359	
   360	\begin{remark}[The Benacerraf situation]

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '361,540p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   361	\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
   362	\end{remark}
   363	
   364	\subsection{Definable answers agree}
   365	
   366	\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
   367	For every definable invariant $I$ of $T_\succop$-models in $\Set$ (or in $\NN$ via cardinality), $I(M_{\mathrm{vN}}) = I(M_{\mathrm{Z}})$.
   368	\end{theorem}
   369	
   370	\begin{proof}
   371	By \Cref{prop:vN-Z-iso}, $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$. By \Cref{thm:invariance}, $I(M_{\mathrm{vN}}) \iso I(M_{\mathrm{Z}})$. For invariants taking values in $\NN$ (cardinalities, orbit lengths, fixed-point counts), an isomorphism in $\NN$ is equality.
   372	\end{proof}
   373	
   374	The Haskell implementation in \Cref{sec:haskell} performs this verification computationally: it builds both models, an isomorphism between them, and a panel of definable invariants, and checks term-by-term that the computed values agree.
   375	
   376	\section{Models, Theories, and Toposes}\label{sec:topos}
   377	
   378	\subsection{ETCS and categorical foundations}
   379	
   380	Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
   381	
   382	\begin{definition}[Topos]
   383	A \emph{topos} is a category with finite limits, exponentials, and a subobject classifier $\Omega$. A topos has all the categorical structure needed to interpret higher-order logic.
   384	\end{definition}
   385	
   386	\begin{definition}[NNO in a topos]
   387	A \emph{natural-numbers object} in a topos $\E$ is an object $N$ with $0 : 1 \to N$ and $\succop : N \to N$ such that for every $(X, x_0, f)$ there is a unique $h : N \to X$ with $h \circ 0 = x_0$ and $h \circ \succop = f \circ h$.
   388	\end{definition}
   389	
   390	\begin{theorem}[Lawvere]
   391	ETCS is bi-interpretable with bounded Zermelo set theory plus a choice principle. Any model of ETCS contains a unique-up-to-isomorphism NNO, which serves as ``the'' natural numbers.
   392	\end{theorem}
   393	
   394	\subsection{Models in toposes}
   395	
   396	A model of an algebraic theory in a topos $\E$ is a finite-product-preserving functor $\T \to \E$. Different toposes give different ``universes'' in which to interpret arithmetic, but the structural invariants survive.
   397	
   398	\begin{example}[Sheaves]
   399	Let $\E = \mathrm{Sh}(X)$, the topos of sheaves on a topological space. A $T_\succop$-model in $\E$ is a sheaf of pointed unary structures. Locally these look like ordinary models in $\Set$; globally they encode parameter dependence.
   400	\end{example}
   401	
   402	\begin{example}[Effective topos]
   403	Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
   404	\end{example}
   405	
   406	\subsection{Ultraproducts and non-standard models}
   407	
   408	First-order Peano arithmetic ($\mathsf{PA}$) is weaker than the categorical NNO: it has non-standard models, in particular ultrapowers $\NN^{\omega}/\mathcal{U}$ for non-principal ultrafilters $\mathcal{U}$. These models satisfy every first-order arithmetic sentence true in $\NN$, but contain ``infinite'' elements.
   409	
   410	\begin{theorem}[\L{}o\'s' theorem]
   411	Let $\mathcal{U}$ be an ultrafilter on $I$ and let $(M_i)_{i \in I}$ be a family of models of a first-order theory $T$. The ultraproduct $\prod M_i / \mathcal{U}$ satisfies a first-order sentence $\varphi$ iff $\{i : M_i \models \varphi\} \in \mathcal{U}$.
   412	\end{theorem}
   413	
   414	\begin{remark}
   415	The categorical / NNO perspective forbids non-standard models: the universal property uniquely determines $N$ (up to canonical isomorphism). The first-order PA perspective admits them. The structuralist response: non-standard models satisfy a different theory than full second-order PA, and they should be analyzed as a different (richer) structure, not as ``alternative natural numbers''.
   416	\end{remark}
   417	
   418	\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
   419	
   420	We pause to record how Yoneda and universal properties (the topics of papers 03 and 04 of this series) sit inside the structural perspective.
   421	
   422	\begin{theorem}[Yoneda lemma]
   423	For any locally small category $\C$, object $A$, and functor $F : \C^\op \to \Set$,
   424	\[
   425	  \Nat(\Hom_\C(-, A), F) \iso F(A).
   426	\]
   427	\end{theorem}
   428	
   429	\begin{corollary}[Yoneda embedding is fully faithful]
   430	The functor $y : \C \to [\C^\op, \Set]$ sending $A \mapsto \Hom_\C(-, A)$ is fully faithful: $\Hom_\C(A, B) \iso \Nat(yA, yB)$.
   431	\end{corollary}
   432	
   433	\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
   434	$A \iso B$ in $\C$ iff $yA \iso yB$ in $[\C^\op, \Set]$, iff $\Hom(-, A) \iso \Hom(-, B)$ as presheaves.
   435	\end{corollary}
   436	
   437	\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
   438	
   439	\begin{proposition}[Universal properties are structural]
   440	Any object characterized by a universal property is determined up to canonical isomorphism. Therefore, the value of any property of universally characterized objects depends only on the isomorphism class.
   441	\end{proposition}
   442	
   443	The categorical / structural perspective of \Cref{sec:functorial} and the Yoneda perspective of \Cref{sec:yoneda} agree: both say that mathematical content is preserved by isomorphism and that this is the right level of identity.
   444	
   445	\section{Equivalence-Invariance and Transport}\label{sec:transport}
   446	
   447	We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
   448	
   449	\subsection{Univalence}
   450	
   451	\begin{definition}[Univalence axiom, Voevodsky]
   452	For types $A, B$ in a universe $\mathcal{U}$, the canonical map
   453	\[
   454	  \mathrm{idtoeqv} : (A =_{\mathcal{U}} B) \to (A \eq B)
   455	\]
   456	is itself an equivalence.
   457	\end{definition}
   458	
   459	Univalence asserts that ``equality of types'' and ``equivalence of types'' are themselves equivalent: any equivalence can be transported into an identification, and any identification gives back the corresponding equivalence.
   460	
   461	\begin{theorem}[Transport]
   462	Given $P : \mathcal{U} \to \mathcal{U}$ and $p : A =_\mathcal{U} B$, there is a function $\mathrm{transport}^P(p) : P(A) \to P(B)$. Moreover, $\mathrm{transport}^P(\mathrm{refl}_A) = \id_{P(A)}$.
   463	\end{theorem}
   464	
   465	\subsection{Structure identity principle}
   466	
   467	\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
   468	Let $\mathcal{S}$ be a notion of structure (e.g.\ a $T_\succop$-model in HoTT) defined by a $\Sigma$-type $\Sigma_{X : \mathcal{U}}\, F(X)$ where $F$ is a structure of finite signature on the carrier $X$. Then identification of structures is canonically equivalent to structure-preserving equivalence of carriers:
   469	\[
   470	  \big( (X, s) =_{\Sigma_{X} F(X)} (X', s') \big) \;\eq\; \big(\Sigma_{f : X \eq X'}\, f \text{ preserves } s, s' \big).
   471	\]
   472	\end{theorem}
   473	
   474	\begin{remark}
   475	\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
   476	\end{remark}
   477	
   478	\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
   479	In HoTT, every property $P : \mathcal{S} \to \mathcal{U}$ of structures of a given kind $\mathcal{S}$ is automatically invariant under structure-preserving equivalence: if $(X, s) \eq_\mathcal{S} (X', s')$ then $P(X, s) \eq P(X', s')$.
   480	\end{theorem}
   481	
   482	\begin{proof}
   483	By \Cref{thm:sip}, structure-preserving equivalence is identification. By the action of $P$ on identifications (the J-rule, alias path induction), identifications are transported by $P$. Combine.
   484	\end{proof}
   485	
   486	\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
   487	
   488	\subsection{The bridge to synthesis}
   489	
   490	We can summarize the relationship as follows.
   491	
   492	\begin{table}[h]
   493	\centering
   494	\begin{tabular}{l|l|l}
   495	\textbf{Layer} & \textbf{Statement} & \textbf{Status} \\\hline
   496	Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
   497	Universal property & Iso-class is canonical & Theorem (e.g.\ NNO uniqueness) \\
   498	Yoneda & Object known by relations & Theorem (Yoneda lemma) \\
   499	HoTT + univalence & Iso-invariance is automatic & Internal theorem (\Cref{thm:transport-inv}) \\
   500	\end{tabular}
   501	\caption{Four layers of one principle.}
   502	\label{tab:four-layers}
   503	\end{table}
   504	
   505	The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
   506	
   507	\section{Categorification and Decategorification}\label{sec:categorification}
   508	
   509	\subsection{From sets to groupoids}
   510	
   511	\begin{definition}[Groupoid]
   512	A \emph{groupoid} is a category in which every morphism is invertible.
   513	\end{definition}
   514	
   515	\begin{definition}[$\pi_0$, set of connected components]
   516	For a groupoid $G$, $\pi_0(G)$ is the set of isomorphism classes of objects.
   517	\end{definition}
   518	
   519	\begin{example}\label{ex:58-groupoid}
   520	Let $G_{58}$ be a groupoid with $58$ objects $\{0, 1, \dots, 57\}$ and only identity morphisms. Then $\pi_0(G_{58}) = \{\{0\}, \dots, \{57\}\}$, a $58$-element set. Cardinality is preserved: $|\pi_0(G_{58})| = 58$.
   521	\end{example}
   522	
   523	\begin{example}[A connected groupoid with one component]
   524	Let $G_{B\ZZ/n\ZZ}$ be the groupoid with one object and automorphism group $\ZZ/n\ZZ$. Then $\pi_0(G_{B\ZZ/n\ZZ})$ is a one-element set.
   525	\end{example}
   526	
   527	\subsection{Cardinality of groupoids}
   528	
   529	For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality} (Baez--Dolan, Leinster):
   530	\[
   531	  |G|_{\mathrm{gpd}} = \sum_{[x] \in \pi_0(G)} \frac{1}{|\mathrm{Aut}(x)|}.
   532	\]
   533	
   534	\begin{example}
   535	$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial. \\
   536	$|G_{B\ZZ/n\ZZ}|_{\mathrm{gpd}} = 1/n$, decategorifying to a rational invariant.
   537	\end{example}
   538	
   539	\subsection{Decategorification, Euler characteristic, $K$-theory}
   540	

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '541,760p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   541	Decategorification is a general process of descending from higher-dimensional structure to numerical content:
   542	\begin{itemize}
   543	  \item $\pi_0$ from groupoids to sets (and then $|\cdot|$ to cardinals);
   544	  \item Euler characteristic $\chi$ from CW-complexes to integers;
   545	  \item $K_0$ from a triangulated category to its Grothendieck group.
   546	\end{itemize}
   547	
   548	\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
   549	For a finite groupoid $G$, the \emph{Euler characteristic} is $\chi(G) = |G|_{\mathrm{gpd}}$.
   550	\end{definition}
   551	
   552	\begin{theorem}[Decategorification preserves equivalence]
   553	Equivalent groupoids $G \eq G'$ satisfy $\pi_0(G) \iso \pi_0(G')$ and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$.
   554	\end{theorem}
   555	
   556	\begin{proof}
   557	Equivalences induce bijections on isomorphism classes, hence equal $\pi_0$ and equal sums in the cardinality formula.
   558	\end{proof}
   559	
   560	\subsection{Numbers in physics}
   561	
   562	The same invariance principle reappears in physics. Gauge invariants and conserved quantities are exactly those numbers preserved under the symmetries of a system; what survives a gauge transformation is structural content, what fails to survive is gauge artifact.
   563	
   564	\begin{example}
   565	Mass, charge, energy, momentum, angular momentum, spin: each is a Noether-conserved quantity associated to a symmetry of the action functional. The conserved quantity is the structural invariant; the dynamical trajectory is the representation.
   566	\end{example}
   567	
   568	\begin{remark}
   569	The structuralist principle ``numbers are invariants'' is therefore not specific to mathematics. It is the same idea that physics calls \emph{gauge invariance} and that representation theory calls \emph{character / dimension / trace}.
   570	\end{remark}
   571	
   572	\section{Haskell Implementation}\label{sec:haskell}
   573	
   574	The accompanying code at \texttt{src/06-categorical-structural/} provides a runnable demonstration of the central theorem. We summarize the key data:
   575	
   576	\begin{itemize}
   577	  \item \texttt{Theory.hs}: the data type for a Lawvere theory and its operations (constants, unaries).
   578	  \item \texttt{Model.hs}: a record type representing a model in $\Set$, with a carrier and interpretations of $\zeroop$ and $\succop$. Provides \texttt{isHomomorphism} and \texttt{areIsomorphic}.
   579	  \item \texttt{Models.hs}: builds two finite $T_\succop$-models on disjoint carrier types and an isomorphism witnessing $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$.
   580	  \item \texttt{Invariants.hs}: a panel of definable invariants (cardinality, orbit length of zero, fixed-point count, image of $\succop^k$ at zero for various $k$).
   581	  \item \texttt{Main.hs}: instantiates the panel against both models and prints a side-by-side agreement table.
   582	\end{itemize}
   583	
   584	A representative listing:
   585	
   586	\begin{lstlisting}[language=Haskell]
   587	-- Two models with different carriers but same structure
   588	modelVN  :: Model VNNum
   589	modelZ   :: Model ZNum
   590	isoVNtoZ :: VNNum -> ZNum
   591	isoZtoVN :: ZNum  -> VNNum
   592	
   593	main :: IO ()
   594	main = do
   595	  putStrLn $ "Cardinality vN  : " ++ show (cardinality modelVN)
   596	  putStrLn $ "Cardinality Z   : " ++ show (cardinality modelZ)
   597	  putStrLn $ "Orbit-of-zero vN: " ++ show (orbitLen   modelVN)
   598	  putStrLn $ "Orbit-of-zero Z : " ++ show (orbitLen   modelZ)
   599	  -- Each invariant agrees, witnessing Theorem 4.5
   600	\end{lstlisting}
   601	
   602	\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.
   603	
   604	\section{Results}\label{sec:results}
   605	
   606	We collect the principal results of the paper.
   607	
   608	\begin{theorem}[Main, restatement]
   609	Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
   610	\end{theorem}
   611	
   612	\begin{theorem}[Concrete instance]
   613	The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
   614	\end{theorem}
   615	
   616	\begin{theorem}[HoTT promotion, restatement of \Cref{thm:transport-inv}]
   617	In HoTT with the univalence axiom, every property $P$ of structures of a given kind is automatically invariant under structure-preserving equivalence. Hence the meta-theoretic discipline of writing only structural definitions becomes the internal theorem ``every definition is structural''.
   618	\end{theorem}
   619	
   620	\begin{theorem}[Decategorification preserves invariants]
   621	For finite groupoids $G \eq G'$, $\pi_0(G) \iso \pi_0(G')$ as sets, $|\pi_0(G)| = |\pi_0(G')|$ as natural numbers, and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$ as rational numbers.
   622	\end{theorem}
   623	
   624	\section{Discussion}\label{sec:discussion}
   625	
   626	\subsection{Implications}
   627	
   628	The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
   629	
   630	In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
   631	
   632	\subsection{Limitations}
   633	
   634	We have presented the structural perspective at the level of finite Lawvere theories interpreted in $\Set$. The full strength of the perspective requires:
   635	\begin{itemize}
   636	  \item finite-product theories with sorts (multi-sorted Lawvere theories), which suffice for first-order universal algebra;
   637	  \item finite-limit theories (essentially algebraic theories), which suffice for partial operations like division;
   638	  \item topos-theoretic semantics for full first-order logic (geometric / coherent theories);
   639	  \item dependent type theories (Martin-L\"of, HoTT) for the most expressive case.
   640	\end{itemize}
   641	The invariance principle survives at every level: the categorical content of the principle does not depend on the size of the theory.
   642	
   643	\subsection{Connection to the synthesis}
   644	
   645	This is paper $06$ of a six-paper series. The synthesis paper consolidates the per-topic results into a single thesis: that the levels in \Cref{tab:columns} (rows 3--6) are not analogous but literally the same, identified up to equivalence, in HoTT with univalence. The present paper has prepared the ground for that consolidation by:
   646	\begin{enumerate}
   647	  \item supplying the formal version of structuralism (functorial semantics);
   648	  \item proving the invariance theorem on which the consolidation depends;
   649	  \item identifying univalence as the principle that promotes the invariance from a meta-theorem to an internal theorem.
   650	\end{enumerate}
   651	
   652	\section{Conclusion}\label{sec:conclusion}
   653	
   654	A number is what survives every change of representation that preserves the structure. We have made this slogan precise: numbers are definable invariants of $T_\succop$-models, equivalently functors from the underlying groupoid of $\Mod{T_\succop}$ to whatever target category one chooses to extract numerical content into. Two models that are isomorphic as $T_\succop$-models give the same answer to every such question. The Haskell code makes the principle executable for the von Neumann / Zermelo example.
   655	
   656	The deeper claim is that this principle is the same one that universal properties express, that the Yoneda embedding internalizes, and that HoTT with univalence makes literal: structural identity is identity. The synthesis paper develops the consequences.
   657	
   658	\subsection*{Future work}
   659	
   660	Three directions deserve attention:
   661	\begin{enumerate}
   662	  \item \emph{Higher Lawvere theories:} extend the functorial-semantics framework to $(\infty,1)$-Lawvere theories and verify that the invariance theorem persists at every level of homotopy.
   663	  \item \emph{Modal structuralism in HoTT:} formalize Hellman's modal structuralism using the modalities of HoTT (open / closed / monadic modalities) and compare to the absolute version.
   664	  \item \emph{Decategorification of physical theories:} apply the invariance lens to gauge theories and conserved quantities, and clarify the relationship between structural invariance and Noether's theorem.
   665	\end{enumerate}
   666	
   667	\begin{thebibliography}{99}
   668	
   669	\bibitem{Awodey1996}
   670	Awodey, S. (1996). \emph{Structure in Mathematics and Logic: A Categorical Perspective}. Philosophia Mathematica, 4(3), 209--237.
   671	
   672	\bibitem{Awodey2004}
   673	Awodey, S. (2004). \emph{An Answer to Hellman's Question: ``Does Category Theory Provide a Framework for Mathematical Structuralism?''} Philosophia Mathematica, 12(1), 54--64.
   674	
   675	\bibitem{Awodey2014}
   676	Awodey, S. (2014). \emph{Structuralism, Invariance, and Univalence}. Philosophia Mathematica, 22(1), 1--11.
   677	
   678	\bibitem{Benacerraf1965}
   679	Benacerraf, P. (1965). \emph{What Numbers Could Not Be}. Philosophical Review, 74(1), 47--73.
   680	
   681	\bibitem{Dedekind1888}
   682	Dedekind, R. (1888). \emph{Was sind und was sollen die Zahlen?} Vieweg \& Sohn, Braunschweig.
   683	
   684	\bibitem{Escardo2019}
   685	Escard\'o, M.\ H. (2019). \emph{Introduction to Univalent Foundations of Mathematics with Agda}. Lecture notes.
   686	
   687	\bibitem{Hellman1989}
   688	Hellman, G. (1989). \emph{Mathematics Without Numbers: Towards a Modal-Structural Interpretation}. Oxford University Press.
   689	
   690	\bibitem{HoTTBook}
   691	The Univalent Foundations Program (2013). \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study. arXiv:1308.0729.
   692	
   693	\bibitem{Hyland1982}
   694	Hyland, J.\ M.\ E. (1982). \emph{The Effective Topos}. In: A.\ S.\ Troelstra, D.\ van Dalen (eds.), The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland, 165--216.
   695	
   696	\bibitem{Lawvere1963}
   697	Lawvere, F.\ W. (1963). \emph{Functorial Semantics of Algebraic Theories}. PhD thesis, Columbia University. Reprinted in TAC Reprints 5 (2004).
   698	
   699	\bibitem{Lawvere1964}
   700	Lawvere, F.\ W. (1964). \emph{An Elementary Theory of the Category of Sets}. Proceedings of the National Academy of Sciences, 52(6), 1506--1511.
   701	
   702	\bibitem{MacLane1971}
   703	Mac Lane, S. (1971). \emph{Categories for the Working Mathematician}. Springer.
   704	
   705	\bibitem{Resnik1981}
   706	Resnik, M.\ D. (1981). \emph{Mathematics as a Science of Patterns: Ontology and Reference}. No\^us, 15(4), 529--550.
   707	
   708	\bibitem{Resnik1997}
   709	Resnik, M.\ D. (1997). \emph{Mathematics as a Science of Patterns}. Oxford University Press.
   710	
   711	\bibitem{Riehl2016}
   712	Riehl, E. (2016). \emph{Category Theory in Context}. Dover.
   713	
   714	\bibitem{Shapiro1997}
   715	Shapiro, S. (1997). \emph{Philosophy of Mathematics: Structure and Ontology}. Oxford University Press.
   716	
   717	\bibitem{Voevodsky2010}
   718	Voevodsky, V. (2010). \emph{Univalent Foundations Project}. Manuscript.
   719	
   720	\bibitem{Wadler2015}
   721	Wadler, P. (2015). \emph{Propositions as Types}. Communications of the ACM, 58(12), 75--84.
   722	
   723	\bibitem{BaezDolan1998}
   724	Baez, J.\ C., and Dolan, J. (1998). \emph{From Finite Sets to Feynman Diagrams}. In: Mathematics Unlimited --- 2001 and Beyond, Springer, 29--50.
   725	
   726	\bibitem{Leinster2008}
   727	Leinster, T. (2008). \emph{The Euler Characteristic of a Category}. Documenta Mathematica, 13, 21--49.
   728	
   729	\end{thebibliography}
   730	
   731	\end{document}

codex
The source is self-contained: it uses inline `thebibliography`, no external `.bib`, and the visible labels/citations are all in one file. I’m now checking reference/citation consistency, package commands, and likely layout trouble spots such as wide tables, long math displays, and manual line breaks.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\label\\{|\\\\Cref\\{|\\\\ref\\{|\\\\eqref\\{|\\\\cite\\{|\\\\bibitem\\{\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\label\{|\Cref\{|\ref\{|\eqref\{|\cite\{|\bibitem\{)
       ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{(table|tabular|align|align\\*|lstlisting|tikzcd|enumerate|itemize)|\\\\end\\{(table|tabular|align|align\\*|lstlisting|tikzcd|enumerate|itemize)|\\\\\\\\|\\\\vspace|\\\\hspace|\\\\noindent|\\\\quad|\\\\qquad\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\begin\{(table|tabular|align|align\*|lstlisting|tikzcd|enumerate|itemize)|\end\{(table|tabular|align|align\*|lstlisting|tikzcd|enumerate|itemize)|\\|\vspace|\hspace|\noindent|\quad|\qquad)
                                                                                 ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"TODO|FIXME|undefined|cite\\{|Cref\\{|AddEverypageHook|everypage|hidelinks|url\\{|overfull|underfull|\\\\texttt\\{|\\\\emph\\{|---|"'``|'"''\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:TODO|FIXME|undefined|cite\{|Cref\{|AddEverypageHook|everypage|hidelinks|url\{|overfull|underfull|\texttt\{|\emph\{|---||'')
                                                                                                                  ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\label\\{' -e '\\\\Cref\\{' -e '\\\\ref\\{' -e '\\\\eqref\\{' -e '\\\\cite\\{' -e '\\\\bibitem\\{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
125:\section{Introduction}\label{sec:intro}
129:Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
133:  \item ``$58$'' denotes an invariant under all structure-preserving morphisms between models of arithmetic, in a sense made precise by functorial semantics (\Cref{sec:functorial}).
139:The paper is the last of the six topical papers in the \emph{Univalent Correspondence Project} and provides the bridge to the subsequent synthesis paper. The thesis we defend across all six papers is captured by the columns table reproduced (in shortened form) in \Cref{tab:columns}.
153:\label{tab:columns}
158:We make three contributions. First, in \Cref{sec:structuralism} we present a unified treatment of the major flavors of structuralism (Resnik, Shapiro, Hellman, Awodey) and identify the precise sense in which categorical structuralism is the formal analogue of the philosophical thesis. Second, in \Cref{sec:functorial} we develop functorial semantics for a small algebraic theory $T_{\succop}$ and prove that any natural isomorphism between two models induces equality of all definable numerical invariants (\Cref{thm:invariance}). Third, in \Cref{sec:transport} we re-derive the same invariance principle as a special case of HoTT's transport along paths, and we discuss categorification and decategorification (\Cref{sec:categorification}) as the higher-dimensional analogue.
162:\Cref{sec:transport} contains the bridge to the synthesis paper: every structural property is automatically transportable along equivalences, and univalence is the principle that makes this an internal theorem of the foundations rather than a meta-theorem of mathematical practice.
164:\section{Mathematical Framework}\label{sec:framework}
188:\begin{definition}[Algebraic theory, in the Lawvere sense]\label{def:alg-theory}
189:An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
204:\section{Mathematical Structuralism}\label{sec:structuralism}
208:Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
210:Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
236:Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
238:\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
247:\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
250:\section{Functorial Semantics}\label{sec:functorial}
254:We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
260:\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
274:\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
288:\begin{proposition}\label{prop:hom-as-nat}
311:\begin{definition}[Definable invariant]\label{def:def-inv}
319:\begin{example}\label{ex:cardinality}
327:\begin{theorem}[Invariance theorem]\label{thm:invariance}
332:By \Cref{def:def-inv}, $I$ acts functorially on the groupoid of isomorphisms. Functors send isomorphisms to isomorphisms, so $I(M) \iso I(M')$. Cardinality is itself an isomorphism invariant on $\Set$, so $|I(M)| = |I(M')|$.
339:\section{Two Models, One Answer}\label{sec:two-models}
341:We make \Cref{thm:invariance} concrete with two non-equal but isomorphic models of $T_\succop$. The accompanying Haskell code (\Cref{sec:haskell}) verifies each computed invariant.
343:\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
352:\begin{proposition}\label{prop:vN-Z-iso}
357:Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
361:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
366:\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
371:By \Cref{prop:vN-Z-iso}, $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$. By \Cref{thm:invariance}, $I(M_{\mathrm{vN}}) \iso I(M_{\mathrm{Z}})$. For invariants taking values in $\NN$ (cardinalities, orbit lengths, fixed-point counts), an isomorphism in $\NN$ is equality.
374:The Haskell implementation in \Cref{sec:haskell} performs this verification computationally: it builds both models, an isomorphism between them, and a panel of definable invariants, and checks term-by-term that the computed values agree.
376:\section{Models, Theories, and Toposes}\label{sec:topos}
380:Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
403:Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
418:\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
433:\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
437:\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
443:The categorical / structural perspective of \Cref{sec:functorial} and the Yoneda perspective of \Cref{sec:yoneda} agree: both say that mathematical content is preserved by isomorphism and that this is the right level of identity.
445:\section{Equivalence-Invariance and Transport}\label{sec:transport}
447:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
467:\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
475:\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
478:\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
483:By \Cref{thm:sip}, structure-preserving equivalence is identification. By the action of $P$ on identifications (the J-rule, alias path induction), identifications are transported by $P$. Combine.
486:\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
496:Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
499:HoTT + univalence & Iso-invariance is automatic & Internal theorem (\Cref{thm:transport-inv}) \\
502:\label{tab:four-layers}
505:The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
507:\section{Categorification and Decategorification}\label{sec:categorification}
519:\begin{example}\label{ex:58-groupoid}
548:\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
572:\section{Haskell Implementation}\label{sec:haskell}
602:\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.
604:\section{Results}\label{sec:results}
609:Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
613:The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
616:\begin{theorem}[HoTT promotion, restatement of \Cref{thm:transport-inv}]
624:\section{Discussion}\label{sec:discussion}
628:The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
630:In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
645:This is paper $06$ of a six-paper series. The synthesis paper consolidates the per-topic results into a single thesis: that the levels in \Cref{tab:columns} (rows 3--6) are not analogous but literally the same, identified up to equivalence, in HoTT with univalence. The present paper has prepared the ground for that consolidation by:
652:\section{Conclusion}\label{sec:conclusion}
669:\bibitem{Awodey1996}
672:\bibitem{Awodey2004}
675:\bibitem{Awodey2014}
678:\bibitem{Benacerraf1965}
681:\bibitem{Dedekind1888}
684:\bibitem{Escardo2019}
687:\bibitem{Hellman1989}
690:\bibitem{HoTTBook}
693:\bibitem{Hyland1982}
696:\bibitem{Lawvere1963}
699:\bibitem{Lawvere1964}
702:\bibitem{MacLane1971}
705:\bibitem{Resnik1981}
708:\bibitem{Resnik1997}
711:\bibitem{Riehl2016}
714:\bibitem{Shapiro1997}
717:\bibitem{Voevodsky2010}
720:\bibitem{Wadler2015}
723:\bibitem{BaezDolan1998}
726:\bibitem{Leinster2008}

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\begin\\{table\\}' -e '\\\\begin\\{tabular\\}' -e '\\\\begin\\{align\\*\\}' -e '\\\\begin\\{lstlisting\\}' -e '\\\\begin\\{tikzcd\\}' -e '\\\\\\\\' -e '\\\\vspace' -e '\\\\hspace' -e '\\\\noindent' -e '\\\\quad' -e '\\\\qquad' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
97:      {GrokRxiv:2026.05.categorical-structural\quad
98:       [\,math.CT\,]\quad
104:\title{The Categorical / Structural Perspective: \\
107:\author{YonedaAI Research \\
108:\textit{Univalent Correspondence Project} \\
109:\textit{Paper 06 of 6 topical papers (followed by a synthesis paper)} \\
110:Cambridge, MA \\
141:\begin{table}[h]
143:\begin{tabular}{l|l}
144:\textbf{Level} & \textbf{What $58$ \emph{is}} \\\hline
145:Naive & A symbol / a quantity \\
146:Set-theoretic & $\{0,1,\dots,57\}$ (von Neumann) \\
147:Universal property & $58$th iterate of $\succop$ in any initial $(N,\zeroop,\succop)$ \\
148:Yoneda & $\Hom(-, 58)$ in $\Mod{T_{\mathrm{arith}}}$ \\
149:HoTT & $\succop^{58}(\zeroop) : \NN$, identified up to path equivalence \\
291:  \alpha_X(M(\zeroop)(\ast)) = M'(\zeroop)(\ast), \quad
299:\begin{tikzcd}
300:M(X^0) \arrow[r, "M(\zeroop)"] \arrow[d, "\alpha_{X^0}"'] & M(X) \arrow[d, "\alpha_X"] \\
345:\begin{align*}
346:  M_{\mathrm{vN}}(X) &= \{\emptyset, \{\emptyset\}, \{\emptyset,\{\emptyset\}\}, \{\emptyset,\{\emptyset\},\{\emptyset,\{\emptyset\}\}\}\}, \\
492:\begin{table}[h]
494:\begin{tabular}{l|l|l}
495:\textbf{Layer} & \textbf{Statement} & \textbf{Status} \\\hline
496:Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
497:Universal property & Iso-class is canonical & Theorem (e.g.\ NNO uniqueness) \\
498:Yoneda & Object known by relations & Theorem (Yoneda lemma) \\
499:HoTT + univalence & Iso-invariance is automatic & Internal theorem (\Cref{thm:transport-inv}) \\
535:$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial. \\
586:\begin{lstlisting}[language=Haskell]
602:\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.

exec
/usr/local/bin/zsh -lc "rg -n -e 'TODO' -e 'FIXME' -e 'undefined' -e 'AddEverypageHook' -e 'everypage' -e 'hidelinks' -e '\\\\url\\{' -e '\\\\texttt\\{' -e '\\\\emph\\{' -e '---' -e '"'``'"' -e \"''\" papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
13:\usepackage[hidelinks]{hyperref}
23:\usepackage{everypage}
88:\AddEverypageHook{%
111:\texttt{research@yonedaai.example} $\cdot$ \url{https://yonedaai.example}}
120:We develop the structural / categorical answer to the question ``what is a number?'' by treating numerals as invariants under all structure-preserving morphisms between models of arithmetic. We survey mathematical structuralism in the philosophical tradition (Resnik, Shapiro, Hellman, Awodey), present its categorical formalization through Lawvere's Elementary Theory of the Category of Sets (ETCS) and functorial semantics of algebraic theories, and prove an isomorphism-invariance theorem for first-order properties of finitely presented theories. We define a small algebraic theory of pointed unary structures, exhibit two non-equal but isomorphic set-theoretic models, and verify --- both formally and by accompanying executable Haskell code --- that all ``numerical answers'' (cardinalities of definable subsets, values of definable functions) coincide. We connect categorification (a $58$-element groupoid in $\Grpd$ that decategorifies to $58$ in $\Set$ via $\pi_0$) and Euler-characteristic / $K$-theoretic decategorification to the same invariance principle, and we end at the bridge to the synthesis paper: the Yoneda embedding, universal properties, and Voevodsky's univalence axiom are three views of one phenomenon, namely that structural identity is identity. Univalence makes the meta-condition ``a property is structural iff it is preserved under isomorphism'' an internal theorem rather than an external rule of practice.
129:Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
133:  \item ``$58$'' denotes an invariant under all structure-preserving morphisms between models of arithmetic, in a sense made precise by functorial semantics (\Cref{sec:functorial}).
134:  \item Mathematical structuralism --- in its \emph{ante rem}, \emph{in re}, and modal variants --- is the philosophical commitment that this is the right level of analysis.
136:  \item Homotopy Type Theory (HoTT) with the univalence axiom turns ``up to isomorphism'' from an external constraint into an internal theorem.
139:The paper is the last of the six topical papers in the \emph{Univalent Correspondence Project} and provides the bridge to the subsequent synthesis paper. The thesis we defend across all six papers is captured by the columns table reproduced (in shortened form) in \Cref{tab:columns}.
144:\textbf{Level} & \textbf{What $58$ \emph{is}} \\\hline
160:The accompanying Haskell code (in \texttt{src/06-categorical-structural/}) implements functorial semantics for $T_{\succop}$, builds two non-equal but isomorphic models, and verifies that all observable numerical quantities agree under the isomorphism.
169:A \emph{category} $\C$ consists of a class $\Ob(\C)$ of objects, for each pair $A,B \in \Ob(\C)$ a set $\Hom_\C(A,B)$ of morphisms, an associative composition, and identity morphisms.
173:A \emph{functor} $F : \C \to \D$ assigns to each $A \in \Ob(\C)$ an object $F(A) \in \Ob(\D)$ and to each $f : A \to B$ a morphism $F(f) : F(A) \to F(B)$, preserving composition and identities.
177:Given functors $F, G : \C \to \D$, a \emph{natural transformation} $\alpha : F \Rightarrow G$ is a family $\{\alpha_A : F(A) \to G(A)\}_{A \in \Ob(\C)}$ such that for every $f : A \to B$, $G(f) \circ \alpha_A = \alpha_B \circ F(f)$.
181:A morphism $f : A \to B$ in $\C$ is an \emph{isomorphism} if there exists $g : B \to A$ with $g \circ f = \id_A$ and $f \circ g = \id_B$. We write $A \iso B$ when an isomorphism exists.
185:Categories $\C$ and $\D$ are \emph{equivalent}, written $\C \eq \D$, if there exist functors $F : \C \to \D$, $G : \D \to \C$ with natural isomorphisms $G F \iso \id_\C$ and $F G \iso \id_\D$.
189:An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
193:A \emph{model} of $\T$ in a category $\E$ with finite products is a finite-product-preserving functor $M : \T \to \E$. The category $\Mod{\T} \defeq \mathrm{FP}(\T, \E)$ has finite-product-preserving functors as objects and natural transformations between them as morphisms.
197:When $\E = \Set$, an interpretation $M : \T \to \Set$ assigns to the generating object $X$ a set $M(X)$ called the \emph{carrier}. The other generating data of $\T$ (operations, equations) are interpreted as functions and equalities on $M(X)$. This is the standard universal-algebraic notion of model.
201:A \emph{morphism of $\T$-models} from $M$ to $M'$ is a natural transformation $\alpha : M \Rightarrow M'$. By naturality and finite-product preservation, $\alpha$ is determined by its component $\alpha_X : M(X) \to M'(X)$, which is a homomorphism in the universal-algebraic sense.
210:Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
219:Mathematical structures are abstractions from collections of similar systems. There is no structure ``in itself''; only patterns instantiated by concrete or abstract systems.
223:There are no abstract structures or numbers; statements of arithmetic are read as universally quantified conditionals over all possible $\NN$-like systems: ``In any $\omega$-sequence, the seventh element after zero satisfies $\dots$'' rather than ``$7$ satisfies $\dots$''.
228:  \item \emph{Ante rem}: $58$ is an abstract position in the unique structure $\langle \NN, 0, \succop \rangle$.
229:  \item \emph{In re}: $58$ is whatever is common to all things obtained by applying $\succop$ exactly $58$ times to $0$ in any concrete realization.
230:  \item \emph{Modal}: ``$58 + 1 = 59$'' means ``it is necessary that, in any $\omega$-sequence, the $58$th iterate's successor is the $59$th iterate''.
236:Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
247:\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
254:We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
257:A \emph{Lawvere theory} is a small category $\T$ with finite products, equipped with a generator $X$ such that every object of $\T$ is (canonically) a finite power $X^n$, $n \geq 0$. Equivalently, $\T^\op$ has finite coproducts and is the opposite of the free finite-product category on a single object plus operation symbols and axioms.
264:  \item a constant $\zeroop : X^0 \to X$ (the ``zero''),
265:  \item a unary operation $\succop : X \to X$ (the ``successor''),
271:A model $(N, 0, \succop) \in \Mod{T_\succop}$ is \emph{initial} if for every $(M, z, s)$ there is a unique $T_\succop$-homomorphism $h : N \to M$ with $h(0) = z$ and $h \circ \succop = s \circ h$.
309:We now make precise the notion of ``numerical answer extracted from a model''.
312:Let $\T$ be a Lawvere theory and $\E$ a category. A \emph{definable invariant} of $\T$-models in $\E$ is a function
336:If $M \iso M'$ in $\Mod{\T}$, then $M$ and $M'$ agree on every definable invariant. In particular, every ``numerical answer'' computed from $M$ matches the corresponding answer computed from $M'$.
361:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
383:A \emph{topos} is a category with finite limits, exponentials, and a subobject classifier $\Omega$. A topos has all the categorical structure needed to interpret higher-order logic.
387:A \emph{natural-numbers object} in a topos $\E$ is an object $N$ with $0 : 1 \to N$ and $\succop : N \to N$ such that for every $(X, x_0, f)$ there is a unique $h : N \to X$ with $h \circ 0 = x_0$ and $h \circ \succop = f \circ h$.
391:ETCS is bi-interpretable with bounded Zermelo set theory plus a choice principle. Any model of ETCS contains a unique-up-to-isomorphism NNO, which serves as ``the'' natural numbers.
396:A model of an algebraic theory in a topos $\E$ is a finite-product-preserving functor $\T \to \E$. Different toposes give different ``universes'' in which to interpret arithmetic, but the structural invariants survive.
403:Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
408:First-order Peano arithmetic ($\mathsf{PA}$) is weaker than the categorical NNO: it has non-standard models, in particular ultrapowers $\NN^{\omega}/\mathcal{U}$ for non-principal ultrafilters $\mathcal{U}$. These models satisfy every first-order arithmetic sentence true in $\NN$, but contain ``infinite'' elements.
415:The categorical / NNO perspective forbids non-standard models: the universal property uniquely determines $N$ (up to canonical isomorphism). The first-order PA perspective admits them. The structuralist response: non-standard models satisfy a different theory than full second-order PA, and they should be analyzed as a different (richer) structure, not as ``alternative natural numbers''.
437:\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
447:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
459:Univalence asserts that ``equality of types'' and ``equivalence of types'' are themselves equivalent: any equivalence can be transported into an identification, and any identification gives back the corresponding equivalence.
486:\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
505:The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
512:A \emph{groupoid} is a category in which every morphism is invertible.
529:For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality} (Baez--Dolan, Leinster):
549:For a finite groupoid $G$, the \emph{Euler characteristic} is $\chi(G) = |G|_{\mathrm{gpd}}$.
569:The structuralist principle ``numbers are invariants'' is therefore not specific to mathematics. It is the same idea that physics calls \emph{gauge invariance} and that representation theory calls \emph{character / dimension / trace}.
574:The accompanying code at \texttt{src/06-categorical-structural/} provides a runnable demonstration of the central theorem. We summarize the key data:
577:  \item \texttt{Theory.hs}: the data type for a Lawvere theory and its operations (constants, unaries).
578:  \item \texttt{Model.hs}: a record type representing a model in $\Set$, with a carrier and interpretations of $\zeroop$ and $\succop$. Provides \texttt{isHomomorphism} and \texttt{areIsomorphic}.
579:  \item \texttt{Models.hs}: builds two finite $T_\succop$-models on disjoint carrier types and an isomorphism witnessing $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$.
580:  \item \texttt{Invariants.hs}: a panel of definable invariants (cardinality, orbit length of zero, fixed-point count, image of $\succop^k$ at zero for various $k$).
581:  \item \texttt{Main.hs}: instantiates the panel against both models and prints a side-by-side agreement table.
617:In HoTT with the univalence axiom, every property $P$ of structures of a given kind is automatically invariant under structure-preserving equivalence. Hence the meta-theoretic discipline of writing only structural definitions becomes the internal theorem ``every definition is structural''.
628:The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
630:In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
662:  \item \emph{Higher Lawvere theories:} extend the functorial-semantics framework to $(\infty,1)$-Lawvere theories and verify that the invariance theorem persists at every level of homotopy.
663:  \item \emph{Modal structuralism in HoTT:} formalize Hellman's modal structuralism using the modalities of HoTT (open / closed / monadic modalities) and compare to the absolute version.
664:  \item \emph{Decategorification of physical theories:} apply the invariance lens to gauge theories and conserved quantities, and clarify the relationship between structural invariance and Noether's theorem.
670:Awodey, S. (1996). \emph{Structure in Mathematics and Logic: A Categorical Perspective}. Philosophia Mathematica, 4(3), 209--237.
673:Awodey, S. (2004). \emph{An Answer to Hellman's Question: ``Does Category Theory Provide a Framework for Mathematical Structuralism?''} Philosophia Mathematica, 12(1), 54--64.
676:Awodey, S. (2014). \emph{Structuralism, Invariance, and Univalence}. Philosophia Mathematica, 22(1), 1--11.
679:Benacerraf, P. (1965). \emph{What Numbers Could Not Be}. Philosophical Review, 74(1), 47--73.
682:Dedekind, R. (1888). \emph{Was sind und was sollen die Zahlen?} Vieweg \& Sohn, Braunschweig.
685:Escard\'o, M.\ H. (2019). \emph{Introduction to Univalent Foundations of Mathematics with Agda}. Lecture notes.
688:Hellman, G. (1989). \emph{Mathematics Without Numbers: Towards a Modal-Structural Interpretation}. Oxford University Press.
691:The Univalent Foundations Program (2013). \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study. arXiv:1308.0729.
694:Hyland, J.\ M.\ E. (1982). \emph{The Effective Topos}. In: A.\ S.\ Troelstra, D.\ van Dalen (eds.), The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland, 165--216.
697:Lawvere, F.\ W. (1963). \emph{Functorial Semantics of Algebraic Theories}. PhD thesis, Columbia University. Reprinted in TAC Reprints 5 (2004).
700:Lawvere, F.\ W. (1964). \emph{An Elementary Theory of the Category of Sets}. Proceedings of the National Academy of Sciences, 52(6), 1506--1511.
703:Mac Lane, S. (1971). \emph{Categories for the Working Mathematician}. Springer.
706:Resnik, M.\ D. (1981). \emph{Mathematics as a Science of Patterns: Ontology and Reference}. No\^us, 15(4), 529--550.
709:Resnik, M.\ D. (1997). \emph{Mathematics as a Science of Patterns}. Oxford University Press.
712:Riehl, E. (2016). \emph{Category Theory in Context}. Dover.
715:Shapiro, S. (1997). \emph{Philosophy of Mathematics: Structure and Ontology}. Oxford University Press.
718:Voevodsky, V. (2010). \emph{Univalent Foundations Project}. Manuscript.
721:Wadler, P. (2015). \emph{Propositions as Types}. Communications of the ACM, 58(12), 75--84.
724:Baez, J.\ C., and Dolan, J. (1998). \emph{From Finite Sets to Feynman Diagrams}. In: Mathematics Unlimited --- 2001 and Beyond, Springer, 29--50.
727:Leinster, T. (2008). \emph{The Euler Characteristic of a Category}. Documenta Mathematica, 13, 21--49.

exec
/usr/local/bin/zsh -lc 'command -v chktex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc 'command -v pdflatex || command -v xelatex || command -v lualatex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/pdflatex

exec
/usr/local/bin/zsh -lc 'command -v latexmk || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk

exec
/usr/local/bin/zsh -lc 'command -v tectonic || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
codex
Local TeX tooling is present, including `chktex`, `pdflatex`, and `latexmk`. I’ll run linting and, if the sandbox permits writing temporary artifacts outside the repo, a draft compile into `/tmp` so the overfull/underfull and package diagnostics are evidence-backed.
exec
/usr/local/bin/zsh -lc 'chktex -q -v0 papers/06-categorical-structural/latex/06-categorical-structural.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 exited 2 in 0ms:
papers/06-categorical-structural/latex/06-categorical-structural.tex:32:17:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:77:34:36:You should put a space in front of parenthesis.
papers/06-categorical-structural/latex/06-categorical-structural.tex:120:82:38:You should not use punctuation in front of quotes.
papers/06-categorical-structural/latex/06-categorical-structural.tex:143:1:44:User Regex: -2:Vertical rules in tables are ugly.
papers/06-categorical-structural/latex/06-categorical-structural.tex:144:49:44:User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
papers/06-categorical-structural/latex/06-categorical-structural.tex:153:1:24:Delete this space to maintain correct pagereferences.
papers/06-categorical-structural/latex/06-categorical-structural.tex:177:134:3:You should enclose the previous parenthesis with `{}'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:236:282:38:You should not use punctuation in front of quotes.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:18:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:29:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:42:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:55:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:76:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:300:85:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:301:19:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:301:31:18:Use either `` or '' as an alternative to `"'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:353:123:13:Intersentence spacing (`\@') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:361:231:38:You should not use punctuation in front of quotes.
papers/06-categorical-structural/latex/06-categorical-structural.tex:408:80:13:Intersentence spacing (`\@') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:411:57:3:You should enclose the previous parenthesis with `{}'.
papers/06-categorical-structural/latex/06-categorical-structural.tex:447:82:13:Intersentence spacing (`\@') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:475:154:8:Wrong length of dash may have been used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:494:1:44:User Regex: -2:Vertical rules in tables are ugly.
papers/06-categorical-structural/latex/06-categorical-structural.tex:495:57:44:User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
papers/06-categorical-structural/latex/06-categorical-structural.tex:502:1:24:Delete this space to maintain correct pagereferences.
papers/06-categorical-structural/latex/06-categorical-structural.tex:529:96:8:Wrong length of dash may have been used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:613:137:13:Intersentence spacing (`\@') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:670:19:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:673:19:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:673:132:38:You should not use punctuation in front of quotes.
papers/06-categorical-structural/latex/06-categorical-structural.tex:676:19:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:679:23:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:682:21:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:685:26:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:688:20:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:691:42:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:691:139:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:694:27:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:697:24:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:700:24:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:703:21:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:706:23:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:709:23:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:712:18:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:715:20:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:718:22:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:721:19:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:724:36:12:Interword spacing (`\ ') should perhaps be used.
papers/06-categorical-structural/latex/06-categorical-structural.tex:727:21:12:Interword spacing (`\ ') should perhaps be used.

codex
`chktex` ran successfully, but a draft compile could not run because the read-only sandbox blocks even temporary `/tmp` output. I’ll still report the compile limitation explicitly and use static checks plus `chktex` warnings, filtering out clear false positives like TikZ label quotes and bibliography initials.
exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>110 {print FNR ":" length($0) ":" $0}'"' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
29:122:  keywords={data, type, class, instance, where, let, in, do, case, of, if, then, else, module, import, newtype, deriving},
120:1439:We develop the structural / categorical answer to the question ``what is a number?'' by treating numerals as invariants under all structure-preserving morphisms between models of arithmetic. We survey mathematical structuralism in the philosophical tradition (Resnik, Shapiro, Hellman, Awodey), present its categorical formalization through Lawvere's Elementary Theory of the Category of Sets (ETCS) and functorial semantics of algebraic theories, and prove an isomorphism-invariance theorem for first-order properties of finitely presented theories. We define a small algebraic theory of pointed unary structures, exhibit two non-equal but isomorphic set-theoretic models, and verify --- both formally and by accompanying executable Haskell code --- that all ``numerical answers'' (cardinalities of definable subsets, values of definable functions) coincide. We connect categorification (a $58$-element groupoid in $\Grpd$ that decategorifies to $58$ in $\Set$ via $\pi_0$) and Euler-characteristic / $K$-theoretic decategorification to the same invariance principle, and we end at the bridge to the synthesis paper: the Yoneda embedding, universal properties, and Voevodsky's univalence axiom are three views of one phenomenon, namely that structural identity is identity. Univalence makes the meta-condition ``a property is structural iff it is preserved under isomorphism'' an internal theorem rather than an external rule of practice.
129:816:Frege asked what numbers are; Dedekind answered: numbers are positions in a structure satisfying the simply infinite system axioms~\cite{Dedekind1888}. Frege rejected the answer because it left the structure underdetermined ---``many systems'', not one. The twentieth century proved Dedekind right and Frege wrong: every system satisfying the axioms is canonically isomorphic to every other, and the only invariants that survive a change of model are the structural ones. Benacerraf~\cite{Benacerraf1965} sharpened the point: since infinitely many set-theoretic encodings (von Neumann's, Zermelo's, and uncountably many others) all satisfy Peano's axioms, no encoding can claim to \emph{be} the natural numbers without contradiction. Numbers, if they are anything, must be what is preserved under all such encodings.
133:181:  \item ``$58$'' denotes an invariant under all structure-preserving morphisms between models of arithmetic, in a sense made precise by functorial semantics (\Cref{sec:functorial}).
134:173:  \item Mathematical structuralism --- in its \emph{ante rem}, \emph{in re}, and modal variants --- is the philosophical commitment that this is the right level of analysis.
135:190:  \item Category theory (and ETCS in particular) is the natural formal language because it is built around the principle that objects are determined up to isomorphism by their relationships.
136:143:  \item Homotopy Type Theory (HoTT) with the univalence axiom turns ``up to isomorphism'' from an external constraint into an internal theorem.
139:283:The paper is the last of the six topical papers in the \emph{Univalent Correspondence Project} and provides the bridge to the subsequent synthesis paper. The thesis we defend across all six papers is captured by the columns table reproduced (in shortened form) in \Cref{tab:columns}.
158:777:We make three contributions. First, in \Cref{sec:structuralism} we present a unified treatment of the major flavors of structuralism (Resnik, Shapiro, Hellman, Awodey) and identify the precise sense in which categorical structuralism is the formal analogue of the philosophical thesis. Second, in \Cref{sec:functorial} we develop functorial semantics for a small algebraic theory $T_{\succop}$ and prove that any natural isomorphism between two models induces equality of all definable numerical invariants (\Cref{thm:invariance}). Third, in \Cref{sec:transport} we re-derive the same invariance principle as a special case of HoTT's transport along paths, and we discuss categorification and decategorification (\Cref{sec:categorification}) as the higher-dimensional analogue.
160:252:The accompanying Haskell code (in \texttt{src/06-categorical-structural/}) implements functorial semantics for $T_{\succop}$, builds two non-equal but isomorphic models, and verifies that all observable numerical quantities agree under the isomorphism.
162:281:\Cref{sec:transport} contains the bridge to the synthesis paper: every structural property is automatically transportable along equivalences, and univalence is the principle that makes this an internal theorem of the foundations rather than a meta-theorem of mathematical practice.
169:183:A \emph{category} $\C$ consists of a class $\Ob(\C)$ of objects, for each pair $A,B \in \Ob(\C)$ a set $\Hom_\C(A,B)$ of morphisms, an associative composition, and identity morphisms.
173:193:A \emph{functor} $F : \C \to \D$ assigns to each $A \in \Ob(\C)$ an object $F(A) \in \Ob(\D)$ and to each $f : A \to B$ a morphism $F(f) : F(A) \to F(B)$, preserving composition and identities.
177:232:Given functors $F, G : \C \to \D$, a \emph{natural transformation} $\alpha : F \Rightarrow G$ is a family $\{\alpha_A : F(A) \to G(A)\}_{A \in \Ob(\C)}$ such that for every $f : A \to B$, $G(f) \circ \alpha_A = \alpha_B \circ F(f)$.
181:185:A morphism $f : A \to B$ in $\C$ is an \emph{isomorphism} if there exists $g : B \to A$ with $g \circ f = \id_A$ and $f \circ g = \id_B$. We write $A \iso B$ when an isomorphism exists.
185:192:Categories $\C$ and $\D$ are \emph{equivalent}, written $\C \eq \D$, if there exist functors $F : \C \to \D$, $G : \D \to \C$ with natural isomorphisms $G F \iso \id_\C$ and $F G \iso \id_\D$.
189:239:An \emph{algebraic theory} (in the sense of Lawvere~\cite{Lawvere1963}) is a small category $\T$ with finite products, equipped with a distinguished object $X \in \Ob(\T)$ such that every object is a finite power $X^n$ for some $n \geq 0$.
193:274:A \emph{model} of $\T$ in a category $\E$ with finite products is a finite-product-preserving functor $M : \T \to \E$. The category $\Mod{\T} \defeq \mathrm{FP}(\T, \E)$ has finite-product-preserving functors as objects and natural transformations between them as morphisms.
197:301:When $\E = \Set$, an interpretation $M : \T \to \Set$ assigns to the generating object $X$ a set $M(X)$ called the \emph{carrier}. The other generating data of $\T$ (operations, equations) are interpreted as functions and equalities on $M(X)$. This is the standard universal-algebraic notion of model.
201:280:A \emph{morphism of $\T$-models} from $M$ to $M'$ is a natural transformation $\alpha : M \Rightarrow M'$. By naturality and finite-product preservation, $\alpha$ is determined by its component $\alpha_X : M(X) \to M'(X)$, which is a homomorphism in the universal-algebraic sense.
208:369:Mathematical structuralism (Benacerraf~\cite{Benacerraf1965}, Resnik~\cite{Resnik1997}, Shapiro~\cite{Shapiro1997}, Hellman~\cite{Hellman1989}, Awodey~\cite{Awodey1996,Awodey2014}) is the view that mathematics studies structures rather than objects: the natural numbers are not a particular set or sequence but the abstract pattern that all $\NN$-like structures share.
210:382:Resnik's slogan~\cite{Resnik1981} is that mathematical objects are ``positions in patterns''. Shapiro distinguishes the position itself (an abstract place) from the objects that may occupy it. Hellman~\cite{Hellman1989} formulates the doctrine modally: a structure is a possible-world description, and arithmetic asserts what would be true of any system that realizes the structure.
215:194:The structures of mathematics exist independently of any particular system that realizes them. Numbers are real abstract entities, but their identity is exhausted by their relational properties.
219:174:Mathematical structures are abstractions from collections of similar systems. There is no structure ``in itself''; only patterns instantiated by concrete or abstract systems.
223:273:There are no abstract structures or numbers; statements of arithmetic are read as universally quantified conditionals over all possible $\NN$-like systems: ``In any $\omega$-sequence, the seventh element after zero satisfies $\dots$'' rather than ``$7$ satisfies $\dots$''.
228:112:  \item \emph{Ante rem}: $58$ is an abstract position in the unique structure $\langle \NN, 0, \succop \rangle$.
229:148:  \item \emph{In re}: $58$ is whatever is common to all things obtained by applying $\succop$ exactly $58$ times to $0$ in any concrete realization.
230:151:  \item \emph{Modal}: ``$58 + 1 = 59$'' means ``it is necessary that, in any $\omega$-sequence, the $58$th iterate's successor is the $59$th iterate''.
236:397:Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
239:253:Let $\C$ be a category and let $P$ be a property of objects of $\C$ that is expressible using only the data of $\C$ (objects, morphisms, composition, and finite limits/colimits where they exist). Then for any isomorphism $f : A \to B$, $P(A) \iff P(B)$.
243:295:By induction on the complexity of $P$. Atomic categorical statements (commutativity of squares, existence of fillers, equality of composites) are preserved by isomorphisms because $f$ and $f^{-1}$ are inverse, and composition is preserved. For complex $P$, the inductive step is straightforward.
247:290:\Cref{prop:struct-iso} is meta-mathematical: it presupposes a notion of ``categorical formula'' and identifies a syntactic class of properties whose semantics is invariant under isomorphism. In HoTT this becomes an \emph{internal} theorem, the structure identity principle (\Cref{thm:sip}).
254:269:We follow Lawvere's 1963 Ph.D. thesis~\cite{Lawvere1963}: an algebraic theory is a category, models are functors, and homomorphisms are natural transformations. This rephrasing is consequential: we obtain a precise sense in which two models ``compute the same number''.
257:337:A \emph{Lawvere theory} is a small category $\T$ with finite products, equipped with a generator $X$ such that every object of $\T$ is (canonically) a finite power $X^n$, $n \geq 0$. Equivalently, $\T^\op$ has finite coproducts and is the opposite of the free finite-product category on a single object plus operation symbols and axioms.
271:196:A model $(N, 0, \succop) \in \Mod{T_\succop}$ is \emph{initial} if for every $(M, z, s)$ there is a unique $T_\succop$-homomorphism $h : N \to M$ with $h(0) = z$ and $h \circ \succop = s \circ h$.
275:128:$(\NN, 0, \succop)$ with $\succop(n) = n+1$ is initial in $\Mod{T_\succop}$, and any two initial models are uniquely isomorphic.
279:169:Existence and uniqueness of $h$ are by primitive recursion. Two initial objects are connected by a unique morphism each way; their composites are identity by uniqueness.
285:156:For a Lawvere theory $\T$, let $\Mod{\T}$ denote the category of finite-product-preserving functors $\T \to \Set$ with natural transformations as morphisms.
289:176:Let $\T = T_\succop$ and let $M, M' : \T \to \Set$. The data of a natural transformation $\alpha : M \Rightarrow M'$ is exactly a function $\alpha_X : M(X) \to M'(X)$ such that
304:558:Since both functors preserve finite products, $M(X^0)$ and $M'(X^0)$ are terminal in $\Set$ (singletons $\{\ast\}$) and $\alpha_{X^0}$ is the unique map between them; the diagram thus collapses to the first displayed equation. Naturality on $\succop : X \to X$ gives directly the second displayed equation. Conversely, any pair $(\alpha_{X^0}, \alpha_X)$ satisfying these two equations extends uniquely to a natural transformation: finite-product preservation determines all higher components $\alpha_{X^n}$ as the $n$-fold product of $\alpha_X$ with itself.
312:115:Let $\T$ be a Lawvere theory and $\E$ a category. A \emph{definable invariant} of $\T$-models in $\E$ is a function
316:272:together with, for every isomorphism $\alpha : M \to M'$ in $\Mod{\T}$, an isomorphism $I(\alpha) : I(M) \to I(M')$ in $\E$, such that $I(\id_M) = \id_{I(M)}$ and $I$ preserves composition. Equivalently, $I$ is a functor from the underlying groupoid of $\Mod{\T}$ to $\E$.
320:175:Cardinality is a definable invariant when restricted to finite models: $|M| = |M'|$ whenever $M \iso M'$. This is the simplest example of the structural-invariance phenomenon.
324:232:For $T_\succop$-models $(M,z,s)$ in $\Set$, define $\mathrm{ord}(M,z,s) = \min \{ n \geq 1 : s^n(z) = z \}$ if such $n$ exists, $\infty$ otherwise. This is a definable invariant: any isomorphism preserves the orbit of $z$ under $s$.
328:225:Let $\T$ be a Lawvere theory and $I$ a definable invariant. For any two isomorphic models $M, M' \in \Mod{\T}$, $I(M) \iso I(M')$ in $\E$. In particular, when $\E = \Set$ and $I(M)$ is a (finite) cardinal, $|I(M)| = |I(M')|$.
332:224:By \Cref{def:def-inv}, $I$ acts functorially on the groupoid of isomorphisms. Functors send isomorphisms to isomorphisms, so $I(M) \iso I(M')$. Cardinality is itself an isomorphism invariant on $\Set$, so $|I(M)| = |I(M')|$.
336:196:If $M \iso M'$ in $\Mod{\T}$, then $M$ and $M'$ agree on every definable invariant. In particular, every ``numerical answer'' computed from $M$ matches the corresponding answer computed from $M'$.
341:180:We make \Cref{thm:invariance} concrete with two non-equal but isomorphic models of $T_\succop$. The accompanying Haskell code (\Cref{sec:haskell}) verifies each computed invariant.
346:142:  M_{\mathrm{vN}}(X) &= \{\emptyset, \{\emptyset\}, \{\emptyset,\{\emptyset\}\}, \{\emptyset,\{\emptyset\},\{\emptyset,\{\emptyset\}\}\}\}, \\
349:176:each with $\zeroop$ interpreted as $\emptyset$ and $\succop$ interpreted by the appropriate generation rule (von Neumann: $n \mapsto n \cup \{n\}$; Zermelo: $n \mapsto \{n\}$).
353:123:$M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$ in $\Mod{T_\succop}$, but $M_{\mathrm{vN}}(X) \neq M_{\mathrm{Z}}(X)$ as sets in ZFC.
357:571:Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
361:384:\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
367:138:For every definable invariant $I$ of $T_\succop$-models in $\Set$ (or in $\NN$ via cardinality), $I(M_{\mathrm{vN}}) = I(M_{\mathrm{Z}})$.
371:261:By \Cref{prop:vN-Z-iso}, $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$. By \Cref{thm:invariance}, $I(M_{\mathrm{vN}}) \iso I(M_{\mathrm{Z}})$. For invariants taking values in $\NN$ (cardinalities, orbit lengths, fixed-point counts), an isomorphism in $\NN$ is equality.
374:237:The Haskell implementation in \Cref{sec:haskell} performs this verification computationally: it builds both models, an isomorphism between them, and a panel of definable invariants, and checks term-by-term that the computed values agree.
380:407:Lawvere's Elementary Theory of the Category of Sets (ETCS, 1964~\cite{Lawvere1964}) reformulates set theory as a first-order axiomatization of $\Set$ as a (well-pointed) topos with a natural-numbers object (NNO) and choice. It is a categorical foundation: structural at its core because the axioms refer only to the categorical relations (terminal object, products, exponentials, subobject classifier, NNO).
383:181:A \emph{topos} is a category with finite limits, exponentials, and a subobject classifier $\Omega$. A topos has all the categorical structure needed to interpret higher-order logic.
387:231:A \emph{natural-numbers object} in a topos $\E$ is an object $N$ with $0 : 1 \to N$ and $\succop : N \to N$ such that for every $(X, x_0, f)$ there is a unique $h : N \to X$ with $h \circ 0 = x_0$ and $h \circ \succop = f \circ h$.
391:181:ETCS is bi-interpretable with bounded Zermelo set theory plus a choice principle. Any model of ETCS contains a unique-up-to-isomorphism NNO, which serves as ``the'' natural numbers.
396:218:A model of an algebraic theory in a topos $\E$ is a finite-product-preserving functor $\T \to \E$. Different toposes give different ``universes'' in which to interpret arithmetic, but the structural invariants survive.
399:233:Let $\E = \mathrm{Sh}(X)$, the topos of sheaves on a topological space. A $T_\succop$-model in $\E$ is a sheaf of pointed unary structures. Locally these look like ordinary models in $\Set$; globally they encode parameter dependence.
403:335:Hyland's effective topos~\cite{Hyland1982} is a topos in which the NNO carries a different ``computability'' structure: morphisms $N \to N$ are exactly the computable functions. The arithmetic invariants of $N$ (cardinality, orbit structure of $\succop$) coincide with those of the standard model, but the morphism structure is richer.
408:316:First-order Peano arithmetic ($\mathsf{PA}$) is weaker than the categorical NNO: it has non-standard models, in particular ultrapowers $\NN^{\omega}/\mathcal{U}$ for non-principal ultrafilters $\mathcal{U}$. These models satisfy every first-order arithmetic sentence true in $\NN$, but contain ``infinite'' elements.
411:256:Let $\mathcal{U}$ be an ultrafilter on $I$ and let $(M_i)_{i \in I}$ be a family of models of a first-order theory $T$. The ultraproduct $\prod M_i / \mathcal{U}$ satisfies a first-order sentence $\varphi$ iff $\{i : M_i \models \varphi\} \in \mathcal{U}$.
415:389:The categorical / NNO perspective forbids non-standard models: the universal property uniquely determines $N$ (up to canonical isomorphism). The first-order PA perspective admits them. The structuralist response: non-standard models satisfy a different theory than full second-order PA, and they should be analyzed as a different (richer) structure, not as ``alternative natural numbers''.
420:141:We pause to record how Yoneda and universal properties (the topics of papers 03 and 04 of this series) sit inside the structural perspective.
430:127:The functor $y : \C \to [\C^\op, \Set]$ sending $A \mapsto \Hom_\C(-, A)$ is fully faithful: $\Hom_\C(A, B) \iso \Nat(yA, yB)$.
437:285:\Cref{cor:id-by-rel} is the Yoneda formulation of structuralism: an object is determined (up to canonical isomorphism) by its system of incoming maps. ``$58$'' is its representable functor $\Hom_{\Mod{T_\succop}}(-, 58)$ in the category of finite cyclic-or-linear successor structures.
440:204:Any object characterized by a universal property is determined up to canonical isomorphism. Therefore, the value of any property of universally characterized objects depends only on the isomorphism class.
443:229:The categorical / structural perspective of \Cref{sec:functorial} and the Yoneda perspective of \Cref{sec:yoneda} agree: both say that mathematical content is preserved by isomorphism and that this is the right level of identity.
447:248:We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
459:225:Univalence asserts that ``equality of types'' and ``equivalence of types'' are themselves equivalent: any equivalence can be transported into an identification, and any identification gives back the corresponding equivalence.
462:195:Given $P : \mathcal{U} \to \mathcal{U}$ and $p : A =_\mathcal{U} B$, there is a function $\mathrm{transport}^P(p) : P(A) \to P(B)$. Moreover, $\mathrm{transport}^P(\mathrm{refl}_A) = \id_{P(A)}$.
468:313:Let $\mathcal{S}$ be a notion of structure (e.g.\ a $T_\succop$-model in HoTT) defined by a $\Sigma$-type $\Sigma_{X : \mathcal{U}}\, F(X)$ where $F$ is a structure of finite signature on the carrier $X$. Then identification of structures is canonically equivalent to structure-preserving equivalence of carriers:
470:120:  \big( (X, s) =_{\Sigma_{X} F(X)} (X', s') \big) \;\eq\; \big(\Sigma_{f : X \eq X'}\, f \text{ preserves } s, s' \big).
475:315:\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
479:235:In HoTT, every property $P : \mathcal{S} \to \mathcal{U}$ of structures of a given kind $\mathcal{S}$ is automatically invariant under structure-preserving equivalence: if $(X, s) \eq_\mathcal{S} (X', s')$ then $P(X, s) \eq P(X', s')$.
483:195:By \Cref{thm:sip}, structure-preserving equivalence is identification. By the action of $P$ on identifications (the J-rule, alias path induction), identifications are transported by $P$. Combine.
486:384:\Cref{thm:transport-inv} is the internal counterpart of the meta-theoretic \Cref{prop:struct-iso}. Where the latter says ``one ought to write only structural definitions'' as a methodological discipline, the former says ``every definition you can write is structural'' as a theorem of the foundations. Univalence is the principle that promotes the meta-condition into an internal one.
505:205:The synthesis paper develops \Cref{tab:four-layers} in detail; we record here only that the four rows describe the same fact (``mathematical content is structural'') with progressively stronger guarantees.
520:214:Let $G_{58}$ be a groupoid with $58$ objects $\{0, 1, \dots, 57\}$ and only identity morphisms. Then $\pi_0(G_{58}) = \{\{0\}, \dots, \{57\}\}$, a $58$-element set. Cardinality is preserved: $|\pi_0(G_{58})| = 58$.
524:136:Let $G_{B\ZZ/n\ZZ}$ be the groupoid with one object and automorphism group $\ZZ/n\ZZ$. Then $\pi_0(G_{B\ZZ/n\ZZ})$ is a one-element set.
529:114:For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality} (Baez--Dolan, Leinster):
553:113:Equivalent groupoids $G \eq G'$ satisfy $\pi_0(G) \iso \pi_0(G')$ and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$.
557:117:Equivalences induce bijections on isomorphism classes, hence equal $\pi_0$ and equal sums in the cardinality formula.
562:264:The same invariance principle reappears in physics. Gauge invariants and conserved quantities are exactly those numbers preserved under the symmetries of a system; what survives a gauge transformation is structural content, what fails to survive is gauge artifact.
565:243:Mass, charge, energy, momentum, angular momentum, spin: each is a Noether-conserved quantity associated to a symmetry of the action functional. The conserved quantity is the structural invariant; the dynamical trajectory is the representation.
569:234:The structuralist principle ``numbers are invariants'' is therefore not specific to mathematics. It is the same idea that physics calls \emph{gauge invariance} and that representation theory calls \emph{character / dimension / trace}.
574:149:The accompanying code at \texttt{src/06-categorical-structural/} provides a runnable demonstration of the central theorem. We summarize the key data:
578:196:  \item \texttt{Model.hs}: a record type representing a model in $\Set$, with a carrier and interpretations of $\zeroop$ and $\succop$. Provides \texttt{isHomomorphism} and \texttt{areIsomorphic}.
579:159:  \item \texttt{Models.hs}: builds two finite $T_\succop$-models on disjoint carrier types and an isomorphism witnessing $M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$.
580:165:  \item \texttt{Invariants.hs}: a panel of definable invariants (cardinality, orbit length of zero, fixed-point count, image of $\succop^k$ at zero for various $k$).
581:111:  \item \texttt{Main.hs}: instantiates the panel against both models and prints a side-by-side agreement table.
602:238:\noindent The code performs the verification: every numerical invariant computed against $M_{\mathrm{vN}}$ matches the corresponding invariant computed against $M_{\mathrm{Z}}$, exactly as predicted by \Cref{thm:invariance,thm:agreement}.
609:260:Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
613:275:The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
617:290:In HoTT with the univalence axiom, every property $P$ of structures of a given kind is automatically invariant under structure-preserving equivalence. Hence the meta-theoretic discipline of writing only structural definitions becomes the internal theorem ``every definition is structural''.
621:182:For finite groupoids $G \eq G'$, $\pi_0(G) \iso \pi_0(G')$ as sets, $|\pi_0(G)| = |\pi_0(G')|$ as natural numbers, and $|G|_{\mathrm{gpd}} = |G'|_{\mathrm{gpd}}$ as rational numbers.
628:448:The invariance theorem (\Cref{thm:invariance}) is technically modest --- it says functors send isomorphisms to isomorphisms --- but its philosophical force is large. Combined with \Cref{prop:struct-iso}, it cashes out the structuralist slogan ``numbers are positions'' in a fully formal way: a position in a structure is exactly a $\Mod{\T}$-invariant of finite power, and ``$58$'' picks out the same thing in any model up to canonical isomorphism.
630:259:In HoTT (\Cref{sec:transport}), the same principle is internalized: the meta-condition becomes a theorem. This is one of the two senses in which univalence is foundational: it eliminates the gap between ``structural in principle'' and ``provably structural''.
634:154:We have presented the structural perspective at the level of finite Lawvere theories interpreted in $\Set$. The full strength of the perspective requires:
636:124:  \item finite-product theories with sorts (multi-sorted Lawvere theories), which suffice for first-order universal algebra;
637:115:  \item finite-limit theories (essentially algebraic theories), which suffice for partial operations like division;
641:133:The invariance principle survives at every level: the categorical content of the principle does not depend on the size of the theory.
645:334:This is paper $06$ of a six-paper series. The synthesis paper consolidates the per-topic results into a single thesis: that the levels in \Cref{tab:columns} (rows 3--6) are not analogous but literally the same, identified up to equivalence, in HoTT with univalence. The present paper has prepared the ground for that consolidation by:
649:120:  \item identifying univalence as the principle that promotes the invariance from a meta-theorem to an internal theorem.
654:508:A number is what survives every change of representation that preserves the structure. We have made this slogan precise: numbers are definable invariants of $T_\succop$-models, equivalently functors from the underlying groupoid of $\Mod{T_\succop}$ to whatever target category one chooses to extract numerical content into. Two models that are isomorphic as $T_\succop$-models give the same answer to every such question. The Haskell code makes the principle executable for the von Neumann / Zermelo example.
656:255:The deeper claim is that this principle is the same one that universal properties express, that the Yoneda embedding internalizes, and that HoTT with univalence makes literal: structural identity is identity. The synthesis paper develops the consequences.
662:190:  \item \emph{Higher Lawvere theories:} extend the functorial-semantics framework to $(\infty,1)$-Lawvere theories and verify that the invariance theorem persists at every level of homotopy.
663:186:  \item \emph{Modal structuralism in HoTT:} formalize Hellman's modal structuralism using the modalities of HoTT (open / closed / monadic modalities) and compare to the absolute version.
664:207:  \item \emph{Decategorification of physical theories:} apply the invariance lens to gauge theories and conserved quantities, and clarify the relationship between structural invariance and Noether's theorem.
670:129:Awodey, S. (1996). \emph{Structure in Mathematics and Logic: A Categorical Perspective}. Philosophia Mathematica, 4(3), 209--237.
673:175:Awodey, S. (2004). \emph{An Answer to Hellman's Question: ``Does Category Theory Provide a Framework for Mathematical Structuralism?''} Philosophia Mathematica, 12(1), 54--64.
685:111:Escard\'o, M.\ H. (2019). \emph{Introduction to Univalent Foundations of Mathematics with Agda}. Lecture notes.
688:123:Hellman, G. (1989). \emph{Mathematics Without Numbers: Towards a Modal-Structural Interpretation}. Oxford University Press.
691:155:The Univalent Foundations Program (2013). \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study. arXiv:1308.0729.
694:169:Hyland, J.\ M.\ E. (1982). \emph{The Effective Topos}. In: A.\ S.\ Troelstra, D.\ van Dalen (eds.), The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland, 165--216.
697:143:Lawvere, F.\ W. (1963). \emph{Functorial Semantics of Algebraic Theories}. PhD thesis, Columbia University. Reprinted in TAC Reprints 5 (2004).
700:144:Lawvere, F.\ W. (1964). \emph{An Elementary Theory of the Category of Sets}. Proceedings of the National Academy of Sciences, 52(6), 1506--1511.
706:116:Resnik, M.\ D. (1981). \emph{Mathematics as a Science of Patterns: Ontology and Reference}. No\^us, 15(4), 529--550.
724:145:Baez, J.\ C., and Dolan, J. (1998). \emph{From Finite Sets to Feynman Diagrams}. In: Mathematics Unlimited --- 2001 and Beyond, Springer, 29--50.

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\label\\{(["'^}]+)'"\\}/g){print \"LABEL "'$. $1'"\\n\"} while(/\\\\(?:Cref|ref|eqref)\\{(["'^}]+)'"\\}/g){for "'$x (split /,/, $1){$x=~s/''^'"\\s+|\\s+"'$//g; print "REF $. $x'"\\n\"}} while(/\\\\cite\\{(["'^}]+)'"\\}/g){for "'$x (split /,/, $1){$x=~s/''^'"\\s+|\\s+"'$//g; print "CITE $. $x'"\\n\"}} while(/\\\\bibitem\\{(["'^}]+)'"\\}/g){print \"BIB "'$. $1'"\\n\"}' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\begin\\{(["'^}]+)'"\\}/g){print \"BEGIN "'$. $1'"\\n\"} while(/\\\\end\\{(["'^}]+)'"\\}/g){print \"END "'$. $1'"\\n\"}' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
BEGIN 90 tikzpicture
END 100 tikzpicture
BEGIN 115 document
BEGIN 119 abstract
END 121 abstract
BEGIN 132 enumerate
END 137 enumerate
BEGIN 141 table
BEGIN 143 tabular
END 151 tabular
END 154 table
BEGIN 168 definition
END 170 definition
BEGIN 172 definition
END 174 definition
BEGIN 176 definition
END 178 definition
BEGIN 180 definition
END 182 definition
BEGIN 184 definition
END 186 definition
BEGIN 188 definition
END 190 definition
BEGIN 192 definition
END 194 definition
BEGIN 196 remark
END 198 remark
BEGIN 200 definition
END 202 definition
BEGIN 214 definition
END 216 definition
BEGIN 218 definition
END 220 definition
BEGIN 222 definition
END 224 definition
BEGIN 226 example
BEGIN 227 itemize
END 231 itemize
END 232 example
BEGIN 238 proposition
END 240 proposition
BEGIN 242 proof
END 244 proof
BEGIN 246 remark
END 248 remark
BEGIN 256 definition
END 258 definition
BEGIN 260 example
BEGIN 262 itemize
END 266 itemize
END 268 example
BEGIN 270 definition
END 272 definition
BEGIN 274 theorem
END 276 theorem
BEGIN 278 proof
END 280 proof
BEGIN 284 definition
END 286 definition
BEGIN 288 proposition
END 294 proposition
BEGIN 296 proof
BEGIN 299 tikzcd
END 302 tikzcd
END 305 proof
BEGIN 311 definition
END 317 definition
BEGIN 319 example
END 321 example
BEGIN 323 example
END 325 example
BEGIN 327 theorem
END 329 theorem
BEGIN 331 proof
END 333 proof
BEGIN 335 corollary
END 337 corollary
BEGIN 343 example
BEGIN 345 align*
END 348 align*
END 350 example
BEGIN 352 proposition
END 354 proposition
BEGIN 356 proof
END 358 proof
BEGIN 360 remark
END 362 remark
BEGIN 366 theorem
END 368 theorem
BEGIN 370 proof
END 372 proof
BEGIN 382 definition
END 384 definition
BEGIN 386 definition
END 388 definition
BEGIN 390 theorem
END 392 theorem
BEGIN 398 example
END 400 example
BEGIN 402 example
END 404 example
BEGIN 410 theorem
END 412 theorem
BEGIN 414 remark
END 416 remark
BEGIN 422 theorem
END 427 theorem
BEGIN 429 corollary
END 431 corollary
BEGIN 433 corollary
END 435 corollary
BEGIN 439 proposition
END 441 proposition
BEGIN 451 definition
END 457 definition
BEGIN 461 theorem
END 463 theorem
BEGIN 467 theorem
END 472 theorem
BEGIN 474 remark
END 476 remark
BEGIN 478 theorem
END 480 theorem
BEGIN 482 proof
END 484 proof
BEGIN 492 table
BEGIN 494 tabular
END 500 tabular
END 503 table
BEGIN 511 definition
END 513 definition
BEGIN 515 definition
END 517 definition
BEGIN 519 example
END 521 example
BEGIN 523 example
END 525 example
BEGIN 534 example
END 537 example
BEGIN 542 itemize
END 546 itemize
BEGIN 548 definition
END 550 definition
BEGIN 552 theorem
END 554 theorem
BEGIN 556 proof
END 558 proof
BEGIN 564 example
END 566 example
BEGIN 568 remark
END 570 remark
BEGIN 576 itemize
END 582 itemize
BEGIN 586 lstlisting
END 600 lstlisting
BEGIN 608 theorem
END 610 theorem
BEGIN 612 theorem
END 614 theorem
BEGIN 616 theorem
END 618 theorem
BEGIN 620 theorem
END 622 theorem
BEGIN 635 itemize
END 640 itemize
BEGIN 646 enumerate
END 650 enumerate
BEGIN 661 enumerate
END 665 enumerate
BEGIN 667 thebibliography
END 729 thebibliography
END 731 document

 succeeded in 0ms:
LABEL 125 sec:intro
CITE 129 Dedekind1888
CITE 129 Benacerraf1965
REF 133 sec:functorial
REF 139 tab:columns
LABEL 153 tab:columns
REF 158 sec:structuralism
REF 158 sec:functorial
REF 158 thm:invariance
REF 158 sec:transport
REF 158 sec:categorification
REF 162 sec:transport
LABEL 164 sec:framework
LABEL 188 def:alg-theory
CITE 189 Lawvere1963
LABEL 204 sec:structuralism
CITE 208 Benacerraf1965
CITE 208 Resnik1997
CITE 208 Shapiro1997
CITE 208 Hellman1989
CITE 208 Awodey1996
CITE 208 Awodey2014
CITE 210 Resnik1981
CITE 210 Hellman1989
CITE 236 Awodey2004
CITE 236 Awodey2014
LABEL 238 prop:struct-iso
REF 247 prop:struct-iso
REF 247 thm:sip
LABEL 250 sec:functorial
CITE 254 Lawvere1963
LABEL 260 ex:Tsucc
LABEL 274 thm:initial-N
LABEL 288 prop:hom-as-nat
LABEL 311 def:def-inv
LABEL 319 ex:cardinality
LABEL 327 thm:invariance
REF 332 def:def-inv
LABEL 339 sec:two-models
REF 341 thm:invariance
REF 341 sec:haskell
LABEL 343 ex:vN-Z
LABEL 352 prop:vN-Z-iso
REF 357 prop:hom-as-nat
REF 361 prop:vN-Z-iso
CITE 361 Benacerraf1965
LABEL 366 thm:agreement
REF 371 prop:vN-Z-iso
REF 371 thm:invariance
REF 374 sec:haskell
LABEL 376 sec:topos
CITE 380 Lawvere1964
CITE 403 Hyland1982
LABEL 418 sec:yoneda
LABEL 433 cor:id-by-rel
REF 437 cor:id-by-rel
REF 443 sec:functorial
REF 443 sec:yoneda
LABEL 445 sec:transport
REF 447 prop:struct-iso
REF 447 thm:invariance
LABEL 467 thm:sip
REF 475 thm:sip
CITE 475 HoTTBook
CITE 475 Escardo2019
LABEL 478 thm:transport-inv
REF 483 thm:sip
REF 486 thm:transport-inv
REF 486 prop:struct-iso
REF 496 prop:struct-iso
REF 499 thm:transport-inv
LABEL 502 tab:four-layers
REF 505 tab:four-layers
LABEL 507 sec:categorification
LABEL 519 ex:58-groupoid
LABEL 548 def:euler-gpd
LABEL 572 sec:haskell
REF 602 thm:invariance
REF 602 thm:agreement
LABEL 604 sec:results
REF 609 def:def-inv
REF 613 sec:haskell
REF 616 thm:transport-inv
LABEL 624 sec:discussion
REF 628 thm:invariance
REF 628 prop:struct-iso
REF 630 sec:transport
REF 645 tab:columns
LABEL 652 sec:conclusion
BIB 669 Awodey1996
BIB 672 Awodey2004
BIB 675 Awodey2014
BIB 678 Benacerraf1965
BIB 681 Dedekind1888
BIB 684 Escardo2019
BIB 687 Hellman1989
BIB 690 HoTTBook
BIB 693 Hyland1982
BIB 696 Lawvere1963
BIB 699 Lawvere1964
BIB 702 MacLane1971
BIB 705 Resnik1981
BIB 708 Resnik1997
BIB 711 Riehl2016
BIB 714 Shapiro1997
BIB 717 Voevodsky2010
BIB 720 Wadler2015
BIB 723 BaezDolan1998
BIB 726 Leinster2008

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\newcommand\\{\\\\eq\\}' -e '\\\\newcommand\\{\\\\id\\}' -e '\\\\newcommand\\{\\\\C\\}' -e '\\\\newcommand\\{\\\\H' -e '\\\\operatorname' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
65:\newcommand{\id}{\mathrm{id}}
66:\newcommand{\Hom}{\mathrm{Hom}}
74:\newcommand{\C}{\mathcal{C}}
78:\newcommand{\eq}{\simeq}

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty && kpsewhich tikz-cd.sty && kpsewhich cleveref.sty && kpsewhich listings.sty' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'ep=$(kpsewhich everypage.sty); if [ -n "$ep" ]; then rg -n "AddEverypageHook|ProvidesPackage|Deprecated|legacy" "$ep"; fi' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
33:\ProvidesPackage{everypage}%
38:  legacy status.\MessageBreak
56:\newcommand*{\AddEverypageHook}[1]{%

 succeeded in 271ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty

exec
/usr/local/bin/zsh -lc 'nl -ba $(kpsewhich everypage.sty) | sed -n '"'30,62p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
    30	%% necessarily be in the same archive or directory.)
    31	%% 
    32	\NeedsTeXFormat{LaTeX2e}
    33	\ProvidesPackage{everypage}%
    34	  [2020/10/17 R2.0b Hooks to run on every page]
    35	\PackageWarningNoLine{everypage}{%
    36	  Functionality similar to this package has recently\MessageBreak
    37	  been implemented in LaTeX. This package is now in\MessageBreak
    38	  legacy status.\MessageBreak
    39	  Please, don't use it in new documents and packages}
    40	\@ifundefined{AddToHook}{%
    41	  \PackageWarningNoLine{everypage}{%
    42	    You appear to be running a version of LaTeX\MessageBreak
    43	    too old to provide the new functionality.\MessageBreak
    44	    Forcing fallback to `everypage-1x` that\MessageBreak
    45	    uses an older code base}
    46	  \RequirePackage{everypage-1x}
    47	  \endinput}{%
    48	  \PackageWarningNoLine{everypage}{%
    49	    You appear to be running a version of LaTeX\MessageBreak
    50	    providing the new functionality.\MessageBreak
    51	    Doing the best to deliver the original `everypage`\MessageBreak
    52	    interface on top of it. Strict equivalence is\MessageBreak
    53	    not possible, breakage may occur.\MessageBreak
    54	    If truly needed, Use `everypage-1x` to force the\MessageBreak
    55	    loading of an older code base}}
    56	\newcommand*{\AddEverypageHook}[1]{%
    57	  \AddToHook{shipout/background}{\put(1in,-1in){#1}}}
    58	\newcommand*{\AddThispageHook}[1]{%
    59	  \AddToHookNext{shipout/background}{\put(1in,-1in){#1}}}
    60	\endinput
    61	%%
    62	%% End of file `everypage.sty'.

exec
/usr/local/bin/zsh -lc 'xp=$(kpsewhich xcolor.sty); rg -n "teal|Teal|definecolor'"\\{teal\\}|definecolor\\{gray\\}\" \""'$xp"' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
1443:  teal,0,.5,.5/.5,1,.5/.5,0,0,.5/.35;%

exec
/usr/local/bin/zsh -lc 'kpsewhich color.cfg; rg -n "teal|Teal" $(kpsewhich -all '"'*.def' 2>/dev/null | head -200)" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 137ms:
papers/06-categorical-structural/latex/06-categorical-structural.tex:38:  stringstyle=\color{teal},

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '348,356p;404,412p;444,450p;608,616p;468,476p;526,536p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
   348	\end{align*}
   349	each with $\zeroop$ interpreted as $\emptyset$ and $\succop$ interpreted by the appropriate generation rule (von Neumann: $n \mapsto n \cup \{n\}$; Zermelo: $n \mapsto \{n\}$).
   350	\end{example}
   351	
   352	\begin{proposition}\label{prop:vN-Z-iso}
   353	$M_{\mathrm{vN}} \iso M_{\mathrm{Z}}$ in $\Mod{T_\succop}$, but $M_{\mathrm{vN}}(X) \neq M_{\mathrm{Z}}(X)$ as sets in ZFC.
   354	\end{proposition}
   355	
   356	\begin{proof}
   404	\end{example}
   405	
   406	\subsection{Ultraproducts and non-standard models}
   407	
   408	First-order Peano arithmetic ($\mathsf{PA}$) is weaker than the categorical NNO: it has non-standard models, in particular ultrapowers $\NN^{\omega}/\mathcal{U}$ for non-principal ultrafilters $\mathcal{U}$. These models satisfy every first-order arithmetic sentence true in $\NN$, but contain ``infinite'' elements.
   409	
   410	\begin{theorem}[\L{}o\'s' theorem]
   411	Let $\mathcal{U}$ be an ultrafilter on $I$ and let $(M_i)_{i \in I}$ be a family of models of a first-order theory $T$. The ultraproduct $\prod M_i / \mathcal{U}$ satisfies a first-order sentence $\varphi$ iff $\{i : M_i \models \varphi\} \in \mathcal{U}$.
   412	\end{theorem}
   444	
   445	\section{Equivalence-Invariance and Transport}\label{sec:transport}
   446	
   447	We now reach the bridge between the categorical / structural perspective and HoTT. The key technical fact is that HoTT validates an internal version of \Cref{prop:struct-iso} and \Cref{thm:invariance}: the \emph{structure identity principle} (SIP).
   448	
   449	\subsection{Univalence}
   450	
   468	Let $\mathcal{S}$ be a notion of structure (e.g.\ a $T_\succop$-model in HoTT) defined by a $\Sigma$-type $\Sigma_{X : \mathcal{U}}\, F(X)$ where $F$ is a structure of finite signature on the carrier $X$. Then identification of structures is canonically equivalent to structure-preserving equivalence of carriers:
   469	\[
   470	  \big( (X, s) =_{\Sigma_{X} F(X)} (X', s') \big) \;\eq\; \big(\Sigma_{f : X \eq X'}\, f \text{ preserves } s, s' \big).
   471	\]
   472	\end{theorem}
   473	
   474	\begin{remark}
   475	\Cref{thm:sip} is proved level-by-level for set-level structures in the HoTT Book~\cite{HoTTBook}, Chapter 9, and generalized to higher levels by Coquand--Danielsson and others~\cite{Escardo2019}. It says: in HoTT, two structures of the same kind are equal iff they are isomorphic in the structure-preserving sense.
   476	\end{remark}
   526	
   527	\subsection{Cardinality of groupoids}
   528	
   529	For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality} (Baez--Dolan, Leinster):
   530	\[
   531	  |G|_{\mathrm{gpd}} = \sum_{[x] \in \pi_0(G)} \frac{1}{|\mathrm{Aut}(x)|}.
   532	\]
   533	
   534	\begin{example}
   535	$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial. \\
   536	$|G_{B\ZZ/n\ZZ}|_{\mathrm{gpd}} = 1/n$, decategorifying to a rational invariant.
   608	\begin{theorem}[Main, restatement]
   609	Let $\T$ be a Lawvere theory and let $M, M' : \T \to \Set$ be two models. If $M \iso M'$ in $\Mod{\T}$, then for every definable invariant $I$ (\Cref{def:def-inv}), $I(M) \iso I(M')$. In the special case $\E = \Set$ and $I(M)$ a finite set, $|I(M)| = |I(M')|$.
   610	\end{theorem}
   611	
   612	\begin{theorem}[Concrete instance]
   613	The von Neumann and Zermelo finite ordinals up to height $4$ are isomorphic as $T_\succop$-models in $\Set$ but not equal as sets in ZFC. Every numerical invariant agrees on both. This agreement is verified computationally by the Haskell implementation in \Cref{sec:haskell}.
   614	\end{theorem}
   615	
   616	\begin{theorem}[HoTT promotion, restatement of \Cref{thm:transport-inv}]

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '136,154p;488,503p;528,537p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
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
   488	\subsection{The bridge to synthesis}
   489	
   490	We can summarize the relationship as follows.
   491	
   492	\begin{table}[h]
   493	\centering
   494	\begin{tabular}{l|l|l}
   495	\textbf{Layer} & \textbf{Statement} & \textbf{Status} \\\hline
   496	Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
   497	Universal property & Iso-class is canonical & Theorem (e.g.\ NNO uniqueness) \\
   498	Yoneda & Object known by relations & Theorem (Yoneda lemma) \\
   499	HoTT + univalence & Iso-invariance is automatic & Internal theorem (\Cref{thm:transport-inv}) \\
   500	\end{tabular}
   501	\caption{Four layers of one principle.}
   502	\label{tab:four-layers}
   503	\end{table}
   528	
   529	For finite groupoids, a finer invariant than $|\pi_0|$ is the \emph{groupoid cardinality} (Baez--Dolan, Leinster):
   530	\[
   531	  |G|_{\mathrm{gpd}} = \sum_{[x] \in \pi_0(G)} \frac{1}{|\mathrm{Aut}(x)|}.
   532	\]
   533	
   534	\begin{example}
   535	$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial. \\
   536	$|G_{B\ZZ/n\ZZ}|_{\mathrm{gpd}} = 1/n$, decategorifying to a rational invariant.
   537	\end{example}

exec
/usr/local/bin/zsh -lc "nl -ba papers/06-categorical-structural/latex/06-categorical-structural.tex | sed -n '24,34p;72,80p;116,124p;232,238p;296,302p;356,362p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
    24	\usepackage{xcolor}
    25	
    26	% Listings (Haskell)
    27	\usepackage{listings}
    28	\lstdefinelanguage{Haskell}{
    29	  keywords={data, type, class, instance, where, let, in, do, case, of, if, then, else, module, import, newtype, deriving},
    30	  sensitive=true,
    31	  morecomment=[l]{--},
    32	  morestring=[b]"
    33	}
    34	\lstset{
    72	\newcommand{\CC}{\mathbb{C}}
    73	\newcommand{\T}{\mathcal{T}}
    74	\newcommand{\C}{\mathcal{C}}
    75	\newcommand{\D}{\mathcal{D}}
    76	\newcommand{\E}{\mathcal{E}}
    77	\newcommand{\Mod}[1]{\mathrm{Mod}(#1)}
    78	\newcommand{\eq}{\simeq}
    79	\newcommand{\iso}{\cong}
    80	\newcommand{\defeq}{\coloneqq}
   116	
   117	\maketitle
   118	
   119	\begin{abstract}
   120	We develop the structural / categorical answer to the question ``what is a number?'' by treating numerals as invariants under all structure-preserving morphisms between models of arithmetic. We survey mathematical structuralism in the philosophical tradition (Resnik, Shapiro, Hellman, Awodey), present its categorical formalization through Lawvere's Elementary Theory of the Category of Sets (ETCS) and functorial semantics of algebraic theories, and prove an isomorphism-invariance theorem for first-order properties of finitely presented theories. We define a small algebraic theory of pointed unary structures, exhibit two non-equal but isomorphic set-theoretic models, and verify --- both formally and by accompanying executable Haskell code --- that all ``numerical answers'' (cardinalities of definable subsets, values of definable functions) coincide. We connect categorification (a $58$-element groupoid in $\Grpd$ that decategorifies to $58$ in $\Set$ via $\pi_0$) and Euler-characteristic / $K$-theoretic decategorification to the same invariance principle, and we end at the bridge to the synthesis paper: the Yoneda embedding, universal properties, and Voevodsky's univalence axiom are three views of one phenomenon, namely that structural identity is identity. Univalence makes the meta-condition ``a property is structural iff it is preserved under isomorphism'' an internal theorem rather than an external rule of practice.
   121	\end{abstract}
   122	
   123	\tableofcontents
   124	
   232	\end{example}
   233	
   234	\subsection{Awodey's category-theoretic structuralism}
   235	
   236	Awodey~\cite{Awodey2004,Awodey2014} argues that category theory is structuralism realized: ``mathematical objects are determined up to isomorphism by their relations to other objects in the appropriate category, and structural properties are exactly those preserved by isomorphisms.'' This is not a metaphysical claim but a methodological one: working categorically \emph{is} working structurally.
   237	
   238	\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
   296	\begin{proof}
   297	Naturality of $\alpha$ on the morphism $\zeroop : X^0 \to X$ asserts the commutativity of
   298	\[
   299	\begin{tikzcd}
   300	M(X^0) \arrow[r, "M(\zeroop)"] \arrow[d, "\alpha_{X^0}"'] & M(X) \arrow[d, "\alpha_X"] \\
   301	M'(X^0) \arrow[r, "M'(\zeroop)"'] & M'(X)
   302	\end{tikzcd}
   356	\begin{proof}
   357	Define $\alpha_X(M_{\mathrm{vN}}(\succop^k)(\emptyset)) = M_{\mathrm{Z}}(\succop^k)(\emptyset)$ for $k = 0, 1, 2, 3$. By construction $\alpha_X(\emptyset) = \emptyset$ and $\alpha_X \circ M_{\mathrm{vN}}(\succop) = M_{\mathrm{Z}}(\succop) \circ \alpha_X$, so $\alpha$ is a natural transformation by \Cref{prop:hom-as-nat}. It is bijective on carriers, hence an isomorphism. Set-theoretic non-equality follows from $\{\emptyset,\{\emptyset\}\} \in M_{\mathrm{vN}}(X)$ but $\{\emptyset,\{\emptyset\}\} \notin M_{\mathrm{Z}}(X)$ (and vice versa for $\{\{\{\emptyset\}\}\}$).
   358	\end{proof}
   359	
   360	\begin{remark}[The Benacerraf situation]
   361	\Cref{prop:vN-Z-iso} is a finite, fully verifiable instance of Benacerraf's identification problem~\cite{Benacerraf1965}: two structurally identical models that disagree on every set-membership question (``Is $\{\emptyset\} \in 2$?'' is true in $M_{\mathrm{vN}}$, false in $M_{\mathrm{Z}}$). The structuralist conclusion: such questions are not arithmetic; they are encoding-relative.
   362	\end{remark}

exec
/usr/local/bin/zsh -lc 'command -v lacheck || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/lacheck

exec
/usr/local/bin/zsh -lc 'command -v texloganalyser || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/texloganalyser

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\begin\\{table\\}\\[h\\]' -e '\\\\begin\\{tabular\\}\\{["'^}]*'"\\|["'^}]*'"\\}' -e '\\\\hline' -e '\\\\\\\\"'$'"' -e '\\\\label\\{' papers/06-categorical-structural/latex/06-categorical-structural.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
104:\title{The Categorical / Structural Perspective: \\
107:\author{YonedaAI Research \\
108:\textit{Univalent Correspondence Project} \\
109:\textit{Paper 06 of 6 topical papers (followed by a synthesis paper)} \\
110:Cambridge, MA \\
125:\section{Introduction}\label{sec:intro}
141:\begin{table}[h]
143:\begin{tabular}{l|l}
144:\textbf{Level} & \textbf{What $58$ \emph{is}} \\\hline
145:Naive & A symbol / a quantity \\
146:Set-theoretic & $\{0,1,\dots,57\}$ (von Neumann) \\
147:Universal property & $58$th iterate of $\succop$ in any initial $(N,\zeroop,\succop)$ \\
148:Yoneda & $\Hom(-, 58)$ in $\Mod{T_{\mathrm{arith}}}$ \\
149:HoTT & $\succop^{58}(\zeroop) : \NN$, identified up to path equivalence \\
153:\label{tab:columns}
164:\section{Mathematical Framework}\label{sec:framework}
188:\begin{definition}[Algebraic theory, in the Lawvere sense]\label{def:alg-theory}
204:\section{Mathematical Structuralism}\label{sec:structuralism}
238:\begin{proposition}[Structural properties are isomorphism-invariant]\label{prop:struct-iso}
250:\section{Functorial Semantics}\label{sec:functorial}
260:\begin{example}[The theory $T_\succop$ of pointed unary structures]\label{ex:Tsucc}
274:\begin{theorem}[Standard model of arithmetic]\label{thm:initial-N}
288:\begin{proposition}\label{prop:hom-as-nat}
300:M(X^0) \arrow[r, "M(\zeroop)"] \arrow[d, "\alpha_{X^0}"'] & M(X) \arrow[d, "\alpha_X"] \\
311:\begin{definition}[Definable invariant]\label{def:def-inv}
319:\begin{example}\label{ex:cardinality}
327:\begin{theorem}[Invariance theorem]\label{thm:invariance}
339:\section{Two Models, One Answer}\label{sec:two-models}
343:\begin{example}[von Neumann vs.\ Zermelo]\label{ex:vN-Z}
346:  M_{\mathrm{vN}}(X) &= \{\emptyset, \{\emptyset\}, \{\emptyset,\{\emptyset\}\}, \{\emptyset,\{\emptyset\},\{\emptyset,\{\emptyset\}\}\}\}, \\
352:\begin{proposition}\label{prop:vN-Z-iso}
366:\begin{theorem}[Agreement of numerical invariants]\label{thm:agreement}
376:\section{Models, Theories, and Toposes}\label{sec:topos}
418:\section{The Yoneda Embedding and Universal Properties}\label{sec:yoneda}
433:\begin{corollary}[Identity by relations]\label{cor:id-by-rel}
445:\section{Equivalence-Invariance and Transport}\label{sec:transport}
467:\begin{theorem}[Structure identity principle, schematic form]\label{thm:sip}
478:\begin{theorem}[Equivalence-invariance / transportability]\label{thm:transport-inv}
492:\begin{table}[h]
494:\begin{tabular}{l|l|l}
495:\textbf{Layer} & \textbf{Statement} & \textbf{Status} \\\hline
496:Categorical / structural & Structural properties are iso-invariant & Meta-theorem (\Cref{prop:struct-iso}) \\
497:Universal property & Iso-class is canonical & Theorem (e.g.\ NNO uniqueness) \\
498:Yoneda & Object known by relations & Theorem (Yoneda lemma) \\
499:HoTT + univalence & Iso-invariance is automatic & Internal theorem (\Cref{thm:transport-inv}) \\
502:\label{tab:four-layers}
507:\section{Categorification and Decategorification}\label{sec:categorification}
519:\begin{example}\label{ex:58-groupoid}
535:$|G_{58}|_{\mathrm{gpd}} = 58$, since each automorphism group is trivial. \\
548:\begin{definition}[Euler characteristic of finite groupoids]\label{def:euler-gpd}
572:\section{Haskell Implementation}\label{sec:haskell}
604:\section{Results}\label{sec:results}
624:\section{Discussion}\label{sec:discussion}
652:\section{Conclusion}\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc 'lacheck papers/06-categorical-structural/latex/06-categorical-structural.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics
 succeeded in 0ms:
"papers/06-categorical-structural/latex/06-categorical-structural.tex", line 28: possible unwanted space at "{"
"papers/06-categorical-structural/latex/06-categorical-structural.tex", line 34: possible unwanted space at "{"
"papers/06-categorical-structural/latex/06-categorical-structural.tex", line 447: missing `\@' before `.' in "TT."
"papers/06-categorical-structural/latex/06-categorical-structural.tex", line 613: missing `\@' before `.' in "ZFC."
"papers/06-categorical-structural/latex/06-categorical-structural.tex", line 691: missing `\ ' after "Study."

codex
**Verification**
- Static source review plus `chktex` and `lacheck`.
- Label/citation/environment balance checked: no undefined `\Cref`, `\ref`, `\cite`, or unbalanced environments found.
- Full compile/box log could not be produced because the sandbox blocks temporary `/tmp` output, so overfull/underfull findings below are static/high-likelihood.

**Issues**

1. Lines 13-14: `hyperref`/`cleveref` loaded too early.
   - Risk: package-order warnings or missed patches; `cleveref` is normally last.
   - Fix: load `geometry`, `xcolor`, `listings`, theorem setup/macros first; then `\usepackage[hidelinks]{hyperref}` and `\usepackage{cleveref}` last.

2. Lines 23, 88: `everypage` is legacy and emits package warnings on current LaTeX.
   - Fix: replace with LaTeX hooks, e.g. `\AddToHook{shipout/background}{...}`, or use a maintained overlay package.

3. Lines 141, 492: tables use `[h]` only.
   - Risk: float-placement warnings such as “`h` float specifier changed to `ht`”.
   - Fix: use `[htbp]` or `[tbp]`.

4. Lines 143-151 and 494-500: tables use vertical rules and `\hline`; styling is inconsistent with modern LaTeX table practice.
   - Fix: add `\usepackage{booktabs}` and use `\toprule`, `\midrule`, `\bottomrule`; remove `|`.

5. Lines 143-151, especially 147 and 149: first table has unwrapped `l` columns with long content.
   - Risk: likely overfull hbox.
   - Fix: use `tabularx` or `p{...}` columns, e.g. `\begin{tabularx}{\textwidth}{lX}`.

6. Lines 494-500, especially 496 and 499: second table has three unwrapped `l` columns with long `\Cref` content.
   - Risk: likely overfull hbox.
   - Fix: use `tabularx`, e.g. `\begin{tabularx}{\textwidth}{lXX}`.

7. Line 346: very wide displayed set expression.
   - Risk: likely overfull display math.
   - Fix: split the carrier set across multiple aligned lines or define the elements separately before the display.

8. Line 470: very wide HoTT/SIP displayed equivalence.
   - Risk: likely overfull display math.
   - Fix: split with `aligned`:
     ```latex
     \begin{aligned}
     &\big( ... \big) \\
     &\qquad \eq ...
     \end{aligned}
     ```

9. Line 535: forced prose line break `\\` inside an `example`.
   - Risk: awkward vertical spacing/underfull line.
   - Fix: use an `align*` display for the two equations or separate paragraphs.

10. Lines 353, 447, 613: sentence-ending periods after all-caps/macros need explicit spacing.
   - Fix examples: `ZFC\@.`, `HoTT\@.`

11. Line 408: colon after all-caps `NNO:` may get nonstandard spacing.
   - Fix: `NNO\@:` if preserving TeX sentence-spacing conventions.

12. Line 77: `\Mod` uses `\mathrm{Mod}(#1)`, which gives text-style roman letters without operator spacing.
   - Fix: define as `\DeclareMathOperator{\ModOp}{Mod}` plus `\newcommand{\Mod}[1]{\ModOp(#1)}`, or `\operatorname{Mod}(#1)`.

13. Line 529 references “Baez--Dolan, Leinster” but does not cite the bibliography entries at lines 723 and 726.
   - Fix: `\cite{BaezDolan1998,Leinster2008}`.

14. Lines 702, 711, 717, 720: `MacLane1971`, `Riehl2016`, `Voevodsky2010`, and `Wadler2015` are present in the bibliography but not cited.
   - Fix: cite them where relevant or remove from `thebibliography`.

**No Broken References Found**
All `\Cref` labels and cited bibliography keys used in the source are defined.
2026-05-04T01:35:30.295248Z ERROR codex_core::session: failed to record rollout items: thread 019df09d-024b-7ca3-b446-1cf1cd44b9c7 not found
tokens used
87,994
**Verification**
- Static source review plus `chktex` and `lacheck`.
- Label/citation/environment balance checked: no undefined `\Cref`, `\ref`, `\cite`, or unbalanced environments found.
- Full compile/box log could not be produced because the sandbox blocks temporary `/tmp` output, so overfull/underfull findings below are static/high-likelihood.

**Issues**

1. Lines 13-14: `hyperref`/`cleveref` loaded too early.
   - Risk: package-order warnings or missed patches; `cleveref` is normally last.
   - Fix: load `geometry`, `xcolor`, `listings`, theorem setup/macros first; then `\usepackage[hidelinks]{hyperref}` and `\usepackage{cleveref}` last.

2. Lines 23, 88: `everypage` is legacy and emits package warnings on current LaTeX.
   - Fix: replace with LaTeX hooks, e.g. `\AddToHook{shipout/background}{...}`, or use a maintained overlay package.

3. Lines 141, 492: tables use `[h]` only.
   - Risk: float-placement warnings such as “`h` float specifier changed to `ht`”.
   - Fix: use `[htbp]` or `[tbp]`.

4. Lines 143-151 and 494-500: tables use vertical rules and `\hline`; styling is inconsistent with modern LaTeX table practice.
   - Fix: add `\usepackage{booktabs}` and use `\toprule`, `\midrule`, `\bottomrule`; remove `|`.

5. Lines 143-151, especially 147 and 149: first table has unwrapped `l` columns with long content.
   - Risk: likely overfull hbox.
   - Fix: use `tabularx` or `p{...}` columns, e.g. `\begin{tabularx}{\textwidth}{lX}`.

6. Lines 494-500, especially 496 and 499: second table has three unwrapped `l` columns with long `\Cref` content.
   - Risk: likely overfull hbox.
   - Fix: use `tabularx`, e.g. `\begin{tabularx}{\textwidth}{lXX}`.

7. Line 346: very wide displayed set expression.
   - Risk: likely overfull display math.
   - Fix: split the carrier set across multiple aligned lines or define the elements separately before the display.

8. Line 470: very wide HoTT/SIP displayed equivalence.
   - Risk: likely overfull display math.
   - Fix: split with `aligned`:
     ```latex
     \begin{aligned}
     &\big( ... \big) \\
     &\qquad \eq ...
     \end{aligned}
     ```

9. Line 535: forced prose line break `\\` inside an `example`.
   - Risk: awkward vertical spacing/underfull line.
   - Fix: use an `align*` display for the two equations or separate paragraphs.

10. Lines 353, 447, 613: sentence-ending periods after all-caps/macros need explicit spacing.
   - Fix examples: `ZFC\@.`, `HoTT\@.`

11. Line 408: colon after all-caps `NNO:` may get nonstandard spacing.
   - Fix: `NNO\@:` if preserving TeX sentence-spacing conventions.

12. Line 77: `\Mod` uses `\mathrm{Mod}(#1)`, which gives text-style roman letters without operator spacing.
   - Fix: define as `\DeclareMathOperator{\ModOp}{Mod}` plus `\newcommand{\Mod}[1]{\ModOp(#1)}`, or `\operatorname{Mod}(#1)`.

13. Line 529 references “Baez--Dolan, Leinster” but does not cite the bibliography entries at lines 723 and 726.
   - Fix: `\cite{BaezDolan1998,Leinster2008}`.

14. Lines 702, 711, 717, 720: `MacLane1971`, `Riehl2016`, `Voevodsky2010`, and `Wadler2015` are present in the bibliography but not cited.
   - Fix: cite them where relevant or remove from `thebibliography`.

**No Broken References Found**
All `\Cref` labels and cited bibliography keys used in the source are defined.
