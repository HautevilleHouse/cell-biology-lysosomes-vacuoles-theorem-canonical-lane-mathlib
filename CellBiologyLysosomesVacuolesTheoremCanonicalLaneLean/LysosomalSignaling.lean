import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure mTORC1Activation where
  aminoAcidSensing : Prop
  RagulatorComplex : Prop
  RhebGTPase : Prop
  lysosomalAnchoring : Prop

structure TFEBRegulation (m : mTORC1Activation) where
  mTORC1Activity : Prop
  TFEBPhosphorylation : Prop
  nuclearTranslocation : Prop
  lysosomalGeneExpression : Prop

structure SignalingPackage {m : mTORC1Activation} (T : TFEBRegulation m) where
  nutrientSensingFunctional : m.aminoAcidSensing ∧ m.RagulatorComplex ∧ m.RhebGTPase
  mTORC1ActivityControlled : T.mTORC1Activity
  TFEBRegulationFunctional : T.TFEBPhosphorylation ∧ T.nuclearTranslocation ∧ T.lysosomalGeneExpression

structure SignalingEvidence {m : mTORC1Activation} {T : TFEBRegulation m} (S : SignalingPackage T) where
  nutrientSensingFunctionalClosed : S.nutrientSensingFunctional
  mTORC1ActivityControlledClosed : S.mTORC1ActivityControlled
  TFEBRegulationFunctionalClosed : S.TFEBRegulationFunctional

def SignalingClosed {m : mTORC1Activation} {T : TFEBRegulation m} (S : SignalingPackage T) : Prop :=
  S.nutrientSensingFunctional ∧ S.mTORC1ActivityControlled ∧ S.TFEBRegulationFunctional

theorem signaling_closed_from_evidence {m : mTORC1Activation} {T : TFEBRegulation m} (S : SignalingPackage T) (E : SignalingEvidence S) : SignalingClosed S := by
  exact And.intro E.nutrientSensingFunctionalClosed (And.intro E.mTORC1ActivityControlledClosed E.TFEBRegulationFunctionalClosed)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse