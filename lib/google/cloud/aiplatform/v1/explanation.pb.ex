defmodule Google.Cloud.Aiplatform.V1.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributions: [Google.Cloud.Aiplatform.V1.Attribution.t()]
        }

  defstruct attributions: []

  field :attributions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Attribution,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ModelExplanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mean_attributions: [Google.Cloud.Aiplatform.V1.Attribution.t()]
        }

  defstruct mean_attributions: []

  field :mean_attributions, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Attribution,
    json_name: "meanAttributions",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.Attribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          baseline_output_value: float | :infinity | :negative_infinity | :nan,
          instance_output_value: float | :infinity | :negative_infinity | :nan,
          feature_attributions: Google.Protobuf.Value.t() | nil,
          output_index: [integer],
          output_display_name: String.t(),
          approximation_error: float | :infinity | :negative_infinity | :nan,
          output_name: String.t()
        }

  defstruct baseline_output_value: 0.0,
            instance_output_value: 0.0,
            feature_attributions: nil,
            output_index: [],
            output_display_name: "",
            approximation_error: 0.0,
            output_name: ""

  field :baseline_output_value, 1,
    type: :double,
    json_name: "baselineOutputValue",
    deprecated: false

  field :instance_output_value, 2,
    type: :double,
    json_name: "instanceOutputValue",
    deprecated: false

  field :feature_attributions, 3,
    type: Google.Protobuf.Value,
    json_name: "featureAttributions",
    deprecated: false

  field :output_index, 4,
    repeated: true,
    type: :int32,
    json_name: "outputIndex",
    deprecated: false

  field :output_display_name, 5, type: :string, json_name: "outputDisplayName", deprecated: false
  field :approximation_error, 6, type: :double, json_name: "approximationError", deprecated: false
  field :output_name, 7, type: :string, json_name: "outputName", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: Google.Cloud.Aiplatform.V1.ExplanationParameters.t() | nil,
          metadata: Google.Cloud.Aiplatform.V1.ExplanationMetadata.t() | nil
        }

  defstruct parameters: nil,
            metadata: nil

  field :parameters, 1, type: Google.Cloud.Aiplatform.V1.ExplanationParameters, deprecated: false
  field :metadata, 2, type: Google.Cloud.Aiplatform.V1.ExplanationMetadata, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method:
            {:sampled_shapley_attribution,
             Google.Cloud.Aiplatform.V1.SampledShapleyAttribution.t() | nil}
            | {:integrated_gradients_attribution,
               Google.Cloud.Aiplatform.V1.IntegratedGradientsAttribution.t() | nil}
            | {:xrai_attribution, Google.Cloud.Aiplatform.V1.XraiAttribution.t() | nil},
          top_k: integer,
          output_indices: Google.Protobuf.ListValue.t() | nil
        }

  defstruct method: nil,
            top_k: 0,
            output_indices: nil

  oneof :method, 0

  field :sampled_shapley_attribution, 1,
    type: Google.Cloud.Aiplatform.V1.SampledShapleyAttribution,
    json_name: "sampledShapleyAttribution",
    oneof: 0

  field :integrated_gradients_attribution, 2,
    type: Google.Cloud.Aiplatform.V1.IntegratedGradientsAttribution,
    json_name: "integratedGradientsAttribution",
    oneof: 0

  field :xrai_attribution, 3,
    type: Google.Cloud.Aiplatform.V1.XraiAttribution,
    json_name: "xraiAttribution",
    oneof: 0

  field :top_k, 4, type: :int32, json_name: "topK"
  field :output_indices, 5, type: Google.Protobuf.ListValue, json_name: "outputIndices"
end
defmodule Google.Cloud.Aiplatform.V1.SampledShapleyAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path_count: integer
        }

  defstruct path_count: 0

  field :path_count, 1, type: :int32, json_name: "pathCount", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.IntegratedGradientsAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1.SmoothGradConfig.t() | nil,
          blur_baseline_config: Google.Cloud.Aiplatform.V1.BlurBaselineConfig.t() | nil
        }

  defstruct step_count: 0,
            smooth_grad_config: nil,
            blur_baseline_config: nil

  field :step_count, 1, type: :int32, json_name: "stepCount", deprecated: false

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"
end
defmodule Google.Cloud.Aiplatform.V1.XraiAttribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_count: integer,
          smooth_grad_config: Google.Cloud.Aiplatform.V1.SmoothGradConfig.t() | nil,
          blur_baseline_config: Google.Cloud.Aiplatform.V1.BlurBaselineConfig.t() | nil
        }

  defstruct step_count: 0,
            smooth_grad_config: nil,
            blur_baseline_config: nil

  field :step_count, 1, type: :int32, json_name: "stepCount", deprecated: false

  field :smooth_grad_config, 2,
    type: Google.Cloud.Aiplatform.V1.SmoothGradConfig,
    json_name: "smoothGradConfig"

  field :blur_baseline_config, 3,
    type: Google.Cloud.Aiplatform.V1.BlurBaselineConfig,
    json_name: "blurBaselineConfig"
end
defmodule Google.Cloud.Aiplatform.V1.SmoothGradConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          GradientNoiseSigma:
            {:noise_sigma, float | :infinity | :negative_infinity | :nan}
            | {:feature_noise_sigma, Google.Cloud.Aiplatform.V1.FeatureNoiseSigma.t() | nil},
          noisy_sample_count: integer
        }

  defstruct GradientNoiseSigma: nil,
            noisy_sample_count: 0

  oneof :GradientNoiseSigma, 0

  field :noise_sigma, 1, type: :float, json_name: "noiseSigma", oneof: 0

  field :feature_noise_sigma, 2,
    type: Google.Cloud.Aiplatform.V1.FeatureNoiseSigma,
    json_name: "featureNoiseSigma",
    oneof: 0

  field :noisy_sample_count, 3, type: :int32, json_name: "noisySampleCount"
end
defmodule Google.Cloud.Aiplatform.V1.FeatureNoiseSigma.NoiseSigmaForFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          sigma: float | :infinity | :negative_infinity | :nan
        }

  defstruct name: "",
            sigma: 0.0

  field :name, 1, type: :string
  field :sigma, 2, type: :float
end
defmodule Google.Cloud.Aiplatform.V1.FeatureNoiseSigma do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          noise_sigma: [Google.Cloud.Aiplatform.V1.FeatureNoiseSigma.NoiseSigmaForFeature.t()]
        }

  defstruct noise_sigma: []

  field :noise_sigma, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureNoiseSigma.NoiseSigmaForFeature,
    json_name: "noiseSigma"
end
defmodule Google.Cloud.Aiplatform.V1.BlurBaselineConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_blur_sigma: float | :infinity | :negative_infinity | :nan
        }

  defstruct max_blur_sigma: 0.0

  field :max_blur_sigma, 1, type: :float, json_name: "maxBlurSigma"
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationSpecOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: Google.Cloud.Aiplatform.V1.ExplanationParameters.t() | nil,
          metadata: Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.t() | nil
        }

  defstruct parameters: nil,
            metadata: nil

  field :parameters, 1, type: Google.Cloud.Aiplatform.V1.ExplanationParameters
  field :metadata, 2, type: Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputMetadataOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_baselines: [Google.Protobuf.Value.t()]
        }

  defstruct input_baselines: []

  field :input_baselines, 1,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "inputBaselines"
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputMetadataOverride.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputMetadataOverride
end
defmodule Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: %{
            String.t() =>
              Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputMetadataOverride.t()
              | nil
          }
        }

  defstruct inputs: %{}

  field :inputs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ExplanationMetadataOverride.InputsEntry,
    map: true,
    deprecated: false
end
