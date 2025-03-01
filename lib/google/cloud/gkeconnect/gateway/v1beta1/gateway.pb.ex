defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gkeconnect.gateway.v1beta1.GatewayService"

  rpc :GetResource, Google.Api.HttpBody, Google.Api.HttpBody

  rpc :PostResource, Google.Api.HttpBody, Google.Api.HttpBody

  rpc :DeleteResource, Google.Api.HttpBody, Google.Api.HttpBody

  rpc :PutResource, Google.Api.HttpBody, Google.Api.HttpBody

  rpc :PatchResource, Google.Api.HttpBody, Google.Api.HttpBody
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkeconnect.Gateway.V1beta1.GatewayService.Service
end
