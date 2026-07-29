import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure ProtonPumpPackage where
  vATPase : Prop
  pHGradient : Prop
  chlorideChannel : Prop
  membranePotential : Prop

structure ProtonPumpEvidence (P : ProtonPumpPackage) where
  vATPaseClosed : P.vATPase
  pHGradientClosed : P.pHGradient
  chlorideChannelClosed : P.chlorideChannel
  membranePotentialClosed : P.membranePotential

def ProtonPumpClosed (P : ProtonPumpPackage) : Prop :=
  P.vATPase ∧ P.pHGradient ∧ P.chlorideChannel ∧ P.membranePotential

theorem proton_pump_closed_from_evidence (P : ProtonPumpPackage)
    (E : ProtonPumpEvidence P) : ProtonPumpClosed P := by
  exact And.intro E.vATPaseClosed (And.intro E.pHGradientClosed
    (And.intro E.chlorideChannelClosed E.membranePotentialClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse