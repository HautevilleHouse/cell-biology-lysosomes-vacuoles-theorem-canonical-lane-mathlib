import canonicalLaneMathlib.AdmissibleClass
import CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.LysosomeVacuoleAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

def ConstrainedLysosomeVacuoleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lysosome_vacuole_endgame (A : AdmissibleClass) :
    ConstrainedLysosomeVacuoleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse