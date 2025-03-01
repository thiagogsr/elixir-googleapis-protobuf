defmodule Google.Ads.Googleads.V9.Services.GetIncomeRangeViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.IncomeRangeViewService"

  rpc :GetIncomeRangeView,
      Google.Ads.Googleads.V9.Services.GetIncomeRangeViewRequest,
      Google.Ads.Googleads.V9.Resources.IncomeRangeView
end

defmodule Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.IncomeRangeViewService.Service
end
