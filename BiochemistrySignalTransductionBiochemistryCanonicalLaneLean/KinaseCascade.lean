import HautevilleHouse.BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.ReceptorLigandBinding

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure KinaseCascadePackage {R : ReceptorLigandBindingPackage} where
  phosphorylationClock : Prop
  amplifcationStep : Prop
  feedbackLoop : Prop
  scaffoldProteinPresent : Prop

structure KinaseCascadeEvidence {R : ReceptorLigandBindingPackage} (K : KinaseCascadePackage R) where
  phosphorylationClockClosed : K.phosphorylationClock
  amplifcationStepClosed : K.amplifcationStep
  feedbackLoopClosed : K.feedbackLoop
  scaffoldProteinPresentClosed : K.scaffoldProteinPresent

def KinaseCascadeClosed {R : ReceptorLigandBindingPackage} (K : KinaseCascadePackage R) : Prop :=
  K.phosphorylationClock ∧ K.amplifcationStep ∧ K.feedbackLoop ∧ K.scaffoldProteinPresent

theorem kinase_cascade_closed_from_evidence {R : ReceptorLigandBindingPackage} (K : KinaseCascadePackage R) (E : KinaseCascadeEvidence K) : KinaseCascadeClosed K :=
  And.intro E.phosphorylationClockClosed (And.intro E.amplifcationStepClosed (And.intro E.feedbackLoopClosed E.scaffoldProteinPresentClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
