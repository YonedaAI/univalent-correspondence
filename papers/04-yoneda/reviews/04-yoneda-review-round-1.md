---
reviewer: gemini-2.5-pro
paper: 04-yoneda
round: 1
date: 2026-05-04T01:28:21Z
---

Ripgrep is not available. Falling back to GrepTool.
This is a peer review of the paper "The Yoneda Perspective: Numbers as Representable Functors".

The paper presents a clear, compelling, and largely correct argument for the Yoneda lemma as the ultimate formalization of mathematical structuralism, applying it to the question "what is a number?". The writing is of a very high quality, the structure is logical, and the inclusion of connections to higher category theory, HoTT, and a practical Haskell implementation makes for a comprehensive and insightful treatment.

However, there is one significant issue in the central application of the thesis to natural numbers that requires major revision. Other points are minor.

### Critical Issues

None. The core mathematical theorems (Yoneda Lemma, Density Theorem) are stated and proven correctly.

### Major Issues

1.  **Imprecise central theorem regarding numbers (Theorem 4.3).** The paper's primary claim is that numbers can be understood as representable functors. Theorem 4.3 is intended to be the formal statement of this for natural numbers, but its formulation is incorrect as written.
    *   **Location:** Section 4.2, lines 304-325.
    *   **Problem:** The theorem claims a natural isomorphism `E_n \cong h_n`. However, the functor `E_n` is defined on the category `Succ`, while the presheaf `h_n` is defined on the category `(N, <=)`. An isomorphism between functors requires them to have the same domain and codomain category, which is not the case here.
    *   The "proof" does not establish an isomorphism. It correctly notes that `E_n(X, x_0, f)` is computed by the universal map out of `(N, 0, succ)`, but it then makes an unjustified leap to an isomorphism with `h_n` on a different category. The connection is, at best, a strong analogy or a heuristic, but it is presented as a formal result. This conflation undermines the rigor of the paper's central application.
    *   **Suggested Revision:** The theorem and its proof need to be reformulated.
        *   Option A (More Rigorous): Demote the `(N, <=)` example to a motivating intuition. Make **Proposition 4.4** (the Lawvere theory example) the primary formalization for natural numbers. The functor `h_n` on the Lawvere theory `L_nat` is a perfectly valid and correct example of the paper's thesis.
        *   Option B (Clarify the connection): If the `Succ` category example is to be kept as a theorem, the relationship must be made precise. This would likely involve constructing a functor `G: (N, <=) -> Succ` and showing some relationship between `E_n \circ G` and `h_n`. A more direct approach might be to state that for any object `A` in `Succ`, the set `Hom_Succ((N,0,s), A)` is isomorphic to `A`'s underlying set, and the function `E_n` corresponds to evaluation at `n` under this isomorphism. This re-frames the initiality of `N` in a Yoneda-like context without claiming an incorrect functor isomorphism.

### Minor Issues

1.  **Slight overstatement in Abstract.**
    *   **Location:** Line 93.
    *   **Problem:** The abstract states the Haskell implementation "exhibits Hom(-, n) for N as a poset". The implementation presumably works on a *finite subcategory* of N, e.g., `{0, ..., 5}` as mentioned in Section 8.3.
    *   **Suggested Revision:** Change to "...exhibits Hom(-, n) for a finite segment of N...".

2.  **Clumsy wording for functor action.**
    *   **Location:** Line 298.
    *   **Problem:** The description of `E_n`'s action on a morphism `\varphi` as "the unique map of singletons" is slightly awkward.
    *   **Suggested Revision:** State it more directly. For example: "On a morphism `\varphi`, `E_n(\varphi)` is simply the function `\varphi` restricted to the singleton sets, i.e., mapping the element `f^n(x_0)` to `g^n(y_0)`. This map is well-defined due to the commutativity condition `\varphi \circ f = g \circ \varphi`."

3.  **Ambiguous terminology for "representing element".**
    *   **Location:** Lines 306, 310.
    *   **Problem:** The phrase "with representing element n" is confusing. In the context of representable functors, the *representing object* is an object in the category. Here, `n` is an element of the set `N`, not an object in the category `Succ`. This adds to the confusion identified in the Major Issue above.
    *   **Suggested Revision:** This phrasing should be removed or clarified as part of the revision of Theorem 4.3. The connection is that the universal map from `(N,0,s)` evaluates the functor at the element `n`.

### LaTeX Quality and Structure

The LaTeX quality is excellent. The use of `tikz-cd`, `cleveref`, custom theorem environments, and the stylish sidebar are all indicative of a well-crafted document. The overall structure—from the basic lemma, to the main application, to generalizations, and finally to a practical implementation—is clear and effective. The bibliography is comprehensive and appropriate.

### Final Verdict

The paper is well-written, well-structured, and conceptually strong. The flawed formulation of Theorem 4.3 is a significant but repairable error. Once this central example is presented with proper rigor, the paper will be an excellent contribution.

**VERDICT: MAJOR REVISIONS**
