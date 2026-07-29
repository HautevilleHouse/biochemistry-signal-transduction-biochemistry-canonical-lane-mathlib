import HautevilleHouse.BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.KinaseCascade

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SecondMessengerSignalingPackage {R : ReceptorLigandBindingPackage} {K : KinaseCascadePackage R} where
  campProduction : Prop
  calciumRelease : Prop
  dagPathway : Prop
  duration : Prop

structure SecondMessengerSignalingEvidence {R : ReceptorLigandBindingPackage} {K : KinaseCascadePackage R} (S : SecondMessengerSignalingPackage R K) where
  campProductionClosed : S.campProduction
  calciumReleaseClosed : S.calciumRelease
  dagPathwayClosed : S.dagPathway
  durationClosed : S.duration

def SecondMessengerSignalingClosed {R : ReceptorLigandBindingPackage} {K : KinaseCascadePackage R} (S : SecondMessengerSignalingPackage R K) : Prop :=
  S.campProduction ∧ S.calciumRelease ∧ S.dagPathway ∧ S.duration

theorem second_messenger_signaling_closed_from_evidence {R : ReceptorLigandBindingPackage} {K : KinaseCascadePackage R} (S : SecondMessengerSignalingPackage R K) (E : SecondMessengerSignalingEvidence S) : SecondMessengerSignalingClosed S :=
  And.intro E.campProductionClosed (And.intro E.calciumReleaseClosed (And.intro E.dagPathwayClosed E.durationClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
