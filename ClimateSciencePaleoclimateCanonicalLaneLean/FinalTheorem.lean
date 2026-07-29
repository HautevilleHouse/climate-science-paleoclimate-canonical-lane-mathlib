import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

def ConstrainedPaleoclimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_paleoclimate_endgame (A : AdmissibleClass) :
    ConstrainedPaleoclimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse