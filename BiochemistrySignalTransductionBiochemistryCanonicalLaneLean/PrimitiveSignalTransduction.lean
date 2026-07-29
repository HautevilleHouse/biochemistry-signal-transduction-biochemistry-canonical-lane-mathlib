import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure PrimitiveLigand where
  molecule : Type
  concentration : Prop
  receptorAffinity : Prop
  bindingRate : Prop
  concentrationTerm : concentration
  receptorAffinityTerm : receptorAffinity
  bindingRateTerm : bindingRate

structure PrimitiveReceptor where
  receptor : Type
  ligandBinding : Prop
  conformationalChange : Prop
  activationState : Prop
  ligandBindingTerm : ligandBinding
  conformationalChangeTerm : conformationalChange
  activationStateTerm : activationState

structure PrimitiveGProtein where
  gProtein : Type
  gdpBound : Prop
  gtpBound : Prop
  activationByReceptor : Prop
  gdpBoundTerm : gdpBound
  gtpBoundTerm : gtpBound
  activationByReceptorTerm : activationByReceptor

structure PrimitiveEffector where
  effector : Type
  activationByGProtein : Prop
  secondMessengerProduction : Prop
  activationByGProteinTerm : activationByGProtein
  secondMessengerProductionTerm : secondMessengerProduction

structure PrimitiveSecondMessenger where
  molecule : Type
  concentration : Prop
  targetAffinity : Prop
  concentrationTerm : concentration
  targetAffinityTerm : targetAffinity

structure PrimitiveKinase where
  kinase : Type
  activationBySecondMessenger : Prop
  phosphorylationTarget : Prop
  activationBySecondMessengerTerm : activationBySecondMessenger
  phosphorylationTargetTerm : phosphorylationTarget

structure PrimitivePhosphatase where
  phosphatase : Type
  dephosphorylationTarget : Prop
  dephosphorylationTargetTerm : dephosphorylationTarget

structure PrimitiveTranscriptionFactor where
  transcriptionFactor : Type
  phosphorylationState : Prop
  nuclearTranslocation : Prop
  geneExpressionRegulation : Prop
  phosphorylationStateTerm : phosphorylationState
  nuclearTranslocationTerm : nuclearTranslocation
  geneExpressionRegulationTerm : geneExpressionRegulation

structure PrimitiveSignalTransductionSystem where
  ligand : PrimitiveLigand
  receptor : PrimitiveReceptor
  gProtein : PrimitiveGProtein
  effector : PrimitiveEffector
  secondMessenger : PrimitiveSecondMessenger
  kinase : PrimitiveKinase
  phosphatase : PrimitivePhosphatase
  transcriptionFactor : PrimitiveTranscriptionFactor
  signalTransductionCompleted : Prop
  ligandReceptorBinding : ligand.receptorAffinity → receptor.ligandBinding
  receptorActivation : receptor.ligandBinding → receptor.conformationalChange
  gProteinActivation : receptor.conformationalChange → gProtein.activationByReceptor
  effectorActivation : gProtein.gtpBound → effector.activationByGProtein
  secondMessengerProduction : effector.secondMessengerProduction → secondMessenger.concentration
  kinaseActivation : secondMessenger.targetAffinity → kinase.activationBySecondMessenger
  transcriptionFactorPhosphorylation : kinase.phosphorylationTarget → transcriptionFactor.phosphorylationState
  geneExpression : transcriptionFactor.nuclearTranslocation → transcriptionFactor.geneExpressionRegulation
  signalTransductionCompletedTerm : signalTransductionCompleted

def PrimitiveSignalTransductionEvidence (S : PrimitiveSignalTransductionSystem) : Prop :=
  S.signalTransductionCompleted

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse