import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VacuoleFunctionClosed (VacuoleFunctionPackage.mk A.endpointSatisfied A.remainderRecorded True True)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  apply vacuole_function_closed_from_evidence
  exact { acidificationMaintainedClosed := by
          exact A.endpointSatisfied
         hydrolyticEnzymeActiveClosed := by
          exact A.remainderRecorded
         substrateDegradationClosed := by
          trivial
         autophagyProgressionClosed := by
          trivial }

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse
