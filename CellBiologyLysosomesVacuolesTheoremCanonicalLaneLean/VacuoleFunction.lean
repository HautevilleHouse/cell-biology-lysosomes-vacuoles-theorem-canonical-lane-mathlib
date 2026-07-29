import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure VacuolePackage where
  storageRole : Prop
  turgorPressure : Prop
  ionHomeostasis : Prop
  detoxification : Prop

structure VacuoleEvidence (V : VacuolePackage) where
  storageRoleClosed : V.storageRole
  turgorPressureClosed : V.turgorPressure
  ionHomeostasisClosed : V.ionHomeostasis
  detoxificationClosed : V.detoxification

def VacuoleClosed (V : VacuolePackage) : Prop :=
  V.storageRole ∧ V.turgorPressure ∧ V.ionHomeostasis ∧ V.detoxification

theorem vacuole_closed_from_evidence (V : VacuolePackage)
    (E : VacuoleEvidence V) : VacuoleClosed V := by
  exact And.intro E.storageRoleClosed (And.intro E.turgorPressureClosed
    (And.intro E.ionHomeostasisClosed E.detoxificationClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse