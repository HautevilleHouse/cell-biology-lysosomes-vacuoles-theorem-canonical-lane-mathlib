import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalTransporter {M : Type} where
  carrier : M
  protonPumpActivity : Prop
  chlorideChannelActivity : Prop
  aminoAcidExport : Prop

structure TransporterPackage {M : Type} (T : LysosomalTransporter M) where
  protonGradientEstablished : Prop
  chlorideCounterionPermeable : Prop
  substrateSpecificity : Prop
  pHRegulationFunctional : Prop

structure TransporterEvidence {M : Type} {T : LysosomalTransporter M} (P : TransporterPackage T) where
  protonGradientEstablishedClosed : P.protonGradientEstablished
  chlorideCounterionPermeableClosed : P.chlorideCounterionPermeable
  substrateSpecificityClosed : P.substrateSpecificity
  pHRegulationFunctionalClosed : P.pHRegulationFunctional

def TransporterClosed {M : Type} {T : LysosomalTransporter M} (P : TransporterPackage T) : Prop :=
  P.protonGradientEstablished ∧ P.chlorideCounterionPermeable ∧ P.substrateSpecificity ∧ P.pHRegulationFunctional

theorem transporter_closed_from_evidence {M : Type} {T : LysosomalTransporter M} (P : TransporterPackage T) (E : TransporterEvidence P) : TransporterClosed P := by
  exact And.intro E.protonGradientEstablishedClosed (And.intro E.chlorideCounterionPermeableClosed (And.intro E.substrateSpecificityClosed E.pHRegulationFunctionalClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse