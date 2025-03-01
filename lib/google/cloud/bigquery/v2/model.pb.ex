defmodule Google.Cloud.Bigquery.V2.Model.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :LINEAR_REGRESSION
          | :LOGISTIC_REGRESSION
          | :KMEANS
          | :MATRIX_FACTORIZATION
          | :DNN_CLASSIFIER
          | :TENSORFLOW
          | :DNN_REGRESSOR
          | :BOOSTED_TREE_REGRESSOR
          | :BOOSTED_TREE_CLASSIFIER
          | :ARIMA
          | :AUTOML_REGRESSOR
          | :AUTOML_CLASSIFIER
          | :ARIMA_PLUS

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :LINEAR_REGRESSION, 1
  field :LOGISTIC_REGRESSION, 2
  field :KMEANS, 3
  field :MATRIX_FACTORIZATION, 4
  field :DNN_CLASSIFIER, 5
  field :TENSORFLOW, 6
  field :DNN_REGRESSOR, 7
  field :BOOSTED_TREE_REGRESSOR, 9
  field :BOOSTED_TREE_CLASSIFIER, 10
  field :ARIMA, 11
  field :AUTOML_REGRESSOR, 12
  field :AUTOML_CLASSIFIER, 13
  field :ARIMA_PLUS, 19
end
defmodule Google.Cloud.Bigquery.V2.Model.LossType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOSS_TYPE_UNSPECIFIED | :MEAN_SQUARED_LOSS | :MEAN_LOG_LOSS

  field :LOSS_TYPE_UNSPECIFIED, 0
  field :MEAN_SQUARED_LOSS, 1
  field :MEAN_LOG_LOSS, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.DistanceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DISTANCE_TYPE_UNSPECIFIED | :EUCLIDEAN | :COSINE

  field :DISTANCE_TYPE_UNSPECIFIED, 0
  field :EUCLIDEAN, 1
  field :COSINE, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.DataSplitMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DATA_SPLIT_METHOD_UNSPECIFIED
          | :RANDOM
          | :CUSTOM
          | :SEQUENTIAL
          | :NO_SPLIT
          | :AUTO_SPLIT

  field :DATA_SPLIT_METHOD_UNSPECIFIED, 0
  field :RANDOM, 1
  field :CUSTOM, 2
  field :SEQUENTIAL, 3
  field :NO_SPLIT, 4
  field :AUTO_SPLIT, 5
end
defmodule Google.Cloud.Bigquery.V2.Model.DataFrequency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DATA_FREQUENCY_UNSPECIFIED
          | :AUTO_FREQUENCY
          | :YEARLY
          | :QUARTERLY
          | :MONTHLY
          | :WEEKLY
          | :DAILY
          | :HOURLY
          | :PER_MINUTE

  field :DATA_FREQUENCY_UNSPECIFIED, 0
  field :AUTO_FREQUENCY, 1
  field :YEARLY, 2
  field :QUARTERLY, 3
  field :MONTHLY, 4
  field :WEEKLY, 5
  field :DAILY, 6
  field :HOURLY, 7
  field :PER_MINUTE, 8
end
defmodule Google.Cloud.Bigquery.V2.Model.HolidayRegion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HOLIDAY_REGION_UNSPECIFIED
          | :GLOBAL
          | :NA
          | :JAPAC
          | :EMEA
          | :LAC
          | :AE
          | :AR
          | :AT
          | :AU
          | :BE
          | :BR
          | :CA
          | :CH
          | :CL
          | :CN
          | :CO
          | :CS
          | :CZ
          | :DE
          | :DK
          | :DZ
          | :EC
          | :EE
          | :EG
          | :ES
          | :FI
          | :FR
          | :GB
          | :GR
          | :HK
          | :HU
          | :ID
          | :IE
          | :IL
          | :IN
          | :IR
          | :IT
          | :JP
          | :KR
          | :LV
          | :MA
          | :MX
          | :MY
          | :NG
          | :NL
          | :NO
          | :NZ
          | :PE
          | :PH
          | :PK
          | :PL
          | :PT
          | :RO
          | :RS
          | :RU
          | :SA
          | :SE
          | :SG
          | :SI
          | :SK
          | :TH
          | :TR
          | :TW
          | :UA
          | :US
          | :VE
          | :VN
          | :ZA

  field :HOLIDAY_REGION_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :NA, 2
  field :JAPAC, 3
  field :EMEA, 4
  field :LAC, 5
  field :AE, 6
  field :AR, 7
  field :AT, 8
  field :AU, 9
  field :BE, 10
  field :BR, 11
  field :CA, 12
  field :CH, 13
  field :CL, 14
  field :CN, 15
  field :CO, 16
  field :CS, 17
  field :CZ, 18
  field :DE, 19
  field :DK, 20
  field :DZ, 21
  field :EC, 22
  field :EE, 23
  field :EG, 24
  field :ES, 25
  field :FI, 26
  field :FR, 27
  field :GB, 28
  field :GR, 29
  field :HK, 30
  field :HU, 31
  field :ID, 32
  field :IE, 33
  field :IL, 34
  field :IN, 35
  field :IR, 36
  field :IT, 37
  field :JP, 38
  field :KR, 39
  field :LV, 40
  field :MA, 41
  field :MX, 42
  field :MY, 43
  field :NG, 44
  field :NL, 45
  field :NO, 46
  field :NZ, 47
  field :PE, 48
  field :PH, 49
  field :PK, 50
  field :PL, 51
  field :PT, 52
  field :RO, 53
  field :RS, 54
  field :RU, 55
  field :SA, 56
  field :SE, 57
  field :SG, 58
  field :SI, 59
  field :SK, 60
  field :TH, 61
  field :TR, 62
  field :TW, 63
  field :UA, 64
  field :US, 65
  field :VE, 66
  field :VN, 67
  field :ZA, 68
end
defmodule Google.Cloud.Bigquery.V2.Model.LearnRateStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LEARN_RATE_STRATEGY_UNSPECIFIED | :LINE_SEARCH | :CONSTANT

  field :LEARN_RATE_STRATEGY_UNSPECIFIED, 0
  field :LINE_SEARCH, 1
  field :CONSTANT, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.OptimizationStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPTIMIZATION_STRATEGY_UNSPECIFIED
          | :BATCH_GRADIENT_DESCENT
          | :NORMAL_EQUATION

  field :OPTIMIZATION_STRATEGY_UNSPECIFIED, 0
  field :BATCH_GRADIENT_DESCENT, 1
  field :NORMAL_EQUATION, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.FeedbackType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FEEDBACK_TYPE_UNSPECIFIED | :IMPLICIT | :EXPLICIT

  field :FEEDBACK_TYPE_UNSPECIFIED, 0
  field :IMPLICIT, 1
  field :EXPLICIT, 2
end
defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SEASONAL_PERIOD_TYPE_UNSPECIFIED
          | :NO_SEASONALITY
          | :DAILY
          | :WEEKLY
          | :MONTHLY
          | :QUARTERLY
          | :YEARLY

  field :SEASONAL_PERIOD_TYPE_UNSPECIFIED, 0
  field :NO_SEASONALITY, 1
  field :DAILY, 2
  field :WEEKLY, 3
  field :MONTHLY, 4
  field :QUARTERLY, 5
  field :YEARLY, 6
end
defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED
          | :RANDOM
          | :CUSTOM
          | :KMEANS_PLUS_PLUS

  field :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED, 0
  field :RANDOM, 1
  field :CUSTOM, 2
  field :KMEANS_PLUS_PLUS, 3
end
defmodule Google.Cloud.Bigquery.V2.Model.SeasonalPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.V2.Model.KmeansEnums do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.V2.Model.RegressionMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_absolute_error: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_error: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_log_error: Google.Protobuf.DoubleValue.t() | nil,
          median_absolute_error: Google.Protobuf.DoubleValue.t() | nil,
          r_squared: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct mean_absolute_error: nil,
            mean_squared_error: nil,
            mean_squared_log_error: nil,
            median_absolute_error: nil,
            r_squared: nil

  field :mean_absolute_error, 1, type: Google.Protobuf.DoubleValue, json_name: "meanAbsoluteError"
  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue, json_name: "meanSquaredError"

  field :mean_squared_log_error, 3,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanSquaredLogError"

  field :median_absolute_error, 4,
    type: Google.Protobuf.DoubleValue,
    json_name: "medianAbsoluteError"

  field :r_squared, 5, type: Google.Protobuf.DoubleValue, json_name: "rSquared"
end
defmodule Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          precision: Google.Protobuf.DoubleValue.t() | nil,
          recall: Google.Protobuf.DoubleValue.t() | nil,
          accuracy: Google.Protobuf.DoubleValue.t() | nil,
          threshold: Google.Protobuf.DoubleValue.t() | nil,
          f1_score: Google.Protobuf.DoubleValue.t() | nil,
          log_loss: Google.Protobuf.DoubleValue.t() | nil,
          roc_auc: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct precision: nil,
            recall: nil,
            accuracy: nil,
            threshold: nil,
            f1_score: nil,
            log_loss: nil,
            roc_auc: nil

  field :precision, 1, type: Google.Protobuf.DoubleValue
  field :recall, 2, type: Google.Protobuf.DoubleValue
  field :accuracy, 3, type: Google.Protobuf.DoubleValue
  field :threshold, 4, type: Google.Protobuf.DoubleValue
  field :f1_score, 5, type: Google.Protobuf.DoubleValue, json_name: "f1Score"
  field :log_loss, 6, type: Google.Protobuf.DoubleValue, json_name: "logLoss"
  field :roc_auc, 7, type: Google.Protobuf.DoubleValue, json_name: "rocAuc"
end
defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          positive_class_threshold: Google.Protobuf.DoubleValue.t() | nil,
          true_positives: Google.Protobuf.Int64Value.t() | nil,
          false_positives: Google.Protobuf.Int64Value.t() | nil,
          true_negatives: Google.Protobuf.Int64Value.t() | nil,
          false_negatives: Google.Protobuf.Int64Value.t() | nil,
          precision: Google.Protobuf.DoubleValue.t() | nil,
          recall: Google.Protobuf.DoubleValue.t() | nil,
          f1_score: Google.Protobuf.DoubleValue.t() | nil,
          accuracy: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct positive_class_threshold: nil,
            true_positives: nil,
            false_positives: nil,
            true_negatives: nil,
            false_negatives: nil,
            precision: nil,
            recall: nil,
            f1_score: nil,
            accuracy: nil

  field :positive_class_threshold, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "positiveClassThreshold"

  field :true_positives, 2, type: Google.Protobuf.Int64Value, json_name: "truePositives"
  field :false_positives, 3, type: Google.Protobuf.Int64Value, json_name: "falsePositives"
  field :true_negatives, 4, type: Google.Protobuf.Int64Value, json_name: "trueNegatives"
  field :false_negatives, 5, type: Google.Protobuf.Int64Value, json_name: "falseNegatives"
  field :precision, 6, type: Google.Protobuf.DoubleValue
  field :recall, 7, type: Google.Protobuf.DoubleValue
  field :f1_score, 8, type: Google.Protobuf.DoubleValue, json_name: "f1Score"
  field :accuracy, 9, type: Google.Protobuf.DoubleValue
end
defmodule Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_classification_metrics:
            Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics.t() | nil,
          binary_confusion_matrix_list: [
            Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix.t()
          ],
          positive_label: String.t(),
          negative_label: String.t()
        }

  defstruct aggregate_classification_metrics: nil,
            binary_confusion_matrix_list: [],
            positive_label: "",
            negative_label: ""

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics,
    json_name: "aggregateClassificationMetrics"

  field :binary_confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.BinaryConfusionMatrix,
    json_name: "binaryConfusionMatrixList"

  field :positive_label, 3, type: :string, json_name: "positiveLabel"
  field :negative_label, 4, type: :string, json_name: "negativeLabel"
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predicted_label: String.t(),
          item_count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct predicted_label: "",
            item_count: nil

  field :predicted_label, 1, type: :string, json_name: "predictedLabel"
  field :item_count, 2, type: Google.Protobuf.Int64Value, json_name: "itemCount"
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actual_label: String.t(),
          entries: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry.t()
          ]
        }

  defstruct actual_label: "",
            entries: []

  field :actual_label, 1, type: :string, json_name: "actualLabel"

  field :entries, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Entry
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          confidence_threshold: Google.Protobuf.DoubleValue.t() | nil,
          rows: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row.t()
          ]
        }

  defstruct confidence_threshold: nil,
            rows: []

  field :confidence_threshold, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "confidenceThreshold"

  field :rows, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.Row
end
defmodule Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_classification_metrics:
            Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics.t() | nil,
          confusion_matrix_list: [
            Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix.t()
          ]
        }

  defstruct aggregate_classification_metrics: nil,
            confusion_matrix_list: []

  field :aggregate_classification_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.AggregateClassificationMetrics,
    json_name: "aggregateClassificationMetrics"

  field :confusion_matrix_list, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.ConfusionMatrix,
    json_name: "confusionMatrixList"
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: String.t(),
          count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct category: "",
            count: nil

  field :category, 1, type: :string
  field :count, 2, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category_counts: [
            Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount.t()
          ]
        }

  defstruct category_counts: []

  field :category_counts, 1,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.CategoryCount,
    json_name: "categoryCounts"
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:numerical_value, Google.Protobuf.DoubleValue.t() | nil}
            | {:categorical_value,
               Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue.t()
               | nil},
          feature_column: String.t()
        }

  defstruct value: nil,
            feature_column: ""

  oneof :value, 0

  field :feature_column, 1, type: :string, json_name: "featureColumn"

  field :numerical_value, 2,
    type: Google.Protobuf.DoubleValue,
    json_name: "numericalValue",
    oneof: 0

  field :categorical_value, 3,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.CategoricalValue,
    json_name: "categoricalValue",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          centroid_id: integer,
          feature_values: [
            Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue.t()
          ],
          count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct centroid_id: 0,
            feature_values: [],
            count: nil

  field :centroid_id, 1, type: :int64, json_name: "centroidId"

  field :feature_values, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.FeatureValue,
    json_name: "featureValues"

  field :count, 3, type: Google.Protobuf.Int64Value
end
defmodule Google.Cloud.Bigquery.V2.Model.ClusteringMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          davies_bouldin_index: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_distance: Google.Protobuf.DoubleValue.t() | nil,
          clusters: [Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster.t()]
        }

  defstruct davies_bouldin_index: nil,
            mean_squared_distance: nil,
            clusters: []

  field :davies_bouldin_index, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "daviesBouldinIndex"

  field :mean_squared_distance, 2,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanSquaredDistance"

  field :clusters, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.Cluster
end
defmodule Google.Cloud.Bigquery.V2.Model.RankingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_average_precision: Google.Protobuf.DoubleValue.t() | nil,
          mean_squared_error: Google.Protobuf.DoubleValue.t() | nil,
          normalized_discounted_cumulative_gain: Google.Protobuf.DoubleValue.t() | nil,
          average_rank: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct mean_average_precision: nil,
            mean_squared_error: nil,
            normalized_discounted_cumulative_gain: nil,
            average_rank: nil

  field :mean_average_precision, 1,
    type: Google.Protobuf.DoubleValue,
    json_name: "meanAveragePrecision"

  field :mean_squared_error, 2, type: Google.Protobuf.DoubleValue, json_name: "meanSquaredError"

  field :normalized_discounted_cumulative_gain, 3,
    type: Google.Protobuf.DoubleValue,
    json_name: "normalizedDiscountedCumulativeGain"

  field :average_rank, 4, type: Google.Protobuf.DoubleValue, json_name: "averageRank"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          arima_fitting_metrics: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t() | nil,
          has_drift: boolean,
          time_series_id: String.t(),
          time_series_ids: [String.t()],
          seasonal_periods: [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()],
          has_holiday_effect: Google.Protobuf.BoolValue.t() | nil,
          has_spikes_and_dips: Google.Protobuf.BoolValue.t() | nil,
          has_step_changes: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct non_seasonal_order: nil,
            arima_fitting_metrics: nil,
            has_drift: false,
            time_series_id: "",
            time_series_ids: [],
            seasonal_periods: [],
            has_holiday_effect: nil,
            has_spikes_and_dips: nil,
            has_step_changes: nil

  field :non_seasonal_order, 1,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :arima_fitting_metrics, 2,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics"

  field :has_drift, 3, type: :bool, json_name: "hasDrift"
  field :time_series_id, 4, type: :string, json_name: "timeSeriesId"
  field :time_series_ids, 9, repeated: true, type: :string, json_name: "timeSeriesIds"

  field :seasonal_periods, 5,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true

  field :has_holiday_effect, 6, type: Google.Protobuf.BoolValue, json_name: "hasHolidayEffect"
  field :has_spikes_and_dips, 7, type: Google.Protobuf.BoolValue, json_name: "hasSpikesAndDips"
  field :has_step_changes, 8, type: Google.Protobuf.BoolValue, json_name: "hasStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: [Google.Cloud.Bigquery.V2.Model.ArimaOrder.t()],
          arima_fitting_metrics: [Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t()],
          seasonal_periods: [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()],
          has_drift: [boolean],
          time_series_id: [String.t()],
          arima_single_model_forecasting_metrics: [
            Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics.t()
          ]
        }

  defstruct non_seasonal_order: [],
            arima_fitting_metrics: [],
            seasonal_periods: [],
            has_drift: [],
            time_series_id: [],
            arima_single_model_forecasting_metrics: []

  field :non_seasonal_order, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder",
    deprecated: true

  field :arima_fitting_metrics, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics",
    deprecated: true

  field :seasonal_periods, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true,
    deprecated: true

  field :has_drift, 4, repeated: true, type: :bool, json_name: "hasDrift", deprecated: true

  field :time_series_id, 5,
    repeated: true,
    type: :string,
    json_name: "timeSeriesId",
    deprecated: true

  field :arima_single_model_forecasting_metrics, 6,
    repeated: true,
    type:
      Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.ArimaSingleModelForecastingMetrics,
    json_name: "arimaSingleModelForecastingMetrics"
end
defmodule Google.Cloud.Bigquery.V2.Model.EvaluationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics:
            {:regression_metrics, Google.Cloud.Bigquery.V2.Model.RegressionMetrics.t() | nil}
            | {:binary_classification_metrics,
               Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics.t() | nil}
            | {:multi_class_classification_metrics,
               Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics.t() | nil}
            | {:clustering_metrics, Google.Cloud.Bigquery.V2.Model.ClusteringMetrics.t() | nil}
            | {:ranking_metrics, Google.Cloud.Bigquery.V2.Model.RankingMetrics.t() | nil}
            | {:arima_forecasting_metrics,
               Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics.t() | nil}
        }

  defstruct metrics: nil

  oneof :metrics, 0

  field :regression_metrics, 1,
    type: Google.Cloud.Bigquery.V2.Model.RegressionMetrics,
    json_name: "regressionMetrics",
    oneof: 0

  field :binary_classification_metrics, 2,
    type: Google.Cloud.Bigquery.V2.Model.BinaryClassificationMetrics,
    json_name: "binaryClassificationMetrics",
    oneof: 0

  field :multi_class_classification_metrics, 3,
    type: Google.Cloud.Bigquery.V2.Model.MultiClassClassificationMetrics,
    json_name: "multiClassClassificationMetrics",
    oneof: 0

  field :clustering_metrics, 4,
    type: Google.Cloud.Bigquery.V2.Model.ClusteringMetrics,
    json_name: "clusteringMetrics",
    oneof: 0

  field :ranking_metrics, 5,
    type: Google.Cloud.Bigquery.V2.Model.RankingMetrics,
    json_name: "rankingMetrics",
    oneof: 0

  field :arima_forecasting_metrics, 6,
    type: Google.Cloud.Bigquery.V2.Model.ArimaForecastingMetrics,
    json_name: "arimaForecastingMetrics",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.V2.Model.DataSplitResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_table: Google.Cloud.Bigquery.V2.TableReference.t() | nil,
          evaluation_table: Google.Cloud.Bigquery.V2.TableReference.t() | nil
        }

  defstruct training_table: nil,
            evaluation_table: nil

  field :training_table, 1,
    type: Google.Cloud.Bigquery.V2.TableReference,
    json_name: "trainingTable"

  field :evaluation_table, 2,
    type: Google.Cloud.Bigquery.V2.TableReference,
    json_name: "evaluationTable"
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaOrder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          p: integer,
          d: integer,
          q: integer
        }

  defstruct p: 0,
            d: 0,
            q: 0

  field :p, 1, type: :int64
  field :d, 2, type: :int64
  field :q, 3, type: :int64
end
defmodule Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_likelihood: float | :infinity | :negative_infinity | :nan,
          aic: float | :infinity | :negative_infinity | :nan,
          variance: float | :infinity | :negative_infinity | :nan
        }

  defstruct log_likelihood: 0.0,
            aic: 0.0,
            variance: 0.0

  field :log_likelihood, 1, type: :double, json_name: "logLikelihood"
  field :aic, 2, type: :double
  field :variance, 3, type: :double
end
defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_name: String.t(),
          attribution: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct feature_name: "",
            attribution: nil

  field :feature_name, 1, type: :string, json_name: "featureName"
  field :attribution, 2, type: Google.Protobuf.DoubleValue
end
defmodule Google.Cloud.Bigquery.V2.Model.GlobalExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanations: [Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation.t()],
          class_label: String.t()
        }

  defstruct explanations: [],
            class_label: ""

  field :explanations, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation.Explanation

  field :class_label, 2, type: :string, json_name: "classLabel"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct key: "",
            value: 0.0

  field :key, 1, type: :string
  field :value, 2, type: :double
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_iterations: integer,
          loss_type: Google.Cloud.Bigquery.V2.Model.LossType.t(),
          learn_rate: float | :infinity | :negative_infinity | :nan,
          l1_regularization: Google.Protobuf.DoubleValue.t() | nil,
          l2_regularization: Google.Protobuf.DoubleValue.t() | nil,
          min_relative_progress: Google.Protobuf.DoubleValue.t() | nil,
          warm_start: Google.Protobuf.BoolValue.t() | nil,
          early_stop: Google.Protobuf.BoolValue.t() | nil,
          input_label_columns: [String.t()],
          data_split_method: Google.Cloud.Bigquery.V2.Model.DataSplitMethod.t(),
          data_split_eval_fraction: float | :infinity | :negative_infinity | :nan,
          data_split_column: String.t(),
          learn_rate_strategy: Google.Cloud.Bigquery.V2.Model.LearnRateStrategy.t(),
          initial_learn_rate: float | :infinity | :negative_infinity | :nan,
          label_class_weights: %{String.t() => float | :infinity | :negative_infinity | :nan},
          user_column: String.t(),
          item_column: String.t(),
          distance_type: Google.Cloud.Bigquery.V2.Model.DistanceType.t(),
          num_clusters: integer,
          model_uri: String.t(),
          optimization_strategy: Google.Cloud.Bigquery.V2.Model.OptimizationStrategy.t(),
          hidden_units: [integer],
          batch_size: integer,
          dropout: Google.Protobuf.DoubleValue.t() | nil,
          max_tree_depth: integer,
          subsample: float | :infinity | :negative_infinity | :nan,
          min_split_loss: Google.Protobuf.DoubleValue.t() | nil,
          num_factors: integer,
          feedback_type: Google.Cloud.Bigquery.V2.Model.FeedbackType.t(),
          wals_alpha: Google.Protobuf.DoubleValue.t() | nil,
          kmeans_initialization_method:
            Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod.t(),
          kmeans_initialization_column: String.t(),
          time_series_timestamp_column: String.t(),
          time_series_data_column: String.t(),
          auto_arima: boolean,
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          data_frequency: Google.Cloud.Bigquery.V2.Model.DataFrequency.t(),
          include_drift: boolean,
          holiday_region: Google.Cloud.Bigquery.V2.Model.HolidayRegion.t(),
          time_series_id_column: String.t(),
          time_series_id_columns: [String.t()],
          horizon: integer,
          preserve_input_structs: boolean,
          auto_arima_max_order: integer,
          decompose_time_series: Google.Protobuf.BoolValue.t() | nil,
          clean_spikes_and_dips: Google.Protobuf.BoolValue.t() | nil,
          adjust_step_changes: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct max_iterations: 0,
            loss_type: :LOSS_TYPE_UNSPECIFIED,
            learn_rate: 0.0,
            l1_regularization: nil,
            l2_regularization: nil,
            min_relative_progress: nil,
            warm_start: nil,
            early_stop: nil,
            input_label_columns: [],
            data_split_method: :DATA_SPLIT_METHOD_UNSPECIFIED,
            data_split_eval_fraction: 0.0,
            data_split_column: "",
            learn_rate_strategy: :LEARN_RATE_STRATEGY_UNSPECIFIED,
            initial_learn_rate: 0.0,
            label_class_weights: %{},
            user_column: "",
            item_column: "",
            distance_type: :DISTANCE_TYPE_UNSPECIFIED,
            num_clusters: 0,
            model_uri: "",
            optimization_strategy: :OPTIMIZATION_STRATEGY_UNSPECIFIED,
            hidden_units: [],
            batch_size: 0,
            dropout: nil,
            max_tree_depth: 0,
            subsample: 0.0,
            min_split_loss: nil,
            num_factors: 0,
            feedback_type: :FEEDBACK_TYPE_UNSPECIFIED,
            wals_alpha: nil,
            kmeans_initialization_method: :KMEANS_INITIALIZATION_METHOD_UNSPECIFIED,
            kmeans_initialization_column: "",
            time_series_timestamp_column: "",
            time_series_data_column: "",
            auto_arima: false,
            non_seasonal_order: nil,
            data_frequency: :DATA_FREQUENCY_UNSPECIFIED,
            include_drift: false,
            holiday_region: :HOLIDAY_REGION_UNSPECIFIED,
            time_series_id_column: "",
            time_series_id_columns: [],
            horizon: 0,
            preserve_input_structs: false,
            auto_arima_max_order: 0,
            decompose_time_series: nil,
            clean_spikes_and_dips: nil,
            adjust_step_changes: nil

  field :max_iterations, 1, type: :int64, json_name: "maxIterations"

  field :loss_type, 2,
    type: Google.Cloud.Bigquery.V2.Model.LossType,
    json_name: "lossType",
    enum: true

  field :learn_rate, 3, type: :double, json_name: "learnRate"
  field :l1_regularization, 4, type: Google.Protobuf.DoubleValue, json_name: "l1Regularization"
  field :l2_regularization, 5, type: Google.Protobuf.DoubleValue, json_name: "l2Regularization"

  field :min_relative_progress, 6,
    type: Google.Protobuf.DoubleValue,
    json_name: "minRelativeProgress"

  field :warm_start, 7, type: Google.Protobuf.BoolValue, json_name: "warmStart"
  field :early_stop, 8, type: Google.Protobuf.BoolValue, json_name: "earlyStop"
  field :input_label_columns, 9, repeated: true, type: :string, json_name: "inputLabelColumns"

  field :data_split_method, 10,
    type: Google.Cloud.Bigquery.V2.Model.DataSplitMethod,
    json_name: "dataSplitMethod",
    enum: true

  field :data_split_eval_fraction, 11, type: :double, json_name: "dataSplitEvalFraction"
  field :data_split_column, 12, type: :string, json_name: "dataSplitColumn"

  field :learn_rate_strategy, 13,
    type: Google.Cloud.Bigquery.V2.Model.LearnRateStrategy,
    json_name: "learnRateStrategy",
    enum: true

  field :initial_learn_rate, 16, type: :double, json_name: "initialLearnRate"

  field :label_class_weights, 17,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.LabelClassWeightsEntry,
    json_name: "labelClassWeights",
    map: true

  field :user_column, 18, type: :string, json_name: "userColumn"
  field :item_column, 19, type: :string, json_name: "itemColumn"

  field :distance_type, 20,
    type: Google.Cloud.Bigquery.V2.Model.DistanceType,
    json_name: "distanceType",
    enum: true

  field :num_clusters, 21, type: :int64, json_name: "numClusters"
  field :model_uri, 22, type: :string, json_name: "modelUri"

  field :optimization_strategy, 23,
    type: Google.Cloud.Bigquery.V2.Model.OptimizationStrategy,
    json_name: "optimizationStrategy",
    enum: true

  field :hidden_units, 24, repeated: true, type: :int64, json_name: "hiddenUnits"
  field :batch_size, 25, type: :int64, json_name: "batchSize"
  field :dropout, 26, type: Google.Protobuf.DoubleValue
  field :max_tree_depth, 27, type: :int64, json_name: "maxTreeDepth"
  field :subsample, 28, type: :double
  field :min_split_loss, 29, type: Google.Protobuf.DoubleValue, json_name: "minSplitLoss"
  field :num_factors, 30, type: :int64, json_name: "numFactors"

  field :feedback_type, 31,
    type: Google.Cloud.Bigquery.V2.Model.FeedbackType,
    json_name: "feedbackType",
    enum: true

  field :wals_alpha, 32, type: Google.Protobuf.DoubleValue, json_name: "walsAlpha"

  field :kmeans_initialization_method, 33,
    type: Google.Cloud.Bigquery.V2.Model.KmeansEnums.KmeansInitializationMethod,
    json_name: "kmeansInitializationMethod",
    enum: true

  field :kmeans_initialization_column, 34, type: :string, json_name: "kmeansInitializationColumn"
  field :time_series_timestamp_column, 35, type: :string, json_name: "timeSeriesTimestampColumn"
  field :time_series_data_column, 36, type: :string, json_name: "timeSeriesDataColumn"
  field :auto_arima, 37, type: :bool, json_name: "autoArima"

  field :non_seasonal_order, 38,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :data_frequency, 39,
    type: Google.Cloud.Bigquery.V2.Model.DataFrequency,
    json_name: "dataFrequency",
    enum: true

  field :include_drift, 41, type: :bool, json_name: "includeDrift"

  field :holiday_region, 42,
    type: Google.Cloud.Bigquery.V2.Model.HolidayRegion,
    json_name: "holidayRegion",
    enum: true

  field :time_series_id_column, 43, type: :string, json_name: "timeSeriesIdColumn"

  field :time_series_id_columns, 51,
    repeated: true,
    type: :string,
    json_name: "timeSeriesIdColumns"

  field :horizon, 44, type: :int64
  field :preserve_input_structs, 45, type: :bool, json_name: "preserveInputStructs"
  field :auto_arima_max_order, 46, type: :int64, json_name: "autoArimaMaxOrder"

  field :decompose_time_series, 50,
    type: Google.Protobuf.BoolValue,
    json_name: "decomposeTimeSeries"

  field :clean_spikes_and_dips, 52,
    type: Google.Protobuf.BoolValue,
    json_name: "cleanSpikesAndDips"

  field :adjust_step_changes, 53, type: Google.Protobuf.BoolValue, json_name: "adjustStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          centroid_id: integer,
          cluster_radius: Google.Protobuf.DoubleValue.t() | nil,
          cluster_size: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct centroid_id: 0,
            cluster_radius: nil,
            cluster_size: nil

  field :centroid_id, 1, type: :int64, json_name: "centroidId"
  field :cluster_radius, 2, type: Google.Protobuf.DoubleValue, json_name: "clusterRadius"
  field :cluster_size, 3, type: Google.Protobuf.Int64Value, json_name: "clusterSize"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auto_regressive_coefficients: [float | :infinity | :negative_infinity | :nan],
          moving_average_coefficients: [float | :infinity | :negative_infinity | :nan],
          intercept_coefficient: float | :infinity | :negative_infinity | :nan
        }

  defstruct auto_regressive_coefficients: [],
            moving_average_coefficients: [],
            intercept_coefficient: 0.0

  field :auto_regressive_coefficients, 1,
    repeated: true,
    type: :double,
    json_name: "autoRegressiveCoefficients"

  field :moving_average_coefficients, 2,
    repeated: true,
    type: :double,
    json_name: "movingAverageCoefficients"

  field :intercept_coefficient, 3, type: :double, json_name: "interceptCoefficient"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          non_seasonal_order: Google.Cloud.Bigquery.V2.Model.ArimaOrder.t() | nil,
          arima_coefficients:
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients.t()
            | nil,
          arima_fitting_metrics: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics.t() | nil,
          has_drift: boolean,
          time_series_id: String.t(),
          time_series_ids: [String.t()],
          seasonal_periods: [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()],
          has_holiday_effect: Google.Protobuf.BoolValue.t() | nil,
          has_spikes_and_dips: Google.Protobuf.BoolValue.t() | nil,
          has_step_changes: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct non_seasonal_order: nil,
            arima_coefficients: nil,
            arima_fitting_metrics: nil,
            has_drift: false,
            time_series_id: "",
            time_series_ids: [],
            seasonal_periods: [],
            has_holiday_effect: nil,
            has_spikes_and_dips: nil,
            has_step_changes: nil

  field :non_seasonal_order, 1,
    type: Google.Cloud.Bigquery.V2.Model.ArimaOrder,
    json_name: "nonSeasonalOrder"

  field :arima_coefficients, 2,
    type:
      Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaCoefficients,
    json_name: "arimaCoefficients"

  field :arima_fitting_metrics, 3,
    type: Google.Cloud.Bigquery.V2.Model.ArimaFittingMetrics,
    json_name: "arimaFittingMetrics"

  field :has_drift, 4, type: :bool, json_name: "hasDrift"
  field :time_series_id, 5, type: :string, json_name: "timeSeriesId"
  field :time_series_ids, 10, repeated: true, type: :string, json_name: "timeSeriesIds"

  field :seasonal_periods, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true

  field :has_holiday_effect, 7, type: Google.Protobuf.BoolValue, json_name: "hasHolidayEffect"
  field :has_spikes_and_dips, 8, type: Google.Protobuf.BoolValue, json_name: "hasSpikesAndDips"
  field :has_step_changes, 9, type: Google.Protobuf.BoolValue, json_name: "hasStepChanges"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          arima_model_info: [
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo.t()
          ],
          seasonal_periods: [Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType.t()]
        }

  defstruct arima_model_info: [],
            seasonal_periods: []

  field :arima_model_info, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.ArimaModelInfo,
    json_name: "arimaModelInfo"

  field :seasonal_periods, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.SeasonalPeriod.SeasonalPeriodType,
    json_name: "seasonalPeriods",
    enum: true
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: Google.Protobuf.Int32Value.t() | nil,
          duration_ms: Google.Protobuf.Int64Value.t() | nil,
          training_loss: Google.Protobuf.DoubleValue.t() | nil,
          eval_loss: Google.Protobuf.DoubleValue.t() | nil,
          learn_rate: float | :infinity | :negative_infinity | :nan,
          cluster_infos: [
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo.t()
          ],
          arima_result:
            Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult.t() | nil
        }

  defstruct index: nil,
            duration_ms: nil,
            training_loss: nil,
            eval_loss: nil,
            learn_rate: 0.0,
            cluster_infos: [],
            arima_result: nil

  field :index, 1, type: Google.Protobuf.Int32Value
  field :duration_ms, 4, type: Google.Protobuf.Int64Value, json_name: "durationMs"
  field :training_loss, 5, type: Google.Protobuf.DoubleValue, json_name: "trainingLoss"
  field :eval_loss, 6, type: Google.Protobuf.DoubleValue, json_name: "evalLoss"
  field :learn_rate, 7, type: :double, json_name: "learnRate"

  field :cluster_infos, 8,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ClusterInfo,
    json_name: "clusterInfos"

  field :arima_result, 9,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.ArimaResult,
    json_name: "arimaResult"
end
defmodule Google.Cloud.Bigquery.V2.Model.TrainingRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_options: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          results: [Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult.t()],
          evaluation_metrics: Google.Cloud.Bigquery.V2.Model.EvaluationMetrics.t() | nil,
          data_split_result: Google.Cloud.Bigquery.V2.Model.DataSplitResult.t() | nil,
          global_explanations: [Google.Cloud.Bigquery.V2.Model.GlobalExplanation.t()]
        }

  defstruct training_options: nil,
            start_time: nil,
            results: [],
            evaluation_metrics: nil,
            data_split_result: nil,
            global_explanations: []

  field :training_options, 1,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.TrainingOptions,
    json_name: "trainingOptions"

  field :start_time, 8, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :results, 6,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun.IterationResult

  field :evaluation_metrics, 7,
    type: Google.Cloud.Bigquery.V2.Model.EvaluationMetrics,
    json_name: "evaluationMetrics"

  field :data_split_result, 9,
    type: Google.Cloud.Bigquery.V2.Model.DataSplitResult,
    json_name: "dataSplitResult"

  field :global_explanations, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.GlobalExplanation,
    json_name: "globalExplanations"
end
defmodule Google.Cloud.Bigquery.V2.Model.LabelsEntry do
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
defmodule Google.Cloud.Bigquery.V2.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          model_reference: Google.Cloud.Bigquery.V2.ModelReference.t() | nil,
          creation_time: integer,
          last_modified_time: integer,
          description: String.t(),
          friendly_name: String.t(),
          labels: %{String.t() => String.t()},
          expiration_time: integer,
          location: String.t(),
          encryption_configuration: Google.Cloud.Bigquery.V2.EncryptionConfiguration.t() | nil,
          model_type: Google.Cloud.Bigquery.V2.Model.ModelType.t(),
          training_runs: [Google.Cloud.Bigquery.V2.Model.TrainingRun.t()],
          feature_columns: [Google.Cloud.Bigquery.V2.StandardSqlField.t()],
          label_columns: [Google.Cloud.Bigquery.V2.StandardSqlField.t()],
          best_trial_id: integer
        }

  defstruct etag: "",
            model_reference: nil,
            creation_time: 0,
            last_modified_time: 0,
            description: "",
            friendly_name: "",
            labels: %{},
            expiration_time: 0,
            location: "",
            encryption_configuration: nil,
            model_type: :MODEL_TYPE_UNSPECIFIED,
            training_runs: [],
            feature_columns: [],
            label_columns: [],
            best_trial_id: 0

  field :etag, 1, type: :string, deprecated: false

  field :model_reference, 2,
    type: Google.Cloud.Bigquery.V2.ModelReference,
    json_name: "modelReference",
    deprecated: false

  field :creation_time, 5, type: :int64, json_name: "creationTime", deprecated: false
  field :last_modified_time, 6, type: :int64, json_name: "lastModifiedTime", deprecated: false
  field :description, 12, type: :string, deprecated: false
  field :friendly_name, 14, type: :string, json_name: "friendlyName", deprecated: false
  field :labels, 15, repeated: true, type: Google.Cloud.Bigquery.V2.Model.LabelsEntry, map: true
  field :expiration_time, 16, type: :int64, json_name: "expirationTime", deprecated: false
  field :location, 13, type: :string, deprecated: false

  field :encryption_configuration, 17,
    type: Google.Cloud.Bigquery.V2.EncryptionConfiguration,
    json_name: "encryptionConfiguration"

  field :model_type, 7,
    type: Google.Cloud.Bigquery.V2.Model.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false

  field :training_runs, 9,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Model.TrainingRun,
    json_name: "trainingRuns",
    deprecated: false

  field :feature_columns, 10,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.StandardSqlField,
    json_name: "featureColumns",
    deprecated: false

  field :label_columns, 11,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.StandardSqlField,
    json_name: "labelColumns",
    deprecated: false

  field :best_trial_id, 19, type: :int64, json_name: "bestTrialId", deprecated: true
end
defmodule Google.Cloud.Bigquery.V2.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t()
        }

  defstruct project_id: "",
            dataset_id: "",
            model_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.PatchModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t(),
          model: Google.Cloud.Bigquery.V2.Model.t() | nil
        }

  defstruct project_id: "",
            dataset_id: "",
            model_id: "",
            model: nil

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
  field :model, 4, type: Google.Cloud.Bigquery.V2.Model, deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          model_id: String.t()
        }

  defstruct project_id: "",
            dataset_id: "",
            model_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId", deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          max_results: Google.Protobuf.UInt32Value.t() | nil,
          page_token: String.t()
        }

  defstruct project_id: "",
            dataset_id: "",
            max_results: nil,
            page_token: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :max_results, 3, type: Google.Protobuf.UInt32Value, json_name: "maxResults"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Bigquery.V2.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Cloud.Bigquery.V2.Model.t()],
          next_page_token: String.t()
        }

  defstruct models: [],
            next_page_token: ""

  field :models, 1, repeated: true, type: Google.Cloud.Bigquery.V2.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.V2.ModelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.v2.ModelService"

  rpc :GetModel, Google.Cloud.Bigquery.V2.GetModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :ListModels,
      Google.Cloud.Bigquery.V2.ListModelsRequest,
      Google.Cloud.Bigquery.V2.ListModelsResponse

  rpc :PatchModel, Google.Cloud.Bigquery.V2.PatchModelRequest, Google.Cloud.Bigquery.V2.Model

  rpc :DeleteModel, Google.Cloud.Bigquery.V2.DeleteModelRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Bigquery.V2.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.ModelService.Service
end
