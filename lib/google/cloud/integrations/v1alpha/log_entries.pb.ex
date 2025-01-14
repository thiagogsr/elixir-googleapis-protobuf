defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.PostMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :POST_METHOD_UNSPECIFIED | :POST | :SCHEDULE

  field :POST_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :SCHEDULE, 2
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionDetails.EventExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVENT_EXECUTION_STATE_UNSPECIFIED
          | :ON_HOLD
          | :IN_PROCESS
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED
          | :RETRY_ON_HOLD
          | :SUSPENDED

  field :EVENT_EXECUTION_STATE_UNSPECIFIED, 0
  field :ON_HOLD, 1
  field :IN_PROCESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
  field :RETRY_ON_HOLD, 6
  field :SUSPENDED, 7
end
defmodule Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.TaskExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TASK_EXECUTION_STATE_UNSPECIFIED
          | :PENDING_EXECUTION
          | :IN_PROCESS
          | :SUCCEED
          | :FAILED
          | :FATAL
          | :RETRY_ON_HOLD
          | :SKIPPED
          | :CANCELLED
          | :PENDING_ROLLBACK
          | :ROLLBACK_IN_PROCESS
          | :ROLLEDBACK
          | :SUSPENDED

  field :TASK_EXECUTION_STATE_UNSPECIFIED, 0
  field :PENDING_EXECUTION, 1
  field :IN_PROCESS, 2
  field :SUCCEED, 3
  field :FAILED, 4
  field :FATAL, 5
  field :RETRY_ON_HOLD, 6
  field :SKIPPED, 7
  field :CANCELLED, 8
  field :PENDING_ROLLBACK, 9
  field :ROLLBACK_IN_PROCESS, 10
  field :ROLLEDBACK, 11
  field :SUSPENDED, 12
end
defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.RequestParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end
defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo.ResponseParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end
defmodule Google.Cloud.Integrations.V1alpha.ExecutionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_execution_info_id: String.t(),
          integration: String.t(),
          integration_version: String.t(),
          project_id: String.t(),
          trigger_id: String.t(),
          request_params: %{
            String.t() => Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
          },
          response_params: %{
            String.t() => Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
          },
          post_method: Google.Cloud.Integrations.V1alpha.ExecutionInfo.PostMethod.t(),
          event_execution_details:
            Google.Cloud.Integrations.V1alpha.EventExecutionDetails.t() | nil,
          errors: [Google.Cloud.Integrations.V1alpha.ErrorDetail.t()],
          product: Google.Cloud.Integrations.V1alpha.Product.t(),
          request_id: String.t(),
          task_configs: [Google.Cloud.Integrations.V1alpha.TaskConfig.t()]
        }

  defstruct event_execution_info_id: "",
            integration: "",
            integration_version: "",
            project_id: "",
            trigger_id: "",
            request_params: %{},
            response_params: %{},
            post_method: :POST_METHOD_UNSPECIFIED,
            event_execution_details: nil,
            errors: [],
            product: :PRODUCT_UNSPECIFIED,
            request_id: "",
            task_configs: []

  field :event_execution_info_id, 1, type: :string, json_name: "eventExecutionInfoId"
  field :integration, 2, type: :string
  field :integration_version, 3, type: :string, json_name: "integrationVersion"
  field :project_id, 4, type: :string, json_name: "projectId"
  field :trigger_id, 5, type: :string, json_name: "triggerId"

  field :request_params, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.RequestParamsEntry,
    json_name: "requestParams",
    map: true

  field :response_params, 7,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.ResponseParamsEntry,
    json_name: "responseParams",
    map: true

  field :post_method, 8,
    type: Google.Cloud.Integrations.V1alpha.ExecutionInfo.PostMethod,
    json_name: "postMethod",
    enum: true

  field :event_execution_details, 9,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionDetails,
    json_name: "eventExecutionDetails"

  field :errors, 10, repeated: true, type: Google.Cloud.Integrations.V1alpha.ErrorDetail
  field :product, 11, type: Google.Cloud.Integrations.V1alpha.Product, enum: true
  field :request_id, 12, type: :string, json_name: "requestId"

  field :task_configs, 13,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig,
    json_name: "taskConfigs"
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_execution_state:
            Google.Cloud.Integrations.V1alpha.EventExecutionDetails.EventExecutionState.t(),
          event_execution_snapshot: [Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.t()],
          event_attempt_stats: [Google.Cloud.Integrations.V1alpha.AttemptStats.t()],
          next_execution_time: Google.Protobuf.Timestamp.t() | nil,
          event_retries_count: integer
        }

  defstruct event_execution_state: :EVENT_EXECUTION_STATE_UNSPECIFIED,
            event_execution_snapshot: [],
            event_attempt_stats: [],
            next_execution_time: nil,
            event_retries_count: 0

  field :event_execution_state, 1,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionDetails.EventExecutionState,
    json_name: "eventExecutionState",
    enum: true

  field :event_execution_snapshot, 2,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot,
    json_name: "eventExecutionSnapshot"

  field :event_attempt_stats, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.AttemptStats,
    json_name: "eventAttemptStats"

  field :next_execution_time, 4, type: Google.Protobuf.Timestamp, json_name: "nextExecutionTime"
  field :event_retries_count, 5, type: :int32, json_name: "eventRetriesCount"
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventExecutionSnapshotMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_number: String.t(),
          task: String.t(),
          event_attempt_num: integer,
          task_attempt_num: integer
        }

  defstruct task_number: "",
            task: "",
            event_attempt_num: 0,
            task_attempt_num: 0

  field :task_number, 1, type: :string, json_name: "taskNumber"
  field :task, 2, type: :string
  field :event_attempt_num, 3, type: :int32, json_name: "eventAttemptNum"
  field :task_attempt_num, 4, type: :int32, json_name: "taskAttemptNum"
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.DiffParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end
defmodule Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          checkpoint_task_number: String.t(),
          snapshot_time: Google.Protobuf.Timestamp.t() | nil,
          event_execution_snapshot_metadata:
            Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventExecutionSnapshotMetadata.t()
            | nil,
          task_execution_details: [Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.t()],
          condition_results: [Google.Cloud.Integrations.V1alpha.ConditionResult.t()],
          event_params: %{
            String.t() => Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil
          },
          diff_params: %{String.t() => Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil}
        }

  defstruct checkpoint_task_number: "",
            snapshot_time: nil,
            event_execution_snapshot_metadata: nil,
            task_execution_details: [],
            condition_results: [],
            event_params: %{},
            diff_params: %{}

  field :checkpoint_task_number, 1, type: :string, json_name: "checkpointTaskNumber"
  field :snapshot_time, 2, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"

  field :event_execution_snapshot_metadata, 3,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventExecutionSnapshotMetadata,
    json_name: "eventExecutionSnapshotMetadata"

  field :task_execution_details, 4,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskExecutionDetails,
    json_name: "taskExecutionDetails"

  field :condition_results, 5,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.ConditionResult,
    json_name: "conditionResults"

  field :event_params, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.EventParamsEntry,
    json_name: "eventParams",
    map: true

  field :diff_params, 7,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.EventExecutionSnapshot.DiffParamsEntry,
    json_name: "diffParams",
    map: true
end
defmodule Google.Cloud.Integrations.V1alpha.TaskExecutionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_number: String.t(),
          task_execution_state:
            Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.TaskExecutionState.t(),
          task_attempt_stats: [Google.Cloud.Integrations.V1alpha.AttemptStats.t()]
        }

  defstruct task_number: "",
            task_execution_state: :TASK_EXECUTION_STATE_UNSPECIFIED,
            task_attempt_stats: []

  field :task_number, 1, type: :string, json_name: "taskNumber"

  field :task_execution_state, 2,
    type: Google.Cloud.Integrations.V1alpha.TaskExecutionDetails.TaskExecutionState,
    json_name: "taskExecutionState",
    enum: true

  field :task_attempt_stats, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.AttemptStats,
    json_name: "taskAttemptStats"
end
defmodule Google.Cloud.Integrations.V1alpha.AttemptStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct start_time: nil,
            end_time: nil

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Integrations.V1alpha.ErrorDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_message: String.t(),
          task_number: integer
        }

  defstruct error_message: "",
            task_number: 0

  field :error_message, 1, type: :string, json_name: "errorMessage"
  field :task_number, 2, type: :int32, json_name: "taskNumber"
end
defmodule Google.Cloud.Integrations.V1alpha.ConditionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_task_number: String.t(),
          next_task_number: String.t(),
          result: boolean
        }

  defstruct current_task_number: "",
            next_task_number: "",
            result: false

  field :current_task_number, 1, type: :string, json_name: "currentTaskNumber"
  field :next_task_number, 2, type: :string, json_name: "nextTaskNumber"
  field :result, 3, type: :bool
end
