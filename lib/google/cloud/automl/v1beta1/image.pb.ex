defmodule Google.Cloud.Automl.V1beta1.ImageClassificationDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classification_type: Google.Cloud.Automl.V1beta1.ClassificationType.t()
        }

  defstruct classification_type: :CLASSIFICATION_TYPE_UNSPECIFIED

  field :classification_type, 1,
    type: Google.Cloud.Automl.V1beta1.ClassificationType,
    json_name: "classificationType",
    enum: true
end
defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.ImageClassificationModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_model_id: String.t(),
          train_budget: integer,
          train_cost: integer,
          stop_reason: String.t(),
          model_type: String.t(),
          node_qps: float | :infinity | :negative_infinity | :nan,
          node_count: integer
        }

  defstruct base_model_id: "",
            train_budget: 0,
            train_cost: 0,
            stop_reason: "",
            model_type: "",
            node_qps: 0.0,
            node_count: 0

  field :base_model_id, 1, type: :string, json_name: "baseModelId"
  field :train_budget, 2, type: :int64, json_name: "trainBudget"
  field :train_cost, 3, type: :int64, json_name: "trainCost"
  field :stop_reason, 5, type: :string, json_name: "stopReason"
  field :model_type, 7, type: :string, json_name: "modelType"
  field :node_qps, 13, type: :double, json_name: "nodeQps"
  field :node_count, 14, type: :int64, json_name: "nodeCount"
end
defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type: String.t(),
          node_count: integer,
          node_qps: float | :infinity | :negative_infinity | :nan,
          stop_reason: String.t(),
          train_budget_milli_node_hours: integer,
          train_cost_milli_node_hours: integer
        }

  defstruct model_type: "",
            node_count: 0,
            node_qps: 0.0,
            stop_reason: "",
            train_budget_milli_node_hours: 0,
            train_cost_milli_node_hours: 0

  field :model_type, 1, type: :string, json_name: "modelType"
  field :node_count, 3, type: :int64, json_name: "nodeCount"
  field :node_qps, 4, type: :double, json_name: "nodeQps"
  field :stop_reason, 5, type: :string, json_name: "stopReason"
  field :train_budget_milli_node_hours, 6, type: :int64, json_name: "trainBudgetMilliNodeHours"
  field :train_cost_milli_node_hours, 7, type: :int64, json_name: "trainCostMilliNodeHours"
end
defmodule Google.Cloud.Automl.V1beta1.ImageClassificationModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct node_count: 0

  field :node_count, 1, type: :int64, json_name: "nodeCount"
end
defmodule Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct node_count: 0

  field :node_count, 1, type: :int64, json_name: "nodeCount"
end
