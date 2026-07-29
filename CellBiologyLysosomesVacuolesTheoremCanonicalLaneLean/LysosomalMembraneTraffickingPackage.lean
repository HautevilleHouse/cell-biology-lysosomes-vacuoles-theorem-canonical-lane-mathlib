import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure LysosomalMembraneTraffickingPackage where
  retromerSorting : Prop
  lysosomalHydrolaseTransport : Prop
  lateEndosomeMaturation : Prop
  lysosomeReformation : Prop
  membraneContactSites : Prop

structure LysosomalMembraneTraffickingEvidence (T : LysosomalMembraneTraffickingPackage) where
  retromerSortingClosed : T.retromerSorting
  lysosomalHydrolaseTransportClosed : T.lysosomalHydrolaseTransport
  lateEndosomeMaturationClosed : T.lateEndosomeMaturation
  lysosomeReformationClosed : T.lysosomeReformation
  membraneContactSitesClosed : T.membraneContactSites

def LysosomalMembraneTraffickingClosed (T : LysosomalMembraneTraffickingPackage) : Prop :=
  T.retromerSorting ∧ T.lysosomalHydrolaseTransport ∧ T.lateEndosomeMaturation ∧
  T.lysosomeReformation ∧ T.membraneContactSites

theorem lysosomal_membrane_trafficking_closed_from_evidence
    (T : LysosomalMembraneTraffickingPackage)
    (E : LysosomalMembraneTraffickingEvidence T) : LysosomalMembraneTraffickingClosed T := by
  exact And.intro E.retromerSortingClosed
    (And.intro E.lysosomalHydrolaseTransportClosed
      (And.intro E.lateEndosomeMaturationClosed
        (And.intro E.lysosomeReformationClosed E.membraneContactSitesClosed)))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse