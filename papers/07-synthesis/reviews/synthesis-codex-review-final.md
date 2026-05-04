---
reviewer: codex (OpenAI)
type: formatting (final pass)
paper: synthesis
scope: confirm ContextFS removal didn't introduce LaTeX formatting regressions
date: 2026-05-04T14:20:18Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
model: gpt-5.5
provider: openai
approval: never
sandbox: danger-full-access
reasoning effort: high
reasoning summaries: none
session id: 019df35c-811d-7d00-8b84-8c057ca67174
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis/latex/synthesis.tex for FORMATTING REGRESSIONS only. Background: this paper has been through prior peer review and was accepted. Recently all 'ContextFS' content was removed (a subsection deleted, abstract/intro sentences trimmed, an open-problems item dropped). Two minor regressions were already identified and fixed: (1) a stale 'typed memory' phrase in the conclusion was removed, and (2) an orphan \bibitem{KnowledgeBase2026} was deleted.

Your job: confirm no remaining LaTeX-level regressions from the ContextFS deletion. Specifically check ONLY for:
- Unbalanced braces or unclosed environments
- Leftover commented-out blocks or stub TODO markers
- Broken \ref / \cref / \Cref / \eqref pointing to deleted material
- Orphan \cite to deleted bibitems
- Hanging conjunctions / orphan punctuation from text excision (e.g., 'and ,' or 'such as .')
- Inconsistent enumerate item numbering after item deletion
- Overfull-box-inducing leftover whitespace artifacts

Be concise. List only blocking issues with line numbers and exact one-line fixes. Skip stylistic suggestions. If clean, say 'CLEAN — no regressions detected'.
codex
I’ll inspect the TeX source directly and keep this read-only, focusing only on the regression classes you listed.
exec
/usr/local/bin/zsh -lc 'wc -l latex/synthesis.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
    1770 latex/synthesis.tex

exec
/usr/local/bin/zsh -lc "rg -n \"ContextFS|TODO|FIXME|XXX|commented|typed memory|KnowledgeBase2026|\\\\begin\\{|\\\\end\\{|\\\\(ref|cref|Cref|eqref|cite)\\{|\\\\bibitem\\{\" latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 exited 2 in 0ms:
rg: regex parse error:
    (?:ContextFS|TODO|FIXME|XXX|commented|typed memory|KnowledgeBase2026|\begin\{|\end\{|\(ref|cref|Cref|eqref|cite)\{|\bibitem\{)
                                                                                  ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"%|and\\s*[,.;:]|or\\s*[,.;:]|such as\\s*[,.]|including\\s*[,.]|e\\.g\\.\\s*[,.;:]|i\\.e\\.\\s*[,.;:]|\\s+"'$|~~|  +" latex/synthesis.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
3:% Core math
8:% Tables
13:% Diagrams
18:% References (load order: hyperref before cleveref)
23:% Graphics
26:% Code listings
30:% Page layout
33:% Sidebar (use modern shipout/background hook)
34:% (no everypage required; LaTeX provides AddToHook)
36:% Theorem environments
48:% Listings styling for Haskell
50:  morekeywords={data, type, class, instance, where, let, in, do, case, of,
51:    if, then, else, module, import, newtype, deriving, family, forall},
52:  sensitive=true,
53:  morecomment=[l]{--},
54:  morestring=[b]"
57:  basicstyle=\ttfamily\small,
58:  keywordstyle=\color{blue!70!black}\bfseries,
59:  commentstyle=\color{green!50!black}\itshape,
60:  stringstyle=\color{red!70!black},
61:  showstringspaces=false,
62:  breaklines=true,
63:  frame=single,
64:  framesep=4pt,
65:  rulecolor=\color{gray!50},
66:  language=Haskell
69:% GrokRxiv sidebar (first page)
71:\AddToHook{shipout/background}{%
72:  \ifnum\value{page}=1
73:    \begin{tikzpicture}[remember picture, overlay]
74:      \node[
75:        rotate=90,
76:        anchor=south,
77:        font=\Large\sffamily\bfseries\color{grokgray},
78:        inner sep=0pt
79:      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
80:      {GrokRxiv:2026.05.univalent-correspondence-synthesis\quad
81:       [\,math.CT/math.LO\,]\quad
82:       03 May 2026};
83:    \end{tikzpicture}
84:  \fi
87:% Macros
153:showing that each level transcends its predecessor: the set-theoretic level
157:profile'' mathematically precise as a representable functor; HoTT makes
444:a representation of a functor, and the NNO represents the constant singleton
629:$\mathcal{C}$ (or, equivalently, $N$ is the value of the free pointed
914:(both initial, both terminal, both representing the same functor, etc.).
955:\label{cor:N-univalent}
1008:  column sep={2.0em,between origins},
1009:  row sep=2.4em,
1010:  every label/.append style={font=\scriptsize}
1013:  \arrow[r, "{\text{T1}}"]
1015:  \arrow[r, "{\text{T2}}"]
1017:  \arrow[r, "{\text{T3}}"]
1019:  \arrow[r, "{\text{T4}}"]
1021:  \arrow[r, "{\text{T5}}"]
1029:by exhibiting the NNO as a representable functor. T4 internalises
1226:each is identified with its representable functor, with its universal
1328:relational, type-theoretic, and structural --- and, under univalence, all
1337:formal by its representable functor. Numerals (58, \textsf{LVIII},
1356:  = Naive | SetTheoretic | UniversalProperty
1357:  | Yoneda | HoTT | StructuralInvariant
1392:  Naive                  -> 58
1393:  SetTheoretic           -> 58
1394:  UniversalProperty      -> 58
1395:  Yoneda                 -> 58
1396:  HoTT                   -> 58
1397:  StructuralInvariant    -> 58
1400:  naive                              = 58
1401:  set-theoretic (von Neumann)        = 58
1402:  universal property (succ^58)       = 58
1403:  Yoneda (|{m : Hom(m,58) /= 0}|)    = 58
1404:  HoTT (|0 =_N 58 chain|)            = 58
1405:  structural (orbit length)          = 58
1428:% --- Topical papers in this series ---
1460:% --- Foundations of HoTT and univalence ---
1524:C.~Cohen, T.~Coquand, S.~Huber, A.~M\"ortberg,
1554:% --- Type theory and Curry--Howard ---
1572:% --- Category theory ---
1641:% --- Set theory ---
1656:Van Nostrand, 1960.
1661:North-Holland, 1980.
1671:Van Nostrand, 1960.
1673:% --- Philosophy of mathematics ---
1745:% --- Misc / cognitive science ---

codex
The first broad regex had an escaping issue, so I’m rerunning narrower checks and then I’ll cross-check labels, cites, and environment balance from the source.
exec
/usr/local/bin/zsh -lc "rg -n 'ContextFS|TODO|FIXME|XXX|typed memory|KnowledgeBase2026' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n '\\\\(ref|cref|Cref|eqref|cite)\\{|\\\\bibitem\\{|\\\\label\\{' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
171:\label{sec:intro}
177:of the series each occupy one row of \cref{tab:six-rows}, the central
197:become literally identical under the univalence axiom (\cref{sec:transit}).}
198:\label{tab:six-rows}
203:artifacts. Paper~I~\cite{paper-i} is historical and philosophical, anchoring
204:the discussion in numerals and counting; Paper~II~\cite{paper-ii}
206:identification problem in formal terms; Paper~III~\cite{paper-iii}
209:arithmetic; Paper~IV~\cite{paper-iv} proves the Yoneda lemma in covariant
211:the $\infty$-categorical generalization; Paper~V~\cite{paper-v} is a
214:realisation; Paper~VI~\cite{paper-vi} surveys mathematical structuralism,
222:the univalent correspondence (\cref{sec:transit,sec:correspondence}).
229:\label{prin:weak}
238:\label{prin:strong}
239:Under the univalence axiom, the equivalences of \cref{prin:weak} are
246:The strong form is the content of \cref{thm:identity-of-perspectives}
248:Lawvere~\cite{Lawvere1964}, Lambek~\cite{Lambek1972}, Wadler~\cite{Wadler2015},
249:Awodey~\cite{Awodey2014}, and the HoTT Book~\cite{HoTTBook}. The strong
251:\cref{sec:transit-vi}.
289:The four rightmost rows of \cref{tab:six-rows} correspond to the four
291:Curry--Howard--Lambek correspondence shown in \cref{tab:tetrad}. We follow
292:Wadler~\cite{Wadler2015} in calling its central insight
295:The terminology and its history are surveyed in \cref{sec:naming}.
317:through four windows. Adapted from~\cite{Wadler2015,HoTTBook}; the
320:\label{tab:tetrad}
325:\Cref{sec:row-by-row} reviews the six perspectives row by row, summarising
326:the principal results of Papers~I through~VI. \Cref{sec:transit} proves the
328:\Cref{sec:framework} sets up the unified mathematical framework: an
331:\Cref{sec:correspondence} states and proves the main identity-of-perspectives
332:theorem. \Cref{sec:diagrams} makes the inter-level commutativity precise via
333:commutative diagrams of equivalences. \Cref{sec:naming} surveys the history
335:correspondence.'' \Cref{sec:applications} sketches two downstream
337:representation theory. \Cref{sec:open} collects open problems. \Cref{sec:conclusion}
341:\label{sec:row-by-row}
348:\label{sec:row-i}
350:Paper~I~\cite{paper-i} occupies the pre-formal level. A natural number $58$
356:psychologism in \emph{Grundlagen der Arithmetik}~\cite{frege1884} and
357:\emph{Sinn und Bedeutung}~\cite{frege1892}, and Benacerraf's identification
358:problem~\cite{benacerraf1965}.
375:\label{sec:row-ii}
377:Paper~II~\cite{paper-ii} works in Zermelo--Fraenkel set theory with Choice
387:\label{thm:benacerraf}
407:\label{sec:row-iii}
409:Paper~III~\cite{paper-iii} introduces the natural numbers object (NNO).
412:\label{def:nno}
421:\label{thm:nno-up}
448:\label{sec:row-iv}
450:Paper~IV~\cite{paper-iv} promotes the relational viewpoint to its
454:\label{thm:yoneda}
479:(culminating in Lurie's $\infty$-Yoneda lemma~\cite{lurie}). It closes by
485:\label{sec:row-v}
487:Paper~V~\cite{paper-v} is a self-contained development of Homotopy Type
500:\label{thm:univalence}
512:\label{thm:nno-contr}
526:HoTT~\cite{CCHM,CubicalAgda} in which univalence is provable rather than
527:axiomatic, two-level type theory~\cite{2LTT}, modal HoTT, and directed
528:HoTT~\cite{RiehlShulman}.
531:\label{sec:row-vi}
533:Paper~VI~\cite{paper-vi} presents the structural answer to ``what is a
537:tradition~\cite{Resnik1997,Shapiro1997,Hellman1989,Awodey1996}, presents
538:its categorical formalisation through Lawvere's ETCS~\cite{Lawvere1964}
539:and the functorial semantics of algebraic theories~\cite{Lawvere1963},
544:\label{thm:sip}
556:\label{thm:eq-inv}
571:\label{sec:transit}
578:\label{sec:transit-i}
581:\label{thm:transit-i}
594:\Cref{thm:transit-i} resolves the naive symbol/object confusion: there is
596:resolve which one: that is Benacerraf's problem (\cref{thm:benacerraf}).
599:\label{sec:transit-ii}
602:\label{thm:transit-ii}
616:\Cref{thm:transit-ii} resolves Benacerraf: the von Neumann and Zermelo
621:\label{sec:transit-iii}
624:\label{thm:transit-iii}
646:precisely the universal property of the NNO (\cref{thm:nno-up}) with
667:\label{sec:transit-iv}
670:\label{thm:transit-iv}
691:\Cref{thm:transit-iv} is the technical heart of the strong univalent
697:\label{sec:transit-vi}
700:\label{thm:transit-vi}
709:This is the structure identity principle (\cref{thm:sip}, Paper~VI,
711:is \cite[Corollary~5.4]{paper-v} (\cref{thm:nno-contr}).
714:\Cref{thm:transit-vi} is the converse direction of the previous transit:
720:\cref{tab:four-layers}, reproduced from Paper~VI.
737:\label{tab:four-layers}
741:\label{sec:framework}
744:of \cref{tab:six-rows} become four windows on a single object.
747:\label{sec:setup-univ}
753:Grothendieck--Rezk--Lurie--Joyal $\infty$-topos~\cite{lurie,ShulmanInftyTopos}.
756:\label{def:four-functors}
785:\label{thm:identity-of-perspectives}
811:\textbf{(Y)~$\Rightarrow$~(H).} By \cref{thm:transit-iv}, applied to the
828:(\cref{thm:sip}) then asserts that this $\Sigma$-path is itself
845:\Cref{thm:identity-of-perspectives} is the technical formulation of
846:\cref{prin:strong}. The four statements (UP), (Y), (H), (S) are not just
852:\Cref{fig:four-views} shows the unified picture: a single $\infty$-groupoid
874:\cref{def:four-functors} produce the four characterisations of $X$. Under
876:(\cref{thm:identity-of-perspectives}).}
877:\label{fig:four-views}
886:\cref{thm:nno-contr}. So the path space between any two NNO presentations
890:\cref{thm:nno-contr} achieves that mere Peano-equivalence does not.
893:completion~\cite{Booij,HoTTBook}, the situation is more delicate: $\R$ is
899:($\sin(\pi) = 0$, $f' = f$ and $f(0) = 1$, etc.); see \cref{sec:applications}.
902:\label{sec:correspondence}
907:\label{prin:formal}
926:finite-signature structures in~\cite{HoTTBook,Escardo2019}). The
933:\Cref{prin:formal} can be read as a fixed-point statement. The four
934:columns of the computational tetrad (\cref{tab:tetrad}) describe four
943:The Curry--Howard correspondence~\cite{Wadler2015} identifies columns~1
945:correspondence~\cite{Lambek1972,maclane} adds column~3 (category theory).
946:Voevodsky's univalent foundations~\cite{Voevodsky,HoTTBook} adds
955:\label{cor:N-univalent}
969:Combine \cref{thm:nno-contr,thm:identity-of-perspectives,thm:transit-vi}.
995:\label{sec:diagrams}
1003:\Cref{fig:composition} shows the dependencies between the six rows.
1025:\cref{sec:transit} carries level $k$ to level $k+1$ by resolving the
1031:(\cref{thm:transit-vi}) promotes the iso-invariance discipline to an
1033:\label{fig:composition}
1068:\label{prop:emergent-contract}
1069:The NNO is contractible (Paper~V, \cref{thm:nno-contr}) only because the
1079:\label{prop:funext}
1088:\label{prop:synth-homotopy}
1091:Blakers--Massey theorem, etc.~\cite{LicataShulman,LicataFinster,ShulmanStrength})
1102:\label{thm:commutativity}
1103:The four functors of \cref{def:four-functors} commute up to canonical
1115:\cref{sec:transit}. The composition $\mathsf{S} \circ \mathsf{H}^{-1} \circ \mathsf{Y}$
1124:\label{sec:naming}
1133:theory. Curry (1934)~\cite{wadler-pat} observed it for combinatory logic;
1134:Howard (1969)~\cite{wadler-pat} extended it to natural deduction.
1136:Lambek (1972)~\cite{Lambek1972} showed that proofs of intuitionistic
1142:\item \textbf{Propositions-as-types} (Wadler 2015~\cite{Wadler2015}):
1145:\item \textbf{Univalent foundations} (Voevodsky, 2010~\cite{Voevodsky2010}):
1148:HoTT Book~\cite{HoTTBook} is the canonical reference.
1164:(\cref{prin:strong}).
1174:one from~\cite{Voevodsky2010,HoTTBook}, which we take as the deepest
1186:\label{sec:applications}
1192:\label{sec:transcendentals}
1198:\label{def:R-HIIT}
1211:\label{thm:pi-e-hott}
1233:\label{sec:directed}
1235:Riehl and Shulman's simplicial type theory~\cite{RiehlShulman} extends
1253:\label{sec:open-langlands}
1257:forms~\cite{lurie} --- has not been substantially reformulated in HoTT.
1260:treatments~\cite{ShulmanInftyTopos} that connect cleanly to univalent
1267:\label{sec:open}
1279:\Cref{sec:open-langlands}.
1282:FOLDS~\cite{Makkai1995} and to intuitionistic ZF (IZF) merits
1285:result (\cref{thm:nno-contr}) shows the type of NNOs is a contractible
1287:$\infty$-toposes (Lurie's $(\infty,1)$-NNO~\cite{lurie}) is more delicate.
1290:research target~\cite{RiehlShulman,CisinskiNguyen}.
1293:version (in Cubical Agda~\cite{CubicalAgda}) is in progress but
1298:\label{sec:conclusion}
1304:correspondence} (\cref{prin:strong}, \cref{prin:formal}), proved it as a
1305:theorem in HoTT (\cref{thm:identity-of-perspectives}), exhibited the
1307:(\cref{sec:diagrams}), and sketched applications to transcendentals
1345:\label{sec:haskell}
1365:per row of \cref{tab:six-rows}:
1381:$58$, and by \cref{thm:transit-vi} it is invariant across all isomorphic
1413:Papers~I--VI and \S\ref{sec:transit}.
1430:\bibitem{paper-i}
1435:\bibitem{paper-ii}
1440:\bibitem{paper-iii}
1445:\bibitem{paper-iv}
1450:\bibitem{paper-v}
1455:\bibitem{paper-vi}
1462:\bibitem{HoTTBook}
1468:\bibitem{Voevodsky}
1473:\bibitem{Voevodsky2010}
1478:\bibitem{AwodeyWarren}
1483:\bibitem{KapulkinLumsdaine}
1488:\bibitem{LumsdaineGroupoid}
1493:\bibitem{vandenBergGarner}
1498:\bibitem{LicataShulman}
1503:\bibitem{LicataFinster}
1508:\bibitem{ShulmanStrength}
1513:\bibitem{ShulmanInftyTopos}
1518:\bibitem{Booij}
1523:\bibitem{CCHM}
1528:\bibitem{CubicalAgda}
1533:\bibitem{2LTT}
1538:\bibitem{RiehlShulman}
1544:\bibitem{CisinskiNguyen}
1549:\bibitem{Escardo2019}
1556:\bibitem{MartinLof84}
1561:\bibitem{Wadler2015}
1566:\bibitem{Lambek1972}
1574:\bibitem{maclane}
1579:\bibitem{maclane-moerdijk}
1584:\bibitem{riehl}
1589:\bibitem{lurie}
1595:\bibitem{kelly}
1600:\bibitem{leinster}
1605:\bibitem{Lawvere1964}
1610:\bibitem{Lawvere1963}
1615:\bibitem{LawvereRosebrugh2003}
1620:\bibitem{Makkai1995}
1626:\bibitem{MeijerFokkingaPaterson1991}
1631:\bibitem{BaezDolan1998}
1636:\bibitem{Leinster2008}
1643:\bibitem{vonNeumann1923}
1648:\bibitem{zermelo1908}
1653:\bibitem{halmos1960}
1658:\bibitem{kunen1980}
1663:\bibitem{shoenfield1967}
1668:\bibitem{suppes1960}
1675:\bibitem{benacerraf1965}
1680:\bibitem{benacerraf1973}
1685:\bibitem{frege1884}
1690:\bibitem{frege1892}
1695:\bibitem{husserl1891}
1700:\bibitem{mill1843}
1705:\bibitem{Resnik1981}
1710:\bibitem{Resnik1997}
1715:\bibitem{Shapiro1997}
1720:\bibitem{Hellman1989}
1725:\bibitem{Awodey1996}
1730:\bibitem{Awodey2004}
1735:\bibitem{Awodey2014}
1740:\bibitem{Dedekind1888}
1747:\bibitem{wadler-pat}
1753:\bibitem{carey}
1758:\bibitem{dehaene}
1763:\bibitem{lakoff-nunez}

exec
/usr/local/bin/zsh -lc ls in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
exec
/usr/local/bin/zsh -lc "rg -n '\\\\begin\\{|\\\\end\\{' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
images
latex
pdf
reviews

 succeeded in 0ms:
73:    \begin{tikzpicture}[remember picture, overlay]
83:    \end{tikzpicture}
128:\begin{document}
131:\begin{abstract}
165:\end{abstract}
182:\begin{table}[ht]
184:\begin{tabularx}{\textwidth}{l X}
195:\end{tabularx}
199:\end{table}
228:\begin{principle}[Univalent Correspondence, weak form]
235:\end{principle}
237:\begin{principle}[Univalent Correspondence, strong form]
244:\end{principle}
260:\begin{itemize}
285:\end{itemize}
297:\begin{table}[ht]
299:\begin{tabularx}{\textwidth}{X X X X}
315:\end{tabularx}
321:\end{table}
386:\begin{theorem}[Benacerraf, formalised in Paper~II]
394:\end{theorem}
411:\begin{definition}[NNO, Paper~III]
418:\end{definition}
420:\begin{theorem}[Universal property, Paper~III, Theorem~3.2]
428:\end{theorem}
453:\begin{theorem}[Yoneda lemma, Paper~IV, Theorem~3.1]
462:\end{theorem}
464:\begin{corollary}[Fully faithful Yoneda embedding]
468:\end{corollary}
499:\begin{theorem}[Univalence axiom, Paper~V, Theorem~4.2]
507:\end{theorem}
511:\begin{theorem}[Contractibility of NNO, Paper~V, Theorem~4.4]
520:\end{theorem}
543:\begin{theorem}[Structure identity principle, Paper~VI, Theorem~10.3]
553:\end{theorem}
555:\begin{theorem}[Equivalence-invariance, Paper~VI, Theorem~10.4]
560:\end{theorem}
580:\begin{theorem}[Existence of a definite encoding]
587:\end{theorem}
589:\begin{proof}
592:\end{proof}
601:\begin{theorem}[Encoding $\Rightarrow$ NNO]
608:\end{theorem}
610:\begin{proof}
614:\end{proof}
623:\begin{theorem}[NNO as a representation]
632:\end{theorem}
634:\begin{proof}
664:\end{proof}
669:\begin{theorem}[Yoneda + univalence $\Rightarrow$ identity]
681:\end{theorem}
683:\begin{proof}
689:\end{proof}
699:\begin{theorem}[Univalence $\Rightarrow$ structural]
706:\end{theorem}
708:\begin{proof}
712:\end{proof}
722:\begin{table}[ht]
724:\begin{tabularx}{\textwidth}{l X l}
734:\end{tabularx}
738:\end{table}
755:\begin{definition}[The four-perspective functors]
767:\begin{itemize}
779:\end{itemize}
782:\end{definition}
784:\begin{theorem}[Identity of perspectives]
787:\begin{enumerate}
798:\end{enumerate}
803:\end{theorem}
805:\begin{proof}
843:\end{proof}
856:\begin{figure}[ht]
858:\begin{tikzpicture}[node distance=2.0cm and 2.5cm]
872:\end{tikzpicture}
878:\end{figure}
906:\begin{principle}[The univalent correspondence, formal version]
912:\begin{itemize}
921:\end{itemize}
929:\end{principle}
942:\begin{remark}[Curry--Howard--Lambek--Voevodsky]
950:\end{remark}
954:\begin{corollary}[The natural numbers are univalent]
958:\begin{itemize}
963:\end{itemize}
966:\end{corollary}
968:\begin{proof}
970:\end{proof}
976:\begin{itemize}
989:\end{itemize}
1005:\begin{figure}[ht]
1007:\begin{tikzcd}[
1023:\end{tikzcd}
1034:\end{figure}
1043:\begin{itemize}
1060:\end{itemize}
1067:\begin{proposition}[Emergent property: contractibility of NNO]
1076:\end{proposition}
1078:\begin{proposition}[Emergent property: function extensionality]
1085:\end{proposition}
1087:\begin{proposition}[Emergent property: synthetic homotopy theory]
1097:\end{proposition}
1101:\begin{theorem}[Commutativity]
1111:\end{theorem}
1113:\begin{proof}[Sketch]
1121:\end{proof}
1131:\begin{itemize}
1149:\end{itemize}
1157:\begin{enumerate}
1165:\end{enumerate}
1177:\begin{quote}
1183:\end{quote}
1197:\begin{definition}[Cauchy real numbers, HIIT, Paper~V \S5.5]
1201:\begin{itemize}
1207:\end{itemize}
1208:\end{definition}
1210:\begin{theorem}[$\pi$ and $e$ in HoTT, after Paper~V \S10]
1214:\begin{itemize}
1220:\end{itemize}
1223:\end{theorem}
1272:\begin{enumerate}
1295:\end{enumerate}
1334:\begin{quote}
1340:\end{quote}
1354:\begin{lstlisting}[language=Haskell]
1358:\end{lstlisting}
1366:\begin{itemize}
1383:\end{itemize}
1387:\begin{lstlisting}[language={}]
1408:\end{lstlisting}
1426:\begin{thebibliography}{99}
1768:\end{thebibliography}
1770:\end{document}

codex
The quick scans show no literal ContextFS/TODO/stale-key hits. I’m checking cross-reference and bibliography consistency mechanically, then I’ll compile into a temp directory to catch TeX-level balance and box warnings without writing build files into the repo.
exec
/usr/local/bin/zsh -lc "perl -0ne '
my %labels = /\\\\label\\{(["'^}]+)'"\\}/g;
my @refs;
while (/\\\\(?:ref|cref|Cref|eqref)\\{(["'^}]+)'"\\}/g) { push @refs, split /\\s*,\\s*/, "'$1; }
my %seen; my @missing = grep { !$seen{$_}++ && !exists $labels{$_} } @refs;
if (@missing) { print "MISSING_REFS'"\\n\", join(\"\\n\", @missing), \"\\n\" } else { print \"MISSING_REFS none\\n\" }
' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
MISSING_REFS
tab:six-rows
sec:correspondence
thm:identity-of-perspectives
sec:transit-vi
sec:row-by-row
sec:applications
sec:open
thm:nno-up
tab:four-layers
prin:strong
fig:composition

exec
/usr/local/bin/zsh -lc "perl -0ne '
my %bib = /\\\\bibitem\\{(["'^}]+)'"\\}/g;
my @cites;
while (/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]+)'"\\}/g) { push @cites, split /\\s*,\\s*/, "'$1; }
my %seen; my @missing = grep { !$seen{$_}++ && !exists $bib{$_} } @cites;
if (@missing) { print "MISSING_CITES'"\\n\", join(\"\\n\", @missing), \"\\n\" } else { print \"MISSING_CITES none\\n\" }
' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
MISSING_CITES
paper-ii
paper-iv
paper-vi
Lawvere1964
Wadler2015
frege1892
CubicalAgda
RiehlShulman
Resnik1997
Hellman1989
Booij
Escardo2019
maclane
Voevodsky
LicataShulman
ShulmanStrength

exec
/usr/local/bin/zsh -lc "perl -0ne '
my @stack; my "'$bad=0;
while (/'"\\\\(begin|end)\\{(["'^}]+)'"\\}/g) {
  my ("'$kind,$env)=($1,$2); my $line=1+substr($_,0,$-[0])=~tr/'"\\n//;
  if ("'$kind eq "begin") { push @stack, [$env,$line]; }
  else { my $top=pop @stack; if (!$top || $top->[0] ne $env) { print "ENV_MISMATCH line $line end{$env}" . ($top ? " expected end{$top->[0]} from line $top->[1]" : " no begin") . "'"\\n\"; "'$bad=1; } }
}
if (@stack) { for (@stack) { print "UNCLOSED_ENV $_->[0] line $_->[1]'"\\n\"; } "'$bad=1; }
print "ENV_BALANCE ok'"\\n\" unless "'$bad;
'"' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
ENV_BALANCE ok

exec
/usr/local/bin/zsh -lc "perl -0ne '
my "'$s=$_; $s =~ s/'"\\\\[%{}]//g; my "'$n=0; my $bad=0;
for my $i (0..length($s)-1) { my $c=substr($s,$i,1); if ($c eq "{") { $n++ } elsif ($c eq "}") { $n--; if ($n<0) { my $line=1+substr($s,0,$i)=~tr/'"\\n//; print \"BRACE_UNDERFLOW line "'$line'"\\n\"; "'$bad=1; last; } } }
print $bad ? "" : ($n==0 ? "BRACE_BALANCE ok'"\\n\" : \"BRACE_BALANCE depth "'$n'"\\n\");
' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
BRACE_BALANCE ok

codex
The first reference script was too terse and treated alternating matches as hash pairs, so it produced false missing entries. I’m rerunning that with explicit set construction before trusting the result.
exec
/usr/local/bin/zsh -lc "perl -0ne '
my %labels = map { "'$_ => 1 } /'"\\\\label\\{(["'^}]+)'"\\}/g;
my @refs;
while (/\\\\(?:ref|cref|Cref|eqref)\\{(["'^}]+)'"\\}/g) { push @refs, split /\\s*,\\s*/, "'$1; }
my %seen; my @missing = grep { !$seen{$_}++ && !exists $labels{$_} } @refs;
if (@missing) { print "MISSING_REFS'"\\n\", join(\"\\n\", @missing), \"\\n\" } else { print \"MISSING_REFS none\\n\" }
' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
MISSING_REFS none

exec
/usr/local/bin/zsh -lc 'which latexmk || which pdflatex || true' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
exec
/usr/local/bin/zsh -lc "perl -0ne '
my %bib = map { "'$_ => 1 } /'"\\\\bibitem\\{(["'^}]+)'"\\}/g;
my @cites;
while (/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]+)'"\\}/g) { push @cites, split /\\s*,\\s*/, "'$1; }
my %seen; my @missing = grep { !$seen{$_}++ && !exists $bib{$_} } @cites;
if (@missing) { print "MISSING_CITES'"\\n\", join(\"\\n\", @missing), \"\\n\" } else { print \"MISSING_CITES none\\n\" }
' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
/Library/TeX/texbin/latexmk

 succeeded in 0ms:
MISSING_CITES none

codex
Reference and citation sets are now clean, and brace/environment balance is clean by source scan. I’m doing one TeX compile into `/tmp` to catch any remaining unclosed constructs or overfull-box warnings from the actual engine.
exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/synthesis-texcheck && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir=/tmp/synthesis-texcheck synthesis.tex' in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis/latex
 succeeded in 1931ms:
entering extended mode
(./synthesis.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/tabularx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/array.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/synthesis-texcheck/synthesis.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./synthesis.out) (./synthesis.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(./synthesis.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/p
dftex.map}] [2])

LaTeX Warning: Reference `tab:six-rows' on page 1 undefined on input line 177.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 197.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 197.


LaTeX Warning: Citation `paper-i' on page 3 undefined on input line 203.


LaTeX Warning: Citation `paper-ii' on page 3 undefined on input line 204.


LaTeX Warning: Citation `paper-iii' on page 3 undefined on input line 206.


LaTeX Warning: Citation `paper-iv' on page 3 undefined on input line 209.


LaTeX Warning: Citation `paper-v' on page 3 undefined on input line 211.


LaTeX Warning: Citation `paper-vi' on page 3 undefined on input line 214.

[3]

LaTeX Warning: Reference `sec:correspondence' on page 1 undefined on input line
 222.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 222.


LaTeX Warning: Reference `prin:weak' on page 1 undefined on input line 239.


LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 246.


LaTeX Warning: Citation `Lawvere1964' on page 4 undefined on input line 248.


LaTeX Warning: Citation `Lambek1972' on page 4 undefined on input line 248.


LaTeX Warning: Citation `Wadler2015' on page 4 undefined on input line 248.


LaTeX Warning: Citation `Awodey2014' on page 4 undefined on input line 249.


LaTeX Warning: Citation `HoTTBook' on page 4 undefined on input line 249.


LaTeX Warning: Reference `sec:transit-vi' on page 1 undefined on input line 251
.


Overfull \hbox (6.35359pt too wide) in paragraph at lines 246--252
[]\OT1/cmr/m/n/12 The strong form is the con-tent of [] be-low. The weak form i
s es-tab-lished meta-theoretically
[4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Reference `tab:six-rows' on page 1 undefined on input line 289.


LaTeX Warning: Reference `tab:tetrad' on page 1 undefined on input line 291.


LaTeX Warning: Citation `Wadler2015' on page 5 undefined on input line 292.


LaTeX Warning: Reference `sec:naming' on page 1 undefined on input line 295.


Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/bx/n/12 Homotopy /

Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Homotopy equiv-a-

Underfull \hbox (badness 1057) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Left ad-joint / col-

LaTeX Warning: Citation `Wadler2015' on page 5 undefined on input line 319.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 319.


LaTeX Warning: Citation `Wadler2015' on page 5 undefined on input line 319.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 319.


LaTeX Warning: Reference `sec:row-by-row' on page 1 undefined on input line 325
.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 326.


LaTeX Warning: Reference `sec:framework' on page 1 undefined on input line 328.



LaTeX Warning: Reference `sec:correspondence' on page 1 undefined on input line
 331.


LaTeX Warning: Reference `sec:diagrams' on page 1 undefined on input line 332.


LaTeX Warning: Reference `sec:naming' on page 1 undefined on input line 333.


LaTeX Warning: Reference `sec:applications' on page 1 undefined on input line 3
35.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 337.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 337
.

[5]

LaTeX Warning: Citation `paper-i' on page 6 undefined on input line 350.


LaTeX Warning: Citation `frege1884' on page 6 undefined on input line 356.


LaTeX Warning: Citation `frege1892' on page 6 undefined on input line 357.


LaTeX Warning: Citation `benacerraf1965' on page 6 undefined on input line 358.



LaTeX Warning: Citation `paper-ii' on page 6 undefined on input line 377.

[6]

LaTeX Warning: Citation `paper-iii' on page 7 undefined on input line 409.


LaTeX Warning: Citation `paper-iv' on page 7 undefined on input line 450.

[7]

LaTeX Warning: Citation `lurie' on page 8 undefined on input line 479.


LaTeX Warning: Citation `paper-v' on page 8 undefined on input line 487.


LaTeX Warning: Citation `CCHM' on page 8 undefined on input line 526.


LaTeX Warning: Citation `CubicalAgda' on page 8 undefined on input line 526.


LaTeX Warning: Citation `2LTT' on page 8 undefined on input line 527.


LaTeX Warning: Citation `RiehlShulman' on page 8 undefined on input line 528.


LaTeX Warning: Citation `paper-vi' on page 8 undefined on input line 533.


LaTeX Warning: Citation `Resnik1997' on page 8 undefined on input line 537.


LaTeX Warning: Citation `Shapiro1997' on page 8 undefined on input line 537.


LaTeX Warning: Citation `Hellman1989' on page 8 undefined on input line 537.


LaTeX Warning: Citation `Awodey1996' on page 8 undefined on input line 537.


LaTeX Warning: Citation `Lawvere1964' on page 8 undefined on input line 538.


LaTeX Warning: Citation `Lawvere1963' on page 8 undefined on input line 539.

[8]

LaTeX Warning: Reference `thm:transit-i' on page 1 undefined on input line 594.



LaTeX Warning: Reference `thm:benacerraf' on page 1 undefined on input line 596
.

[9]

LaTeX Warning: Reference `thm:transit-ii' on page 1 undefined on input line 616
.


LaTeX Warning: Reference `thm:nno-up' on page 1 undefined on input line 646.


LaTeX Warning: Citation `HoTTBook' on page 10 undefined on input line 672.

[10]

LaTeX Warning: Citation `HoTTBook' on page 11 undefined on input line 687.


LaTeX Warning: Reference `thm:transit-iv' on page 1 undefined on input line 691
.


LaTeX Warning: Reference `thm:sip' on page 1 undefined on input line 709.


LaTeX Warning: Citation `paper-v' on page 11 undefined on input line 711.


LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 711.



LaTeX Warning: Reference `thm:transit-vi' on page 1 undefined on input line 714
.


LaTeX Warning: Reference `tab:four-layers' on page 1 undefined on input line 72
0.


LaTeX Warning: Reference `tab:six-rows' on page 1 undefined on input line 744.


LaTeX Warning: Citation `lurie' on page 11 undefined on input line 753.


LaTeX Warning: Citation `ShulmanInftyTopos' on page 11 undefined on input line 
753.

[11]

LaTeX Warning: Reference `thm:transit-iv' on page 1 undefined on input line 811
.


LaTeX Warning: Citation `HoTTBook' on page 12 undefined on input line 824.


LaTeX Warning: Reference `thm:sip' on page 1 undefined on input line 828.

[12]

LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 845.


LaTeX Warning: Reference `prin:strong' on page 1 undefined on input line 846.


LaTeX Warning: Reference `fig:four-views' on page 1 undefined on input line 852
.


LaTeX Warning: Reference `def:four-functors' on page 1 undefined on input line 
876.


LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 876.


LaTeX Warning: Reference `def:four-functors' on page 1 undefined on input line 
876.


LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 876.


LaTeX Warning: Citation `HoTTBook' on page 13 undefined on input line 884.


LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 886.



LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 890.


[13]

LaTeX Warning: Citation `Booij' on page 14 undefined on input line 893.


LaTeX Warning: Citation `HoTTBook' on page 14 undefined on input line 893.


LaTeX Warning: Reference `sec:applications' on page 1 undefined on input line 8
99.


LaTeX Warning: Citation `HoTTBook' on page 14 undefined on input line 926.


LaTeX Warning: Citation `Escardo2019' on page 14 undefined on input line 926.


LaTeX Warning: Reference `prin:formal' on page 1 undefined on input line 933.


LaTeX Warning: Reference `tab:tetrad' on page 1 undefined on input line 934.


LaTeX Warning: Citation `Wadler2015' on page 14 undefined on input line 943.


LaTeX Warning: Citation `Lambek1972' on page 14 undefined on input line 945.


LaTeX Warning: Citation `maclane' on page 14 undefined on input line 945.


LaTeX Warning: Citation `Voevodsky' on page 14 undefined on input line 946.


LaTeX Warning: Citation `HoTTBook' on page 14 undefined on input line 946.

[14]

LaTeX Warning: Reference `thm:transit-vi' on page 1 undefined on input line 969
.


LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 969.


LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 969.



LaTeX Warning: Reference `fig:composition' on page 1 undefined on input line 10
03.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 1032.


LaTeX Warning: Reference `thm:transit-vi' on page 1 undefined on input line 103
2.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 1032.


LaTeX Warning: Reference `thm:transit-vi' on page 1 undefined on input line 103
2.

[15]

LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 1069
.


LaTeX Warning: Citation `HoTTBook' on page 16 undefined on input line 1081.

[16]

LaTeX Warning: Citation `LicataShulman' on page 17 undefined on input line 1091
.


LaTeX Warning: Citation `LicataFinster' on page 17 undefined on input line 1091
.


LaTeX Warning: Citation `ShulmanStrength' on page 17 undefined on input line 10
91.


LaTeX Warning: Reference `def:four-functors' on page 1 undefined on input line 
1103.


LaTeX Warning: Reference `sec:transit' on page 1 undefined on input line 1115.


LaTeX Warning: Citation `wadler-pat' on page 17 undefined on input line 1133.


LaTeX Warning: Citation `wadler-pat' on page 17 undefined on input line 1134.


LaTeX Warning: Citation `Lambek1972' on page 17 undefined on input line 1136.


LaTeX Warning: Citation `Wadler2015' on page 17 undefined on input line 1142.


LaTeX Warning: Citation `Voevodsky2010' on page 17 undefined on input line 1145
.


LaTeX Warning: Citation `HoTTBook' on page 17 undefined on input line 1148.

[17]

LaTeX Warning: Reference `prin:strong' on page 1 undefined on input line 1164.


LaTeX Warning: Citation `Voevodsky2010' on page 18 undefined on input line 1174
.


LaTeX Warning: Citation `HoTTBook' on page 18 undefined on input line 1174.

[18]

LaTeX Warning: Citation `RiehlShulman' on page 19 undefined on input line 1235.



LaTeX Warning: Citation `lurie' on page 19 undefined on input line 1257.


LaTeX Warning: Citation `ShulmanInftyTopos' on page 19 undefined on input line 
1260.

[19]

LaTeX Warning: Reference `sec:open-langlands' on page 1 undefined on input line
 1279.


LaTeX Warning: Citation `Makkai1995' on page 20 undefined on input line 1282.


LaTeX Warning: Reference `thm:nno-contr' on page 1 undefined on input line 1285
.


LaTeX Warning: Citation `lurie' on page 20 undefined on input line 1287.


LaTeX Warning: Citation `RiehlShulman' on page 20 undefined on input line 1290.



LaTeX Warning: Citation `CisinskiNguyen' on page 20 undefined on input line 129
0.


LaTeX Warning: Citation `CubicalAgda' on page 20 undefined on input line 1293.


LaTeX Warning: Reference `prin:strong' on page 1 undefined on input line 1304.


LaTeX Warning: Reference `prin:formal' on page 1 undefined on input line 1304.


LaTeX Warning: Reference `thm:identity-of-perspectives' on page 1 undefined on 
input line 1305.


LaTeX Warning: Reference `sec:diagrams' on page 1 undefined on input line 1307.


[20]

LaTeX Warning: Reference `tab:six-rows' on page 1 undefined on input line 1365.



LaTeX Warning: Reference `thm:transit-vi' on page 1 undefined on input line 138
1.

[21]

LaTeX Warning: Reference `sec:transit' on page 22 undefined on input line 1413.


[22]
Underfull \hbox (badness 3861) in paragraph at lines 1469--1472
[]\OT1/cmr/m/n/12 V. Vo-evod-sky, \OT1/cmr/m/it/12 The equiv-a-lence ax-iom and
 uni-va-lent mod-els of type the-ory\OT1/cmr/m/n/12 ,
[23]
Underfull \hbox (badness 10000) in paragraph at lines 1545--1548
[]\OT1/cmr/m/n/12 D.-C. Cisin-ski and H. K. Nguyen, \OT1/cmr/m/it/12 The uni-ve
r-sal co-Carte-sian fi-bra-tion\OT1/cmr/m/n/12 ,
[24] [25] [26] (/private/tmp/synthesis-texcheck/synthesis.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmcsc10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm
-super/sfti1200.pfb>
Output written on /private/tmp/synthesis-texcheck/synthesis.pdf (26 pages, 4207
61 bytes).
Transcript written on /private/tmp/synthesis-texcheck/synthesis.log.
Latexmk: Getting log file '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.fls'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/synthesis-texcheck/synthesis.aux
  /private/tmp/synthesis-texcheck/synthesis.out

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/synthesis-texcheck"  "synthesis.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./synthesis.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/tabularx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/array.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/synthesis-texcheck/synthesis.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/synthesis-texcheck/synthesis.out)
(/private/tmp/synthesis-texcheck/synthesis.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/private/tmp/synthesis-texcheck/synthesis.toc [1{/usr/local/texlive/2026/texmf
-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/2026/t
exmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/bx/n/12 Homotopy /

Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Homotopy equiv-a-

Underfull \hbox (badness 1057) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Left ad-joint / col-
[5] [6] [7] [8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20]
[21] [22]
Underfull \hbox (badness 3861) in paragraph at lines 1469--1472
[]\OT1/cmr/m/n/12 V. Vo-evod-sky, \OT1/cmr/m/it/12 The equiv-a-lence ax-iom and
 uni-va-lent mod-els of type the-ory\OT1/cmr/m/n/12 ,
[23]
Underfull \hbox (badness 10000) in paragraph at lines 1545--1548
[]\OT1/cmr/m/n/12 D.-C. Cisin-ski and H. K. Nguyen, \OT1/cmr/m/it/12 The uni-ve
r-sal co-Carte-sian fi-bra-tion\OT1/cmr/m/n/12 ,
[24] [25] [26] (/private/tmp/synthesis-texcheck/synthesis.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmcsc10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm
-super/sfti1200.pfb>
Output written on /private/tmp/synthesis-texcheck/synthesis.pdf (26 pages, 4266
83 bytes).
Transcript written on /private/tmp/synthesis-texcheck/synthesis.log.
Latexmk: Getting log file '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.fls'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/synthesis-texcheck/synthesis.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/synthesis-texcheck"  "synthesis.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./synthesis.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/tabularx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/array.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.markings.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarydecorations.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduledecoration
s.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/decorations/pgfli
brarydecorations.markings.code.tex))
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/synthesis-texcheck/synthesis.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/synthesis-texcheck/synthesis.out)
(/private/tmp/synthesis-texcheck/synthesis.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/private/tmp/synthesis-texcheck/synthesis.toc [1{/usr/local/texlive/2026/texmf
-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/2026/t
exmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/bx/n/12 Homotopy /

Underfull \hbox (badness 10000) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Homotopy equiv-a-

Underfull \hbox (badness 1057) in paragraph at lines 315--315
[]|\OT1/cmr/m/n/12 Left ad-joint / col-
[5] [6] [7] [8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20]
[21] [22]
Underfull \hbox (badness 3861) in paragraph at lines 1469--1472
[]\OT1/cmr/m/n/12 V. Vo-evod-sky, \OT1/cmr/m/it/12 The equiv-a-lence ax-iom and
 uni-va-lent mod-els of type the-ory\OT1/cmr/m/n/12 ,
[23]
Underfull \hbox (badness 10000) in paragraph at lines 1545--1548
[]\OT1/cmr/m/n/12 D.-C. Cisin-ski and H. K. Nguyen, \OT1/cmr/m/it/12 The uni-ve
r-sal co-Carte-sian fi-bra-tion\OT1/cmr/m/n/12 ,
[24] [25] [26] (/private/tmp/synthesis-texcheck/synthesis.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmcsc10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cmextra/cmex8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist
/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/f
onts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fon
ts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts
/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/a
msfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm
-super/sfti1200.pfb>
Output written on /private/tmp/synthesis-texcheck/synthesis.pdf (26 pages, 4266
83 bytes).
Transcript written on /private/tmp/synthesis-texcheck/synthesis.log.
Latexmk: Getting log file '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.fls'
Latexmk: Examining '/private/tmp/synthesis-texcheck/synthesis.log'
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: Log file says output to '/private/tmp/synthesis-texcheck/synthesis.pdf'
Latexmk: All targets (/private/tmp/synthesis-texcheck/synthesis.pdf) are up-to-date


codex
The final compile completed after the normal cross-reference reruns. I’m doing the last targeted text-artifact scan now: punctuation/conjunction leftovers, trailing whitespace, and enumerate blocks around the deleted open-problem item.
exec
/usr/local/bin/zsh -lc "rg -n '\\b(and|or)\\s*[,.;:]|such as\\s*[,.]|including\\s*[,.]|,\\s*(and|or)\\s*[,.;:]|,\\s*,|\\.\\s*\\.|\\(\\s*\\)|\\[\\s*\\]|\\{\\s*\\}' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
629:$\mathcal{C}$ (or, equivalently, $N$ is the value of the free pointed
1328:relational, type-theoretic, and structural --- and, under univalence, all
1387:\begin{lstlisting}[language={}]

exec
/usr/local/bin/zsh -lc "rg -n '[[:blank:]]+"'$|~{3,}| {3,}[''^'"\\\\]|\\\\[;,.:]\\s*"'$'"' latex/synthesis.tex" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
51:    if, then, else, module, import, newtype, deriving, family, forall},
73:    \begin{tikzpicture}[remember picture, overlay]
74:      \node[
75:        rotate=90,
76:        anchor=south,
77:        font=\Large\sffamily\bfseries\color{grokgray},
78:        inner sep=0pt
79:      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
80:      {GrokRxiv:2026.05.univalent-correspondence-synthesis\quad
81:       [\,math.CT/math.LO\,]\quad
82:       03 May 2026};
83:    \end{tikzpicture}
515:\NNO := \sum_{X : \U}\;\sum_{x_0 : X}\;\sum_{s : X \to X}\;
550:\bigl((X, s) =_{\sum_X F(X)} (X', s')\bigr) \;\eqv\;
1392:  Naive                  -> 58
1393:  SetTheoretic           -> 58
1394:  UniversalProperty      -> 58
1395:  Yoneda                 -> 58
1396:  HoTT                   -> 58
1397:  StructuralInvariant    -> 58
1400:  naive                              = 58
1401:  set-theoretic (von Neumann)        = 58
1402:  universal property (succ^58)       = 58
1403:  Yoneda (|{m : Hom(m,58) /= 0}|)    = 58
1404:  HoTT (|0 =_N 58 chain|)            = 58
1405:  structural (orbit length)          = 58

exec
/usr/local/bin/zsh -lc "nl -ba latex/synthesis.tex | sed -n '960,995p;1128,1168p;1268,1296p;1358,1385p'" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
exec
/usr/local/bin/zsh -lc "rg -n 'undefined|Citation .* undefined|Reference .* undefined|Overfull|Underfull' /tmp/synthesis-texcheck/synthesis.log" in /Users/mlong/Documents/Development/magneton_work/formalized-foundations-mathematics/papers/07-synthesis
 succeeded in 0ms:
878:Underfull \hbox (badness 10000) in paragraph at lines 315--315
883:Underfull \hbox (badness 10000) in paragraph at lines 315--315
888:Underfull \hbox (badness 1057) in paragraph at lines 315--315
898:Underfull \hbox (badness 3861) in paragraph at lines 1469--1472
904:Underfull \hbox (badness 10000) in paragraph at lines 1545--1548

 succeeded in 0ms:
   960	\item the representable presheaf $h_N \in [\NNO\op, \U]$;
   961	\item the canonical inhabitant of the contractible type $\NNO$;
   962	\item the iso-class $[(N, 0, \suc)]$ in $\NNO/\eqv$.
   963	\end{itemize}
   964	The integer $58$, defined as $\suc^{58}\,\zero$, is invariant under all
   965	four identifications.
   966	\end{corollary}
   967	
   968	\begin{proof}
   969	Combine \cref{thm:nno-contr,thm:identity-of-perspectives,thm:transit-vi}.
   970	\end{proof}
   971	
   972	\subsection{Why this resolves the original question}
   973	
   974	The original question of the series, ``what is $58$?'', has now four
   975	equivalent answers, each made precise by one of Papers~III through~VI:
   976	\begin{itemize}
   977	\item \emph{(III)} $58$ is the unique element such that, for every pointed
   978	endo-system $(X, x_0, f)$ in any category with terminal object, the unique
   979	NNO morphism $h\colon \N \to X$ sends $58$ to $f^{58}(x_0)$.
   980	\item \emph{(IV)} $58$ is the natural number whose representable functor
   981	$\Hom(-, 58)$, under the Yoneda embedding into the presheaf topos, exhibits
   982	all probes onto $58$ from below.
   983	\item \emph{(V)} $58$ is the canonical term $\suc^{58}\,\zero : \N$,
   984	identified with $\suc^{58}\,\zero$ in any equivalent NNO presentation by
   985	transport along the unique path in the contractible type $\NNO$.
   986	\item \emph{(VI)} $58$ is the value of any (every) definable arithmetic
   987	quantity that, on the standard model of arithmetic, evaluates to $58$;
   988	this value is invariant under all model isomorphisms by SIP.
   989	\end{itemize}
   990	The univalent correspondence asserts that these four answers are not just
   991	\emph{about} the same object: they are \emph{the same data}, internally,
   992	in HoTT.
   993	
   994	\section{Hierarchical Composition: How Each Level Builds on the Previous}
   995	\label{sec:diagrams}
  1128	
  1129	\subsection{Names in use}
  1130	
  1131	\begin{itemize}
  1132	\item \textbf{Curry--Howard correspondence} (binary): logic with type
  1133	theory. Curry (1934)~\cite{wadler-pat} observed it for combinatory logic;
  1134	Howard (1969)~\cite{wadler-pat} extended it to natural deduction.
  1135	\item \textbf{Curry--Howard--Lambek} (three-way): adds category theory.
  1136	Lambek (1972)~\cite{Lambek1972} showed that proofs of intuitionistic
  1137	propositional logic and typed combinators share the equational theory of
  1138	cartesian closed categories; this is the textbook three-way name.
  1139	\item \textbf{Computational trinity} (Harper, c.\ 2011): logic, languages
  1140	(type theory), categories. Harper at CMU popularised the catchier name. A
  1141	four-way version is sometimes called the computational tetrad.
  1142	\item \textbf{Propositions-as-types} (Wadler 2015~\cite{Wadler2015}):
  1143	emphasises the central insight rather than the historical figures.
  1144	Extends naturally to ``propositions-as-types-as-spaces'' in HoTT.
  1145	\item \textbf{Univalent foundations} (Voevodsky, 2010~\cite{Voevodsky2010}):
  1146	the foundational programme built on the four-way correspondence. Homotopy
  1147	Type Theory (HoTT) is the formal system; the
  1148	HoTT Book~\cite{HoTTBook} is the canonical reference.
  1149	\end{itemize}
  1150	
  1151	\subsection{Why ``the univalent correspondence''}
  1152	
  1153	The phrase ``Curry--Howard--Lambek--Voevodsky correspondence'' is correct
  1154	but unwieldy. ``Propositions as types as spaces'' is pedagogically apt
  1155	but emphasises types and propositions over the unifying mechanism. We
  1156	prefer \emph{the univalent correspondence} for three reasons:
  1157	\begin{enumerate}
  1158	\item It \emph{names the unifying mechanism}: the univalence axiom is
  1159	what promotes the four columns from analogous to literally the same.
  1160	\item It is \emph{neutral across the columns}: it does not privilege
  1161	logic, types, categories, or spaces.
  1162	\item It \emph{credits the discovery}: Voevodsky's univalent foundations
  1163	project is the conceptual origin of the strong form
  1164	(\cref{prin:strong}).
  1165	\end{enumerate}
  1166	
  1167	We also use \emph{the $\infty$-groupoid correspondence} when emphasising
  1168	the underlying object, and \emph{structural univalence} when emphasising
  1268	
  1269	We collect the open problems flagged by the topical papers and by the
  1270	synthesis.
  1271	
  1272	\begin{enumerate}
  1273	\item \textbf{Coalgebraic / final-object dual for transcendentals.}
  1274	Paper~III sketches the coalgebraic side: streams of digits, codata,
  1275	bisimulation as the corresponding induction principle. A complete
  1276	final-coalgebra characterisation of $\pi$ and $e$ that avoids the
  1277	inductive HIIT route is open.
  1278	\item \textbf{Connections to Langlands and analytic number theory.}
  1279	\Cref{sec:open-langlands}.
  1280	\item \textbf{ETCS, IZF, and FOLDS as alternative structural foundations.}
  1281	Paper~VI surveys ETCS; the relationship to Makkai's
  1282	FOLDS~\cite{Makkai1995} and to intuitionistic ZF (IZF) merits
  1283	development.
  1284	\item \textbf{Higher-categorical structure of NNO.} The contractibility
  1285	result (\cref{thm:nno-contr}) shows the type of NNOs is a contractible
  1286	type (a $(-2)$-type). The corresponding statement for $(\infty,1)$-NNOs in
  1287	$\infty$-toposes (Lurie's $(\infty,1)$-NNO~\cite{lurie}) is more delicate.
  1288	\item \textbf{Directed univalence.} Riehl and Shulman's simplicial type
  1289	theory has a partial directed univalence; a complete principle remains a
  1290	research target~\cite{RiehlShulman,CisinskiNguyen}.
  1291	\item \textbf{Cubical higher inductive--inductive types.} The Cauchy
  1292	reals construction of Paper~V is given in Book HoTT; a clean cubical
  1293	version (in Cubical Agda~\cite{CubicalAgda}) is in progress but
  1294	incomplete.
  1295	\end{enumerate}
  1296	
  1358	\end{lstlisting}
  1359	together with the trivially uniform map
  1360	\verb|answer :: Perspective -> Int -> Int|. The point is precisely that
  1361	\verb|answer p n = n| for every perspective \verb|p|: the perspective is
  1362	discharged by transport.
  1363	
  1364	\paragraph{\normalfont\texttt{UnifiedNumber.hs}.} Implements one numerical witness
  1365	per row of \cref{tab:six-rows}:
  1366	\begin{itemize}
  1367	\item \emph{Naive:} the literal \verb|58|.
  1368	\item \emph{Set-theoretic:} \verb|vonNeumannCard 58|, returning the
  1369	cardinality of the von Neumann encoding.
  1370	\item \emph{Universal property:} \verb|toIntL (succIterate 58 :: Peano)|,
  1371	applying the unique map out of the NNO into the Peano model.
  1372	\item \emph{Yoneda:} \verb|predecessorsOf 58|, the cardinality of
  1373	$\{m : \mathrm{Hom}(m, 58) \neq \emptyset\}$ in the order category, by
  1374	the Yoneda lemma equal to $58$.
  1375	\item \emph{HoTT:} the length of the canonical successor chain
  1376	$\zero \mapsto \mathsf{succ}\,\zero \mapsto \cdots \mapsto 58$ in
  1377	$\N$, identified up to path equivalence.
  1378	\item \emph{Structural:} \verb|finiteOrbitLength 59 1|, the number of
  1379	successor steps required to send $1$ back to $0$ in the cyclic carrier
  1380	$\mathbb{Z}/59\mathbb{Z}$ under $s(x) = x + 1 \bmod 59$. This count is
  1381	$58$, and by \cref{thm:transit-vi} it is invariant across all isomorphic
  1382	presentations of the carrier.
  1383	\end{itemize}
  1384	
  1385	\paragraph{\normalfont\texttt{Main.hs}.} Runs all six computations and verifies that

codex
CLEAN — no regressions detected
2026-05-04T14:22:01.443404Z ERROR codex_core::session: failed to record rollout items: thread 019df35c-811d-7d00-8b84-8c057ca67174 not found
tokens used
60,374
CLEAN — no regressions detected
