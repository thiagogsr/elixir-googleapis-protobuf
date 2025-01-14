defmodule Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.MessageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MESSAGE_TYPE_UNSPECIFIED | :TRANSCRIPT | :END_OF_SINGLE_UTTERANCE

  field :MESSAGE_TYPE_UNSPECIFIED, 0
  field :TRANSCRIPT, 1
  field :END_OF_SINGLE_UTTERANCE, 2
end
defmodule Google.Cloud.Dialogflow.V2.DetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          query_params: Google.Cloud.Dialogflow.V2.QueryParameters.t() | nil,
          query_input: Google.Cloud.Dialogflow.V2.QueryInput.t() | nil,
          output_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          output_audio_config_mask: Google.Protobuf.FieldMask.t() | nil,
          input_audio: binary
        }

  defstruct session: "",
            query_params: nil,
            query_input: nil,
            output_audio_config: nil,
            output_audio_config_mask: nil,
            input_audio: ""

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.V2.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :output_audio_config, 4,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :output_audio_config_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "outputAudioConfigMask"

  field :input_audio, 5, type: :bytes, json_name: "inputAudio"
end
defmodule Google.Cloud.Dialogflow.V2.DetectIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_id: String.t(),
          query_result: Google.Cloud.Dialogflow.V2.QueryResult.t() | nil,
          webhook_status: Google.Rpc.Status.t() | nil,
          output_audio: binary,
          output_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil
        }

  defstruct response_id: "",
            query_result: nil,
            webhook_status: nil,
            output_audio: "",
            output_audio_config: nil

  field :response_id, 1, type: :string, json_name: "responseId"
  field :query_result, 2, type: Google.Cloud.Dialogflow.V2.QueryResult, json_name: "queryResult"
  field :webhook_status, 3, type: Google.Rpc.Status, json_name: "webhookStatus"
  field :output_audio, 4, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 6,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"
end
defmodule Google.Cloud.Dialogflow.V2.QueryParameters.WebhookHeadersEntry do
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
defmodule Google.Cloud.Dialogflow.V2.QueryParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_zone: String.t(),
          geo_location: Google.Type.LatLng.t() | nil,
          contexts: [Google.Cloud.Dialogflow.V2.Context.t()],
          reset_contexts: boolean,
          session_entity_types: [Google.Cloud.Dialogflow.V2.SessionEntityType.t()],
          payload: Google.Protobuf.Struct.t() | nil,
          sentiment_analysis_request_config:
            Google.Cloud.Dialogflow.V2.SentimentAnalysisRequestConfig.t() | nil,
          webhook_headers: %{String.t() => String.t()}
        }

  defstruct time_zone: "",
            geo_location: nil,
            contexts: [],
            reset_contexts: false,
            session_entity_types: [],
            payload: nil,
            sentiment_analysis_request_config: nil,
            webhook_headers: %{}

  field :time_zone, 1, type: :string, json_name: "timeZone"
  field :geo_location, 2, type: Google.Type.LatLng, json_name: "geoLocation"
  field :contexts, 3, repeated: true, type: Google.Cloud.Dialogflow.V2.Context
  field :reset_contexts, 4, type: :bool, json_name: "resetContexts"

  field :session_entity_types, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :payload, 6, type: Google.Protobuf.Struct

  field :sentiment_analysis_request_config, 10,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisRequestConfig,
    json_name: "sentimentAnalysisRequestConfig"

  field :webhook_headers, 14,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.QueryParameters.WebhookHeadersEntry,
    json_name: "webhookHeaders",
    map: true
end
defmodule Google.Cloud.Dialogflow.V2.QueryInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input:
            {:audio_config, Google.Cloud.Dialogflow.V2.InputAudioConfig.t() | nil}
            | {:text, Google.Cloud.Dialogflow.V2.TextInput.t() | nil}
            | {:event, Google.Cloud.Dialogflow.V2.EventInput.t() | nil}
        }

  defstruct input: nil

  oneof :input, 0

  field :audio_config, 1,
    type: Google.Cloud.Dialogflow.V2.InputAudioConfig,
    json_name: "audioConfig",
    oneof: 0

  field :text, 2, type: Google.Cloud.Dialogflow.V2.TextInput, oneof: 0
  field :event, 3, type: Google.Cloud.Dialogflow.V2.EventInput, oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2.QueryResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_text: String.t(),
          language_code: String.t(),
          speech_recognition_confidence: float | :infinity | :negative_infinity | :nan,
          action: String.t(),
          parameters: Google.Protobuf.Struct.t() | nil,
          all_required_params_present: boolean,
          cancels_slot_filling: boolean,
          fulfillment_text: String.t(),
          fulfillment_messages: [Google.Cloud.Dialogflow.V2.Intent.Message.t()],
          webhook_source: String.t(),
          webhook_payload: Google.Protobuf.Struct.t() | nil,
          output_contexts: [Google.Cloud.Dialogflow.V2.Context.t()],
          intent: Google.Cloud.Dialogflow.V2.Intent.t() | nil,
          intent_detection_confidence: float | :infinity | :negative_infinity | :nan,
          diagnostic_info: Google.Protobuf.Struct.t() | nil,
          sentiment_analysis_result: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult.t() | nil
        }

  defstruct query_text: "",
            language_code: "",
            speech_recognition_confidence: 0.0,
            action: "",
            parameters: nil,
            all_required_params_present: false,
            cancels_slot_filling: false,
            fulfillment_text: "",
            fulfillment_messages: [],
            webhook_source: "",
            webhook_payload: nil,
            output_contexts: [],
            intent: nil,
            intent_detection_confidence: 0.0,
            diagnostic_info: nil,
            sentiment_analysis_result: nil

  field :query_text, 1, type: :string, json_name: "queryText"
  field :language_code, 15, type: :string, json_name: "languageCode"
  field :speech_recognition_confidence, 2, type: :float, json_name: "speechRecognitionConfidence"
  field :action, 3, type: :string
  field :parameters, 4, type: Google.Protobuf.Struct
  field :all_required_params_present, 5, type: :bool, json_name: "allRequiredParamsPresent"
  field :cancels_slot_filling, 21, type: :bool, json_name: "cancelsSlotFilling"
  field :fulfillment_text, 6, type: :string, json_name: "fulfillmentText"

  field :fulfillment_messages, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Intent.Message,
    json_name: "fulfillmentMessages"

  field :webhook_source, 8, type: :string, json_name: "webhookSource"
  field :webhook_payload, 9, type: Google.Protobuf.Struct, json_name: "webhookPayload"

  field :output_contexts, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Context,
    json_name: "outputContexts"

  field :intent, 11, type: Google.Cloud.Dialogflow.V2.Intent
  field :intent_detection_confidence, 12, type: :float, json_name: "intentDetectionConfidence"
  field :diagnostic_info, 14, type: Google.Protobuf.Struct, json_name: "diagnosticInfo"

  field :sentiment_analysis_result, 17,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult,
    json_name: "sentimentAnalysisResult"
end
defmodule Google.Cloud.Dialogflow.V2.StreamingDetectIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session: String.t(),
          query_params: Google.Cloud.Dialogflow.V2.QueryParameters.t() | nil,
          query_input: Google.Cloud.Dialogflow.V2.QueryInput.t() | nil,
          single_utterance: boolean,
          output_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          output_audio_config_mask: Google.Protobuf.FieldMask.t() | nil,
          input_audio: binary
        }

  defstruct session: "",
            query_params: nil,
            query_input: nil,
            single_utterance: false,
            output_audio_config: nil,
            output_audio_config_mask: nil,
            input_audio: ""

  field :session, 1, type: :string, deprecated: false

  field :query_params, 2,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :query_input, 3,
    type: Google.Cloud.Dialogflow.V2.QueryInput,
    json_name: "queryInput",
    deprecated: false

  field :single_utterance, 4, type: :bool, json_name: "singleUtterance", deprecated: true

  field :output_audio_config, 5,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"

  field :output_audio_config_mask, 7,
    type: Google.Protobuf.FieldMask,
    json_name: "outputAudioConfigMask"

  field :input_audio, 6, type: :bytes, json_name: "inputAudio"
end
defmodule Google.Cloud.Dialogflow.V2.StreamingDetectIntentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_id: String.t(),
          recognition_result: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.t() | nil,
          query_result: Google.Cloud.Dialogflow.V2.QueryResult.t() | nil,
          webhook_status: Google.Rpc.Status.t() | nil,
          output_audio: binary,
          output_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil
        }

  defstruct response_id: "",
            recognition_result: nil,
            query_result: nil,
            webhook_status: nil,
            output_audio: "",
            output_audio_config: nil

  field :response_id, 1, type: :string, json_name: "responseId"

  field :recognition_result, 2,
    type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult,
    json_name: "recognitionResult"

  field :query_result, 3, type: Google.Cloud.Dialogflow.V2.QueryResult, json_name: "queryResult"
  field :webhook_status, 4, type: Google.Rpc.Status, json_name: "webhookStatus"
  field :output_audio, 5, type: :bytes, json_name: "outputAudio"

  field :output_audio_config, 6,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "outputAudioConfig"
end
defmodule Google.Cloud.Dialogflow.V2.StreamingRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.MessageType.t(),
          transcript: String.t(),
          is_final: boolean,
          confidence: float | :infinity | :negative_infinity | :nan,
          speech_word_info: [Google.Cloud.Dialogflow.V2.SpeechWordInfo.t()],
          speech_end_offset: Google.Protobuf.Duration.t() | nil,
          language_code: String.t()
        }

  defstruct message_type: :MESSAGE_TYPE_UNSPECIFIED,
            transcript: "",
            is_final: false,
            confidence: 0.0,
            speech_word_info: [],
            speech_end_offset: nil,
            language_code: ""

  field :message_type, 1,
    type: Google.Cloud.Dialogflow.V2.StreamingRecognitionResult.MessageType,
    json_name: "messageType",
    enum: true

  field :transcript, 2, type: :string
  field :is_final, 3, type: :bool, json_name: "isFinal"
  field :confidence, 4, type: :float

  field :speech_word_info, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SpeechWordInfo,
    json_name: "speechWordInfo"

  field :speech_end_offset, 8, type: Google.Protobuf.Duration, json_name: "speechEndOffset"
  field :language_code, 10, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.V2.TextInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          language_code: String.t()
        }

  defstruct text: "",
            language_code: ""

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.EventInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameters: Google.Protobuf.Struct.t() | nil,
          language_code: String.t()
        }

  defstruct name: "",
            parameters: nil,
            language_code: ""

  field :name, 1, type: :string, deprecated: false
  field :parameters, 2, type: Google.Protobuf.Struct
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.SentimentAnalysisRequestConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analyze_query_text_sentiment: boolean
        }

  defstruct analyze_query_text_sentiment: false

  field :analyze_query_text_sentiment, 1, type: :bool, json_name: "analyzeQueryTextSentiment"
end
defmodule Google.Cloud.Dialogflow.V2.SentimentAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_text_sentiment: Google.Cloud.Dialogflow.V2.Sentiment.t() | nil
        }

  defstruct query_text_sentiment: nil

  field :query_text_sentiment, 1,
    type: Google.Cloud.Dialogflow.V2.Sentiment,
    json_name: "queryTextSentiment"
end
defmodule Google.Cloud.Dialogflow.V2.Sentiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          magnitude: float | :infinity | :negative_infinity | :nan
        }

  defstruct score: 0.0,
            magnitude: 0.0

  field :score, 1, type: :float
  field :magnitude, 2, type: :float
end
defmodule Google.Cloud.Dialogflow.V2.Sessions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Sessions"

  rpc :DetectIntent,
      Google.Cloud.Dialogflow.V2.DetectIntentRequest,
      Google.Cloud.Dialogflow.V2.DetectIntentResponse

  rpc :StreamingDetectIntent,
      stream(Google.Cloud.Dialogflow.V2.StreamingDetectIntentRequest),
      stream(Google.Cloud.Dialogflow.V2.StreamingDetectIntentResponse)
end

defmodule Google.Cloud.Dialogflow.V2.Sessions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Sessions.Service
end
