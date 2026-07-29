import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure PaleoclimateAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  climateModel : Prop
  paleoclimateRecord : Prop
  conclusion : climateModel ∧ paleoclimateRecord

def PaleoclimateWitnessClosed (O : PaleoclimateAdmittedObject) : Prop :=
  O.climateModel ∧ O.paleoclimateRecord

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
