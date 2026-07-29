import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure ReceptorBindingPackage where
  ligand : Type u
  receptor : Type v
  bindingAffinity : Prop
  saturationCurve : Prop
  downstreamSignaling : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  saturationCurveClosed : R.saturationCurve
  downstreamSignalingClosed : R.downstreamSignaling

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.saturationCurve ∧ R.downstreamSignaling

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage)
    (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.saturationCurveClosed E.downstreamSignalingClosed)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse