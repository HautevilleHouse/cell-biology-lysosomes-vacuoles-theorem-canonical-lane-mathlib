import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure StorageDiseasePackage where
  enzymeDeficiency : Prop
  substrateAccumulation : Prop
  cellularDysfunction : Prop
  diseaseManifestation : Prop

structure StorageDiseaseEvidence (S : StorageDiseasePackage) where
  enzymeDeficiencyClosed : S.enzymeDeficiency
  substrateAccumulationClosed : S.substrateAccumulation
  cellularDysfunctionClosed : S.cellularDysfunction
  diseaseManifestationClosed : S.diseaseManifestation

def StorageDiseaseClosed (S : StorageDiseasePackage) : Prop :=
  S.enzymeDeficiency ∧ S.substrateAccumulation ∧ S.cellularDysfunction ∧ S.diseaseManifestation

theorem storage_disease_closed_from_evidence (S : StorageDiseasePackage)
    (E : StorageDiseaseEvidence S) : StorageDiseaseClosed S := by
  exact And.intro E.enzymeDeficiencyClosed (And.intro E.substrateAccumulationClosed
    (And.intro E.cellularDysfunctionClosed E.diseaseManifestationClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse