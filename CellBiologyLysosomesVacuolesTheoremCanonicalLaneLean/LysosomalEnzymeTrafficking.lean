import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure EnzymePackage where
  hydrolaseSynthesis : Prop
  mannose6PhosphateTagging : Prop
  M6PReceptorBinding : Prop
  clathrinCoatedVesicleFormation : Prop
  endosomalRelease : Prop

structure EnzymeTraffickingPackage (E : EnzymePackage) where
  hydrolaseSynthesisReady : E.hydrolaseSynthesis
  M6PTaggingFunctional : E.mannose6PhosphateTagging
  receptorBindingEffective : E.M6PReceptorBinding
  vesicleFormationOccurs : E.clathrinCoatedVesicleFormation
  releaseInEndosome : E.endosomalRelease

structure EnzymeTraffickingEvidence {E : EnzymePackage} (P : EnzymeTraffickingPackage E) where
  hydrolaseSynthesisReadyClosed : P.hydrolaseSynthesisReady
  M6PTaggingFunctionalClosed : P.M6PTaggingFunctional
  receptorBindingEffectiveClosed : P.receptorBindingEffective
  vesicleFormationOccursClosed : P.vesicleFormationOccurs
  releaseInEndosomeClosed : P.releaseInEndosome

def EnzymeTraffickingClosed {E : EnzymePackage} (P : EnzymeTraffickingPackage E) : Prop :=
  P.hydrolaseSynthesisReady ∧ P.M6PTaggingFunctional ∧ P.receptorBindingEffective ∧ P.vesicleFormationOccurs ∧ P.releaseInEndosome

theorem enzyme_trafficking_closed_from_evidence {E : EnzymePackage} (P : EnzymeTraffickingPackage E) (Ev : EnzymeTraffickingEvidence P) : EnzymeTraffickingClosed P := by
  exact And.intro Ev.hydrolaseSynthesisReadyClosed (And.intro Ev.M6PTaggingFunctionalClosed (And.intro Ev.receptorBindingEffectiveClosed (And.intro Ev.vesicleFormationOccursClosed Ev.releaseInEndosomeClosed)))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse