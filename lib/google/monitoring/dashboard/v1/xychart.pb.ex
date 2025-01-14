defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet.PlotType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PLOT_TYPE_UNSPECIFIED | :LINE | :STACKED_AREA | :STACKED_BAR | :HEATMAP

  field :PLOT_TYPE_UNSPECIFIED, 0
  field :LINE, 1
  field :STACKED_AREA, 2
  field :STACKED_BAR, 3
  field :HEATMAP, 4
end
defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet.TargetAxis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TARGET_AXIS_UNSPECIFIED | :Y1 | :Y2

  field :TARGET_AXIS_UNSPECIFIED, 0
  field :Y1, 1
  field :Y2, 2
end
defmodule Google.Monitoring.Dashboard.V1.XyChart.Axis.Scale do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SCALE_UNSPECIFIED | :LINEAR | :LOG10

  field :SCALE_UNSPECIFIED, 0
  field :LINEAR, 1
  field :LOG10, 2
end
defmodule Google.Monitoring.Dashboard.V1.ChartOptions.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :COLOR | :X_RAY | :STATS

  field :MODE_UNSPECIFIED, 0
  field :COLOR, 1
  field :X_RAY, 2
  field :STATS, 3
end
defmodule Google.Monitoring.Dashboard.V1.XyChart.DataSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_query: Google.Monitoring.Dashboard.V1.TimeSeriesQuery.t() | nil,
          plot_type: Google.Monitoring.Dashboard.V1.XyChart.DataSet.PlotType.t(),
          legend_template: String.t(),
          min_alignment_period: Google.Protobuf.Duration.t() | nil,
          target_axis: Google.Monitoring.Dashboard.V1.XyChart.DataSet.TargetAxis.t()
        }

  defstruct time_series_query: nil,
            plot_type: :PLOT_TYPE_UNSPECIFIED,
            legend_template: "",
            min_alignment_period: nil,
            target_axis: :TARGET_AXIS_UNSPECIFIED

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :plot_type, 2,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet.PlotType,
    json_name: "plotType",
    enum: true

  field :legend_template, 3, type: :string, json_name: "legendTemplate"

  field :min_alignment_period, 4,
    type: Google.Protobuf.Duration,
    json_name: "minAlignmentPeriod",
    deprecated: false

  field :target_axis, 5,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet.TargetAxis,
    json_name: "targetAxis",
    enum: true,
    deprecated: false
end
defmodule Google.Monitoring.Dashboard.V1.XyChart.Axis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: String.t(),
          scale: Google.Monitoring.Dashboard.V1.XyChart.Axis.Scale.t()
        }

  defstruct label: "",
            scale: :SCALE_UNSPECIFIED

  field :label, 1, type: :string
  field :scale, 2, type: Google.Monitoring.Dashboard.V1.XyChart.Axis.Scale, enum: true
end
defmodule Google.Monitoring.Dashboard.V1.XyChart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sets: [Google.Monitoring.Dashboard.V1.XyChart.DataSet.t()],
          timeshift_duration: Google.Protobuf.Duration.t() | nil,
          thresholds: [Google.Monitoring.Dashboard.V1.Threshold.t()],
          x_axis: Google.Monitoring.Dashboard.V1.XyChart.Axis.t() | nil,
          y_axis: Google.Monitoring.Dashboard.V1.XyChart.Axis.t() | nil,
          y2_axis: Google.Monitoring.Dashboard.V1.XyChart.Axis.t() | nil,
          chart_options: Google.Monitoring.Dashboard.V1.ChartOptions.t() | nil
        }

  defstruct data_sets: [],
            timeshift_duration: nil,
            thresholds: [],
            x_axis: nil,
            y_axis: nil,
            y2_axis: nil,
            chart_options: nil

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.XyChart.DataSet,
    json_name: "dataSets",
    deprecated: false

  field :timeshift_duration, 4, type: Google.Protobuf.Duration, json_name: "timeshiftDuration"
  field :thresholds, 5, repeated: true, type: Google.Monitoring.Dashboard.V1.Threshold
  field :x_axis, 6, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "xAxis"
  field :y_axis, 7, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "yAxis"
  field :y2_axis, 9, type: Google.Monitoring.Dashboard.V1.XyChart.Axis, json_name: "y2Axis"

  field :chart_options, 8,
    type: Google.Monitoring.Dashboard.V1.ChartOptions,
    json_name: "chartOptions"
end
defmodule Google.Monitoring.Dashboard.V1.ChartOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Monitoring.Dashboard.V1.ChartOptions.Mode.t()
        }

  defstruct mode: :MODE_UNSPECIFIED

  field :mode, 1, type: Google.Monitoring.Dashboard.V1.ChartOptions.Mode, enum: true
end
