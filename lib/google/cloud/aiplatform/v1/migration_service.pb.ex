defmodule Google.Cloud.Aiplatform.V1.SearchMigratableResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Aiplatform.V1.SearchMigratableResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migratable_resources: [Google.Cloud.Aiplatform.V1.MigratableResource.t()],
          next_page_token: String.t()
        }

  defstruct migratable_resources: [],
            next_page_token: ""

  field :migratable_resources, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MigratableResource,
    json_name: "migratableResources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.BatchMigrateResourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migrate_resource_requests: [Google.Cloud.Aiplatform.V1.MigrateResourceRequest.t()]
        }

  defstruct parent: "",
            migrate_resource_requests: []

  field :parent, 1, type: :string, deprecated: false

  field :migrate_resource_requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest,
    json_name: "migrateResourceRequests",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          model_version: String.t(),
          model_display_name: String.t()
        }

  defstruct endpoint: "",
            model_version: "",
            model_display_name: ""

  field :endpoint, 1, type: :string, deprecated: false
  field :model_version, 2, type: :string, json_name: "modelVersion", deprecated: false
  field :model_display_name, 3, type: :string, json_name: "modelDisplayName", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlModelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          model_display_name: String.t()
        }

  defstruct model: "",
            model_display_name: ""

  field :model, 1, type: :string, deprecated: false
  field :model_display_name, 2, type: :string, json_name: "modelDisplayName", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t()
        }

  defstruct dataset: "",
            dataset_display_name: ""

  field :dataset, 1, type: :string, deprecated: false

  field :dataset_display_name, 2,
    type: :string,
    json_name: "datasetDisplayName",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_dataset: String.t()
        }

  defstruct annotated_dataset: ""

  field :annotated_dataset, 1, type: :string, json_name: "annotatedDataset", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t(),
          migrate_data_labeling_annotated_dataset_configs: [
            Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig.t()
          ]
        }

  defstruct dataset: "",
            dataset_display_name: "",
            migrate_data_labeling_annotated_dataset_configs: []

  field :dataset, 1, type: :string, deprecated: false

  field :dataset_display_name, 2,
    type: :string,
    json_name: "datasetDisplayName",
    deprecated: false

  field :migrate_data_labeling_annotated_dataset_configs, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.MigrateDataLabelingAnnotatedDatasetConfig,
    json_name: "migrateDataLabelingAnnotatedDatasetConfigs",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:migrate_ml_engine_model_version_config,
             Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig.t()
             | nil}
            | {:migrate_automl_model_config,
               Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlModelConfig.t()
               | nil}
            | {:migrate_automl_dataset_config,
               Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlDatasetConfig.t()
               | nil}
            | {:migrate_data_labeling_dataset_config,
               Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig.t()
               | nil}
        }

  defstruct request: nil

  oneof :request, 0

  field :migrate_ml_engine_model_version_config, 1,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateMlEngineModelVersionConfig,
    json_name: "migrateMlEngineModelVersionConfig",
    oneof: 0

  field :migrate_automl_model_config, 2,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlModelConfig,
    json_name: "migrateAutomlModelConfig",
    oneof: 0

  field :migrate_automl_dataset_config, 3,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateAutomlDatasetConfig,
    json_name: "migrateAutomlDatasetConfig",
    oneof: 0

  field :migrate_data_labeling_dataset_config, 4,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest.MigrateDataLabelingDatasetConfig,
    json_name: "migrateDataLabelingDatasetConfig",
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1.BatchMigrateResourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrate_resource_responses: [Google.Cloud.Aiplatform.V1.MigrateResourceResponse.t()]
        }

  defstruct migrate_resource_responses: []

  field :migrate_resource_responses, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.MigrateResourceResponse,
    json_name: "migrateResourceResponses"
end
defmodule Google.Cloud.Aiplatform.V1.MigrateResourceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migrated_resource: {:dataset, String.t()} | {:model, String.t()},
          migratable_resource: Google.Cloud.Aiplatform.V1.MigratableResource.t() | nil
        }

  defstruct migrated_resource: nil,
            migratable_resource: nil

  oneof :migrated_resource, 0

  field :dataset, 1, type: :string, oneof: 0, deprecated: false
  field :model, 2, type: :string, oneof: 0, deprecated: false

  field :migratable_resource, 3,
    type: Google.Cloud.Aiplatform.V1.MigratableResource,
    json_name: "migratableResource"
end
defmodule Google.Cloud.Aiplatform.V1.BatchMigrateResourcesOperationMetadata.PartialResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            {:error, Google.Rpc.Status.t() | nil} | {:model, String.t()} | {:dataset, String.t()},
          request: Google.Cloud.Aiplatform.V1.MigrateResourceRequest.t() | nil
        }

  defstruct result: nil,
            request: nil

  oneof :result, 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :model, 3, type: :string, oneof: 0, deprecated: false
  field :dataset, 4, type: :string, oneof: 0, deprecated: false
  field :request, 1, type: Google.Cloud.Aiplatform.V1.MigrateResourceRequest
end
defmodule Google.Cloud.Aiplatform.V1.BatchMigrateResourcesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil,
          partial_results: [
            Google.Cloud.Aiplatform.V1.BatchMigrateResourcesOperationMetadata.PartialResult.t()
          ]
        }

  defstruct generic_metadata: nil,
            partial_results: []

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :partial_results, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchMigrateResourcesOperationMetadata.PartialResult,
    json_name: "partialResults"
end
defmodule Google.Cloud.Aiplatform.V1.MigrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.MigrationService"

  rpc :SearchMigratableResources,
      Google.Cloud.Aiplatform.V1.SearchMigratableResourcesRequest,
      Google.Cloud.Aiplatform.V1.SearchMigratableResourcesResponse

  rpc :BatchMigrateResources,
      Google.Cloud.Aiplatform.V1.BatchMigrateResourcesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.MigrationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.MigrationService.Service
end
