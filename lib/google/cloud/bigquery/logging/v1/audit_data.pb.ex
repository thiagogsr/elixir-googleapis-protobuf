defmodule Google.Cloud.Bigquery.Logging.V1.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: {atom, any},
          response: {atom, any},
          job_completed_event: Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent.t() | nil,
          table_data_read_events: [Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent.t()]
        }

  defstruct [:request, :response, :job_completed_event, :table_data_read_events]

  oneof :request, 0
  oneof :response, 1

  field :table_insert_request, 1,
    type: Google.Cloud.Bigquery.Logging.V1.TableInsertRequest,
    oneof: 0

  field :table_update_request, 16,
    type: Google.Cloud.Bigquery.Logging.V1.TableUpdateRequest,
    oneof: 0

  field :dataset_list_request, 2,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetListRequest,
    oneof: 0

  field :dataset_insert_request, 3,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInsertRequest,
    oneof: 0

  field :dataset_update_request, 4,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetUpdateRequest,
    oneof: 0

  field :job_insert_request, 5, type: Google.Cloud.Bigquery.Logging.V1.JobInsertRequest, oneof: 0
  field :job_query_request, 6, type: Google.Cloud.Bigquery.Logging.V1.JobQueryRequest, oneof: 0

  field :job_get_query_results_request, 7,
    type: Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsRequest,
    oneof: 0

  field :table_data_list_request, 8,
    type: Google.Cloud.Bigquery.Logging.V1.TableDataListRequest,
    oneof: 0

  field :set_iam_policy_request, 20, type: Google.Iam.V1.SetIamPolicyRequest, oneof: 0

  field :table_insert_response, 9,
    type: Google.Cloud.Bigquery.Logging.V1.TableInsertResponse,
    oneof: 1

  field :table_update_response, 10,
    type: Google.Cloud.Bigquery.Logging.V1.TableUpdateResponse,
    oneof: 1

  field :dataset_insert_response, 11,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInsertResponse,
    oneof: 1

  field :dataset_update_response, 12,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetUpdateResponse,
    oneof: 1

  field :job_insert_response, 18,
    type: Google.Cloud.Bigquery.Logging.V1.JobInsertResponse,
    oneof: 1

  field :job_query_response, 13, type: Google.Cloud.Bigquery.Logging.V1.JobQueryResponse, oneof: 1

  field :job_get_query_results_response, 14,
    type: Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsResponse,
    oneof: 1

  field :job_query_done_response, 15,
    type: Google.Cloud.Bigquery.Logging.V1.JobQueryDoneResponse,
    oneof: 1

  field :policy_response, 21, type: Google.Iam.V1.Policy, oneof: 1
  field :job_completed_event, 17, type: Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent

  field :table_data_read_events, 19,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableUpdateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Table.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Table
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_all: boolean
        }

  defstruct [:list_all]

  field :list_all, 1, type: :bool
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetUpdateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Dataset.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Dataset
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobInsertResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:resource]

  field :resource, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          max_results: non_neg_integer,
          default_dataset: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          project_id: String.t(),
          dry_run: boolean
        }

  defstruct [:query, :max_results, :default_dataset, :project_id, :dry_run]

  field :query, 1, type: :string
  field :max_results, 2, type: :uint32
  field :default_dataset, 3, type: Google.Cloud.Bigquery.Logging.V1.DatasetName
  field :project_id, 4, type: :string
  field :dry_run, 5, type: :bool
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_results: non_neg_integer,
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:total_results, :job]

  field :total_results, 1, type: :uint64
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_results: non_neg_integer,
          start_row: non_neg_integer
        }

  defstruct [:max_results, :start_row]

  field :max_results, 1, type: :uint32
  field :start_row, 2, type: :uint64
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobGetQueryResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_results: non_neg_integer,
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:total_results, :job]

  field :total_results, 1, type: :uint64
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobQueryDoneResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:job]

  field :job, 1, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobCompletedEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_name: String.t(),
          job: Google.Cloud.Bigquery.Logging.V1.Job.t() | nil
        }

  defstruct [:event_name, :job]

  field :event_name, 1, type: :string
  field :job, 2, type: Google.Cloud.Bigquery.Logging.V1.Job
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableDataReadEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          referenced_fields: [String.t()]
        }

  defstruct [:table_name, :referenced_fields]

  field :table_name, 1, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :referenced_fields, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableDataListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_row: non_neg_integer,
          max_results: non_neg_integer
        }

  defstruct [:start_row, :max_results]

  field :start_row, 1, type: :uint64
  field :max_results, 2, type: :uint32
end

defmodule Google.Cloud.Bigquery.Logging.V1.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          info: Google.Cloud.Bigquery.Logging.V1.TableInfo.t() | nil,
          schema_json: String.t(),
          view: Google.Cloud.Bigquery.Logging.V1.TableViewDefinition.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          truncate_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct [
    :table_name,
    :info,
    :schema_json,
    :view,
    :expire_time,
    :create_time,
    :truncate_time,
    :update_time,
    :encryption
  ]

  field :table_name, 1, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :info, 2, type: Google.Cloud.Bigquery.Logging.V1.TableInfo
  field :schema_json, 8, type: :string
  field :view, 4, type: Google.Cloud.Bigquery.Logging.V1.TableViewDefinition
  field :expire_time, 5, type: Google.Protobuf.Timestamp
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :truncate_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :encryption, 10, type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableInfo.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          friendly_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:friendly_name, :description, :labels]

  field :friendly_name, 1, type: :string
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableInfo.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableViewDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t()
        }

  defstruct [:query]

  field :query, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_name: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          info: Google.Cloud.Bigquery.Logging.V1.DatasetInfo.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          acl: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.t() | nil,
          default_table_expire_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :dataset_name,
    :info,
    :create_time,
    :update_time,
    :acl,
    :default_table_expire_duration
  ]

  field :dataset_name, 1, type: Google.Cloud.Bigquery.Logging.V1.DatasetName
  field :info, 2, type: Google.Cloud.Bigquery.Logging.V1.DatasetInfo
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
  field :acl, 6, type: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl
  field :default_table_expire_duration, 8, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInfo.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          friendly_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:friendly_name, :description, :labels]

  field :friendly_name, 1, type: :string
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.DatasetInfo.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: String.t(),
          group_email: String.t(),
          user_email: String.t(),
          domain: String.t(),
          special_group: String.t(),
          view_name: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil
        }

  defstruct [:role, :group_email, :user_email, :domain, :special_group, :view_name]

  field :role, 1, type: :string
  field :group_email, 2, type: :string
  field :user_email, 3, type: :string
  field :domain, 4, type: :string
  field :special_group, 5, type: :string
  field :view_name, 6, type: Google.Cloud.Bigquery.Logging.V1.TableName
end

defmodule Google.Cloud.Bigquery.Logging.V1.BigQueryAcl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry.t()]
        }

  defstruct [:entries]

  field :entries, 1, repeated: true, type: Google.Cloud.Bigquery.Logging.V1.BigQueryAcl.Entry
end

defmodule Google.Cloud.Bigquery.Logging.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: Google.Cloud.Bigquery.Logging.V1.JobName.t() | nil,
          job_configuration: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.t() | nil,
          job_status: Google.Cloud.Bigquery.Logging.V1.JobStatus.t() | nil,
          job_statistics: Google.Cloud.Bigquery.Logging.V1.JobStatistics.t() | nil
        }

  defstruct [:job_name, :job_configuration, :job_status, :job_statistics]

  field :job_name, 1, type: Google.Cloud.Bigquery.Logging.V1.JobName
  field :job_configuration, 2, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration
  field :job_status, 3, type: Google.Cloud.Bigquery.Logging.V1.JobStatus
  field :job_statistics, 4, type: Google.Cloud.Bigquery.Logging.V1.JobStatistics
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Query do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          default_dataset: Google.Cloud.Bigquery.Logging.V1.DatasetName.t() | nil,
          table_definitions: [Google.Cloud.Bigquery.Logging.V1.TableDefinition.t()],
          query_priority: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil,
          statement_type: String.t()
        }

  defstruct [
    :query,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :default_dataset,
    :table_definitions,
    :query_priority,
    :destination_table_encryption,
    :statement_type
  ]

  field :query, 1, type: :string
  field :destination_table, 2, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :create_disposition, 3, type: :string
  field :write_disposition, 4, type: :string
  field :default_dataset, 5, type: Google.Cloud.Bigquery.Logging.V1.DatasetName

  field :table_definitions, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.TableDefinition

  field :query_priority, 7, type: :string
  field :destination_table_encryption, 8, type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo
  field :statement_type, 9, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Load do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_uris: [String.t()],
          schema_json: String.t(),
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct [
    :source_uris,
    :schema_json,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :destination_table_encryption
  ]

  field :source_uris, 1, repeated: true, type: :string
  field :schema_json, 6, type: :string
  field :destination_table, 3, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :create_disposition, 4, type: :string
  field :write_disposition, 5, type: :string
  field :destination_table_encryption, 7, type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Extract do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_uris: [String.t()],
          source_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil
        }

  defstruct [:destination_uris, :source_table]

  field :destination_uris, 1, repeated: true, type: :string
  field :source_table, 2, type: Google.Cloud.Bigquery.Logging.V1.TableName
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.TableCopy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_tables: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          destination_table: Google.Cloud.Bigquery.Logging.V1.TableName.t() | nil,
          create_disposition: String.t(),
          write_disposition: String.t(),
          destination_table_encryption: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo.t() | nil
        }

  defstruct [
    :source_tables,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :destination_table_encryption
  ]

  field :source_tables, 1, repeated: true, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :destination_table, 2, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :create_disposition, 3, type: :string
  field :write_disposition, 4, type: :string
  field :destination_table_encryption, 5, type: Google.Cloud.Bigquery.Logging.V1.EncryptionInfo
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          configuration: {atom, any},
          dry_run: boolean,
          labels: %{String.t() => String.t()}
        }

  defstruct [:configuration, :dry_run, :labels]

  oneof :configuration, 0
  field :query, 5, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Query, oneof: 0
  field :load, 6, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Load, oneof: 0
  field :extract, 7, type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.Extract, oneof: 0

  field :table_copy, 8,
    type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.TableCopy,
    oneof: 0

  field :dry_run, 9, type: :bool

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.JobConfiguration.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          source_uris: [String.t()]
        }

  defstruct [:name, :source_uris]

  field :name, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: String.t(),
          error: Google.Rpc.Status.t() | nil,
          additional_errors: [Google.Rpc.Status.t()]
        }

  defstruct [:state, :error, :additional_errors]

  field :state, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
  field :additional_errors, 3, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_ms: integer
        }

  defstruct [:name, :slot_ms]

  field :name, 1, type: :string
  field :slot_ms, 2, type: :int64
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobStatistics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          total_processed_bytes: integer,
          total_billed_bytes: integer,
          billing_tier: integer,
          total_slot_ms: integer,
          reservation_usage: [
            Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage.t()
          ],
          referenced_tables: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          total_tables_processed: integer,
          referenced_views: [Google.Cloud.Bigquery.Logging.V1.TableName.t()],
          total_views_processed: integer,
          query_output_row_count: integer,
          total_load_output_bytes: integer
        }

  defstruct [
    :create_time,
    :start_time,
    :end_time,
    :total_processed_bytes,
    :total_billed_bytes,
    :billing_tier,
    :total_slot_ms,
    :reservation_usage,
    :referenced_tables,
    :total_tables_processed,
    :referenced_views,
    :total_views_processed,
    :query_output_row_count,
    :total_load_output_bytes
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :total_processed_bytes, 4, type: :int64
  field :total_billed_bytes, 5, type: :int64
  field :billing_tier, 7, type: :int32
  field :total_slot_ms, 8, type: :int64

  field :reservation_usage, 14,
    repeated: true,
    type: Google.Cloud.Bigquery.Logging.V1.JobStatistics.ReservationResourceUsage

  field :referenced_tables, 9, repeated: true, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :total_tables_processed, 10, type: :int32
  field :referenced_views, 11, repeated: true, type: Google.Cloud.Bigquery.Logging.V1.TableName
  field :total_views_processed, 12, type: :int32
  field :query_output_row_count, 15, type: :int64
  field :total_load_output_bytes, 13, type: :int64
end

defmodule Google.Cloud.Bigquery.Logging.V1.DatasetName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t()
        }

  defstruct [:project_id, :dataset_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.TableName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t()
        }

  defstruct [:project_id, :dataset_id, :table_id]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :table_id, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.JobName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          location: String.t()
        }

  defstruct [:project_id, :job_id, :location]

  field :project_id, 1, type: :string
  field :job_id, 2, type: :string
  field :location, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Logging.V1.EncryptionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string
end
