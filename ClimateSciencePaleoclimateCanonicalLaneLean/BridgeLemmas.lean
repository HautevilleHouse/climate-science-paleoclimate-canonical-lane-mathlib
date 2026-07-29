import canonicalLaneMathlib.AdmissibleClass
import ClimateSciencePaleoclimateCanonicalLaneLean.PaleoclimateObjects

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PaleoclimateWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
