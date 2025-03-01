defmodule Google.Logging.V2.LifecycleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LIFECYCLE_STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end
defmodule Google.Logging.V2.OperationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_STATE_UNSPECIFIED
          | :OPERATION_STATE_SCHEDULED
          | :OPERATION_STATE_WAITING_FOR_PERMISSIONS
          | :OPERATION_STATE_RUNNING
          | :OPERATION_STATE_SUCCEEDED
          | :OPERATION_STATE_FAILED
          | :OPERATION_STATE_CANCELLED

  field :OPERATION_STATE_UNSPECIFIED, 0
  field :OPERATION_STATE_SCHEDULED, 1
  field :OPERATION_STATE_WAITING_FOR_PERMISSIONS, 2
  field :OPERATION_STATE_RUNNING, 3
  field :OPERATION_STATE_SUCCEEDED, 4
  field :OPERATION_STATE_FAILED, 5
  field :OPERATION_STATE_CANCELLED, 6
end
defmodule Google.Logging.V2.LogSink.VersionFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VERSION_FORMAT_UNSPECIFIED | :V2 | :V1

  field :VERSION_FORMAT_UNSPECIFIED, 0
  field :V2, 1
  field :V1, 2
end
defmodule Google.Logging.V2.LogBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          retention_days: integer,
          locked: boolean,
          lifecycle_state: Google.Logging.V2.LifecycleState.t(),
          restricted_fields: [String.t()],
          cmek_settings: Google.Logging.V2.CmekSettings.t() | nil
        }

  defstruct name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            retention_days: 0,
            locked: false,
            lifecycle_state: :LIFECYCLE_STATE_UNSPECIFIED,
            restricted_fields: [],
            cmek_settings: nil

  field :name, 1, type: :string, deprecated: false
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :retention_days, 11, type: :int32, json_name: "retentionDays"
  field :locked, 9, type: :bool

  field :lifecycle_state, 12,
    type: Google.Logging.V2.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :restricted_fields, 15, repeated: true, type: :string, json_name: "restrictedFields"
  field :cmek_settings, 19, type: Google.Logging.V2.CmekSettings, json_name: "cmekSettings"
end
defmodule Google.Logging.V2.LogView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          filter: String.t()
        }

  defstruct name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            filter: ""

  field :name, 1, type: :string
  field :description, 3, type: :string

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :filter, 7, type: :string
end
defmodule Google.Logging.V2.LogSink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          options: {:bigquery_options, Google.Logging.V2.BigQueryOptions.t() | nil},
          name: String.t(),
          destination: String.t(),
          filter: String.t(),
          description: String.t(),
          disabled: boolean,
          exclusions: [Google.Logging.V2.LogExclusion.t()],
          output_version_format: Google.Logging.V2.LogSink.VersionFormat.t(),
          writer_identity: String.t(),
          include_children: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct options: nil,
            name: "",
            destination: "",
            filter: "",
            description: "",
            disabled: false,
            exclusions: [],
            output_version_format: :VERSION_FORMAT_UNSPECIFIED,
            writer_identity: "",
            include_children: false,
            create_time: nil,
            update_time: nil

  oneof :options, 0

  field :name, 1, type: :string, deprecated: false
  field :destination, 3, type: :string, deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :description, 18, type: :string, deprecated: false
  field :disabled, 19, type: :bool, deprecated: false
  field :exclusions, 16, repeated: true, type: Google.Logging.V2.LogExclusion, deprecated: false

  field :output_version_format, 6,
    type: Google.Logging.V2.LogSink.VersionFormat,
    json_name: "outputVersionFormat",
    enum: true,
    deprecated: true

  field :writer_identity, 8, type: :string, json_name: "writerIdentity", deprecated: false
  field :include_children, 9, type: :bool, json_name: "includeChildren", deprecated: false

  field :bigquery_options, 12,
    type: Google.Logging.V2.BigQueryOptions,
    json_name: "bigqueryOptions",
    oneof: 0,
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Logging.V2.BigQueryOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_partitioned_tables: boolean,
          uses_timestamp_column_partitioning: boolean
        }

  defstruct use_partitioned_tables: false,
            uses_timestamp_column_partitioning: false

  field :use_partitioned_tables, 1,
    type: :bool,
    json_name: "usePartitionedTables",
    deprecated: false

  field :uses_timestamp_column_partitioning, 3,
    type: :bool,
    json_name: "usesTimestampColumnPartitioning",
    deprecated: false
end
defmodule Google.Logging.V2.ListBucketsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end
defmodule Google.Logging.V2.ListBucketsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          buckets: [Google.Logging.V2.LogBucket.t()],
          next_page_token: String.t()
        }

  defstruct buckets: [],
            next_page_token: ""

  field :buckets, 1, repeated: true, type: Google.Logging.V2.LogBucket
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Logging.V2.CreateBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          bucket_id: String.t(),
          bucket: Google.Logging.V2.LogBucket.t() | nil
        }

  defstruct parent: "",
            bucket_id: "",
            bucket: nil

  field :parent, 1, type: :string, deprecated: false
  field :bucket_id, 2, type: :string, json_name: "bucketId", deprecated: false
  field :bucket, 3, type: Google.Logging.V2.LogBucket, deprecated: false
end
defmodule Google.Logging.V2.UpdateBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bucket: Google.Logging.V2.LogBucket.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            bucket: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :bucket, 2, type: Google.Logging.V2.LogBucket, deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.GetBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.DeleteBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.UndeleteBucketRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.ListViewsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end
defmodule Google.Logging.V2.ListViewsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          views: [Google.Logging.V2.LogView.t()],
          next_page_token: String.t()
        }

  defstruct views: [],
            next_page_token: ""

  field :views, 1, repeated: true, type: Google.Logging.V2.LogView
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Logging.V2.CreateViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view_id: String.t(),
          view: Google.Logging.V2.LogView.t() | nil
        }

  defstruct parent: "",
            view_id: "",
            view: nil

  field :parent, 1, type: :string, deprecated: false
  field :view_id, 2, type: :string, json_name: "viewId", deprecated: false
  field :view, 3, type: Google.Logging.V2.LogView, deprecated: false
end
defmodule Google.Logging.V2.UpdateViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Logging.V2.LogView.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            view: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Logging.V2.LogView, deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.GetViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.DeleteViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.ListSinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end
defmodule Google.Logging.V2.ListSinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sinks: [Google.Logging.V2.LogSink.t()],
          next_page_token: String.t()
        }

  defstruct sinks: [],
            next_page_token: ""

  field :sinks, 1, repeated: true, type: Google.Logging.V2.LogSink
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Logging.V2.GetSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t()
        }

  defstruct sink_name: ""

  field :sink_name, 1, type: :string, json_name: "sinkName", deprecated: false
end
defmodule Google.Logging.V2.CreateSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          sink: Google.Logging.V2.LogSink.t() | nil,
          unique_writer_identity: boolean
        }

  defstruct parent: "",
            sink: nil,
            unique_writer_identity: false

  field :parent, 1, type: :string, deprecated: false
  field :sink, 2, type: Google.Logging.V2.LogSink, deprecated: false

  field :unique_writer_identity, 3,
    type: :bool,
    json_name: "uniqueWriterIdentity",
    deprecated: false
end
defmodule Google.Logging.V2.UpdateSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t(),
          sink: Google.Logging.V2.LogSink.t() | nil,
          unique_writer_identity: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct sink_name: "",
            sink: nil,
            unique_writer_identity: false,
            update_mask: nil

  field :sink_name, 1, type: :string, json_name: "sinkName", deprecated: false
  field :sink, 2, type: Google.Logging.V2.LogSink, deprecated: false

  field :unique_writer_identity, 3,
    type: :bool,
    json_name: "uniqueWriterIdentity",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.DeleteSinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sink_name: String.t()
        }

  defstruct sink_name: ""

  field :sink_name, 1, type: :string, json_name: "sinkName", deprecated: false
end
defmodule Google.Logging.V2.LogExclusion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          filter: String.t(),
          disabled: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            description: "",
            filter: "",
            disabled: false,
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :filter, 3, type: :string, deprecated: false
  field :disabled, 4, type: :bool, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Logging.V2.ListExclusionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end
defmodule Google.Logging.V2.ListExclusionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exclusions: [Google.Logging.V2.LogExclusion.t()],
          next_page_token: String.t()
        }

  defstruct exclusions: [],
            next_page_token: ""

  field :exclusions, 1, repeated: true, type: Google.Logging.V2.LogExclusion
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Logging.V2.GetExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.CreateExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          exclusion: Google.Logging.V2.LogExclusion.t() | nil
        }

  defstruct parent: "",
            exclusion: nil

  field :parent, 1, type: :string, deprecated: false
  field :exclusion, 2, type: Google.Logging.V2.LogExclusion, deprecated: false
end
defmodule Google.Logging.V2.UpdateExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          exclusion: Google.Logging.V2.LogExclusion.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            exclusion: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :exclusion, 2, type: Google.Logging.V2.LogExclusion, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.DeleteExclusionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.GetCmekSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.UpdateCmekSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          cmek_settings: Google.Logging.V2.CmekSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            cmek_settings: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :cmek_settings, 2,
    type: Google.Logging.V2.CmekSettings,
    json_name: "cmekSettings",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.CmekSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          kms_key_name: String.t(),
          service_account_id: String.t()
        }

  defstruct name: "",
            kms_key_name: "",
            service_account_id: ""

  field :name, 1, type: :string, deprecated: false
  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName"
  field :service_account_id, 3, type: :string, json_name: "serviceAccountId", deprecated: false
end
defmodule Google.Logging.V2.GetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Logging.V2.UpdateSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          settings: Google.Logging.V2.Settings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            settings: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :settings, 2, type: Google.Logging.V2.Settings, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Logging.V2.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          kms_key_name: String.t(),
          kms_service_account_id: String.t(),
          storage_location: String.t(),
          disable_default_sink: boolean
        }

  defstruct name: "",
            kms_key_name: "",
            kms_service_account_id: "",
            storage_location: "",
            disable_default_sink: false

  field :name, 1, type: :string, deprecated: false
  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_service_account_id, 3,
    type: :string,
    json_name: "kmsServiceAccountId",
    deprecated: false

  field :storage_location, 4, type: :string, json_name: "storageLocation", deprecated: false
  field :disable_default_sink, 5, type: :bool, json_name: "disableDefaultSink", deprecated: false
end
defmodule Google.Logging.V2.CopyLogEntriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          destination: String.t()
        }

  defstruct name: "",
            filter: "",
            destination: ""

  field :name, 1, type: :string, deprecated: false
  field :filter, 3, type: :string, deprecated: false
  field :destination, 4, type: :string, deprecated: false
end
defmodule Google.Logging.V2.CopyLogEntriesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Logging.V2.OperationState.t(),
          cancellation_requested: boolean,
          request: Google.Logging.V2.CopyLogEntriesRequest.t() | nil,
          progress: integer,
          writer_identity: String.t()
        }

  defstruct start_time: nil,
            end_time: nil,
            state: :OPERATION_STATE_UNSPECIFIED,
            cancellation_requested: false,
            request: nil,
            progress: 0,
            writer_identity: ""

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 3, type: Google.Logging.V2.OperationState, enum: true
  field :cancellation_requested, 4, type: :bool, json_name: "cancellationRequested"
  field :request, 5, type: Google.Logging.V2.CopyLogEntriesRequest
  field :progress, 6, type: :int32
  field :writer_identity, 7, type: :string, json_name: "writerIdentity"
end
defmodule Google.Logging.V2.CopyLogEntriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_entries_copied_count: integer
        }

  defstruct log_entries_copied_count: 0

  field :log_entries_copied_count, 1, type: :int64, json_name: "logEntriesCopiedCount"
end
defmodule Google.Logging.V2.ConfigServiceV2.Service do
  @moduledoc false
  use GRPC.Service, name: "google.logging.v2.ConfigServiceV2"

  rpc :ListBuckets, Google.Logging.V2.ListBucketsRequest, Google.Logging.V2.ListBucketsResponse

  rpc :GetBucket, Google.Logging.V2.GetBucketRequest, Google.Logging.V2.LogBucket

  rpc :CreateBucket, Google.Logging.V2.CreateBucketRequest, Google.Logging.V2.LogBucket

  rpc :UpdateBucket, Google.Logging.V2.UpdateBucketRequest, Google.Logging.V2.LogBucket

  rpc :DeleteBucket, Google.Logging.V2.DeleteBucketRequest, Google.Protobuf.Empty

  rpc :UndeleteBucket, Google.Logging.V2.UndeleteBucketRequest, Google.Protobuf.Empty

  rpc :ListViews, Google.Logging.V2.ListViewsRequest, Google.Logging.V2.ListViewsResponse

  rpc :GetView, Google.Logging.V2.GetViewRequest, Google.Logging.V2.LogView

  rpc :CreateView, Google.Logging.V2.CreateViewRequest, Google.Logging.V2.LogView

  rpc :UpdateView, Google.Logging.V2.UpdateViewRequest, Google.Logging.V2.LogView

  rpc :DeleteView, Google.Logging.V2.DeleteViewRequest, Google.Protobuf.Empty

  rpc :ListSinks, Google.Logging.V2.ListSinksRequest, Google.Logging.V2.ListSinksResponse

  rpc :GetSink, Google.Logging.V2.GetSinkRequest, Google.Logging.V2.LogSink

  rpc :CreateSink, Google.Logging.V2.CreateSinkRequest, Google.Logging.V2.LogSink

  rpc :UpdateSink, Google.Logging.V2.UpdateSinkRequest, Google.Logging.V2.LogSink

  rpc :DeleteSink, Google.Logging.V2.DeleteSinkRequest, Google.Protobuf.Empty

  rpc :ListExclusions,
      Google.Logging.V2.ListExclusionsRequest,
      Google.Logging.V2.ListExclusionsResponse

  rpc :GetExclusion, Google.Logging.V2.GetExclusionRequest, Google.Logging.V2.LogExclusion

  rpc :CreateExclusion, Google.Logging.V2.CreateExclusionRequest, Google.Logging.V2.LogExclusion

  rpc :UpdateExclusion, Google.Logging.V2.UpdateExclusionRequest, Google.Logging.V2.LogExclusion

  rpc :DeleteExclusion, Google.Logging.V2.DeleteExclusionRequest, Google.Protobuf.Empty

  rpc :GetCmekSettings, Google.Logging.V2.GetCmekSettingsRequest, Google.Logging.V2.CmekSettings

  rpc :UpdateCmekSettings,
      Google.Logging.V2.UpdateCmekSettingsRequest,
      Google.Logging.V2.CmekSettings

  rpc :GetSettings, Google.Logging.V2.GetSettingsRequest, Google.Logging.V2.Settings

  rpc :UpdateSettings, Google.Logging.V2.UpdateSettingsRequest, Google.Logging.V2.Settings

  rpc :CopyLogEntries, Google.Logging.V2.CopyLogEntriesRequest, Google.Longrunning.Operation
end

defmodule Google.Logging.V2.ConfigServiceV2.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Logging.V2.ConfigServiceV2.Service
end
