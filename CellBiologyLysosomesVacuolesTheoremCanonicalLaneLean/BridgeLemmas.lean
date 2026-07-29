import CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LysosomeVacuoleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse