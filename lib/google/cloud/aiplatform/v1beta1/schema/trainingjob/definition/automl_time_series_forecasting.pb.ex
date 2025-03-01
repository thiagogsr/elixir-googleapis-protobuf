defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecasting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.t()
            | nil,
          metadata:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata.t()
            | nil
        }

  defstruct inputs: nil,
            metadata: nil

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct column_name: ""

  field :column_name, 1, type: :string, json_name: "columnName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct column_name: ""

  field :column_name, 1, type: :string, json_name: "columnName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct column_name: ""

  field :column_name, 1, type: :string, json_name: "columnName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          time_format: String.t()
        }

  defstruct column_name: "",
            time_format: ""

  field :column_name, 1, type: :string, json_name: "columnName"
  field :time_format, 2, type: :string, json_name: "timeFormat"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct column_name: ""

  field :column_name, 1, type: :string, json_name: "columnName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation_detail:
            {:auto,
             Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation.t()
             | nil}
            | {:numeric,
               Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation.t()
               | nil}
            | {:categorical,
               Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation.t()
               | nil}
            | {:timestamp,
               Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation.t()
               | nil}
            | {:text,
               Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation.t()
               | nil}
        }

  defstruct transformation_detail: nil

  oneof :transformation_detail, 0

  field :auto, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation,
    oneof: 0

  field :numeric, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation,
    oneof: 0

  field :categorical, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation,
    oneof: 0

  field :timestamp, 4,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation,
    oneof: 0

  field :text, 5,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation,
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unit: String.t(),
          quantity: integer
        }

  defstruct unit: "",
            quantity: 0

  field :unit, 1, type: :string
  field :quantity, 2, type: :int64
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_column: String.t(),
          time_series_identifier_column: String.t(),
          time_column: String.t(),
          transformations: [
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.t()
          ],
          optimization_objective: String.t(),
          train_budget_milli_node_hours: integer,
          weight_column: String.t(),
          time_series_attribute_columns: [String.t()],
          unavailable_at_forecast_columns: [String.t()],
          available_at_forecast_columns: [String.t()],
          data_granularity:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity.t()
            | nil,
          forecast_horizon: integer,
          context_window: integer,
          export_evaluated_data_items_config:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig.t()
            | nil,
          quantiles: [float | :infinity | :negative_infinity | :nan],
          validation_options: String.t(),
          additional_experiments: [String.t()]
        }

  defstruct target_column: "",
            time_series_identifier_column: "",
            time_column: "",
            transformations: [],
            optimization_objective: "",
            train_budget_milli_node_hours: 0,
            weight_column: "",
            time_series_attribute_columns: [],
            unavailable_at_forecast_columns: [],
            available_at_forecast_columns: [],
            data_granularity: nil,
            forecast_horizon: 0,
            context_window: 0,
            export_evaluated_data_items_config: nil,
            quantiles: [],
            validation_options: "",
            additional_experiments: []

  field :target_column, 1, type: :string, json_name: "targetColumn"
  field :time_series_identifier_column, 2, type: :string, json_name: "timeSeriesIdentifierColumn"
  field :time_column, 3, type: :string, json_name: "timeColumn"

  field :transformations, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation

  field :optimization_objective, 5, type: :string, json_name: "optimizationObjective"
  field :train_budget_milli_node_hours, 6, type: :int64, json_name: "trainBudgetMilliNodeHours"
  field :weight_column, 7, type: :string, json_name: "weightColumn"

  field :time_series_attribute_columns, 19,
    repeated: true,
    type: :string,
    json_name: "timeSeriesAttributeColumns"

  field :unavailable_at_forecast_columns, 20,
    repeated: true,
    type: :string,
    json_name: "unavailableAtForecastColumns"

  field :available_at_forecast_columns, 21,
    repeated: true,
    type: :string,
    json_name: "availableAtForecastColumns"

  field :data_granularity, 22,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity,
    json_name: "dataGranularity"

  field :forecast_horizon, 23, type: :int64, json_name: "forecastHorizon"
  field :context_window, 24, type: :int64, json_name: "contextWindow"

  field :export_evaluated_data_items_config, 15,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig,
    json_name: "exportEvaluatedDataItemsConfig"

  field :quantiles, 16, repeated: true, type: :double
  field :validation_options, 17, type: :string, json_name: "validationOptions"

  field :additional_experiments, 25,
    repeated: true,
    type: :string,
    json_name: "additionalExperiments"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          train_cost_milli_node_hours: integer
        }

  defstruct train_cost_milli_node_hours: 0

  field :train_cost_milli_node_hours, 1, type: :int64, json_name: "trainCostMilliNodeHours"
end
