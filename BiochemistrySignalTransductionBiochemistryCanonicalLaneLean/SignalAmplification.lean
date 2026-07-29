import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.KinaseCascade

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalAmplificationPackage {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} where
  gain : Prop
  saturationThreshold : Prop
  signalToNoise : Prop

structure SignalAmplificationEvidence {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} (S : SignalAmplificationPackage K) where
  gainClosed : S.gain
  saturationThresholdClosed : S.saturationThreshold
  signalToNoiseClosed : S.signalToNoise

def SignalAmplificationClosed {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} (S : SignalAmplificationPackage K) : Prop :=
  S.gain ∧ S.saturationThreshold ∧ S.signalToNoise

theorem signal_amplification_closed_from_evidence {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} (S : SignalAmplificationPackage K)
    (E : SignalAmplificationEvidence S) : SignalAmplificationClosed S := by
  exact And.intro E.gainClosed
    (And.intro E.saturationThresholdClosed E.signalToNoiseClosed)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse