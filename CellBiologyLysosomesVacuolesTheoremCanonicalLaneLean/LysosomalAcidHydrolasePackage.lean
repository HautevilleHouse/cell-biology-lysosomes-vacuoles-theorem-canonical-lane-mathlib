import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalAcidHydrolasePackage where
  enzymeName : String
  optimalpH : Float
  stability : Prop
  activationMechanism : Prop
  substrateSpecificity : Prop

structure LysosomalAcidHydrolaseEvidence (L : LysosomalAcidHydrolasePackage) where
  optimalpHClosed : L.optimalpH = 5.0
  stabilityClosed : L.stability
  activationMechanismClosed : L.activationMechanism
  substrateSpecificityClosed : L.substrateSpecificity

def LysosomalAcidHydrolaseClosed (L : LysosomalAcidHydrolasePackage) : Prop :=
  L.optimalpH = 5.0 ∧ L.stability ∧ L.activationMechanism ∧ L.substrateSpecificity

theorem lysosomal_acid_hydrolase_closed_from_evidence (L : LysosomalAcidHydrolasePackage) (E : LysosomalAcidHydrolaseEvidence L) :
    LysosomalAcidHydrolaseClosed L := by
  exact And.intro E.optimalpHClosed (And.intro E.stabilityClosed (And.intro E.activationMechanismClosed E.substrateSpecificityClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse