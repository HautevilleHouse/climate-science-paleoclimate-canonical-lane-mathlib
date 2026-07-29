import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure ProxyRecord where
  proxyValue : Float
  age : Float
  proxyType : String

def proxyValid (record : ProxyRecord) : Prop :=
  record.proxyValue > 0 ∧ record.age > 0

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
