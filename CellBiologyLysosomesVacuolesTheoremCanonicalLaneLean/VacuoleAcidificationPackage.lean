import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure VacuoleAcidificationPackage where
  vAtpaseActivity : Prop
  protonLeak : Prop
  membranePotential : Prop
  lumenalpH : Prop
  vAtpaseAssembly : Prop

structure VacuoleAcidificationEvidence (A : VacuoleAcidificationPackage) where
  vAtpaseActivityClosed : A.vAtpaseActivity
  protonLeakClosed : A.protonLeak
  membranePotentialClosed : A.membranePotential
  lumenalpHClosed : A.lumenalpH
  vAtpaseAssemblyClosed : A.vAtpaseAssembly

def VacuoleAcidificationClosed (A : VacuoleAcidificationPackage) : Prop :=
  A.vAtpaseActivity ∧ A.protonLeak ∧ A.membranePotential ∧
  A.lumenalpH ∧ A.vAtpaseAssembly

theorem vacuole_acidification_closed_from_evidence (A : VacuoleAcidificationPackage)
    (E : VacuoleAcidificationEvidence A) : VacuoleAcidificationClosed A := by
  exact And.intro E.vAtpaseActivityClosed
    (And.intro E.protonLeakClosed
      (And.intro E.membranePotentialClosed
        (And.intro E.lumenalpHClosed E.vAtpaseAssemblyClosed)))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse