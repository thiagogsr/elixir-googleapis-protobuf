defmodule Google.Cloud.Tasks.V2beta2.Queue.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :PAUSED | :DISABLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :DISABLED, 3
end
defmodule Google.Cloud.Tasks.V2beta2.Queue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_type:
            {:app_engine_http_target, Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget.t() | nil}
            | {:pull_target, Google.Cloud.Tasks.V2beta2.PullTarget.t() | nil},
          name: String.t(),
          rate_limits: Google.Cloud.Tasks.V2beta2.RateLimits.t() | nil,
          retry_config: Google.Cloud.Tasks.V2beta2.RetryConfig.t() | nil,
          state: Google.Cloud.Tasks.V2beta2.Queue.State.t(),
          purge_time: Google.Protobuf.Timestamp.t() | nil,
          task_ttl: Google.Protobuf.Duration.t() | nil,
          tombstone_ttl: Google.Protobuf.Duration.t() | nil,
          stats: Google.Cloud.Tasks.V2beta2.QueueStats.t() | nil
        }

  defstruct target_type: nil,
            name: "",
            rate_limits: nil,
            retry_config: nil,
            state: :STATE_UNSPECIFIED,
            purge_time: nil,
            task_ttl: nil,
            tombstone_ttl: nil,
            stats: nil

  oneof :target_type, 0

  field :name, 1, type: :string

  field :app_engine_http_target, 3,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget,
    json_name: "appEngineHttpTarget",
    oneof: 0

  field :pull_target, 4,
    type: Google.Cloud.Tasks.V2beta2.PullTarget,
    json_name: "pullTarget",
    oneof: 0

  field :rate_limits, 5, type: Google.Cloud.Tasks.V2beta2.RateLimits, json_name: "rateLimits"
  field :retry_config, 6, type: Google.Cloud.Tasks.V2beta2.RetryConfig, json_name: "retryConfig"
  field :state, 7, type: Google.Cloud.Tasks.V2beta2.Queue.State, enum: true
  field :purge_time, 8, type: Google.Protobuf.Timestamp, json_name: "purgeTime"
  field :task_ttl, 9, type: Google.Protobuf.Duration, json_name: "taskTtl"
  field :tombstone_ttl, 10, type: Google.Protobuf.Duration, json_name: "tombstoneTtl"
  field :stats, 16, type: Google.Cloud.Tasks.V2beta2.QueueStats, deprecated: false
end
defmodule Google.Cloud.Tasks.V2beta2.RateLimits do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_tasks_dispatched_per_second: float | :infinity | :negative_infinity | :nan,
          max_burst_size: integer,
          max_concurrent_tasks: integer
        }

  defstruct max_tasks_dispatched_per_second: 0.0,
            max_burst_size: 0,
            max_concurrent_tasks: 0

  field :max_tasks_dispatched_per_second, 1,
    type: :double,
    json_name: "maxTasksDispatchedPerSecond"

  field :max_burst_size, 2, type: :int32, json_name: "maxBurstSize"
  field :max_concurrent_tasks, 3, type: :int32, json_name: "maxConcurrentTasks"
end
defmodule Google.Cloud.Tasks.V2beta2.RetryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_attempts: {:max_attempts, integer} | {:unlimited_attempts, boolean},
          max_retry_duration: Google.Protobuf.Duration.t() | nil,
          min_backoff: Google.Protobuf.Duration.t() | nil,
          max_backoff: Google.Protobuf.Duration.t() | nil,
          max_doublings: integer
        }

  defstruct num_attempts: nil,
            max_retry_duration: nil,
            min_backoff: nil,
            max_backoff: nil,
            max_doublings: 0

  oneof :num_attempts, 0

  field :max_attempts, 1, type: :int32, json_name: "maxAttempts", oneof: 0
  field :unlimited_attempts, 2, type: :bool, json_name: "unlimitedAttempts", oneof: 0
  field :max_retry_duration, 3, type: Google.Protobuf.Duration, json_name: "maxRetryDuration"
  field :min_backoff, 4, type: Google.Protobuf.Duration, json_name: "minBackoff"
  field :max_backoff, 5, type: Google.Protobuf.Duration, json_name: "maxBackoff"
  field :max_doublings, 6, type: :int32, json_name: "maxDoublings"
end
defmodule Google.Cloud.Tasks.V2beta2.QueueStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks_count: integer,
          oldest_estimated_arrival_time: Google.Protobuf.Timestamp.t() | nil,
          executed_last_minute_count: integer,
          concurrent_dispatches_count: integer,
          effective_execution_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct tasks_count: 0,
            oldest_estimated_arrival_time: nil,
            executed_last_minute_count: 0,
            concurrent_dispatches_count: 0,
            effective_execution_rate: 0.0

  field :tasks_count, 1, type: :int64, json_name: "tasksCount", deprecated: false

  field :oldest_estimated_arrival_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "oldestEstimatedArrivalTime",
    deprecated: false

  field :executed_last_minute_count, 3,
    type: :int64,
    json_name: "executedLastMinuteCount",
    deprecated: false

  field :concurrent_dispatches_count, 4,
    type: :int64,
    json_name: "concurrentDispatchesCount",
    deprecated: false

  field :effective_execution_rate, 5,
    type: :double,
    json_name: "effectiveExecutionRate",
    deprecated: false
end
