defmodule Google.Cloud.Automl.V1beta1.ClassificationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CLASSIFICATION_TYPE_UNSPECIFIED | :MULTICLASS | :MULTILABEL

  field :CLASSIFICATION_TYPE_UNSPECIFIED, 0
  field :MULTICLASS, 1
  field :MULTILABEL, 2
end
defmodule Google.Cloud.Automl.V1beta1.ClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct score: 0.0

  field :score, 1, type: :float
end
defmodule Google.Cloud.Automl.V1beta1.VideoClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          classification_annotation:
            Google.Cloud.Automl.V1beta1.ClassificationAnnotation.t() | nil,
          time_segment: Google.Cloud.Automl.V1beta1.TimeSegment.t() | nil
        }

  defstruct type: "",
            classification_annotation: nil,
            time_segment: nil

  field :type, 1, type: :string

  field :classification_annotation, 2,
    type: Google.Cloud.Automl.V1beta1.ClassificationAnnotation,
    json_name: "classificationAnnotation"

  field :time_segment, 3, type: Google.Cloud.Automl.V1beta1.TimeSegment, json_name: "timeSegment"
end
defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          position_threshold: integer,
          recall: float | :infinity | :negative_infinity | :nan,
          precision: float | :infinity | :negative_infinity | :nan,
          false_positive_rate: float | :infinity | :negative_infinity | :nan,
          f1_score: float | :infinity | :negative_infinity | :nan,
          recall_at1: float | :infinity | :negative_infinity | :nan,
          precision_at1: float | :infinity | :negative_infinity | :nan,
          false_positive_rate_at1: float | :infinity | :negative_infinity | :nan,
          f1_score_at1: float | :infinity | :negative_infinity | :nan,
          true_positive_count: integer,
          false_positive_count: integer,
          false_negative_count: integer,
          true_negative_count: integer
        }

  defstruct confidence_threshold: 0.0,
            position_threshold: 0,
            recall: 0.0,
            precision: 0.0,
            false_positive_rate: 0.0,
            f1_score: 0.0,
            recall_at1: 0.0,
            precision_at1: 0.0,
            false_positive_rate_at1: 0.0,
            f1_score_at1: 0.0,
            true_positive_count: 0,
            false_positive_count: 0,
            false_negative_count: 0,
            true_negative_count: 0

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :position_threshold, 14, type: :int32, json_name: "positionThreshold"
  field :recall, 2, type: :float
  field :precision, 3, type: :float
  field :false_positive_rate, 8, type: :float, json_name: "falsePositiveRate"
  field :f1_score, 4, type: :float, json_name: "f1Score"
  field :recall_at1, 5, type: :float, json_name: "recallAt1"
  field :precision_at1, 6, type: :float, json_name: "precisionAt1"
  field :false_positive_rate_at1, 9, type: :float, json_name: "falsePositiveRateAt1"
  field :f1_score_at1, 7, type: :float, json_name: "f1ScoreAt1"
  field :true_positive_count, 10, type: :int64, json_name: "truePositiveCount"
  field :false_positive_count, 11, type: :int64, json_name: "falsePositiveCount"
  field :false_negative_count, 12, type: :int64, json_name: "falseNegativeCount"
  field :true_negative_count, 13, type: :int64, json_name: "trueNegativeCount"
end
defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          example_count: [integer]
        }

  defstruct example_count: []

  field :example_count, 1, repeated: true, type: :int32, json_name: "exampleCount"
end
defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_id: [String.t()],
          display_name: [String.t()],
          row: [
            Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row.t()
          ]
        }

  defstruct annotation_spec_id: [],
            display_name: [],
            row: []

  field :annotation_spec_id, 1, repeated: true, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, repeated: true, type: :string, json_name: "displayName"

  field :row, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.Row
end
defmodule Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          au_prc: float | :infinity | :negative_infinity | :nan,
          base_au_prc: float | :infinity | :negative_infinity | :nan,
          au_roc: float | :infinity | :negative_infinity | :nan,
          log_loss: float | :infinity | :negative_infinity | :nan,
          confidence_metrics_entry: [
            Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry.t()
          ],
          confusion_matrix:
            Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix.t() | nil,
          annotation_spec_id: [String.t()]
        }

  defstruct au_prc: 0.0,
            base_au_prc: 0.0,
            au_roc: 0.0,
            log_loss: 0.0,
            confidence_metrics_entry: [],
            confusion_matrix: nil,
            annotation_spec_id: []

  field :au_prc, 1, type: :float, json_name: "auPrc"
  field :base_au_prc, 2, type: :float, json_name: "baseAuPrc", deprecated: true
  field :au_roc, 6, type: :float, json_name: "auRoc"
  field :log_loss, 7, type: :float, json_name: "logLoss"

  field :confidence_metrics_entry, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntry"

  field :confusion_matrix, 4,
    type: Google.Cloud.Automl.V1beta1.ClassificationEvaluationMetrics.ConfusionMatrix,
    json_name: "confusionMatrix"

  field :annotation_spec_id, 5, repeated: true, type: :string, json_name: "annotationSpecId"
end
