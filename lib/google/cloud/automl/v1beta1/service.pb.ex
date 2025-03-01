defmodule Google.Cloud.Automl.V1beta1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dataset: Google.Cloud.Automl.V1beta1.Dataset.t() | nil
        }

  defstruct parent: "",
            dataset: nil

  field :parent, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Automl.V1beta1.Dataset, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Automl.V1beta1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Cloud.Automl.V1beta1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct datasets: [],
            next_page_token: ""

  field :datasets, 1, repeated: true, type: Google.Cloud.Automl.V1beta1.Dataset
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Automl.V1beta1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Automl.V1beta1.Dataset.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct dataset: nil,
            update_mask: nil

  field :dataset, 1, type: Google.Cloud.Automl.V1beta1.Dataset, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Automl.V1beta1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ImportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Automl.V1beta1.InputConfig.t() | nil
        }

  defstruct name: "",
            input_config: nil

  field :name, 1, type: :string, deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Automl.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ExportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Automl.V1beta1.OutputConfig.t() | nil
        }

  defstruct name: "",
            output_config: nil

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Automl.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.GetAnnotationSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.GetTableSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            field_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end
defmodule Google.Cloud.Automl.V1beta1.ListTableSpecsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            field_mask: nil,
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Automl.V1beta1.ListTableSpecsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_specs: [Google.Cloud.Automl.V1beta1.TableSpec.t()],
          next_page_token: String.t()
        }

  defstruct table_specs: [],
            next_page_token: ""

  field :table_specs, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TableSpec,
    json_name: "tableSpecs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Automl.V1beta1.UpdateTableSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_spec: Google.Cloud.Automl.V1beta1.TableSpec.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct table_spec: nil,
            update_mask: nil

  field :table_spec, 1,
    type: Google.Cloud.Automl.V1beta1.TableSpec,
    json_name: "tableSpec",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Automl.V1beta1.GetColumnSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            field_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end
defmodule Google.Cloud.Automl.V1beta1.ListColumnSpecsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            field_mask: nil,
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Automl.V1beta1.ListColumnSpecsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_specs: [Google.Cloud.Automl.V1beta1.ColumnSpec.t()],
          next_page_token: String.t()
        }

  defstruct column_specs: [],
            next_page_token: ""

  field :column_specs, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec,
    json_name: "columnSpecs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Automl.V1beta1.UpdateColumnSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_spec: Google.Cloud.Automl.V1beta1.ColumnSpec.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct column_spec: nil,
            update_mask: nil

  field :column_spec, 1,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec,
    json_name: "columnSpec",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Automl.V1beta1.CreateModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model: Google.Cloud.Automl.V1beta1.Model.t() | nil
        }

  defstruct parent: "",
            model: nil

  field :parent, 1, type: :string, deprecated: false
  field :model, 4, type: Google.Cloud.Automl.V1beta1.Model, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Automl.V1beta1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: [Google.Cloud.Automl.V1beta1.Model.t()],
          next_page_token: String.t()
        }

  defstruct model: [],
            next_page_token: ""

  field :model, 1, repeated: true, type: Google.Cloud.Automl.V1beta1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Automl.V1beta1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.DeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_metadata:
            {:image_object_detection_model_deployment_metadata,
             Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelDeploymentMetadata.t() | nil}
            | {:image_classification_model_deployment_metadata,
               Google.Cloud.Automl.V1beta1.ImageClassificationModelDeploymentMetadata.t() | nil},
          name: String.t()
        }

  defstruct model_deployment_metadata: nil,
            name: ""

  oneof :model_deployment_metadata, 0

  field :image_object_detection_model_deployment_metadata, 2,
    type: Google.Cloud.Automl.V1beta1.ImageObjectDetectionModelDeploymentMetadata,
    json_name: "imageObjectDetectionModelDeploymentMetadata",
    oneof: 0

  field :image_classification_model_deployment_metadata, 4,
    type: Google.Cloud.Automl.V1beta1.ImageClassificationModelDeploymentMetadata,
    json_name: "imageClassificationModelDeploymentMetadata",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.UndeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ExportModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Automl.V1beta1.ModelExportOutputConfig.t() | nil
        }

  defstruct name: "",
            output_config: nil

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Automl.V1beta1.ModelExportOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOutputConfig.t() | nil
        }

  defstruct name: "",
            output_config: nil

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOutputConfig,
    json_name: "outputConfig",
    deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.GetModelEvaluationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Automl.V1beta1.ListModelEvaluationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Automl.V1beta1.ListModelEvaluationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_evaluation: [Google.Cloud.Automl.V1beta1.ModelEvaluation.t()],
          next_page_token: String.t()
        }

  defstruct model_evaluation: [],
            next_page_token: ""

  field :model_evaluation, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ModelEvaluation,
    json_name: "modelEvaluation"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Automl.V1beta1.AutoMl.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.automl.v1beta1.AutoMl"

  rpc :CreateDataset,
      Google.Cloud.Automl.V1beta1.CreateDatasetRequest,
      Google.Cloud.Automl.V1beta1.Dataset

  rpc :GetDataset,
      Google.Cloud.Automl.V1beta1.GetDatasetRequest,
      Google.Cloud.Automl.V1beta1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Automl.V1beta1.ListDatasetsRequest,
      Google.Cloud.Automl.V1beta1.ListDatasetsResponse

  rpc :UpdateDataset,
      Google.Cloud.Automl.V1beta1.UpdateDatasetRequest,
      Google.Cloud.Automl.V1beta1.Dataset

  rpc :DeleteDataset,
      Google.Cloud.Automl.V1beta1.DeleteDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Automl.V1beta1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Automl.V1beta1.ExportDataRequest, Google.Longrunning.Operation

  rpc :GetAnnotationSpec,
      Google.Cloud.Automl.V1beta1.GetAnnotationSpecRequest,
      Google.Cloud.Automl.V1beta1.AnnotationSpec

  rpc :GetTableSpec,
      Google.Cloud.Automl.V1beta1.GetTableSpecRequest,
      Google.Cloud.Automl.V1beta1.TableSpec

  rpc :ListTableSpecs,
      Google.Cloud.Automl.V1beta1.ListTableSpecsRequest,
      Google.Cloud.Automl.V1beta1.ListTableSpecsResponse

  rpc :UpdateTableSpec,
      Google.Cloud.Automl.V1beta1.UpdateTableSpecRequest,
      Google.Cloud.Automl.V1beta1.TableSpec

  rpc :GetColumnSpec,
      Google.Cloud.Automl.V1beta1.GetColumnSpecRequest,
      Google.Cloud.Automl.V1beta1.ColumnSpec

  rpc :ListColumnSpecs,
      Google.Cloud.Automl.V1beta1.ListColumnSpecsRequest,
      Google.Cloud.Automl.V1beta1.ListColumnSpecsResponse

  rpc :UpdateColumnSpec,
      Google.Cloud.Automl.V1beta1.UpdateColumnSpecRequest,
      Google.Cloud.Automl.V1beta1.ColumnSpec

  rpc :CreateModel, Google.Cloud.Automl.V1beta1.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Automl.V1beta1.GetModelRequest, Google.Cloud.Automl.V1beta1.Model

  rpc :ListModels,
      Google.Cloud.Automl.V1beta1.ListModelsRequest,
      Google.Cloud.Automl.V1beta1.ListModelsResponse

  rpc :DeleteModel, Google.Cloud.Automl.V1beta1.DeleteModelRequest, Google.Longrunning.Operation

  rpc :DeployModel, Google.Cloud.Automl.V1beta1.DeployModelRequest, Google.Longrunning.Operation

  rpc :UndeployModel,
      Google.Cloud.Automl.V1beta1.UndeployModelRequest,
      Google.Longrunning.Operation

  rpc :ExportModel, Google.Cloud.Automl.V1beta1.ExportModelRequest, Google.Longrunning.Operation

  rpc :ExportEvaluatedExamples,
      Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesRequest,
      Google.Longrunning.Operation

  rpc :GetModelEvaluation,
      Google.Cloud.Automl.V1beta1.GetModelEvaluationRequest,
      Google.Cloud.Automl.V1beta1.ModelEvaluation

  rpc :ListModelEvaluations,
      Google.Cloud.Automl.V1beta1.ListModelEvaluationsRequest,
      Google.Cloud.Automl.V1beta1.ListModelEvaluationsResponse
end

defmodule Google.Cloud.Automl.V1beta1.AutoMl.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Automl.V1beta1.AutoMl.Service
end
