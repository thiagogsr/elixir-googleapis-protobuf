defmodule Google.Cloud.Automl.V1beta1.TextExtractionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation: {:text_segment, Google.Cloud.Automl.V1beta1.TextSegment.t() | nil},
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct annotation: nil,
            score: 0.0

  oneof :annotation, 0

  field :text_segment, 3,
    type: Google.Cloud.Automl.V1beta1.TextSegment,
    json_name: "textSegment",
    oneof: 0

  field :score, 1, type: :float
end
defmodule Google.Cloud.Automl.V1beta1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          recall: float | :infinity | :negative_infinity | :nan,
          precision: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct confidence_threshold: 0.0,
            recall: 0.0,
            precision: 0.0,
            f1_score: 0.0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 3, type: :float
  field :precision, 4, type: :float
  field :f1_score, 5, type: :float, json_name: "f1Score"
end
defmodule Google.Cloud.Automl.V1beta1.TextExtractionEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          au_prc: float | :infinity | :negative_infinity | :nan,
          confidence_metrics_entries: [
            Google.Cloud.Automl.V1beta1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry.t()
          ]
        }

  defstruct au_prc: 0.0,
            confidence_metrics_entries: []

  field :au_prc, 1, type: :float, json_name: "auPrc"

  field :confidence_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"
end
