defmodule Google.Cloud.Aiplatform.V1beta1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          instances: [Google.Protobuf.Value.t()],
          parameters: Google.Protobuf.Value.t() | nil
        }

  defstruct endpoint: "",
            instances: [],
            parameters: nil

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 3, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Aiplatform.V1beta1.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predictions: [Google.Protobuf.Value.t()],
          deployed_model_id: String.t(),
          model: String.t(),
          model_version_id: String.t(),
          model_display_name: String.t()
        }

  defstruct predictions: [],
            deployed_model_id: "",
            model: "",
            model_version_id: "",
            model_display_name: ""

  field :predictions, 1, repeated: true, type: Google.Protobuf.Value
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :model, 3, type: :string, deprecated: false
  field :model_version_id, 5, type: :string, json_name: "modelVersionId", deprecated: false
  field :model_display_name, 4, type: :string, json_name: "modelDisplayName", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.RawPredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          http_body: Google.Api.HttpBody.t() | nil
        }

  defstruct endpoint: "",
            http_body: nil

  field :endpoint, 1, type: :string, deprecated: false
  field :http_body, 2, type: Google.Api.HttpBody, json_name: "httpBody"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          instances: [Google.Protobuf.Value.t()],
          parameters: Google.Protobuf.Value.t() | nil,
          explanation_spec_override:
            Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride.t() | nil,
          deployed_model_id: String.t()
        }

  defstruct endpoint: "",
            instances: [],
            parameters: nil,
            explanation_spec_override: nil,
            deployed_model_id: ""

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 4, type: Google.Protobuf.Value

  field :explanation_spec_override, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride,
    json_name: "explanationSpecOverride"

  field :deployed_model_id, 3, type: :string, json_name: "deployedModelId"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ExplainResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanations: [Google.Cloud.Aiplatform.V1beta1.Explanation.t()],
          deployed_model_id: String.t(),
          predictions: [Google.Protobuf.Value.t()]
        }

  defstruct explanations: [],
            deployed_model_id: "",
            predictions: []

  field :explanations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Explanation
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :predictions, 3, repeated: true, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Aiplatform.V1beta1.PredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.PredictionService"

  rpc :Predict,
      Google.Cloud.Aiplatform.V1beta1.PredictRequest,
      Google.Cloud.Aiplatform.V1beta1.PredictResponse

  rpc :RawPredict, Google.Cloud.Aiplatform.V1beta1.RawPredictRequest, Google.Api.HttpBody

  rpc :Explain,
      Google.Cloud.Aiplatform.V1beta1.ExplainRequest,
      Google.Cloud.Aiplatform.V1beta1.ExplainResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.PredictionService.Service
end
