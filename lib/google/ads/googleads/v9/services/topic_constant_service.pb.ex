defmodule Google.Ads.Googleads.V9.Services.GetTopicConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.TopicConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.TopicConstantService"

  rpc :GetTopicConstant,
      Google.Ads.Googleads.V9.Services.GetTopicConstantRequest,
      Google.Ads.Googleads.V9.Resources.TopicConstant
end

defmodule Google.Ads.Googleads.V9.Services.TopicConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.TopicConstantService.Service
end
