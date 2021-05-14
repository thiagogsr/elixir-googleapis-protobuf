defmodule Google.Ads.Googleads.V5.Services.GetCampaignCriterionSimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.CampaignCriterionSimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.CampaignCriterionSimulationService"

  rpc :GetCampaignCriterionSimulation,
      Google.Ads.Googleads.V5.Services.GetCampaignCriterionSimulationRequest,
      Google.Ads.Googleads.V5.Resources.CampaignCriterionSimulation
end

defmodule Google.Ads.Googleads.V5.Services.CampaignCriterionSimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V5.Services.CampaignCriterionSimulationService.Service
end
