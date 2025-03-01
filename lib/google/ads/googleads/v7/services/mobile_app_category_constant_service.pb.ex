defmodule Google.Ads.Googleads.V7.Services.GetMobileAppCategoryConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MobileAppCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.MobileAppCategoryConstantService"

  rpc :GetMobileAppCategoryConstant,
      Google.Ads.Googleads.V7.Services.GetMobileAppCategoryConstantRequest,
      Google.Ads.Googleads.V7.Resources.MobileAppCategoryConstant
end

defmodule Google.Ads.Googleads.V7.Services.MobileAppCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.MobileAppCategoryConstantService.Service
end
