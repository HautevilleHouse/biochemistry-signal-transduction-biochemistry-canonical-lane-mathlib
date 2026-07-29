import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalTransductionObject where
  receptor : Type
  ligand : Type
  signalCascade : Type
  downstreamEffect : Prop
  endpointReached : Prop
  conclusion : downstreamEffect → endpointReached

def SignalTransductionWitnessClosed (O : SignalTransductionObject) : Prop :=
  O.endpointReached

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
