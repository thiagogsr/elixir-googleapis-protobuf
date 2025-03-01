defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.NextTasksExecutionPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED | :RUN_ALL_MATCH | :RUN_FIRST_MATCH

  field :NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED, 0
  field :RUN_ALL_MATCH, 1
  field :RUN_FIRST_MATCH, 2
end
defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.TaskExecutionStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TASK_EXECUTION_STRATEGY_UNSPECIFIED
          | :WHEN_ALL_SUCCEED
          | :WHEN_ANY_SUCCEED
          | :WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED

  field :TASK_EXECUTION_STRATEGY_UNSPECIFIED, 0
  field :WHEN_ALL_SUCCEED, 1
  field :WHEN_ANY_SUCCEED, 2
  field :WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED, 3
end
defmodule Google.Cloud.Integrations.V1alpha.SuccessPolicy.FinalState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FINAL_STATE_UNSPECIFIED | :SUCCEEDED | :SUSPENDED

  field :FINAL_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :SUSPENDED, 2
end
defmodule Google.Cloud.Integrations.V1alpha.FailurePolicy.RetryStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RETRY_STRATEGY_UNSPECIFIED
          | :IGNORE
          | :NONE
          | :FATAL
          | :FIXED_INTERVAL
          | :LINEAR_BACKOFF
          | :EXPONENTIAL_BACKOFF
          | :RESTART_INTEGRATION_WITH_BACKOFF

  field :RETRY_STRATEGY_UNSPECIFIED, 0
  field :IGNORE, 1
  field :NONE, 2
  field :FATAL, 3
  field :FIXED_INTERVAL, 4
  field :LINEAR_BACKOFF, 5
  field :EXPONENTIAL_BACKOFF, 6
  field :RESTART_INTEGRATION_WITH_BACKOFF, 7
end
defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.ParametersEntry do
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
defmodule Google.Cloud.Integrations.V1alpha.TaskConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: String.t(),
          task_id: String.t(),
          parameters: %{String.t() => Google.Cloud.Integrations.V1alpha.EventParameter.t() | nil},
          failure_policy: Google.Cloud.Integrations.V1alpha.FailurePolicy.t() | nil,
          synchronous_call_failure_policy:
            Google.Cloud.Integrations.V1alpha.FailurePolicy.t() | nil,
          next_tasks: [Google.Cloud.Integrations.V1alpha.NextTask.t()],
          next_tasks_execution_policy:
            Google.Cloud.Integrations.V1alpha.TaskConfig.NextTasksExecutionPolicy.t(),
          task_execution_strategy:
            Google.Cloud.Integrations.V1alpha.TaskConfig.TaskExecutionStrategy.t(),
          display_name: String.t(),
          success_policy: Google.Cloud.Integrations.V1alpha.SuccessPolicy.t() | nil,
          json_validation_option: Google.Cloud.Integrations.V1alpha.JsonValidationOption.t()
        }

  defstruct task: "",
            task_id: "",
            parameters: %{},
            failure_policy: nil,
            synchronous_call_failure_policy: nil,
            next_tasks: [],
            next_tasks_execution_policy: :NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED,
            task_execution_strategy: :TASK_EXECUTION_STRATEGY_UNSPECIFIED,
            display_name: "",
            success_policy: nil,
            json_validation_option: :JSON_VALIDATION_OPTION_UNSPECIFIED

  field :task, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false

  field :parameters, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.ParametersEntry,
    map: true,
    deprecated: false

  field :failure_policy, 4,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy,
    json_name: "failurePolicy",
    deprecated: false

  field :synchronous_call_failure_policy, 5,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy,
    json_name: "synchronousCallFailurePolicy",
    deprecated: false

  field :next_tasks, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.NextTask,
    json_name: "nextTasks",
    deprecated: false

  field :next_tasks_execution_policy, 7,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.NextTasksExecutionPolicy,
    json_name: "nextTasksExecutionPolicy",
    enum: true,
    deprecated: false

  field :task_execution_strategy, 8,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.TaskExecutionStrategy,
    json_name: "taskExecutionStrategy",
    enum: true,
    deprecated: false

  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false

  field :success_policy, 10,
    type: Google.Cloud.Integrations.V1alpha.SuccessPolicy,
    json_name: "successPolicy",
    deprecated: false

  field :json_validation_option, 11,
    type: Google.Cloud.Integrations.V1alpha.JsonValidationOption,
    json_name: "jsonValidationOption",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Integrations.V1alpha.SuccessPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          final_state: Google.Cloud.Integrations.V1alpha.SuccessPolicy.FinalState.t()
        }

  defstruct final_state: :FINAL_STATE_UNSPECIFIED

  field :final_state, 1,
    type: Google.Cloud.Integrations.V1alpha.SuccessPolicy.FinalState,
    json_name: "finalState",
    enum: true
end
defmodule Google.Cloud.Integrations.V1alpha.FailurePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          retry_strategy: Google.Cloud.Integrations.V1alpha.FailurePolicy.RetryStrategy.t(),
          max_retries: integer,
          interval_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct retry_strategy: :RETRY_STRATEGY_UNSPECIFIED,
            max_retries: 0,
            interval_time: nil

  field :retry_strategy, 1,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy.RetryStrategy,
    json_name: "retryStrategy",
    enum: true

  field :max_retries, 2, type: :int32, json_name: "maxRetries"
  field :interval_time, 3, type: Google.Protobuf.Timestamp, json_name: "intervalTime"
end
defmodule Google.Cloud.Integrations.V1alpha.NextTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_config_id: String.t(),
          task_id: String.t(),
          condition: String.t(),
          display_name: String.t()
        }

  defstruct task_config_id: "",
            task_id: "",
            condition: "",
            display_name: ""

  field :task_config_id, 1, type: :string, json_name: "taskConfigId"
  field :task_id, 2, type: :string, json_name: "taskId"
  field :condition, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
end
