import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure PaleoclimateProxiesAgeModelPackage where
  proxyType : String
  ageDepthModel : String
  chronologicalControl : Prop
  proxyClimateCalibration : Prop

structure PaleoclimateProxiesAgeModelEvidence (P : PaleoclimateProxiesAgeModelPackage) where
  chronologicalControlClosed : P.chronologicalControl
  proxyClimateCalibrationClosed : P.proxyClimateCalibration

def PaleoclimateProxiesAgeModelClosed (P : PaleoclimateProxiesAgeModelPackage) : Prop :=
  P.chronologicalControl ∧ P.proxyClimateCalibration

theorem paleoclimate_proxies_age_model_closed_from_evidence
    (P : PaleoclimateProxiesAgeModelPackage)
    (E : PaleoclimateProxiesAgeModelEvidence P) :
    PaleoclimateProxiesAgeModelClosed P := by
  exact And.intro E.chronologicalControlClosed E.proxyClimateCalibrationClosed

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse