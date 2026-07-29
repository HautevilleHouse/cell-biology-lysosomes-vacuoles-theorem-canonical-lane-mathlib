import canonicalLaneMathlib.AdmissibleClass
import CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.BridgeLemmas
import CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

def CellBiologyLysosomesVacuolesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_biology_lysosomes_vacuoles_endgame (A : AdmissibleClass) :
    CellBiologyLysosomesVacuolesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse