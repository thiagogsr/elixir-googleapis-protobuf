defmodule Google.Monitoring.V3.AlertPolicy.ConditionCombinerType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :COMBINE_UNSPECIFIED | :AND | :OR | :AND_WITH_MATCHING_RESOURCE

  field :COMBINE_UNSPECIFIED, 0
  field :AND, 1
  field :OR, 2
  field :AND_WITH_MATCHING_RESOURCE, 3
end
defmodule Google.Monitoring.V3.AlertPolicy.Documentation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t()
        }

  defstruct content: "",
            mime_type: ""

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition.Trigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:count, integer} | {:percent, float | :infinity | :negative_infinity | :nan}
        }

  defstruct type: nil

  oneof :type, 0

  field :count, 1, type: :int32, oneof: 0
  field :percent, 2, type: :double, oneof: 0
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregations: [Google.Monitoring.V3.Aggregation.t()],
          denominator_filter: String.t(),
          denominator_aggregations: [Google.Monitoring.V3.Aggregation.t()],
          comparison: Google.Monitoring.V3.ComparisonType.t(),
          threshold_value: float | :infinity | :negative_infinity | :nan,
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct filter: "",
            aggregations: [],
            denominator_filter: "",
            denominator_aggregations: [],
            comparison: :COMPARISON_UNSPECIFIED,
            threshold_value: 0.0,
            duration: nil,
            trigger: nil

  field :filter, 2, type: :string, deprecated: false
  field :aggregations, 8, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :denominator_filter, 9, type: :string, json_name: "denominatorFilter"

  field :denominator_aggregations, 10,
    repeated: true,
    type: Google.Monitoring.V3.Aggregation,
    json_name: "denominatorAggregations"

  field :comparison, 4, type: Google.Monitoring.V3.ComparisonType, enum: true
  field :threshold_value, 5, type: :double, json_name: "thresholdValue"
  field :duration, 6, type: Google.Protobuf.Duration
  field :trigger, 7, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregations: [Google.Monitoring.V3.Aggregation.t()],
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct filter: "",
            aggregations: [],
            duration: nil,
            trigger: nil

  field :filter, 1, type: :string, deprecated: false
  field :aggregations, 5, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry do
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
defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          label_extractors: %{String.t() => String.t()}
        }

  defstruct filter: "",
            label_extractors: %{}

  field :filter, 1, type: :string, deprecated: false

  field :label_extractors, 2,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry,
    json_name: "labelExtractors",
    map: true
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct query: "",
            duration: nil,
            trigger: nil

  field :query, 1, type: :string
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end
defmodule Google.Monitoring.V3.AlertPolicy.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition:
            {:condition_threshold,
             Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold.t() | nil}
            | {:condition_absent,
               Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence.t() | nil}
            | {:condition_matched_log,
               Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.t() | nil}
            | {:condition_monitoring_query_language,
               Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition.t()
               | nil},
          name: String.t(),
          display_name: String.t()
        }

  defstruct condition: nil,
            name: "",
            display_name: ""

  oneof :condition, 0

  field :name, 12, type: :string
  field :display_name, 6, type: :string, json_name: "displayName"

  field :condition_threshold, 1,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold,
    json_name: "conditionThreshold",
    oneof: 0

  field :condition_absent, 2,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence,
    json_name: "conditionAbsent",
    oneof: 0

  field :condition_matched_log, 20,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch,
    json_name: "conditionMatchedLog",
    oneof: 0

  field :condition_monitoring_query_language, 19,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition,
    json_name: "conditionMonitoringQueryLanguage",
    oneof: 0
end
defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period: Google.Protobuf.Duration.t() | nil
        }

  defstruct period: nil

  field :period, 1, type: Google.Protobuf.Duration
end
defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_rate_limit:
            Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit.t() | nil,
          auto_close: Google.Protobuf.Duration.t() | nil
        }

  defstruct notification_rate_limit: nil,
            auto_close: nil

  field :notification_rate_limit, 1,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit,
    json_name: "notificationRateLimit"

  field :auto_close, 3, type: Google.Protobuf.Duration, json_name: "autoClose"
end
defmodule Google.Monitoring.V3.AlertPolicy.UserLabelsEntry do
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
defmodule Google.Monitoring.V3.AlertPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          documentation: Google.Monitoring.V3.AlertPolicy.Documentation.t() | nil,
          user_labels: %{String.t() => String.t()},
          conditions: [Google.Monitoring.V3.AlertPolicy.Condition.t()],
          combiner: Google.Monitoring.V3.AlertPolicy.ConditionCombinerType.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil,
          validity: Google.Rpc.Status.t() | nil,
          notification_channels: [String.t()],
          creation_record: Google.Monitoring.V3.MutationRecord.t() | nil,
          mutation_record: Google.Monitoring.V3.MutationRecord.t() | nil,
          alert_strategy: Google.Monitoring.V3.AlertPolicy.AlertStrategy.t() | nil
        }

  defstruct name: "",
            display_name: "",
            documentation: nil,
            user_labels: %{},
            conditions: [],
            combiner: :COMBINE_UNSPECIFIED,
            enabled: nil,
            validity: nil,
            notification_channels: [],
            creation_record: nil,
            mutation_record: nil,
            alert_strategy: nil

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :documentation, 13, type: Google.Monitoring.V3.AlertPolicy.Documentation

  field :user_labels, 16,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :conditions, 12, repeated: true, type: Google.Monitoring.V3.AlertPolicy.Condition
  field :combiner, 6, type: Google.Monitoring.V3.AlertPolicy.ConditionCombinerType, enum: true
  field :enabled, 17, type: Google.Protobuf.BoolValue
  field :validity, 18, type: Google.Rpc.Status

  field :notification_channels, 14,
    repeated: true,
    type: :string,
    json_name: "notificationChannels"

  field :creation_record, 10,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "creationRecord"

  field :mutation_record, 11,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "mutationRecord"

  field :alert_strategy, 21,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy,
    json_name: "alertStrategy"
end
