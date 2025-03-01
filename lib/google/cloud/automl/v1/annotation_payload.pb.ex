defmodule Google.Cloud.Automl.V1.AnnotationPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detail:
            {:translation, Google.Cloud.Automl.V1.TranslationAnnotation.t() | nil}
            | {:classification, Google.Cloud.Automl.V1.ClassificationAnnotation.t() | nil}
            | {:image_object_detection,
               Google.Cloud.Automl.V1.ImageObjectDetectionAnnotation.t() | nil}
            | {:text_extraction, Google.Cloud.Automl.V1.TextExtractionAnnotation.t() | nil}
            | {:text_sentiment, Google.Cloud.Automl.V1.TextSentimentAnnotation.t() | nil},
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct detail: nil,
            annotation_spec_id: "",
            display_name: ""

  oneof :detail, 0

  field :translation, 2, type: Google.Cloud.Automl.V1.TranslationAnnotation, oneof: 0
  field :classification, 3, type: Google.Cloud.Automl.V1.ClassificationAnnotation, oneof: 0

  field :image_object_detection, 4,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionAnnotation,
    json_name: "imageObjectDetection",
    oneof: 0

  field :text_extraction, 6,
    type: Google.Cloud.Automl.V1.TextExtractionAnnotation,
    json_name: "textExtraction",
    oneof: 0

  field :text_sentiment, 7,
    type: Google.Cloud.Automl.V1.TextSentimentAnnotation,
    json_name: "textSentiment",
    oneof: 0

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 5, type: :string, json_name: "displayName"
end
