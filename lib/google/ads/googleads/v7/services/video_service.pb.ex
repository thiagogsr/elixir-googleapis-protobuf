defmodule Google.Ads.Googleads.V7.Services.GetVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.VideoService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.VideoService"

  rpc :GetVideo,
      Google.Ads.Googleads.V7.Services.GetVideoRequest,
      Google.Ads.Googleads.V7.Resources.Video
end

defmodule Google.Ads.Googleads.V7.Services.VideoService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.VideoService.Service
end
