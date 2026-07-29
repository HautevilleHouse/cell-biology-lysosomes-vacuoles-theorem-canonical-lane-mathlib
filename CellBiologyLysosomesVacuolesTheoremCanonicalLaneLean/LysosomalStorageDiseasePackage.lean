import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalStorageDiseasePackage where
  diseaseName : String
  enzymeDeficiency : Prop
  substrateAccumulation : Prop
  cellularPathology : Prop
  clinicalManifestations : Prop

structure LysosomalStorageDiseaseEvidence (D : LysosomalStorageDiseasePackage) where
  enzymeDeficiencyClosed : D.enzymeDeficiency
  substrateAccumulationClosed : D.substrateAccumulation
  cellularPathologyClosed : D.cellularPathology
  clinicalManifestationsClosed : D.clinicalManifestations

def LysosomalStorageDiseaseClosed (D : LysosomalStorageDiseasePackage) : Prop :=
  D.enzymeDeficiency ∧ D.substrateAccumulation ∧ D.cellularPathology ∧ D.clinicalManifestations

theorem lysosomal_storage_disease_closed_from_evidence (D : LysosomalStorageDiseasePackage) (E : LysosomalStorageDiseaseEvidence D) :
    LysosomalStorageDiseaseClosed D := by
  exact And.intro E.enzymeDeficiencyClosed (And.intro E.substrateAccumulationClosed (And.intro E.cellularPathologyClosed E.clinicalManifestationsClosed))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse