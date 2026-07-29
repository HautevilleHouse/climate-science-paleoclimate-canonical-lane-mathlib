import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure AdmissibleClass where
  object : PaleoclimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PaleoclimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
