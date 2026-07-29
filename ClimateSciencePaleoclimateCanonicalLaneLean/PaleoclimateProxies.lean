import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure PaleoclimateProxiesPackage where
  iceCoreDataAvailable : Prop
  sedimentCoreDataAvailable : Prop
  speleothemDataAvailable : Prop
  treeRingDataAvailable : Prop
  proxyCalibrationValidated : Prop

structure PaleoclimateProxiesEvidence (P : PaleoclimateProxiesPackage) where
  iceCoreDataAvailableClosed : P.iceCoreDataAvailable
  sedimentCoreDataAvailableClosed : P.sedimentCoreDataAvailable
  speleothemDataAvailableClosed : P.speleothemDataAvailable
  treeRingDataAvailableClosed : P.treeRingDataAvailable
  proxyCalibrationValidatedClosed : P.proxyCalibrationValidated

def PaleoclimateProxiesClosed (P : PaleoclimateProxiesPackage) : Prop :=
  P.iceCoreDataAvailable ∧ P.sedimentCoreDataAvailable ∧ P.speleothemDataAvailable ∧
  P.treeRingDataAvailable ∧ P.proxyCalibrationValidated

theorem paleoclimate_proxies_closed_from_evidence
    (P : PaleoclimateProxiesPackage) (E : PaleoclimateProxiesEvidence P) :
    PaleoclimateProxiesClosed P := by
  exact And.intro E.iceCoreDataAvailableClosed
    (And.intro E.sedimentCoreDataAvailableClosed
      (And.intro E.speleothemDataAvailableClosed
        (And.intro E.treeRingDataAvailableClosed E.proxyCalibrationValidatedClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse