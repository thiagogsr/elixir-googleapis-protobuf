defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ANNOTATION_SOURCE_UNSPECIFIED | :OPERATOR

  field :ANNOTATION_SOURCE_UNSPECIFIED, 0

  field :OPERATOR, 3
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSentiment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ANNOTATION_SENTIMENT_UNSPECIFIED | :NEGATIVE | :POSITIVE

  field :ANNOTATION_SENTIMENT_UNSPECIFIED, 0

  field :NEGATIVE, 1

  field :POSITIVE, 2
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ANNOTATION_TYPE_UNSPECIFIED
          | :IMAGE_CLASSIFICATION_ANNOTATION
          | :IMAGE_BOUNDING_BOX_ANNOTATION
          | :IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION
          | :IMAGE_BOUNDING_POLY_ANNOTATION
          | :IMAGE_POLYLINE_ANNOTATION
          | :IMAGE_SEGMENTATION_ANNOTATION
          | :VIDEO_SHOTS_CLASSIFICATION_ANNOTATION
          | :VIDEO_OBJECT_TRACKING_ANNOTATION
          | :VIDEO_OBJECT_DETECTION_ANNOTATION
          | :VIDEO_EVENT_ANNOTATION
          | :TEXT_CLASSIFICATION_ANNOTATION
          | :TEXT_ENTITY_EXTRACTION_ANNOTATION
          | :GENERAL_CLASSIFICATION_ANNOTATION

  field :ANNOTATION_TYPE_UNSPECIFIED, 0

  field :IMAGE_CLASSIFICATION_ANNOTATION, 1

  field :IMAGE_BOUNDING_BOX_ANNOTATION, 2

  field :IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION, 13

  field :IMAGE_BOUNDING_POLY_ANNOTATION, 10

  field :IMAGE_POLYLINE_ANNOTATION, 11

  field :IMAGE_SEGMENTATION_ANNOTATION, 12

  field :VIDEO_SHOTS_CLASSIFICATION_ANNOTATION, 3

  field :VIDEO_OBJECT_TRACKING_ANNOTATION, 4

  field :VIDEO_OBJECT_DETECTION_ANNOTATION, 5

  field :VIDEO_EVENT_ANNOTATION, 6

  field :TEXT_CLASSIFICATION_ANNOTATION, 8

  field :TEXT_ENTITY_EXTRACTION_ANNOTATION, 9

  field :GENERAL_CLASSIFICATION_ANNOTATION, 14
end

defmodule Google.Cloud.Datalabeling.V1beta1.Annotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          annotation_source: Google.Cloud.Datalabeling.V1beta1.AnnotationSource.t(),
          annotation_value: Google.Cloud.Datalabeling.V1beta1.AnnotationValue.t() | nil,
          annotation_metadata: Google.Cloud.Datalabeling.V1beta1.AnnotationMetadata.t() | nil,
          annotation_sentiment: Google.Cloud.Datalabeling.V1beta1.AnnotationSentiment.t()
        }

  defstruct [
    :name,
    :annotation_source,
    :annotation_value,
    :annotation_metadata,
    :annotation_sentiment
  ]

  field :name, 1, type: :string

  field :annotation_source, 2,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSource,
    enum: true

  field :annotation_value, 3, type: Google.Cloud.Datalabeling.V1beta1.AnnotationValue
  field :annotation_metadata, 4, type: Google.Cloud.Datalabeling.V1beta1.AnnotationMetadata

  field :annotation_sentiment, 6,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSentiment,
    enum: true
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_type: {atom, any}
        }

  defstruct [:value_type]

  oneof :value_type, 0

  field :image_classification_annotation, 1,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationAnnotation,
    oneof: 0

  field :image_bounding_poly_annotation, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImageBoundingPolyAnnotation,
    oneof: 0

  field :image_polyline_annotation, 8,
    type: Google.Cloud.Datalabeling.V1beta1.ImagePolylineAnnotation,
    oneof: 0

  field :image_segmentation_annotation, 9,
    type: Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation,
    oneof: 0

  field :text_classification_annotation, 3,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationAnnotation,
    oneof: 0

  field :text_entity_extraction_annotation, 10,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionAnnotation,
    oneof: 0

  field :video_classification_annotation, 4,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationAnnotation,
    oneof: 0

  field :video_object_tracking_annotation, 5,
    type: Google.Cloud.Datalabeling.V1beta1.VideoObjectTrackingAnnotation,
    oneof: 0

  field :video_event_annotation, 6,
    type: Google.Cloud.Datalabeling.V1beta1.VideoEventAnnotation,
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:annotation_spec]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.Vertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: integer,
          y: integer
        }

  defstruct [:x, :y]

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Datalabeling.V1beta1.Vertex.t()]
        }

  defstruct [:vertices]

  field :vertices, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Vertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_vertices: [Google.Cloud.Datalabeling.V1beta1.NormalizedVertex.t()]
        }

  defstruct [:normalized_vertices]

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedVertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageBoundingPolyAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounded_area: {atom, any},
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:bounded_area, :annotation_spec]

  oneof :bounded_area, 0
  field :bounding_poly, 2, type: Google.Cloud.Datalabeling.V1beta1.BoundingPoly, oneof: 0

  field :normalized_bounding_poly, 3,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly,
    oneof: 0

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.Polyline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Datalabeling.V1beta1.Vertex.t()]
        }

  defstruct [:vertices]

  field :vertices, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Vertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedPolyline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_vertices: [Google.Cloud.Datalabeling.V1beta1.NormalizedVertex.t()]
        }

  defstruct [:normalized_vertices]

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedVertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImagePolylineAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          poly: {atom, any},
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:poly, :annotation_spec]

  oneof :poly, 0
  field :polyline, 2, type: Google.Cloud.Datalabeling.V1beta1.Polyline, oneof: 0

  field :normalized_polyline, 3,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedPolyline,
    oneof: 0

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation.AnnotationColorsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_colors: %{
            String.t() => Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
          },
          mime_type: String.t(),
          image_bytes: binary
        }

  defstruct [:annotation_colors, :mime_type, :image_bytes]

  field :annotation_colors, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation.AnnotationColorsEntry,
    map: true

  field :mime_type, 2, type: :string
  field :image_bytes, 3, type: :bytes
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:annotation_spec]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          sequential_segment: Google.Cloud.Datalabeling.V1beta1.SequentialSegment.t() | nil
        }

  defstruct [:annotation_spec, :sequential_segment]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
  field :sequential_segment, 2, type: Google.Cloud.Datalabeling.V1beta1.SequentialSegment
end

defmodule Google.Cloud.Datalabeling.V1beta1.SequentialSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: integer,
          end: integer
        }

  defstruct [:start, :end]

  field :start, 1, type: :int32
  field :end, 2, type: :int32
end

defmodule Google.Cloud.Datalabeling.V1beta1.TimeSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time_offset, :end_time_offset]

  field :start_time_offset, 1, type: Google.Protobuf.Duration
  field :end_time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_segment: Google.Cloud.Datalabeling.V1beta1.TimeSegment.t() | nil,
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil
        }

  defstruct [:time_segment, :annotation_spec]

  field :time_segment, 1, type: Google.Cloud.Datalabeling.V1beta1.TimeSegment
  field :annotation_spec, 2, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectTrackingFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bounded_area: {atom, any},
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:bounded_area, :time_offset]

  oneof :bounded_area, 0
  field :bounding_poly, 1, type: Google.Cloud.Datalabeling.V1beta1.BoundingPoly, oneof: 0

  field :normalized_bounding_poly, 2,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly,
    oneof: 0

  field :time_offset, 3, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          time_segment: Google.Cloud.Datalabeling.V1beta1.TimeSegment.t() | nil,
          object_tracking_frames: [Google.Cloud.Datalabeling.V1beta1.ObjectTrackingFrame.t()]
        }

  defstruct [:annotation_spec, :time_segment, :object_tracking_frames]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
  field :time_segment, 2, type: Google.Cloud.Datalabeling.V1beta1.TimeSegment

  field :object_tracking_frames, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectTrackingFrame
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoEventAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec.t() | nil,
          time_segment: Google.Cloud.Datalabeling.V1beta1.TimeSegment.t() | nil
        }

  defstruct [:annotation_spec, :time_segment]

  field :annotation_spec, 1, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
  field :time_segment, 2, type: Google.Cloud.Datalabeling.V1beta1.TimeSegment
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator_metadata: Google.Cloud.Datalabeling.V1beta1.OperatorMetadata.t() | nil
        }

  defstruct [:operator_metadata]

  field :operator_metadata, 2, type: Google.Cloud.Datalabeling.V1beta1.OperatorMetadata
end

defmodule Google.Cloud.Datalabeling.V1beta1.OperatorMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          total_votes: integer,
          label_votes: integer,
          comments: [String.t()]
        }

  defstruct [:score, :total_votes, :label_votes, :comments]

  field :score, 1, type: :float
  field :total_votes, 2, type: :int32
  field :label_votes, 3, type: :int32
  field :comments, 4, repeated: true, type: :string
end
