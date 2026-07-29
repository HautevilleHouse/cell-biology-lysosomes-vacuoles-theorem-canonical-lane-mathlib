import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean

structure MembraneContactSite where
  tetheringComplex : Prop
  lipidTransfer : Prop
  calciumExchange : Prop
  cholesterolEgress : Prop

structure ERContactSite (M : MembraneContactSite) where
  VAPProtein : Prop
  ORP1L : Prop
  STARD3 : Prop
  contactAreaStability : Prop

structure ContactSitePackage {M : MembraneContactSite} (E : ERContactSite M) where
  tetheringEstablished : M.tetheringComplex
  lipidTransferFunctional : M.lipidTransfer
  calciumExchangeFunctional : M.calciumExchange
  cholesterolEgressFunctional : M.cholesterolEgress
  contactStable : E.contactAreaStability

structure ContactSiteEvidence {M : MembraneContactSite} {E : ERContactSite M} (C : ContactSitePackage E) where
  tetheringEstablishedClosed : C.tetheringEstablished
  lipidTransferFunctionalClosed : C.lipidTransferFunctional
  calciumExchangeFunctionalClosed : C.calciumExchangeFunctional
  cholesterolEgressFunctionalClosed : C.cholesterolEgressFunctional
  contactStableClosed : C.contactStable

def ContactSiteClosed {M : MembraneContactSite} {E : ERContactSite M} (C : ContactSitePackage E) : Prop :=
  C.tetheringEstablished ∧ C.lipidTransferFunctional ∧ C.calciumExchangeFunctional ∧ C.cholesterolEgressFunctional ∧ C.contactStable

theorem contact_site_closed_from_evidence {M : MembraneContactSite} {E : ERContactSite M} (C : ContactSitePackage E) (Ev : ContactSiteEvidence C) : ContactSiteClosed C := by
  exact And.intro Ev.tetheringEstablishedClosed (And.intro Ev.lipidTransferFunctionalClosed (And.intro Ev.calciumExchangeFunctionalClosed (And.intro Ev.cholesterolEgressFunctionalClosed Ev.contactStableClosed)))

end CellBiologyLysosomesVacuolesTheoremCanonicalLaneLean
end HautevilleHouse