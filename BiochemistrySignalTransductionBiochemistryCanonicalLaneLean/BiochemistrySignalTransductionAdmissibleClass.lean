import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalTransductionNetwork where
  receptorStatus : Prop
  cascadeActivation : Prop
  transcriptionFactor : Prop
  signalingEndpoint : Prop

structure BiochemistryAdmittedObject where
  network : SignalTransductionNetwork
  correctReceptorBinding : network.receptorStatus
  cascadeCorrect : network.cascadeActivation
  transcriptionActive : network.transcriptionFactor
  signalingEndpointReached : network.signalingEndpoint
  conclusion : signalingEndpointReached

structure AdmissibleClass where
  object : BiochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.signalingEndpointReached

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse