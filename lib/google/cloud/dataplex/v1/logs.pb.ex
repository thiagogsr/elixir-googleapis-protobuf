defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVENT_TYPE_UNSPECIFIED
          | :CONFIG
          | :ENTITY_CREATED
          | :ENTITY_UPDATED
          | :ENTITY_DELETED
          | :PARTITION_CREATED
          | :PARTITION_UPDATED
          | :PARTITION_DELETED

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :CONFIG, 1
  field :ENTITY_CREATED, 2
  field :ENTITY_UPDATED, 3
  field :ENTITY_DELETED, 4
  field :PARTITION_CREATED, 5
  field :PARTITION_UPDATED, 6
  field :PARTITION_DELETED, 7
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ENTITY_TYPE_UNSPECIFIED | :TABLE | :FILESET

  field :ENTITY_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :FILESET, 2
end
defmodule Google.Cloud.Dataplex.V1.JobEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :SPARK | :NOTEBOOK

  field :TYPE_UNSPECIFIED, 0
  field :SPARK, 1
  field :NOTEBOOK, 2
end
defmodule Google.Cloud.Dataplex.V1.JobEvent.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :SUCCEEDED | :FAILED | :CANCELLED | :ABORTED

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :CANCELLED, 3
  field :ABORTED, 4
end
defmodule Google.Cloud.Dataplex.V1.JobEvent.Service do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SERVICE_UNSPECIFIED | :DATAPROC

  field :SERVICE_UNSPECIFIED, 0
  field :DATAPROC, 1
end
defmodule Google.Cloud.Dataplex.V1.SessionEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :START | :STOP | :QUERY

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :START, 1
  field :STOP, 2
  field :QUERY, 3
end
defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ENGINE_UNSPECIFIED | :SPARK_SQL | :BIGQUERY

  field :ENGINE_UNSPECIFIED, 0
  field :SPARK_SQL, 1
  field :BIGQUERY, 2
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry do
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
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: %{String.t() => String.t()}
        }

  defstruct parameters: %{}

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry,
    map: true
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: String.t(),
          type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType.t()
        }

  defstruct entity: "",
            type: :ENTITY_TYPE_UNSPECIFIED

  field :entity, 1, type: :string
  field :type, 2, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition: String.t(),
          entity: String.t(),
          type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType.t()
        }

  defstruct partition: "",
            entity: "",
            type: :ENTITY_TYPE_UNSPECIFIED

  field :partition, 1, type: :string
  field :entity, 2, type: :string
  field :type, 3, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t()
        }

  defstruct type: ""

  field :type, 1, type: :string
end
defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:config, Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.t() | nil}
            | {:entity, Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails.t() | nil}
            | {:partition, Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails.t() | nil}
            | {:action, Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails.t() | nil},
          message: String.t(),
          lake_id: String.t(),
          zone_id: String.t(),
          asset_id: String.t(),
          data_location: String.t(),
          type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType.t()
        }

  defstruct details: nil,
            message: "",
            lake_id: "",
            zone_id: "",
            asset_id: "",
            data_location: "",
            type: :EVENT_TYPE_UNSPECIFIED

  oneof :details, 0

  field :message, 1, type: :string
  field :lake_id, 2, type: :string, json_name: "lakeId"
  field :zone_id, 3, type: :string, json_name: "zoneId"
  field :asset_id, 4, type: :string, json_name: "assetId"
  field :data_location, 5, type: :string, json_name: "dataLocation"
  field :type, 10, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType, enum: true
  field :config, 20, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails, oneof: 0
  field :entity, 21, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails, oneof: 0
  field :partition, 22, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails, oneof: 0
  field :action, 23, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails, oneof: 0
end
defmodule Google.Cloud.Dataplex.V1.JobEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          job_id: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dataplex.V1.JobEvent.State.t(),
          retries: integer,
          type: Google.Cloud.Dataplex.V1.JobEvent.Type.t(),
          service: Google.Cloud.Dataplex.V1.JobEvent.Service.t(),
          service_job: String.t()
        }

  defstruct message: "",
            job_id: "",
            start_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            retries: 0,
            type: :TYPE_UNSPECIFIED,
            service: :SERVICE_UNSPECIFIED,
            service_job: ""

  field :message, 1, type: :string
  field :job_id, 2, type: :string, json_name: "jobId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 5, type: Google.Cloud.Dataplex.V1.JobEvent.State, enum: true
  field :retries, 6, type: :int32
  field :type, 7, type: Google.Cloud.Dataplex.V1.JobEvent.Type, enum: true
  field :service, 8, type: Google.Cloud.Dataplex.V1.JobEvent.Service, enum: true
  field :service_job, 9, type: :string, json_name: "serviceJob"
end
defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_id: String.t(),
          query_text: String.t(),
          engine: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          result_size_bytes: integer,
          data_processed_bytes: integer
        }

  defstruct query_id: "",
            query_text: "",
            engine: :ENGINE_UNSPECIFIED,
            duration: nil,
            result_size_bytes: 0,
            data_processed_bytes: 0

  field :query_id, 1, type: :string, json_name: "queryId"
  field :query_text, 2, type: :string, json_name: "queryText"
  field :engine, 3, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine, enum: true
  field :duration, 4, type: Google.Protobuf.Duration
  field :result_size_bytes, 5, type: :int64, json_name: "resultSizeBytes"
  field :data_processed_bytes, 6, type: :int64, json_name: "dataProcessedBytes"
end
defmodule Google.Cloud.Dataplex.V1.SessionEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail: {:query, Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.t() | nil},
          message: String.t(),
          user_id: String.t(),
          session_id: String.t(),
          type: Google.Cloud.Dataplex.V1.SessionEvent.EventType.t()
        }

  defstruct detail: nil,
            message: "",
            user_id: "",
            session_id: "",
            type: :EVENT_TYPE_UNSPECIFIED

  oneof :detail, 0

  field :message, 1, type: :string
  field :user_id, 2, type: :string, json_name: "userId"
  field :session_id, 3, type: :string, json_name: "sessionId"
  field :type, 4, type: Google.Cloud.Dataplex.V1.SessionEvent.EventType, enum: true
  field :query, 5, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail, oneof: 0
end
