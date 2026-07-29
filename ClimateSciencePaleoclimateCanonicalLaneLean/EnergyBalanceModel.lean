import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure EnergyBalanceModelPackage where
  incomingSolarRadiation : Prop
  albedoFeedback : Prop
  greenhouseEffect : Prop
  radiativeEquilibrium : Prop
  iceAlbedoNonlinearity : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  incomingSolarRadiationClosed : E.incomingSolarRadiation
  albedoFeedbackClosed : E.albedoFeedback
  greenhouseEffectClosed : E.greenhouseEffect
  radiativeEquilibriumClosed : E.radiativeEquilibrium
  iceAlbedoNonlinearityClosed : E.iceAlbedoNonlinearity

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.incomingSolarRadiation ∧ E.albedoFeedback ∧ E.greenhouseEffect ∧
  E.radiativeEquilibrium ∧ E.iceAlbedoNonlinearity

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.incomingSolarRadiationClosed
    (And.intro Ev.albedoFeedbackClosed
      (And.intro Ev.greenhouseEffectClosed
        (And.intro Ev.radiativeEquilibriumClosed Ev.iceAlbedoNonlinearityClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse