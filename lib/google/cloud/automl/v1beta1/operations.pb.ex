defmodule Google.Cloud.Automl.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:delete_details, Google.Cloud.Automl.V1beta1.DeleteOperationMetadata.t() | nil}
            | {:deploy_model_details,
               Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata.t() | nil}
            | {:undeploy_model_details,
               Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata.t() | nil}
            | {:create_model_details,
               Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata.t() | nil}
            | {:import_data_details,
               Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata.t() | nil}
            | {:batch_predict_details,
               Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.t() | nil}
            | {:export_data_details,
               Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.t() | nil}
            | {:export_model_details,
               Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.t() | nil}
            | {:export_evaluated_examples_details,
               Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.t() | nil},
          progress_percent: integer,
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct details: nil,
            progress_percent: 0,
            partial_failures: [],
            create_time: nil,
            update_time: nil

  oneof :details, 0

  field :delete_details, 8,
    type: Google.Cloud.Automl.V1beta1.DeleteOperationMetadata,
    json_name: "deleteDetails",
    oneof: 0

  field :deploy_model_details, 24,
    type: Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata,
    json_name: "deployModelDetails",
    oneof: 0

  field :undeploy_model_details, 25,
    type: Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata,
    json_name: "undeployModelDetails",
    oneof: 0

  field :create_model_details, 10,
    type: Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata,
    json_name: "createModelDetails",
    oneof: 0

  field :import_data_details, 15,
    type: Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata,
    json_name: "importDataDetails",
    oneof: 0

  field :batch_predict_details, 16,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata,
    json_name: "batchPredictDetails",
    oneof: 0

  field :export_data_details, 21,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata,
    json_name: "exportDataDetails",
    oneof: 0

  field :export_model_details, 22,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata,
    json_name: "exportModelDetails",
    oneof: 0

  field :export_evaluated_examples_details, 26,
    type: Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata,
    json_name: "exportEvaluatedExamplesDetails",
    oneof: 0

  field :progress_percent, 13, type: :int32, json_name: "progressPercent"

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Automl.V1beta1.DeleteOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location:
            {:gcs_output_directory, String.t()} | {:bigquery_output_dataset, String.t()}
        }

  defstruct output_location: nil

  oneof :output_location, 0

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory", oneof: 0
  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset", oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo.t() | nil
        }

  defstruct output_info: nil

  field :output_info, 1,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo,
    json_name: "outputInfo"
end
defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location:
            {:gcs_output_directory, String.t()} | {:bigquery_output_dataset, String.t()}
        }

  defstruct output_location: nil

  oneof :output_location, 0

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory", oneof: 0
  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset", oneof: 0
end
defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig.t() | nil,
          output_info:
            Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo.t()
            | nil
        }

  defstruct input_config: nil,
            output_info: nil

  field :input_config, 1,
    type: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig,
    json_name: "inputConfig"

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo,
    json_name: "outputInfo"
end
defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_output_directory: String.t()
        }

  defstruct gcs_output_directory: ""

  field :gcs_output_directory, 1, type: :string, json_name: "gcsOutputDirectory"
end
defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo.t()
            | nil
        }

  defstruct output_info: nil

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo,
    json_name: "outputInfo"
end
defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bigquery_output_dataset: String.t()
        }

  defstruct bigquery_output_dataset: ""

  field :bigquery_output_dataset, 2, type: :string, json_name: "bigqueryOutputDataset"
end
defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo.t()
            | nil
        }

  defstruct output_info: nil

  field :output_info, 2,
    type:
      Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo,
    json_name: "outputInfo"
end
