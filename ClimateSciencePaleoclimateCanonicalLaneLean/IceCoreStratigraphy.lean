import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure IceCoreRecord where
  depth : Nat -> Float
  age : Nat -> Float
  delta18O : Nat -> Float
  deltaD : Nat -> Float

def proxyClosure (r : IceCoreRecord) : Prop :=
  r.delta18O 0 > r.delta18O 1

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
