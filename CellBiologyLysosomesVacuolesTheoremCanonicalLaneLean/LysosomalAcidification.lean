import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure VacuolarATPase where
  V0Domain : Prop
  V1Domain : Prop
  ATPHydrolysis : Prop
  protonTranslocation : Prop

structure ChlorideChannel (V : VacuolarATPase) where
  CLCFamilyMember : Prop
  anionConductance : Prop
  voltageGating : Prop

structure AcidificationPackage {V : VacuolarATPase} (C : ChlorideChannel V) where
  vATPaseActive : V.ATPHydrolysis ∧ V.protonTranslocation
  chlorideConductance : C.anionConductance
  pHSetpointAchieved : Prop

structure AcidificationEvidence {V : VacuolarATPase} {C : ChlorideChannel V} (A : AcidificationPackage C) where
  vATPaseActiveClosed : A.vATPaseActive
  chlorideConductanceClosed : A.chlorideConductance
  pHSetpointAchievedClosed : A.pHSetpointAchieved

def AcidificationClosed {V : VacuolarATPase} {C : ChlorideChannel V} (A : AcidificationPackage C) : Prop :=
  A.vATPaseActive ∧ A.chlorideConductance ∧ A.pHSetpointAchieved

theorem acidification_closed_from_evidence {V : VacuolarATPase} {C : ChlorideChannel V} (A : AcidificationPackage C) (E : AcidificationEvidence A) : AcidificationClosed A := by
  exact And.intro E.vATPaseActiveClosed (And.intro E.chlorideConductanceClosed E.pHSetpointAchievedClosed)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse