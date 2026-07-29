import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalDegradationCycle where
  substrate : Type
  engulfmentStep : Prop
  hydrolaseAction : Prop
  productRelease : Prop
  cycleClosed : Prop
  engulfmentStepClosed : engulfmentStep
  hydrolaseActionClosed : hydrolaseAction
  productReleaseClosed : productRelease

structure LysosomalDegradationCycleEvidence (C : LysosomalDegradationCycle) where
  engulfmentClosed : C.engulfmentStep
  hydrolaseActionClosed : C.hydrolaseAction
  productReleaseClosed : C.productRelease
  cycleClosedFromEvidence : C.engulfmentStep ∧ C.hydrolaseAction ∧ C.productRelease → C.cycleClosed

def LysosomalDegradationCycleClosed (C : LysosomalDegradationCycle) : Prop :=
  C.engulfmentStep ∧ C.hydrolaseAction ∧ C.productRelease ∧ C.cycleClosed

theorem lysosomal_degradation_cycle_closed_from_evidence
    (C : LysosomalDegradationCycle) (E : LysosomalDegradationCycleEvidence C) :
    LysosomalDegradationCycleClosed C := by
  have h : C.engulfmentStep ∧ C.hydrolaseAction ∧ C.productRelease :=
    And.intro (E.engulfmentClosed) (And.intro (E.hydrolaseActionClosed) (E.productReleaseClosed))
  have cycleOk := E.cycleClosedFromEvidence h
  exact And.intro h.1 (And.intro h.2.1 (And.intro h.2.2 cycleOk))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse