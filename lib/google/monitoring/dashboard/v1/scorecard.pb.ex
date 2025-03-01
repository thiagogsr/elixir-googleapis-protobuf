defmodule Google.Monitoring.Dashboard.V1.Scorecard.GaugeView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lower_bound: float | :infinity | :negative_infinity | :nan,
          upper_bound: float | :infinity | :negative_infinity | :nan
        }

  defstruct lower_bound: 0.0,
            upper_bound: 0.0

  field :lower_bound, 1, type: :double, json_name: "lowerBound"
  field :upper_bound, 2, type: :double, json_name: "upperBound"
end
defmodule Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          spark_chart_type: Google.Monitoring.Dashboard.V1.SparkChartType.t(),
          min_alignment_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct spark_chart_type: :SPARK_CHART_TYPE_UNSPECIFIED,
            min_alignment_period: nil

  field :spark_chart_type, 1,
    type: Google.Monitoring.Dashboard.V1.SparkChartType,
    json_name: "sparkChartType",
    enum: true,
    deprecated: false

  field :min_alignment_period, 2, type: Google.Protobuf.Duration, json_name: "minAlignmentPeriod"
end
defmodule Google.Monitoring.Dashboard.V1.Scorecard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_view:
            {:gauge_view, Google.Monitoring.Dashboard.V1.Scorecard.GaugeView.t() | nil}
            | {:spark_chart_view,
               Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView.t() | nil},
          time_series_query: Google.Monitoring.Dashboard.V1.TimeSeriesQuery.t() | nil,
          thresholds: [Google.Monitoring.Dashboard.V1.Threshold.t()]
        }

  defstruct data_view: nil,
            time_series_query: nil,
            thresholds: []

  oneof :data_view, 0

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :gauge_view, 4,
    type: Google.Monitoring.Dashboard.V1.Scorecard.GaugeView,
    json_name: "gaugeView",
    oneof: 0

  field :spark_chart_view, 5,
    type: Google.Monitoring.Dashboard.V1.Scorecard.SparkChartView,
    json_name: "sparkChartView",
    oneof: 0

  field :thresholds, 6, repeated: true, type: Google.Monitoring.Dashboard.V1.Threshold
end
