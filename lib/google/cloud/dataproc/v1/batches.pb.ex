defmodule Google.Cloud.Dataproc.V1.Batch.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :RUNNING
          | :CANCELLING
          | :CANCELLED
          | :SUCCEEDED
          | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :CANCELLING, 3
  field :CANCELLED, 4
  field :SUCCEEDED, 5
  field :FAILED, 6
end
defmodule Google.Cloud.Dataproc.V1.CreateBatchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          batch: Google.Cloud.Dataproc.V1.Batch.t() | nil,
          batch_id: String.t(),
          request_id: String.t()
        }

  defstruct parent: "",
            batch: nil,
            batch_id: "",
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :batch, 2, type: Google.Cloud.Dataproc.V1.Batch, deprecated: false
  field :batch_id, 3, type: :string, json_name: "batchId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GetBatchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListBatchesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListBatchesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batches: [Google.Cloud.Dataproc.V1.Batch.t()],
          next_page_token: String.t()
        }

  defstruct batches: [],
            next_page_token: ""

  field :batches, 1, repeated: true, type: Google.Cloud.Dataproc.V1.Batch
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataproc.V1.DeleteBatchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.Batch.StateHistory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1.Batch.State.t(),
          state_message: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_message: "",
            state_start_time: nil

  field :state, 1, type: Google.Cloud.Dataproc.V1.Batch.State, enum: true, deprecated: false
  field :state_message, 2, type: :string, json_name: "stateMessage", deprecated: false

  field :state_start_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "stateStartTime",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.Batch.LabelsEntry do
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
defmodule Google.Cloud.Dataproc.V1.Batch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch_config:
            {:pyspark_batch, Google.Cloud.Dataproc.V1.PySparkBatch.t() | nil}
            | {:spark_batch, Google.Cloud.Dataproc.V1.SparkBatch.t() | nil}
            | {:spark_r_batch, Google.Cloud.Dataproc.V1.SparkRBatch.t() | nil}
            | {:spark_sql_batch, Google.Cloud.Dataproc.V1.SparkSqlBatch.t() | nil},
          name: String.t(),
          uuid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          runtime_info: Google.Cloud.Dataproc.V1.RuntimeInfo.t() | nil,
          state: Google.Cloud.Dataproc.V1.Batch.State.t(),
          state_message: String.t(),
          state_time: Google.Protobuf.Timestamp.t() | nil,
          creator: String.t(),
          labels: %{String.t() => String.t()},
          runtime_config: Google.Cloud.Dataproc.V1.RuntimeConfig.t() | nil,
          environment_config: Google.Cloud.Dataproc.V1.EnvironmentConfig.t() | nil,
          operation: String.t(),
          state_history: [Google.Cloud.Dataproc.V1.Batch.StateHistory.t()]
        }

  defstruct batch_config: nil,
            name: "",
            uuid: "",
            create_time: nil,
            runtime_info: nil,
            state: :STATE_UNSPECIFIED,
            state_message: "",
            state_time: nil,
            creator: "",
            labels: %{},
            runtime_config: nil,
            environment_config: nil,
            operation: "",
            state_history: []

  oneof :batch_config, 0

  field :name, 1, type: :string, deprecated: false
  field :uuid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :pyspark_batch, 4,
    type: Google.Cloud.Dataproc.V1.PySparkBatch,
    json_name: "pysparkBatch",
    oneof: 0,
    deprecated: false

  field :spark_batch, 5,
    type: Google.Cloud.Dataproc.V1.SparkBatch,
    json_name: "sparkBatch",
    oneof: 0,
    deprecated: false

  field :spark_r_batch, 6,
    type: Google.Cloud.Dataproc.V1.SparkRBatch,
    json_name: "sparkRBatch",
    oneof: 0,
    deprecated: false

  field :spark_sql_batch, 7,
    type: Google.Cloud.Dataproc.V1.SparkSqlBatch,
    json_name: "sparkSqlBatch",
    oneof: 0,
    deprecated: false

  field :runtime_info, 8,
    type: Google.Cloud.Dataproc.V1.RuntimeInfo,
    json_name: "runtimeInfo",
    deprecated: false

  field :state, 9, type: Google.Cloud.Dataproc.V1.Batch.State, enum: true, deprecated: false
  field :state_message, 10, type: :string, json_name: "stateMessage", deprecated: false

  field :state_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "stateTime",
    deprecated: false

  field :creator, 12, type: :string, deprecated: false

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Batch.LabelsEntry,
    map: true,
    deprecated: false

  field :runtime_config, 14,
    type: Google.Cloud.Dataproc.V1.RuntimeConfig,
    json_name: "runtimeConfig",
    deprecated: false

  field :environment_config, 15,
    type: Google.Cloud.Dataproc.V1.EnvironmentConfig,
    json_name: "environmentConfig",
    deprecated: false

  field :operation, 16, type: :string, deprecated: false

  field :state_history, 17,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Batch.StateHistory,
    json_name: "stateHistory",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.PySparkBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_python_file_uri: String.t(),
          args: [String.t()],
          python_file_uris: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()]
        }

  defstruct main_python_file_uri: "",
            args: [],
            python_file_uris: [],
            jar_file_uris: [],
            file_uris: [],
            archive_uris: []

  field :main_python_file_uri, 1, type: :string, json_name: "mainPythonFileUri", deprecated: false
  field :args, 2, repeated: true, type: :string, deprecated: false

  field :python_file_uris, 3,
    repeated: true,
    type: :string,
    json_name: "pythonFileUris",
    deprecated: false

  field :jar_file_uris, 4,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :file_uris, 5, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 6,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver: {:main_jar_file_uri, String.t()} | {:main_class, String.t()},
          args: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()]
        }

  defstruct driver: nil,
            args: [],
            jar_file_uris: [],
            file_uris: [],
            archive_uris: []

  oneof :driver, 0

  field :main_jar_file_uri, 1,
    type: :string,
    json_name: "mainJarFileUri",
    oneof: 0,
    deprecated: false

  field :main_class, 2, type: :string, json_name: "mainClass", oneof: 0, deprecated: false
  field :args, 3, repeated: true, type: :string, deprecated: false

  field :jar_file_uris, 4,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :file_uris, 5, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 6,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkRBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_r_file_uri: String.t(),
          args: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()]
        }

  defstruct main_r_file_uri: "",
            args: [],
            file_uris: [],
            archive_uris: []

  field :main_r_file_uri, 1, type: :string, json_name: "mainRFileUri", deprecated: false
  field :args, 2, repeated: true, type: :string, deprecated: false
  field :file_uris, 3, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 4,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkSqlBatch.QueryVariablesEntry do
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
defmodule Google.Cloud.Dataproc.V1.SparkSqlBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_file_uri: String.t(),
          query_variables: %{String.t() => String.t()},
          jar_file_uris: [String.t()]
        }

  defstruct query_file_uri: "",
            query_variables: %{},
            jar_file_uris: []

  field :query_file_uri, 1, type: :string, json_name: "queryFileUri", deprecated: false

  field :query_variables, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SparkSqlBatch.QueryVariablesEntry,
    json_name: "queryVariables",
    map: true,
    deprecated: false

  field :jar_file_uris, 3,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.BatchController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1.BatchController"

  rpc :CreateBatch, Google.Cloud.Dataproc.V1.CreateBatchRequest, Google.Longrunning.Operation

  rpc :GetBatch, Google.Cloud.Dataproc.V1.GetBatchRequest, Google.Cloud.Dataproc.V1.Batch

  rpc :ListBatches,
      Google.Cloud.Dataproc.V1.ListBatchesRequest,
      Google.Cloud.Dataproc.V1.ListBatchesResponse

  rpc :DeleteBatch, Google.Cloud.Dataproc.V1.DeleteBatchRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.BatchController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.BatchController.Service
end
