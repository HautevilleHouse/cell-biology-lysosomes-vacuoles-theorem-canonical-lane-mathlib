import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalMembraneTransportPackage where
  membraneProteins : Type
  transporterTypes : List String
  cargoImport : Prop
  cargoExport : Prop
  ionHomeostasis : Prop

structure LysosomalMembraneTransportEvidence (T : LysosomalMembraneTransportPackage) where
  cargoImportClosed : T.cargoImport
  cargoExportClosed : T.cargoExport
  ionHomeostasisClosed : T.ionHomeostasis

def LysosomalMembraneTransportClosed (T : LysosomalMembraneTransportPackage) : Prop :=
  T.cargoImport ∧ T.cargoExport ∧ T.ionHomeostasis

theorem lysosomal_membrane_transport_closed_from_evidence (T : LysosomalMembraneTransportPackage) (E : LysosomalMembraneTransportEvidence T) :
    LysosomalMembraneTransportClosed T := by
  exact And.intro E.cargoImportClosed (And.intro E.cargoExportClosed E.ionHomeostasisClosed)

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse