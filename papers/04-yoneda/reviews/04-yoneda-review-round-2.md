---
reviewer: gemini-2.5-pro
paper: 04-yoneda
round: 2
date: 2026-05-04T01:31:50Z
---

Ripgrep is not available. Falling back to GrepTool.
Here is a peer review of the provided research paper.

***

### Peer Review: The Yoneda Perspective: Numbers as Representable Functors

This review evaluates the paper on its mathematical correctness, clarity, completeness, logical structure, and overall presentation quality.

### General Comments

The paper presents a compelling and well-motivated argument for the Yoneda lemma as the ultimate formalization of mathematical structuralism, using the question "what is a number?" as a unifying thread. The arc from previous papers in the series is well-summarized, and the bridge to Homotopy Type Theory is insightful and clearly articulated. The scope is ambitious, covering foundational concepts, advanced generalizations, and a practical implementation, which is commendable. The writing style is exceptionally clear, and the LaTeX presentation is of very high quality.

However, there are several mathematical inaccuracies in the paper's core application (Section 4), as well as in the description of the Haskell implementation (Section 9), which require significant attention.

### Feedback by Severity

---

#### **CRITICAL ISSUES**

*   **Section 9.2, Haskell Implementation:** The provided pseudocode for the `representable` function is incorrect. A presheaf is a *contravariant* functor `C^op -> Set`. Its action on a morphism `g: W -> Z` should be pre-composition. The `onMor` implementation is given as `\(f :: Mor c) m -> compose cat m f`, which is post-composition. This defines a *covariant* functor. For the presheaf `h_X = Hom(-, X)`, the map `h_X(g): Hom(Z, X) -> Hom(W, X)` must take a morphism `m: Z -> X` to `m ∘ g: W -> X`. The implementation detail is critically wrong and describes the dual `h^X` instead.

#### **MAJOR ISSUES**

*   **Section 4.2, Definition 4.2:** The definition of the *nth-iterate selector* `ε_n` is incorrectly typed. It is defined as a natural endo-transformation `U ⇒ U`, whose components must be morphisms `U(O) → U(O)`. However, the component `ε_n^{(X, x_0, f)}` is given as the element `f^n(x_0) ∈ X`, not a function `X → X`. This should be defined as a natural transformation from the terminal functor `1` to `U`, where `1` maps every object to a singleton set. A transformation `1 ⇒ U` is precisely a natural choice of an element from `U(O)` for each object `O`. This is a significant error that undermines the subsequent theorem.

*   **Section 4.3, Theorem 4.3:** This theorem, which is central to the paper's thesis about numbers, is confusingly stated and appears to contain several errors, likely stemming from the issue in Definition 4.2.
    *   It claims `U` is represented by `(N, 0, succ)`, which would mean `U(-) ≅ Hom_Succ((N, 0, succ), -)`. This is the correct statement for a *covariant* representable functor.
    *   It then claims there is a bijection `Hom_Succ((N, 0, succ), (X, x_0, f)) ≅ X`. This is false. Since `(N, 0, succ)` is the initial object, the hom-set on the left is always a singleton, whereas `X` can be any set. The isomorphism should be `Hom_Succ((N, 0, succ), -) ≅ U` as functors, but the theorem text incorrectly describes it at the level of sets.
    *   The phrase "Under the further isomorphism with $X^{\mathbb{N}}$" is unsubstantiated and incorrect in this context.
    *   The connection made between `ε_n`, `n`, and the Yoneda lemma is based on the flawed `ε_n` definition. This entire theorem and its proof need to be rewritten with correct statements derived from a corrected definition of the "selector" transformations.

#### **MINOR ISSUES**

*   **Section 3.1, Proof of Theorem 3.1:** The proof of naturality of `Φ` in `X` is slightly opaque. The step `\alpha_X(g) = \alpha_X(g \circ \mathrm{id}_X)` is confusing and seems to use `g` in a way that doesn't match its type `X -> X'`. The correct argument relies on the naturality square for `α` with respect to `g`, which shows `F(g)(α_{X'}(id_{X'})) = α_X(id_{X'} ∘ g) = α_X(g)`. While the author likely had this in mind, the written step is unclear and could be stated more precisely to avoid ambiguity.

*   **Section 4.5, Proposition 4.5:** The proposition conflates a hom-set with its cardinality. It states that `h_n` "assigns to `m` the set `n^m`". `h_n(m)` is the set `Hom(m, n)`, whose cardinality is `n^m`. This should be stated more precisely.

*   **Section 4.6, Example 4.6:** The characterization of `π` is an excellent illustration, but the phrase "representing element of the sub-presheaf of *minimal* positive periods of $\gamma$ in the slice category over $\gamma$" is quite dense and could benefit from either further unpacking or being presented more as a high-level heuristic.

*   **Section 10, Results:** Theorem 10.3 (restatement of 4.3 and 4.4) inherits the mathematical errors from Section 4 and will need to be corrected accordingly.

### LaTeX and Presentation Quality

The LaTeX quality is outstanding. The document is professionally typeset, using appropriate packages like `amsmath`, `tikz-cd`, and `cleveref`. The custom GrokRxiv sidebar is a creative and aesthetically pleasing touch. The diagrams are clear, and the bibliography is well-formatted. No issues here.

### Final Recommendation

The paper has a strong, clear, and important thesis. It is well-written, well-structured, and for the most part, mathematically sound. However, the errors in the core application section (Section 4) and the Haskell implementation description (Section 9) are significant. They are not merely typographical but represent fundamental misunderstandings of the definitions involved. Fortunately, these errors seem contained and are correctable with a careful rewrite of the affected sections. The rest of the paper provides an excellent and valuable synthesis.

Given the severity of the issues in a section so central to the paper's title and theme, the paper is not ready for publication in its current form.

**VERDICT: MAJOR REVISIONS**
