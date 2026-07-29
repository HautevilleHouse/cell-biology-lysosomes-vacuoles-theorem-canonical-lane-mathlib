import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.LysosomeBiogenesisPackage
import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.VacuoleAcidificationPackage
import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.AutophagicFluxPackage
import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.LysosomalMembraneTraffickingPackage
import HautevilleHouse.CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.VacuoleSignalingPackage

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomeVacuoleAdmittedObject where
  biogenesis : LysosomeBiogenesisPackage
  acidification : VacuoleAcidificationPackage
  autophagicFlux : AutophagicFluxPackage
  membraneTrafficking : LysosomalMembraneTraffickingPackage
  signaling : VacuoleSignalingPackage
  conclusion : Prop

structure AdmissibleClass where
  object : LysosomeVacuoleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse