import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure AutophagicFluxPackage where
  phagophoreFormation : Prop
  lc3Lipidation : Prop
  cargoRecognition : Prop
  autophagosomeCompletion : Prop
  lysosomeFusion : Prop
  degradation : Prop

structure AutophagicFluxEvidence (F : AutophagicFluxPackage) where
  phagophoreFormationClosed : F.phagophoreFormation
  lc3LipidationClosed : F.lc3Lipidation
  cargoRecognitionClosed : F.cargoRecognition
  autophagosomeCompletionClosed : F.autophagosomeCompletion
  lysosomeFusionClosed : F.lysosomeFusion
  degradationClosed : F.degradation

def AutophagicFluxClosed (F : AutophagicFluxPackage) : Prop :=
  F.phagophoreFormation ∧ F.lc3Lipidation ∧ F.cargoRecognition ∧
  F.autophagosomeCompletion ∧ F.lysosomeFusion ∧ F.degradation

theorem autophagic_flux_closed_from_evidence (F : AutophagicFluxPackage)
    (E : AutophagicFluxEvidence F) : AutophagicFluxClosed F := by
  exact And.intro E.phagophoreFormationClosed
    (And.intro E.lc3LipidationClosed
      (And.intro E.cargoRecognitionClosed
        (And.intro E.autophagosomeCompletionClosed
          (And.intro E.lysosomeFusionClosed E.degradationClosed))))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse