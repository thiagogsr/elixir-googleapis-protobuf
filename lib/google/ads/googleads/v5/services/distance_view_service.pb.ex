defmodule Google.Ads.Googleads.V5.Services.GetDistanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.DistanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.DistanceViewService"

  rpc :GetDistanceView,
      Google.Ads.Googleads.V5.Services.GetDistanceViewRequest,
      Google.Ads.Googleads.V5.Resources.DistanceView
end

defmodule Google.Ads.Googleads.V5.Services.DistanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.DistanceViewService.Service
end
