import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalTransductionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SignalTransductionAdmittedObject where
  space : SignalTransductionSpace
  pathwayModelClosed : Prop
  receptorStateModeled : Prop
  downstreamEffectPredicted : Prop
  conclusion : pathwayModelClosed → receptorStateModeled → downstreamEffectPredicted → Prop

structure SignalTransductionEndgameState where
  object : SignalTransductionAdmittedObject

def SignalTransductionWitnessClosed (O : SignalTransductionAdmittedObject) : Prop :=
  O.pathwayModelClosed ∧ O.receptorStateModeled ∧ O.downstreamEffectPredicted

structure AdmissibleClass where
  object : SignalTransductionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SignalTransductionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse