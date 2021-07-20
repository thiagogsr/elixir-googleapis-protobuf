defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Code.t(),
          message: String.t()
        }

  defstruct [:status, :message]

  field :status, 1, type: Google.Rpc.Code, enum: true
  field :message, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {atom, any},
          prediction: Google.Protobuf.Value.t() | nil,
          error: Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error.t() | nil
        }

  defstruct [:input, :prediction, :error]

  oneof :input, 0
  field :instance, 1, type: Google.Protobuf.Struct, oneof: 0
  field :key, 2, type: :string, oneof: 0
  field :prediction, 3, type: Google.Protobuf.Value
  field :error, 4, type: Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error
end