defmodule Google.Datastore.Admin.V1.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_TYPE_UNSPECIFIED
          | :EXPORT_ENTITIES
          | :IMPORT_ENTITIES
          | :CREATE_INDEX
          | :DELETE_INDEX

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :EXPORT_ENTITIES, 1
  field :IMPORT_ENTITIES, 2
  field :CREATE_INDEX, 3
  field :DELETE_INDEX, 4
end
defmodule Google.Datastore.Admin.V1.CommonMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :INITIALIZING
          | :PROCESSING
          | :CANCELLING
          | :FINALIZING
          | :SUCCESSFUL
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :PROCESSING, 2
  field :CANCELLING, 3
  field :FINALIZING, 4
  field :SUCCESSFUL, 5
  field :FAILED, 6
  field :CANCELLED, 7
end
defmodule Google.Datastore.Admin.V1.CommonMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Datastore.Admin.V1.CommonMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_type: Google.Datastore.Admin.V1.OperationType.t(),
          labels: %{String.t() => String.t()},
          state: Google.Datastore.Admin.V1.CommonMetadata.State.t()
        }

  defstruct start_time: nil,
            end_time: nil,
            operation_type: :OPERATION_TYPE_UNSPECIFIED,
            labels: %{},
            state: :STATE_UNSPECIFIED

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_type, 3,
    type: Google.Datastore.Admin.V1.OperationType,
    json_name: "operationType",
    enum: true

  field :labels, 4,
    repeated: true,
    type: Google.Datastore.Admin.V1.CommonMetadata.LabelsEntry,
    map: true

  field :state, 5, type: Google.Datastore.Admin.V1.CommonMetadata.State, enum: true
end
defmodule Google.Datastore.Admin.V1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          work_completed: integer,
          work_estimated: integer
        }

  defstruct work_completed: 0,
            work_estimated: 0

  field :work_completed, 1, type: :int64, json_name: "workCompleted"
  field :work_estimated, 2, type: :int64, json_name: "workEstimated"
end
defmodule Google.Datastore.Admin.V1.ExportEntitiesRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Datastore.Admin.V1.ExportEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          labels: %{String.t() => String.t()},
          entity_filter: Google.Datastore.Admin.V1.EntityFilter.t() | nil,
          output_url_prefix: String.t()
        }

  defstruct project_id: "",
            labels: %{},
            entity_filter: nil,
            output_url_prefix: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1.ExportEntitiesRequest.LabelsEntry,
    map: true

  field :entity_filter, 3, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :output_url_prefix, 4, type: :string, json_name: "outputUrlPrefix", deprecated: false
end
defmodule Google.Datastore.Admin.V1.ImportEntitiesRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Datastore.Admin.V1.ImportEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          labels: %{String.t() => String.t()},
          input_url: String.t(),
          entity_filter: Google.Datastore.Admin.V1.EntityFilter.t() | nil
        }

  defstruct project_id: "",
            labels: %{},
            input_url: "",
            entity_filter: nil

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1.ImportEntitiesRequest.LabelsEntry,
    map: true

  field :input_url, 3, type: :string, json_name: "inputUrl", deprecated: false
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
end
defmodule Google.Datastore.Admin.V1.ExportEntitiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_url: String.t()
        }

  defstruct output_url: ""

  field :output_url, 1, type: :string, json_name: "outputUrl"
end
defmodule Google.Datastore.Admin.V1.ExportEntitiesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common: Google.Datastore.Admin.V1.CommonMetadata.t() | nil,
          progress_entities: Google.Datastore.Admin.V1.Progress.t() | nil,
          progress_bytes: Google.Datastore.Admin.V1.Progress.t() | nil,
          entity_filter: Google.Datastore.Admin.V1.EntityFilter.t() | nil,
          output_url_prefix: String.t()
        }

  defstruct common: nil,
            progress_entities: nil,
            progress_bytes: nil,
            entity_filter: nil,
            output_url_prefix: ""

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :progress_bytes, 3, type: Google.Datastore.Admin.V1.Progress, json_name: "progressBytes"
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :output_url_prefix, 5, type: :string, json_name: "outputUrlPrefix"
end
defmodule Google.Datastore.Admin.V1.ImportEntitiesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common: Google.Datastore.Admin.V1.CommonMetadata.t() | nil,
          progress_entities: Google.Datastore.Admin.V1.Progress.t() | nil,
          progress_bytes: Google.Datastore.Admin.V1.Progress.t() | nil,
          entity_filter: Google.Datastore.Admin.V1.EntityFilter.t() | nil,
          input_url: String.t()
        }

  defstruct common: nil,
            progress_entities: nil,
            progress_bytes: nil,
            entity_filter: nil,
            input_url: ""

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :progress_bytes, 3, type: Google.Datastore.Admin.V1.Progress, json_name: "progressBytes"
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :input_url, 5, type: :string, json_name: "inputUrl"
end
defmodule Google.Datastore.Admin.V1.EntityFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kinds: [String.t()],
          namespace_ids: [String.t()]
        }

  defstruct kinds: [],
            namespace_ids: []

  field :kinds, 1, repeated: true, type: :string
  field :namespace_ids, 2, repeated: true, type: :string, json_name: "namespaceIds"
end
defmodule Google.Datastore.Admin.V1.CreateIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          index: Google.Datastore.Admin.V1.Index.t() | nil
        }

  defstruct project_id: "",
            index: nil

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index, 3, type: Google.Datastore.Admin.V1.Index
end
defmodule Google.Datastore.Admin.V1.DeleteIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          index_id: String.t()
        }

  defstruct project_id: "",
            index_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index_id, 3, type: :string, json_name: "indexId"
end
defmodule Google.Datastore.Admin.V1.GetIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          index_id: String.t()
        }

  defstruct project_id: "",
            index_id: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index_id, 3, type: :string, json_name: "indexId"
end
defmodule Google.Datastore.Admin.V1.ListIndexesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct project_id: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end
defmodule Google.Datastore.Admin.V1.ListIndexesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indexes: [Google.Datastore.Admin.V1.Index.t()],
          next_page_token: String.t()
        }

  defstruct indexes: [],
            next_page_token: ""

  field :indexes, 1, repeated: true, type: Google.Datastore.Admin.V1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Datastore.Admin.V1.IndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common: Google.Datastore.Admin.V1.CommonMetadata.t() | nil,
          progress_entities: Google.Datastore.Admin.V1.Progress.t() | nil,
          index_id: String.t()
        }

  defstruct common: nil,
            progress_entities: nil,
            index_id: ""

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :index_id, 3, type: :string, json_name: "indexId"
end
defmodule Google.Datastore.Admin.V1.DatastoreFirestoreMigrationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_state: Google.Datastore.Admin.V1.MigrationState.t(),
          migration_step: Google.Datastore.Admin.V1.MigrationStep.t()
        }

  defstruct migration_state: :MIGRATION_STATE_UNSPECIFIED,
            migration_step: :MIGRATION_STEP_UNSPECIFIED

  field :migration_state, 1,
    type: Google.Datastore.Admin.V1.MigrationState,
    json_name: "migrationState",
    enum: true

  field :migration_step, 2,
    type: Google.Datastore.Admin.V1.MigrationStep,
    json_name: "migrationStep",
    enum: true
end
defmodule Google.Datastore.Admin.V1.DatastoreAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.datastore.admin.v1.DatastoreAdmin"

  rpc :ExportEntities,
      Google.Datastore.Admin.V1.ExportEntitiesRequest,
      Google.Longrunning.Operation

  rpc :ImportEntities,
      Google.Datastore.Admin.V1.ImportEntitiesRequest,
      Google.Longrunning.Operation

  rpc :CreateIndex, Google.Datastore.Admin.V1.CreateIndexRequest, Google.Longrunning.Operation

  rpc :DeleteIndex, Google.Datastore.Admin.V1.DeleteIndexRequest, Google.Longrunning.Operation

  rpc :GetIndex, Google.Datastore.Admin.V1.GetIndexRequest, Google.Datastore.Admin.V1.Index

  rpc :ListIndexes,
      Google.Datastore.Admin.V1.ListIndexesRequest,
      Google.Datastore.Admin.V1.ListIndexesResponse
end

defmodule Google.Datastore.Admin.V1.DatastoreAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Datastore.Admin.V1.DatastoreAdmin.Service
end
