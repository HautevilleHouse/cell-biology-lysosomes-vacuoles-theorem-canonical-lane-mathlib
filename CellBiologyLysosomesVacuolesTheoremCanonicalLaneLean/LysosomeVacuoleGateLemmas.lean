import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.LysosomeVacuoleBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse