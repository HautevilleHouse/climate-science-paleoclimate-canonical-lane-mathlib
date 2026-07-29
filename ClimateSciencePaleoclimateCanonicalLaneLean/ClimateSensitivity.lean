import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure ClimateSensitivityEstimates where
  equilibrium : Float
  transient : Float
  paleo : Float

def coherentSensitivity (cs : ClimateSensitivityEstimates) : Bool :=
  cs.equilibrium > cs.transient ∧ cs.equilibrium > cs.paleo

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
