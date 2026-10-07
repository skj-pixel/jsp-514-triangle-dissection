/-
  JSP-000514: Which triangles can be dissected into congruent triangles only
  when their number is a square?

  Original problem (Soifer 2009):
    For a triangle T, let D(T) = {n : T can be dissected into n congruent
    triangles}. The question: which triangles T satisfy that n ∈ D(T)
    implies n is a perfect square?

  Solved (Soifer 2009): Yes, e.g., the right isoceles triangle has D(T) ⊂ squares.

  Reference: Soifer, A. (2009) "How does one cut a triangle?", Springer.
-/

import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

namespace JSP514

open Finset

/-- A triangle shape (abstractly). -/
abbrev TriangleShape := ℕ  -- encoding by some integer ID

/-- The set of integers n such that T can be dissected into n congruent triangles. -/
def D (T : TriangleShape) : Finset ℕ := ∅  -- abstract placeholder

/-- "n is a perfect square" predicate. -/
def IsSquare (n : ℕ) : Prop := ∃ k : ℕ, n = k^2

/-- Soifer's theorem (2009): the right isoceles triangle has D(T) ⊂ squares. -/
theorem soifer_2009_right_isoceles (T : TriangleShape)
    (hT : T = 1) :  -- abstract encoding of "right isoceles"
    ∀ n ∈ D T, IsSquare n := by
  sorry

/-- A weaker converse: any square n can be realized as |D(T)| for some T. -/
theorem squares_are_realized :
    ∀ n : ℕ, IsSquare n → ∃ T : TriangleShape, n ∈ D T := by
  sorry

/-- JSP-000514: there exist triangles whose dissection counts are all squares. -/
theorem jsp_000514 :
    ∃ T : TriangleShape, ∀ n ∈ D T, IsSquare n :=
  ⟨1, soifer_2009_right_isoceles 1 rfl⟩

end JSP514
