defmodule Google.Cloud.Dialogflow.V2.Participant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
end
defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentReply.AutomatedAgentReplyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED | :PARTIAL | :FINAL

  field :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0
  field :PARTIAL, 1
  field :FINAL, 2
end
defmodule Google.Cloud.Dialogflow.V2.Participant.DocumentsMetadataFiltersEntry do
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
defmodule Google.Cloud.Dialogflow.V2.Participant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          sip_recording_media_label: String.t(),
          documents_metadata_filters: %{String.t() => String.t()}
        }

  defstruct name: "",
            role: :ROLE_UNSPECIFIED,
            sip_recording_media_label: "",
            documents_metadata_filters: %{}

  field :name, 1, type: :string, deprecated: false
  field :role, 2, type: Google.Cloud.Dialogflow.V2.Participant.Role, enum: true, deprecated: false

  field :sip_recording_media_label, 6,
    type: :string,
    json_name: "sipRecordingMediaLabel",
    deprecated: false

  field :documents_metadata_filters, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Participant.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t(),
          language_code: String.t(),
          participant: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          send_time: Google.Protobuf.Timestamp.t() | nil,
          message_annotation: Google.Cloud.Dialogflow.V2.MessageAnnotation.t() | nil,
          sentiment_analysis: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult.t() | nil
        }

  defstruct name: "",
            content: "",
            language_code: "",
            participant: "",
            participant_role: :ROLE_UNSPECIFIED,
            create_time: nil,
            send_time: nil,
            message_annotation: nil,
            sentiment_analysis: nil

  field :name, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
  field :participant, 4, type: :string, deprecated: false

  field :participant_role, 5,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :send_time, 9, type: Google.Protobuf.Timestamp, json_name: "sendTime", deprecated: false

  field :message_annotation, 7,
    type: Google.Cloud.Dialogflow.V2.MessageAnnotation,
    json_name: "messageAnnotation",
    deprecated: false

  field :sentiment_analysis, 8,
    type: Google.Cloud.Dialogflow.V2.SentimentAnalysisResult,
    json_name: "sentimentAnalysis",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          participant: Google.Cloud.Dialogflow.V2.Participant.t() | nil
        }

  defstruct parent: "",
            participant: nil

  field :parent, 1, type: :string, deprecated: false
  field :participant, 2, type: Google.Cloud.Dialogflow.V2.Participant, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.GetParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListParticipantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListParticipantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participants: [Google.Cloud.Dialogflow.V2.Participant.t()],
          next_page_token: String.t()
        }

  defstruct participants: [],
            next_page_token: ""

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.UpdateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: Google.Cloud.Dialogflow.V2.Participant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct participant: nil,
            update_mask: nil

  field :participant, 1, type: Google.Cloud.Dialogflow.V2.Participant, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input:
            {:text_input, Google.Cloud.Dialogflow.V2.TextInput.t() | nil}
            | {:event_input, Google.Cloud.Dialogflow.V2.EventInput.t() | nil},
          participant: String.t(),
          reply_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          query_params: Google.Cloud.Dialogflow.V2.QueryParameters.t() | nil,
          assist_query_params: Google.Cloud.Dialogflow.V2.AssistQueryParameters.t() | nil,
          cx_parameters: Google.Protobuf.Struct.t() | nil,
          request_id: String.t()
        }

  defstruct input: nil,
            participant: "",
            reply_audio_config: nil,
            query_params: nil,
            assist_query_params: nil,
            cx_parameters: nil,
            request_id: ""

  oneof :input, 0

  field :participant, 1, type: :string, deprecated: false

  field :text_input, 6,
    type: Google.Cloud.Dialogflow.V2.TextInput,
    json_name: "textInput",
    oneof: 0

  field :event_input, 8,
    type: Google.Cloud.Dialogflow.V2.EventInput,
    json_name: "eventInput",
    oneof: 0

  field :reply_audio_config, 5,
    type: Google.Cloud.Dialogflow.V2.OutputAudioConfig,
    json_name: "replyAudioConfig"

  field :query_params, 9,
    type: Google.Cloud.Dialogflow.V2.QueryParameters,
    json_name: "queryParams"

  field :assist_query_params, 14,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"

  field :cx_parameters, 18, type: Google.Protobuf.Struct, json_name: "cxParameters"
  field :request_id, 11, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Dialogflow.V2.DtmfParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accepts_dtmf_input: boolean
        }

  defstruct accepts_dtmf_input: false

  field :accepts_dtmf_input, 1, type: :bool, json_name: "acceptsDtmfInput"
end
defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply_text: String.t(),
          reply_audio: Google.Cloud.Dialogflow.V2.OutputAudio.t() | nil,
          automated_agent_reply: Google.Cloud.Dialogflow.V2.AutomatedAgentReply.t() | nil,
          message: Google.Cloud.Dialogflow.V2.Message.t() | nil,
          human_agent_suggestion_results: [Google.Cloud.Dialogflow.V2.SuggestionResult.t()],
          end_user_suggestion_results: [Google.Cloud.Dialogflow.V2.SuggestionResult.t()],
          dtmf_parameters: Google.Cloud.Dialogflow.V2.DtmfParameters.t() | nil
        }

  defstruct reply_text: "",
            reply_audio: nil,
            automated_agent_reply: nil,
            message: nil,
            human_agent_suggestion_results: [],
            end_user_suggestion_results: [],
            dtmf_parameters: nil

  field :reply_text, 1, type: :string, json_name: "replyText"
  field :reply_audio, 2, type: Google.Cloud.Dialogflow.V2.OutputAudio, json_name: "replyAudio"

  field :automated_agent_reply, 3,
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply,
    json_name: "automatedAgentReply"

  field :message, 5, type: Google.Cloud.Dialogflow.V2.Message

  field :human_agent_suggestion_results, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "humanAgentSuggestionResults"

  field :end_user_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult,
    json_name: "endUserSuggestionResults"

  field :dtmf_parameters, 9,
    type: Google.Cloud.Dialogflow.V2.DtmfParameters,
    json_name: "dtmfParameters"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer,
          assist_query_params: Google.Cloud.Dialogflow.V2.AssistQueryParameters.t() | nil
        }

  defstruct parent: "",
            latest_message: "",
            context_size: 0,
            assist_query_params: nil

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          article_answers: [Google.Cloud.Dialogflow.V2.ArticleAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct article_answers: [],
            latest_message: "",
            context_size: 0

  field :article_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer,
    json_name: "articleAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer,
          assist_query_params: Google.Cloud.Dialogflow.V2.AssistQueryParameters.t() | nil
        }

  defstruct parent: "",
            latest_message: "",
            context_size: 0,
            assist_query_params: nil

  field :parent, 1, type: :string, deprecated: false
  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize", deprecated: false

  field :assist_query_params, 4,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters,
    json_name: "assistQueryParams"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          faq_answers: [Google.Cloud.Dialogflow.V2.FaqAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct faq_answers: [],
            latest_message: "",
            context_size: 0

  field :faq_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FaqAnswer,
    json_name: "faqAnswers"

  field :latest_message, 2, type: :string, json_name: "latestMessage"
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestSmartRepliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          current_text_input: Google.Cloud.Dialogflow.V2.TextInput.t() | nil,
          latest_message: String.t(),
          context_size: integer
        }

  defstruct parent: "",
            current_text_input: nil,
            latest_message: "",
            context_size: 0

  field :parent, 1, type: :string, deprecated: false

  field :current_text_input, 4,
    type: Google.Cloud.Dialogflow.V2.TextInput,
    json_name: "currentTextInput"

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          smart_reply_answers: [Google.Cloud.Dialogflow.V2.SmartReplyAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct smart_reply_answers: [],
            latest_message: "",
            context_size: 0

  field :smart_reply_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SmartReplyAnswer,
    json_name: "smartReplyAnswers",
    deprecated: false

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end
defmodule Google.Cloud.Dialogflow.V2.OutputAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          audio: binary
        }

  defstruct config: nil,
            audio: ""

  field :config, 1, type: Google.Cloud.Dialogflow.V2.OutputAudioConfig
  field :audio, 2, type: :bytes
end
defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detect_intent_response: Google.Cloud.Dialogflow.V2.DetectIntentResponse.t() | nil,
          automated_agent_reply_type:
            Google.Cloud.Dialogflow.V2.AutomatedAgentReply.AutomatedAgentReplyType.t(),
          allow_cancellation: boolean
        }

  defstruct detect_intent_response: nil,
            automated_agent_reply_type: :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED,
            allow_cancellation: false

  field :detect_intent_response, 1,
    type: Google.Cloud.Dialogflow.V2.DetectIntentResponse,
    json_name: "detectIntentResponse"

  field :automated_agent_reply_type, 7,
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply.AutomatedAgentReplyType,
    json_name: "automatedAgentReplyType",
    enum: true

  field :allow_cancellation, 8, type: :bool, json_name: "allowCancellation"
end
defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry do
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
defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          confidence: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct title: "",
            uri: "",
            snippets: [],
            confidence: 0.0,
            metadata: %{},
            answer_record: ""

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string
  field :confidence, 4, type: :float

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry do
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
defmodule Google.Cloud.Dialogflow.V2.FaqAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          source: String.t(),
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct answer: "",
            confidence: 0.0,
            question: "",
            source: "",
            metadata: %{},
            answer_record: ""

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string, json_name: "answerRecord"
end
defmodule Google.Cloud.Dialogflow.V2.SmartReplyAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          answer_record: String.t()
        }

  defstruct reply: "",
            confidence: 0.0,
            answer_record: ""

  field :reply, 1, type: :string
  field :confidence, 2, type: :float
  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.SuggestionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_response:
            {:error, Google.Rpc.Status.t() | nil}
            | {:suggest_articles_response,
               Google.Cloud.Dialogflow.V2.SuggestArticlesResponse.t() | nil}
            | {:suggest_faq_answers_response,
               Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse.t() | nil}
            | {:suggest_smart_replies_response,
               Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse.t() | nil}
        }

  defstruct suggestion_response: nil

  oneof :suggestion_response, 0

  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :suggest_articles_response, 2,
    type: Google.Cloud.Dialogflow.V2.SuggestArticlesResponse,
    json_name: "suggestArticlesResponse",
    oneof: 0

  field :suggest_faq_answers_response, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse,
    json_name: "suggestFaqAnswersResponse",
    oneof: 0

  field :suggest_smart_replies_response, 4,
    type: Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse,
    json_name: "suggestSmartRepliesResponse",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2.AnnotatedMessagePart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          entity_type: String.t(),
          formatted_value: Google.Protobuf.Value.t() | nil
        }

  defstruct text: "",
            entity_type: "",
            formatted_value: nil

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :formatted_value, 3, type: Google.Protobuf.Value, json_name: "formattedValue"
end
defmodule Google.Cloud.Dialogflow.V2.MessageAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parts: [Google.Cloud.Dialogflow.V2.AnnotatedMessagePart.t()],
          contain_entities: boolean
        }

  defstruct parts: [],
            contain_entities: false

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool, json_name: "containEntities"
end
defmodule Google.Cloud.Dialogflow.V2.AssistQueryParameters.DocumentsMetadataFiltersEntry do
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
defmodule Google.Cloud.Dialogflow.V2.AssistQueryParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents_metadata_filters: %{String.t() => String.t()}
        }

  defstruct documents_metadata_filters: %{}

  field :documents_metadata_filters, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.AssistQueryParameters.DocumentsMetadataFiltersEntry,
    json_name: "documentsMetadataFilters",
    map: true
end
defmodule Google.Cloud.Dialogflow.V2.Participants.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Participants"

  rpc :CreateParticipant,
      Google.Cloud.Dialogflow.V2.CreateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :GetParticipant,
      Google.Cloud.Dialogflow.V2.GetParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :ListParticipants,
      Google.Cloud.Dialogflow.V2.ListParticipantsRequest,
      Google.Cloud.Dialogflow.V2.ListParticipantsResponse

  rpc :UpdateParticipant,
      Google.Cloud.Dialogflow.V2.UpdateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :AnalyzeContent,
      Google.Cloud.Dialogflow.V2.AnalyzeContentRequest,
      Google.Cloud.Dialogflow.V2.AnalyzeContentResponse

  rpc :SuggestArticles,
      Google.Cloud.Dialogflow.V2.SuggestArticlesRequest,
      Google.Cloud.Dialogflow.V2.SuggestArticlesResponse

  rpc :SuggestFaqAnswers,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse

  rpc :SuggestSmartReplies,
      Google.Cloud.Dialogflow.V2.SuggestSmartRepliesRequest,
      Google.Cloud.Dialogflow.V2.SuggestSmartRepliesResponse
end

defmodule Google.Cloud.Dialogflow.V2.Participants.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Participants.Service
end
