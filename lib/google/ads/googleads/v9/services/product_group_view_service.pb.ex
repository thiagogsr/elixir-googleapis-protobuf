defmodule Google.Ads.Googleads.V9.Services.GetProductGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.ProductGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ProductGroupViewService"

  rpc :GetProductGroupView,
      Google.Ads.Googleads.V9.Services.GetProductGroupViewRequest,
      Google.Ads.Googleads.V9.Resources.ProductGroupView
end

defmodule Google.Ads.Googleads.V9.Services.ProductGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.ProductGroupViewService.Service
end
