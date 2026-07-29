import HautevilleHouse.BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  bindingAffinity : Prop
  conformationalChange : Prop
  signalInitiation : Prop
  specificity : Prop

structure ReceptorLigandBindingEvidence (P : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  conformationalChangeClosed : P.conformationalChange
  signalInitiationClosed : P.signalInitiation
  specificityClosed : P.specificity

def ReceptorLigandBindingClosed (P : ReceptorLigandBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.conformationalChange ∧ P.signalInitiation ∧ P.specificity

theorem receptor_ligand_binding_closed_from_evidence (P : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence P) : ReceptorLigandBindingClosed P :=
  And.intro E.bindingAffinityClosed (And.intro E.conformationalChangeClosed (And.intro E.signalInitiationClosed E.specificityClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
