import EuclideanGeometry.Foundation.Axiom.Linear.Perpendicular
import EuclideanGeometry.Foundation.Axiom.Position.Angle

noncomputable section
namespace EuclidGeom

open Line

variable {P : Type _} [EuclideanPlane P]

theorem segnd_perp_line_of_line_perp_line {A B : P} (B_ne_A : B ≠ A) {l : Line P} (h : (SEG_nd A B B_ne_A) ⟂ l) : (LIN A B B_ne_A) ⟂ l := by sorry
theorem perp_foot_unique' {A B : P} {l : DirLine P} (h : A LiesOn l) (hne : B ≠ A) (hp : (DLIN B A hne.symm) ⟂ l) : perp_foot B l = A := sorry
lemma perp_foot_ne_self_iff_not_lies_on' (A B : P) (l : Line P) (B_is_perp_foot : B = (perp_foot A l)) : B ≠ A ↔ ¬ A LiesOn l := by
  simp only [B_is_perp_foot]
  exact (perp_foot_ne_self_iff_not_lies_on A l)

theorem not_colinear_with_perp_foot_of_ne_perp_foot (A B C : P) (l : Line P) (B_on_l : B LiesOn l) (A_not_on_l : ¬ A LiesOn l) (C_is_perp_foot : C = (perp_foot A l)) (B_ne_C : B ≠ C): ¬ colinear C B A := sorry

theorem angle_eq_pi_div_two_or_neg_pi_div_two_at_perp_foot (A B C : P) (l : Line P) (B_on_l : B LiesOn l) (A_not_on_l : ¬ A LiesOn l) (C_is_perp_foot : C = (perp_foot A l)) (B_ne_C : B ≠ C) : (∠ A C B ((perp_foot_ne_self_iff_not_lies_on' A C l C_is_perp_foot).mpr A_not_on_l).symm B_ne_C = ↑ (π / 2)) ∨ (∠ A C B ((perp_foot_ne_self_iff_not_lies_on' A C l C_is_perp_foot).mpr A_not_on_l).symm  B_ne_C = ↑(-(π / 2))) := by sorry

theorem angle_dval_eq_pi_div_two_at_perp_foot (A B C : P) (l : Line P) (B_on_l : B LiesOn l) (A_not_on_l : ¬ A LiesOn l) (C_is_perp_foot : C = (perp_foot A l)) (B_ne_C : B ≠ C) : (ANG A C B ((perp_foot_ne_self_iff_not_lies_on' A C l C_is_perp_foot).mpr A_not_on_l).symm B_ne_C).dvalue = ↑ (π / 2) := by sorry

theorem angle_eq_neg_angle_at_perp_foot {A B C H : P} [h₁ : PtNe A B] [h₂ : PtNe A H] [h₃ : PtNe B H] [h₄ : PtNe C H] (h : H = perp_foot C (LIN A B)) (h' : H LiesInt (SEG A B)) : ∠ A H C = - ∠ B H C := by sorry
-- If $CH \perp AB$ at $H$ and $H$ is between $AB$, then $\angle AHC = - \angle BHC$.
-- I don't know how to properly write this theorem.
-- ShenZiJun

theorem perp_foot_unique {A B : P} {l : DirLine P} (h : A LiesOn l) [_hne : PtNe A B] (hp : (DLIN B A) ⟂ l) : perp_foot B l = A := sorry

theorem eq_dist_eq_perp_foot {A B : P} {l : DirLine P} (h : A LiesOn l) (heq : dist B A = dist_pt_line B l) : A = perp_foot B l := sorry

end EuclidGeom
