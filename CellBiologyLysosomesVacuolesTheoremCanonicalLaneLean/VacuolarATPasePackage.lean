import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure VacuolarATPasePackage where
  protonPumpActivity : Prop
  membraneDomain : String
  pHGradientEstablished : Prop
  energySource : Prop

structure VacuolarATPaseEvidence (V : VacuolarATPasePackage) where
  protonPumpActivityClosed : V.protonPumpActivity
  pHGradientEstablishedClosed : V.pHGradientEstablished
  energySourceClosed : V.energySource

def VacuolarATPaseClosed (V : VacuolarATPasePackage) : Prop :=
  V.protonPumpActivity ∧ V.pHGradientEstablished ∧ V.energySource

theorem vacuolar_atpase_closed_from_evidence (V : VacuolarATPasePackage) (E : VacuolarATPaseEvidence V) :
    VacuolarATPaseClosed V := by
  exact And.intro E.protonPumpActivityClosed (And.intro E.pHGradientEstablishedClosed E.energySourceClosed)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse