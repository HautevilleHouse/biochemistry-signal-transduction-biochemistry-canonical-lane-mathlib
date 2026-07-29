import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalCascadePackage where
  ligandReceptorBinding : Prop
  conformationalChange : Prop
  kinaseActivation : Prop
  phosphataseRegulation : Prop
  secondMessengerProduction : Prop

structure SignalCascadeEvidence (C : SignalCascadePackage) where
  ligandReceptorBindingClosed : C.ligandReceptorBinding
  conformationalChangeClosed : C.conformationalChange
  kinaseActivationClosed : C.kinaseActivation
  phosphataseRegulationClosed : C.phosphataseRegulation
  secondMessengerProductionClosed : C.secondMessengerProduction

def SignalCascadeClosed (C : SignalCascadePackage) : Prop :=
  C.ligandReceptorBinding ∧ C.conformationalChange ∧
  C.kinaseActivation ∧ C.phosphataseRegulation ∧
  C.secondMessengerProduction

theorem signal_cascade_closed_from_evidence (C : SignalCascadePackage)
    (E : SignalCascadeEvidence C) : SignalCascadeClosed C := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.kinaseActivationClosed
        (And.intro E.phosphataseRegulationClosed
          E.secondMessengerProductionClosed)))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse