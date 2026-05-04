---
reviewer: 
paper: 05-hott
round: final
date: 2026-05-04T14:17:37Z
---

Ripgrep is not available. Falling back to GrepTool.
Here is the final-pass peer review, focusing strictly on blocking-acceptance issues.

### Blocking Issues

**1. Mathematical Error / Broken Proof (Proposition 3.3)**
The proof of uniqueness for the NNO universal property contains a fundamental error regarding the core HoTT distinction between judgmental (definitional) equality ($\equiv$) and propositional equality ($=$). 
* The proof states: *"suppose $h' : \N \to C$ also satisfies the equations."* In HoTT, this assumption means we are given paths (propositional equalities) $p_0 : h'(\zero) = c_0$ and $p_s : \prod_n h'(\suc\,n) = f(h'\,n)$. 
* The proof then incorrectly claims: *"The recursor's computation rule gives the definitional (judgmental) equalities $h(\zero) \equiv c_0$ and $h'(\zero) \equiv c_0$."* While $h(\zero) \equiv c_0$ is true (as $h$ is defined by the recursor), **$h'(\zero) \equiv c_0$ is categorically false.** Judgmental equality cannot be assumed for a generic, universally quantified variable $h'$. 
* Consequently, the base case $P(\zero)$ is not trivially inhabited by $\refl_{c_0}$, but must be constructed using the assumed path $p_0^{-1}$. The inductive step similarly fails because it claims $h'(\suc\,n) \equiv f(h'\,n)$ judgmentally, whereas it must explicitly invoke the path $p_s(n)$. This error misrepresents how equational hypotheses function in intensional type theory and breaks the proof.

**2. Critical Clarity Failure (Theorem 6.4)**
The statement describes the Hopf fibration $h : S^3 \to S^2$ as being *"definable as a HIT"*. This is a category error. In HoTT, spaces (types) can be Higher Inductive Types, but a fibration is a map or a type family, not a HIT. The standard HoTT definition of the Hopf fibration defines it as a type family over the HIT $S^2$ (constructed via the $S^2$ eliminator), which subsequently yields $S^3$ as its $\Sigma$-type total space. This wording must be corrected to prevent deep conceptual confusion.

VERDICT: MAJOR REVISIONS

---

## Fixes applied (post-review)

1. **Proposition 3.1 (NNO universal property), proof rewritten.** The
   uniqueness argument now correctly distinguishes judgmental from
   propositional equality: $h'$ is given with paths $p_0 : h'(\zero) = c_0$
   and $p_s : \prod_n h'(\suc\,n) = f(h'\,n)$ rather than judgmental
   equalities. Base case uses $p_0^{-1}$; inductive step composes
   $\mathsf{ap}_f(q)$ with $p_s(n)^{-1}$.
2. **Theorem 6.4 (Hopf fibration) wording corrected.** Now states the
   fibration is "defined internally as a type family $H : S^2 \to \U$ via
   the eliminator of the HIT $S^2$ (with total space $\sum_{x:S^2} H(x)
   \eqv S^3$)" rather than "definable as a HIT".

Both blocking issues from this round addressed without rewriting or
expanding scope.
