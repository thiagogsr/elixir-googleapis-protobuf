defmodule Google.Cloud.Vision.V1p1beta1.Likelihood do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNKNOWN | :VERY_UNLIKELY | :UNLIKELY | :POSSIBLE | :LIKELY | :VERY_LIKELY

  field :UNKNOWN, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end
defmodule Google.Cloud.Vision.V1p1beta1.Feature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :FACE_DETECTION
          | :LANDMARK_DETECTION
          | :LOGO_DETECTION
          | :LABEL_DETECTION
          | :TEXT_DETECTION
          | :DOCUMENT_TEXT_DETECTION
          | :SAFE_SEARCH_DETECTION
          | :IMAGE_PROPERTIES
          | :CROP_HINTS
          | :WEB_DETECTION

  field :TYPE_UNSPECIFIED, 0
  field :FACE_DETECTION, 1
  field :LANDMARK_DETECTION, 2
  field :LOGO_DETECTION, 3
  field :LABEL_DETECTION, 4
  field :TEXT_DETECTION, 5
  field :DOCUMENT_TEXT_DETECTION, 11
  field :SAFE_SEARCH_DETECTION, 6
  field :IMAGE_PROPERTIES, 7
  field :CROP_HINTS, 9
  field :WEB_DETECTION, 10
end
defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_LANDMARK
          | :LEFT_EYE
          | :RIGHT_EYE
          | :LEFT_OF_LEFT_EYEBROW
          | :RIGHT_OF_LEFT_EYEBROW
          | :LEFT_OF_RIGHT_EYEBROW
          | :RIGHT_OF_RIGHT_EYEBROW
          | :MIDPOINT_BETWEEN_EYES
          | :NOSE_TIP
          | :UPPER_LIP
          | :LOWER_LIP
          | :MOUTH_LEFT
          | :MOUTH_RIGHT
          | :MOUTH_CENTER
          | :NOSE_BOTTOM_RIGHT
          | :NOSE_BOTTOM_LEFT
          | :NOSE_BOTTOM_CENTER
          | :LEFT_EYE_TOP_BOUNDARY
          | :LEFT_EYE_RIGHT_CORNER
          | :LEFT_EYE_BOTTOM_BOUNDARY
          | :LEFT_EYE_LEFT_CORNER
          | :RIGHT_EYE_TOP_BOUNDARY
          | :RIGHT_EYE_RIGHT_CORNER
          | :RIGHT_EYE_BOTTOM_BOUNDARY
          | :RIGHT_EYE_LEFT_CORNER
          | :LEFT_EYEBROW_UPPER_MIDPOINT
          | :RIGHT_EYEBROW_UPPER_MIDPOINT
          | :LEFT_EAR_TRAGION
          | :RIGHT_EAR_TRAGION
          | :LEFT_EYE_PUPIL
          | :RIGHT_EYE_PUPIL
          | :FOREHEAD_GLABELLA
          | :CHIN_GNATHION
          | :CHIN_LEFT_GONION
          | :CHIN_RIGHT_GONION

  field :UNKNOWN_LANDMARK, 0
  field :LEFT_EYE, 1
  field :RIGHT_EYE, 2
  field :LEFT_OF_LEFT_EYEBROW, 3
  field :RIGHT_OF_LEFT_EYEBROW, 4
  field :LEFT_OF_RIGHT_EYEBROW, 5
  field :RIGHT_OF_RIGHT_EYEBROW, 6
  field :MIDPOINT_BETWEEN_EYES, 7
  field :NOSE_TIP, 8
  field :UPPER_LIP, 9
  field :LOWER_LIP, 10
  field :MOUTH_LEFT, 11
  field :MOUTH_RIGHT, 12
  field :MOUTH_CENTER, 13
  field :NOSE_BOTTOM_RIGHT, 14
  field :NOSE_BOTTOM_LEFT, 15
  field :NOSE_BOTTOM_CENTER, 16
  field :LEFT_EYE_TOP_BOUNDARY, 17
  field :LEFT_EYE_RIGHT_CORNER, 18
  field :LEFT_EYE_BOTTOM_BOUNDARY, 19
  field :LEFT_EYE_LEFT_CORNER, 20
  field :RIGHT_EYE_TOP_BOUNDARY, 21
  field :RIGHT_EYE_RIGHT_CORNER, 22
  field :RIGHT_EYE_BOTTOM_BOUNDARY, 23
  field :RIGHT_EYE_LEFT_CORNER, 24
  field :LEFT_EYEBROW_UPPER_MIDPOINT, 25
  field :RIGHT_EYEBROW_UPPER_MIDPOINT, 26
  field :LEFT_EAR_TRAGION, 27
  field :RIGHT_EAR_TRAGION, 28
  field :LEFT_EYE_PUPIL, 29
  field :RIGHT_EYE_PUPIL, 30
  field :FOREHEAD_GLABELLA, 31
  field :CHIN_GNATHION, 32
  field :CHIN_LEFT_GONION, 33
  field :CHIN_RIGHT_GONION, 34
end
defmodule Google.Cloud.Vision.V1p1beta1.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vision.V1p1beta1.Feature.Type.t(),
          max_results: integer,
          model: String.t()
        }

  defstruct type: :TYPE_UNSPECIFIED,
            max_results: 0,
            model: ""

  field :type, 1, type: Google.Cloud.Vision.V1p1beta1.Feature.Type, enum: true
  field :max_results, 2, type: :int32, json_name: "maxResults"
  field :model, 3, type: :string
end
defmodule Google.Cloud.Vision.V1p1beta1.ImageSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_image_uri: String.t(),
          image_uri: String.t()
        }

  defstruct gcs_image_uri: "",
            image_uri: ""

  field :gcs_image_uri, 1, type: :string, json_name: "gcsImageUri"
  field :image_uri, 2, type: :string, json_name: "imageUri"
end
defmodule Google.Cloud.Vision.V1p1beta1.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          source: Google.Cloud.Vision.V1p1beta1.ImageSource.t() | nil
        }

  defstruct content: "",
            source: nil

  field :content, 1, type: :bytes
  field :source, 2, type: Google.Cloud.Vision.V1p1beta1.ImageSource
end
defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.Type.t(),
          position: Google.Cloud.Vision.V1p1beta1.Position.t() | nil
        }

  defstruct type: :UNKNOWN_LANDMARK,
            position: nil

  field :type, 3, type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.Type, enum: true
  field :position, 4, type: Google.Cloud.Vision.V1p1beta1.Position
end
defmodule Google.Cloud.Vision.V1p1beta1.FaceAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_poly: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          fd_bounding_poly: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          landmarks: [Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark.t()],
          roll_angle: float | :infinity | :negative_infinity | :nan,
          pan_angle: float | :infinity | :negative_infinity | :nan,
          tilt_angle: float | :infinity | :negative_infinity | :nan,
          detection_confidence: float | :infinity | :negative_infinity | :nan,
          landmarking_confidence: float | :infinity | :negative_infinity | :nan,
          joy_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          sorrow_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          anger_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          surprise_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          under_exposed_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          blurred_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          headwear_likelihood: Google.Cloud.Vision.V1p1beta1.Likelihood.t()
        }

  defstruct bounding_poly: nil,
            fd_bounding_poly: nil,
            landmarks: [],
            roll_angle: 0.0,
            pan_angle: 0.0,
            tilt_angle: 0.0,
            detection_confidence: 0.0,
            landmarking_confidence: 0.0,
            joy_likelihood: :UNKNOWN,
            sorrow_likelihood: :UNKNOWN,
            anger_likelihood: :UNKNOWN,
            surprise_likelihood: :UNKNOWN,
            under_exposed_likelihood: :UNKNOWN,
            blurred_likelihood: :UNKNOWN,
            headwear_likelihood: :UNKNOWN

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :fd_bounding_poly, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "fdBoundingPoly"

  field :landmarks, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation.Landmark
  field :roll_angle, 4, type: :float, json_name: "rollAngle"
  field :pan_angle, 5, type: :float, json_name: "panAngle"
  field :tilt_angle, 6, type: :float, json_name: "tiltAngle"
  field :detection_confidence, 7, type: :float, json_name: "detectionConfidence"
  field :landmarking_confidence, 8, type: :float, json_name: "landmarkingConfidence"

  field :joy_likelihood, 9,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "joyLikelihood",
    enum: true

  field :sorrow_likelihood, 10,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "sorrowLikelihood",
    enum: true

  field :anger_likelihood, 11,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "angerLikelihood",
    enum: true

  field :surprise_likelihood, 12,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "surpriseLikelihood",
    enum: true

  field :under_exposed_likelihood, 13,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "underExposedLikelihood",
    enum: true

  field :blurred_likelihood, 14,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "blurredLikelihood",
    enum: true

  field :headwear_likelihood, 15,
    type: Google.Cloud.Vision.V1p1beta1.Likelihood,
    json_name: "headwearLikelihood",
    enum: true
end
defmodule Google.Cloud.Vision.V1p1beta1.LocationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_lng: Google.Type.LatLng.t() | nil
        }

  defstruct lat_lng: nil

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng"
end
defmodule Google.Cloud.Vision.V1p1beta1.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t(),
          uint64_value: non_neg_integer
        }

  defstruct name: "",
            value: "",
            uint64_value: 0

  field :name, 1, type: :string
  field :value, 2, type: :string
  field :uint64_value, 3, type: :uint64, json_name: "uint64Value"
end
defmodule Google.Cloud.Vision.V1p1beta1.EntityAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mid: String.t(),
          locale: String.t(),
          description: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          confidence: float | :infinity | :negative_infinity | :nan,
          topicality: float | :infinity | :negative_infinity | :nan,
          bounding_poly: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          locations: [Google.Cloud.Vision.V1p1beta1.LocationInfo.t()],
          properties: [Google.Cloud.Vision.V1p1beta1.Property.t()]
        }

  defstruct mid: "",
            locale: "",
            description: "",
            score: 0.0,
            confidence: 0.0,
            topicality: 0.0,
            bounding_poly: nil,
            locations: [],
            properties: []

  field :mid, 1, type: :string
  field :locale, 2, type: :string
  field :description, 3, type: :string
  field :score, 4, type: :float
  field :confidence, 5, type: :float
  field :topicality, 6, type: :float

  field :bounding_poly, 7,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :locations, 8, repeated: true, type: Google.Cloud.Vision.V1p1beta1.LocationInfo
  field :properties, 9, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Property
end
defmodule Google.Cloud.Vision.V1p1beta1.SafeSearchAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adult: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          spoof: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          medical: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          violence: Google.Cloud.Vision.V1p1beta1.Likelihood.t(),
          racy: Google.Cloud.Vision.V1p1beta1.Likelihood.t()
        }

  defstruct adult: :UNKNOWN,
            spoof: :UNKNOWN,
            medical: :UNKNOWN,
            violence: :UNKNOWN,
            racy: :UNKNOWN

  field :adult, 1, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :spoof, 2, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :medical, 3, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :violence, 4, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
  field :racy, 9, type: Google.Cloud.Vision.V1p1beta1.Likelihood, enum: true
end
defmodule Google.Cloud.Vision.V1p1beta1.LatLongRect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_lat_lng: Google.Type.LatLng.t() | nil,
          max_lat_lng: Google.Type.LatLng.t() | nil
        }

  defstruct min_lat_lng: nil,
            max_lat_lng: nil

  field :min_lat_lng, 1, type: Google.Type.LatLng, json_name: "minLatLng"
  field :max_lat_lng, 2, type: Google.Type.LatLng, json_name: "maxLatLng"
end
defmodule Google.Cloud.Vision.V1p1beta1.ColorInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          color: Google.Type.Color.t() | nil,
          score: float | :infinity | :negative_infinity | :nan,
          pixel_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct color: nil,
            score: 0.0,
            pixel_fraction: 0.0

  field :color, 1, type: Google.Type.Color
  field :score, 2, type: :float
  field :pixel_fraction, 3, type: :float, json_name: "pixelFraction"
end
defmodule Google.Cloud.Vision.V1p1beta1.DominantColorsAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          colors: [Google.Cloud.Vision.V1p1beta1.ColorInfo.t()]
        }

  defstruct colors: []

  field :colors, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.ColorInfo
end
defmodule Google.Cloud.Vision.V1p1beta1.ImageProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dominant_colors: Google.Cloud.Vision.V1p1beta1.DominantColorsAnnotation.t() | nil
        }

  defstruct dominant_colors: nil

  field :dominant_colors, 1,
    type: Google.Cloud.Vision.V1p1beta1.DominantColorsAnnotation,
    json_name: "dominantColors"
end
defmodule Google.Cloud.Vision.V1p1beta1.CropHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounding_poly: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          importance_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct bounding_poly: nil,
            confidence: 0.0,
            importance_fraction: 0.0

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :confidence, 2, type: :float
  field :importance_fraction, 3, type: :float, json_name: "importanceFraction"
end
defmodule Google.Cloud.Vision.V1p1beta1.CropHintsAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crop_hints: [Google.Cloud.Vision.V1p1beta1.CropHint.t()]
        }

  defstruct crop_hints: []

  field :crop_hints, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.CropHint,
    json_name: "cropHints"
end
defmodule Google.Cloud.Vision.V1p1beta1.CropHintsParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aspect_ratios: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct aspect_ratios: []

  field :aspect_ratios, 1, repeated: true, type: :float, json_name: "aspectRatios"
end
defmodule Google.Cloud.Vision.V1p1beta1.WebDetectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_geo_results: boolean
        }

  defstruct include_geo_results: false

  field :include_geo_results, 2, type: :bool, json_name: "includeGeoResults"
end
defmodule Google.Cloud.Vision.V1p1beta1.TextDetectionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_text_detection_confidence_score: boolean
        }

  defstruct enable_text_detection_confidence_score: false

  field :enable_text_detection_confidence_score, 9,
    type: :bool,
    json_name: "enableTextDetectionConfidenceScore"
end
defmodule Google.Cloud.Vision.V1p1beta1.ImageContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lat_long_rect: Google.Cloud.Vision.V1p1beta1.LatLongRect.t() | nil,
          language_hints: [String.t()],
          crop_hints_params: Google.Cloud.Vision.V1p1beta1.CropHintsParams.t() | nil,
          web_detection_params: Google.Cloud.Vision.V1p1beta1.WebDetectionParams.t() | nil,
          text_detection_params: Google.Cloud.Vision.V1p1beta1.TextDetectionParams.t() | nil
        }

  defstruct lat_long_rect: nil,
            language_hints: [],
            crop_hints_params: nil,
            web_detection_params: nil,
            text_detection_params: nil

  field :lat_long_rect, 1,
    type: Google.Cloud.Vision.V1p1beta1.LatLongRect,
    json_name: "latLongRect"

  field :language_hints, 2, repeated: true, type: :string, json_name: "languageHints"

  field :crop_hints_params, 4,
    type: Google.Cloud.Vision.V1p1beta1.CropHintsParams,
    json_name: "cropHintsParams"

  field :web_detection_params, 6,
    type: Google.Cloud.Vision.V1p1beta1.WebDetectionParams,
    json_name: "webDetectionParams"

  field :text_detection_params, 12,
    type: Google.Cloud.Vision.V1p1beta1.TextDetectionParams,
    json_name: "textDetectionParams"
end
defmodule Google.Cloud.Vision.V1p1beta1.AnnotateImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: Google.Cloud.Vision.V1p1beta1.Image.t() | nil,
          features: [Google.Cloud.Vision.V1p1beta1.Feature.t()],
          image_context: Google.Cloud.Vision.V1p1beta1.ImageContext.t() | nil
        }

  defstruct image: nil,
            features: [],
            image_context: nil

  field :image, 1, type: Google.Cloud.Vision.V1p1beta1.Image
  field :features, 2, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Feature

  field :image_context, 3,
    type: Google.Cloud.Vision.V1p1beta1.ImageContext,
    json_name: "imageContext"
end
defmodule Google.Cloud.Vision.V1p1beta1.AnnotateImageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          face_annotations: [Google.Cloud.Vision.V1p1beta1.FaceAnnotation.t()],
          landmark_annotations: [Google.Cloud.Vision.V1p1beta1.EntityAnnotation.t()],
          logo_annotations: [Google.Cloud.Vision.V1p1beta1.EntityAnnotation.t()],
          label_annotations: [Google.Cloud.Vision.V1p1beta1.EntityAnnotation.t()],
          text_annotations: [Google.Cloud.Vision.V1p1beta1.EntityAnnotation.t()],
          full_text_annotation: Google.Cloud.Vision.V1p1beta1.TextAnnotation.t() | nil,
          safe_search_annotation: Google.Cloud.Vision.V1p1beta1.SafeSearchAnnotation.t() | nil,
          image_properties_annotation: Google.Cloud.Vision.V1p1beta1.ImageProperties.t() | nil,
          crop_hints_annotation: Google.Cloud.Vision.V1p1beta1.CropHintsAnnotation.t() | nil,
          web_detection: Google.Cloud.Vision.V1p1beta1.WebDetection.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct face_annotations: [],
            landmark_annotations: [],
            logo_annotations: [],
            label_annotations: [],
            text_annotations: [],
            full_text_annotation: nil,
            safe_search_annotation: nil,
            image_properties_annotation: nil,
            crop_hints_annotation: nil,
            web_detection: nil,
            error: nil

  field :face_annotations, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.FaceAnnotation,
    json_name: "faceAnnotations"

  field :landmark_annotations, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "landmarkAnnotations"

  field :logo_annotations, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "logoAnnotations"

  field :label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "labelAnnotations"

  field :text_annotations, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.EntityAnnotation,
    json_name: "textAnnotations"

  field :full_text_annotation, 12,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation,
    json_name: "fullTextAnnotation"

  field :safe_search_annotation, 6,
    type: Google.Cloud.Vision.V1p1beta1.SafeSearchAnnotation,
    json_name: "safeSearchAnnotation"

  field :image_properties_annotation, 8,
    type: Google.Cloud.Vision.V1p1beta1.ImageProperties,
    json_name: "imagePropertiesAnnotation"

  field :crop_hints_annotation, 11,
    type: Google.Cloud.Vision.V1p1beta1.CropHintsAnnotation,
    json_name: "cropHintsAnnotation"

  field :web_detection, 13,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection,
    json_name: "webDetection"

  field :error, 9, type: Google.Rpc.Status
end
defmodule Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Vision.V1p1beta1.AnnotateImageRequest.t()]
        }

  defstruct requests: []

  field :requests, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.AnnotateImageRequest,
    deprecated: false
end
defmodule Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Vision.V1p1beta1.AnnotateImageResponse.t()]
        }

  defstruct responses: []

  field :responses, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.AnnotateImageResponse
end
defmodule Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vision.v1p1beta1.ImageAnnotator"

  rpc :BatchAnnotateImages,
      Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesRequest,
      Google.Cloud.Vision.V1p1beta1.BatchAnnotateImagesResponse
end

defmodule Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vision.V1p1beta1.ImageAnnotator.Service
end
