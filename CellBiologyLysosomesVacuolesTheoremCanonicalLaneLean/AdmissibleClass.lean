import CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LysosomeVacuoleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LysosomeVacuoleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse