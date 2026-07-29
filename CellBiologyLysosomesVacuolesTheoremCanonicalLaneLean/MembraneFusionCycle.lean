import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure MembraneFusionCycle where
  vesicleDocking : Prop
  snareAssembly : Prop
  lipidMixing : Prop
  fusionPoreOpening : Prop
  contentMixing : Prop
  vesicleDockingClosed : vesicleDocking
  snareAssemblyClosed : snareAssembly
  lipidMixingClosed : lipidMixing
  fusionPoreOpeningClosed : fusionPoreOpening
  contentMixingClosed : contentMixing

structure MembraneFusionCycleEvidence (C : MembraneFusionCycle) where
  dockingClosed : C.vesicleDocking
  snareClosed : C.snareAssembly
  lipidClosed : C.lipidMixing
  poreClosed : C.fusionPoreOpening
  mixingClosed : C.contentMixing

def MembraneFusionCycleClosed (C : MembraneFusionCycle) : Prop :=
  C.vesicleDocking ∧ C.snareAssembly ∧ C.lipidMixing ∧ C.fusionPoreOpening ∧ C.contentMixing

theorem membrane_fusion_cycle_closed_from_evidence
    (C : MembraneFusionCycle) (E : MembraneFusionCycleEvidence C) :
    MembraneFusionCycleClosed C := by
  exact And.intro (E.dockingClosed) (And.intro (E.snareClosed) (And.intro (E.lipidClosed) (And.intro (E.poreClosed) (E.mixingClosed))))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse