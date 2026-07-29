import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure EnergyBalanceModelPackage where
  toaRadiation : Float
  albedo : Float
  greenhouseEffect : Float
  heatTransport : Prop
  equilibriumTemperature : Float

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  heatTransportClosed : E.heatTransport

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.heatTransport

theorem energy_balance_model_closed_from_evidence
    (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact Ev.heatTransportClosed

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse