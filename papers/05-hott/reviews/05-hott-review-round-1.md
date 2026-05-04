---
reviewer: gemini-2.5-pro
paper: 05-hott
round: 1
date: 2026-05-04T01:29:35Z
---

Ripgrep is not available. Falling back to GrepTool.
This is a review of the paper "The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence."

The paper presents a concise and ambitious overview of Homotopy Type Theory (HoTT) as a foundation for arithmetic, culminating in the claim that HoTT provides a representation-independent language for numbers and key mathematical constants. The author synthesizes a vast amount of material, from the basics of Martin-Löf Type Theory to advanced topics like higher inductive types, cubical type theory, and the semantics in $(\infty,1)$-toposes. The attempt to unify the previous papers in the series under the univalent lens is compelling and well-motivated.

The overall quality is high, the scope is impressive, and the mathematical content is largely correct. However, there are several issues that need to be addressed before publication.

### CRITICAL ISSUES

None. The central mathematical arguments of the paper are sound and reflect the consensus of the HoTT community.

### MAJOR ISSUES

1.  **Ambiguous Equality Notation:** The paper suffers from a critical ambiguity in its use of the symbol `≡`.
    *   In the preamble (line 46), `\equiv` is defined as a synonym for `\simeq` (type equivalence). This notation is used for type equivalence throughout the paper (e.g., Theorem 5.3, `(A = B) \equiv (A \equiv B)`).
    *   However, `≡` is also used to denote **judgmental** or **definitional equality** in computation rules. For example, in Definition 3.1: `ind_N ... zero ≡ c_0`.
    *   This overloading is highly confusing for a reader familiar with type theory, where the distinction between judgmental, propositional, and equivalence-based equalities is fundamental. It undermines the clarity of the foundational sections.
    *   **Recommendation:** Use a distinct symbol for judgmental equality. The standard is `:=` or `≡` (if `\equiv` is not redefined). The symbol `≡` or `≃` should be reserved exclusively for type equivalence. This change must be applied consistently throughout the paper.

### MINOR ISSUES

1.  **Imprecise Type in Function Extensionality:** In Theorem 5.7, the type of the functions `f` and `g` is given as `A → B(x)`. This is not a well-formed type. It should be the dependent product type.
    *   **Recommendation:** Change `f, g : A → B(x)` to `f, g : Π_{x:A} B(x)`.

2.  **Misleading Citation for Transcendence of π:** The proof sketch for Theorem 9.2 (Lindemann's theorem ported to HoTT) cites Bordg [20]. Bordg's paper is a formal proof of Hessenberg's theorem, which is not directly related to the transcendence of π. This citation is incorrect and misleading. While porting the proof is believed to be possible, citing a formalization of a different theorem is inappropriate.
    *   **Recommendation:** Remove the citation to Bordg [20] in this context. State that the port is "believed to be possible based on the constructive nature of the classical proof" or cite more relevant work-in-progress from formalization projects if available.

3.  **Vague Proof Sketch for NNO Contractibility:** The proof of Theorem 5.5 (Contractibility of NNO) concludes with "a routine $\Sigma$-calculation shows the whole quadruple is equal in NNO." This step, which involves transporting along equalities of $\Sigma$-types, is non-trivial and is a key part of the argument.
    *   **Recommendation:** Briefly elaborate on what this "$\Sigma$-calculation" entails (e.g., "by path induction on the equality `N = X`, we can construct a path between the respective zero and successor components...") or cite a source where this argument is detailed (e.g., the HoTT Book).

4.  **Imprecise Language in Abstract:** The abstract states that the paper develops π and e as "unique-existence terms." The body (e.g., Definition 9.1) correctly identifies them as the *centers of a contractible type* that expresses unique existence. This is a subtle but important distinction in HoTT.
    *   **Recommendation:** Refine the abstract to state that π and e are defined as the centers of contractible types, which formalizes the notion of unique existence.

5.  **Hardcoded File Path:** Section 13 (`Companion Implementation`) refers to the path `src/05-hott/`. For a published paper, this should not be a relative path from a local project structure.
    *   **Recommendation:** Change this to a generic reference, such as "The companion code, available in the project's public repository, provides..."

6.  **Incorrect Language in Code Listing:** The `lstlisting` in Section 14 contains Agda-style code but is declared with `language=Haskell`.
    *   **Recommendation:** Change the language to `Agda` or remove the language specifier to render it as plain text.

### LaTeX and Typographical Quality

The LaTeX quality is generally very high. The custom GrokRxiv sidebar is a nice touch. The mathematical typesetting is clean, aside from the major notational issue with equality mentioned above. The bibliography is well-formatted and contains the seminal references for the field.

### LOGICAL STRUCTURE AND COMPLETENESS

The paper's logical flow is excellent. It proceeds from the basics of type theory to the core concepts of HoTT, and then on to applications and semantics. The structure is ambitious but effective. The inclusion of sections on cubical type theory, variants of HoTT, and the discussion of what HoTT *doesn't* solve provides a balanced and modern perspective.

### FINAL VERDICT

The paper is a valuable contribution that provides a sweeping and insightful view of HoTT's application to the foundations of arithmetic. The mathematical content is strong, but the notational confusion surrounding the concept of equality is a significant flaw that hinders readability and precision. Once this and the other minor issues are addressed, the paper will be excellent.

**VERDICT: MAJOR REVISIONS**
