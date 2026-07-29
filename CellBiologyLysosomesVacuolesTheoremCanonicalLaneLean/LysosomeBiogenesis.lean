import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalEnzymePackage where
  enzymeType : Type u
  acidHydrolase : Prop
  targetingSignalPresent : Prop
  golgiExport : Prop
  activeSiteFormation : Prop

structure LysosomalEnzymeEvidence (L : LysosomalEnzymePackage) where
  acidHydrolaseClosed : L.acidHydrolase
  targetingSignalPresentClosed : L.targetingSignalPresent
  golgiExportClosed : L.golgiExport
  activeSiteFormationClosed : L.activeSiteFormation

def LysosomalEnzymeClosed (L : LysosomalEnzymePackage) : Prop :=
  L.acidHydrolase ∧ L.targetingSignalPresent ∧ L.golgiExport ∧ L.activeSiteFormation

theorem lysosomal_enzyme_closed_from_evidence (L : LysosomalEnzymePackage)
    (E : LysosomalEnzymeEvidence L) : LysosomalEnzymeClosed L := by
  exact And.intro E.acidHydrolaseClosed (And.intro E.targetingSignalPresentClosed
    (And.intro E.golgiExportClosed E.activeSiteFormationClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse