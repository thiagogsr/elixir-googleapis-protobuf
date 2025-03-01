defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Medium do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MEDIUM_UNSPECIFIED | :PHONE_CALL | :CHAT

  field :MEDIUM_UNSPECIFIED, 0
  field :PHONE_CALL, 1
  field :CHAT, 2
end
defmodule Google.Cloud.Contactcenterinsights.V1.Entity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :PERSON
          | :LOCATION
          | :ORGANIZATION
          | :EVENT
          | :WORK_OF_ART
          | :CONSUMER_GOOD
          | :OTHER
          | :PHONE_NUMBER
          | :ADDRESS
          | :DATE
          | :NUMBER
          | :PRICE

  field :TYPE_UNSPECIFIED, 0
  field :PERSON, 1
  field :LOCATION, 2
  field :ORGANIZATION, 3
  field :EVENT, 4
  field :WORK_OF_ART, 5
  field :CONSUMER_GOOD, 6
  field :OTHER, 7
  field :PHONE_NUMBER, 9
  field :ADDRESS, 10
  field :DATE, 11
  field :NUMBER, 12
  field :PRICE, 13
end
defmodule Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MENTION_TYPE_UNSPECIFIED | :PROPER | :COMMON

  field :MENTION_TYPE_UNSPECIFIED, 0
  field :PROPER, 1
  field :COMMON, 2
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :UNDEPLOYED
          | :DEPLOYING
          | :DEPLOYED
          | :UNDEPLOYING
          | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :UNDEPLOYED, 1
  field :DEPLOYING, 2
  field :DEPLOYED, 3
  field :UNDEPLOYING, 4
  field :DELETING, 5
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PHRASE_MATCHER_TYPE_UNSPECIFIED | :ALL_OF | :ANY_OF

  field :PHRASE_MATCHER_TYPE_UNSPECIFIED, 0
  field :ALL_OF, 1
  field :ANY_OF, 2
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED | :ALL_OF | :ANY_OF

  field :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED, 0
  field :ALL_OF, 1
  field :ANY_OF, 2
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CORRECTNESS_LEVEL_UNSPECIFIED
          | :NOT_CORRECT
          | :PARTIALLY_CORRECT
          | :FULLY_CORRECT

  field :CORRECTNESS_LEVEL_UNSPECIFIED, 0
  field :NOT_CORRECT, 1
  field :PARTIALLY_CORRECT, 2
  field :FULLY_CORRECT, 3
end
defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER | :ANY_AGENT

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
  field :ANY_AGENT, 4
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_channel: integer,
          agent_channel: integer
        }

  defstruct customer_channel: 0,
            agent_channel: 0

  field :customer_channel, 1, type: :int32, json_name: "customerChannel"
  field :agent_channel, 2, type: :int32, json_name: "agentChannel"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_offset: Google.Protobuf.Duration.t() | nil,
          end_offset: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct start_offset: nil,
            end_offset: nil,
            word: "",
            confidence: 0.0

  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :word, 3, type: :string
  field :confidence, 4, type: :float
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          smart_reply_allowlist_covered: boolean
        }

  defstruct smart_reply_allowlist_covered: false

  field :smart_reply_allowlist_covered, 1, type: :bool, json_name: "smartReplyAllowlistCovered"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_time: Google.Protobuf.Timestamp.t() | nil,
          text: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [
            Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo.t()
          ],
          language_code: String.t(),
          channel_tag: integer,
          segment_participant:
            Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.t() | nil,
          dialogflow_segment_metadata:
            Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata.t()
            | nil,
          sentiment: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct message_time: nil,
            text: "",
            confidence: 0.0,
            words: [],
            language_code: "",
            channel_tag: 0,
            segment_participant: nil,
            dialogflow_segment_metadata: nil,
            sentiment: nil

  field :message_time, 6, type: Google.Protobuf.Timestamp, json_name: "messageTime"
  field :text, 1, type: :string
  field :confidence, 2, type: :float

  field :words, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo

  field :language_code, 4, type: :string, json_name: "languageCode"
  field :channel_tag, 5, type: :int32, json_name: "channelTag"

  field :segment_participant, 9,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant,
    json_name: "segmentParticipant"

  field :dialogflow_segment_metadata, 10,
    type:
      Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata,
    json_name: "dialogflowSegmentMetadata"

  field :sentiment, 11, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript_segments: [
            Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.t()
          ]
        }

  defstruct transcript_segments: []

  field :transcript_segments, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment,
    json_name: "transcriptSegments"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.DialogflowIntent.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.DialogflowIntent
end
defmodule Google.Cloud.Contactcenterinsights.V1.Conversation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata:
            {:call_metadata,
             Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata.t() | nil},
          expiration:
            {:expire_time, Google.Protobuf.Timestamp.t() | nil}
            | {:ttl, Google.Protobuf.Duration.t() | nil},
          name: String.t(),
          data_source: Google.Cloud.Contactcenterinsights.V1.ConversationDataSource.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          language_code: String.t(),
          agent_id: String.t(),
          labels: %{String.t() => String.t()},
          transcript: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.t() | nil,
          medium: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          turn_count: integer,
          latest_analysis: Google.Cloud.Contactcenterinsights.V1.Analysis.t() | nil,
          runtime_annotations: [Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation.t()],
          dialogflow_intents: %{
            String.t() => Google.Cloud.Contactcenterinsights.V1.DialogflowIntent.t() | nil
          },
          obfuscated_user_id: String.t()
        }

  defstruct metadata: nil,
            expiration: nil,
            name: "",
            data_source: nil,
            create_time: nil,
            update_time: nil,
            start_time: nil,
            language_code: "",
            agent_id: "",
            labels: %{},
            transcript: nil,
            medium: :MEDIUM_UNSPECIFIED,
            duration: nil,
            turn_count: 0,
            latest_analysis: nil,
            runtime_annotations: [],
            dialogflow_intents: %{},
            obfuscated_user_id: ""

  oneof :metadata, 0
  oneof :expiration, 1

  field :call_metadata, 7,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata,
    json_name: "callMetadata",
    oneof: 0

  field :expire_time, 15, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 1
  field :ttl, 16, type: Google.Protobuf.Duration, oneof: 1, deprecated: false
  field :name, 1, type: :string, deprecated: false

  field :data_source, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationDataSource,
    json_name: "dataSource"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :start_time, 17, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :language_code, 14, type: :string, json_name: "languageCode"
  field :agent_id, 5, type: :string, json_name: "agentId"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry,
    map: true

  field :transcript, 8,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript,
    deprecated: false

  field :medium, 9,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: false

  field :duration, 10, type: Google.Protobuf.Duration, deprecated: false
  field :turn_count, 11, type: :int32, json_name: "turnCount", deprecated: false

  field :latest_analysis, 12,
    type: Google.Cloud.Contactcenterinsights.V1.Analysis,
    json_name: "latestAnalysis",
    deprecated: false

  field :runtime_annotations, 13,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation,
    json_name: "runtimeAnnotations",
    deprecated: false

  field :dialogflow_intents, 18,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry,
    json_name: "dialogflowIntents",
    map: true,
    deprecated: false

  field :obfuscated_user_id, 21, type: :string, json_name: "obfuscatedUserId"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Analysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          analysis_result: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.t() | nil
        }

  defstruct name: "",
            request_time: nil,
            create_time: nil,
            analysis_result: nil

  field :name, 1, type: :string, deprecated: false

  field :request_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "requestTime",
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :analysis_result, 7,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult,
    json_name: "analysisResult",
    deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.ConversationDataSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_source, Google.Cloud.Contactcenterinsights.V1.GcsSource.t() | nil}
            | {:dialogflow_source,
               Google.Cloud.Contactcenterinsights.V1.DialogflowSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Contactcenterinsights.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :dialogflow_source, 3,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowSource,
    json_name: "dialogflowSource",
    oneof: 0
end
defmodule Google.Cloud.Contactcenterinsights.V1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_uri: String.t(),
          transcript_uri: String.t()
        }

  defstruct audio_uri: "",
            transcript_uri: ""

  field :audio_uri, 1, type: :string, json_name: "audioUri"
  field :transcript_uri, 2, type: :string, json_name: "transcriptUri", deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dialogflow_conversation: String.t(),
          audio_uri: String.t()
        }

  defstruct dialogflow_conversation: "",
            audio_uri: ""

  field :dialogflow_conversation, 1,
    type: :string,
    json_name: "dialogflowConversation",
    deprecated: false

  field :audio_uri, 3, type: :string, json_name: "audioUri"
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.EntitiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.Entity.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Entity
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.IntentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.Intent.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Intent
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.PhraseMatchersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotations: [Google.Cloud.Contactcenterinsights.V1.CallAnnotation.t()],
          entities: %{String.t() => Google.Cloud.Contactcenterinsights.V1.Entity.t() | nil},
          sentiments: [Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment.t()],
          intents: %{String.t() => Google.Cloud.Contactcenterinsights.V1.Intent.t() | nil},
          phrase_matchers: %{
            String.t() => Google.Cloud.Contactcenterinsights.V1.PhraseMatchData.t() | nil
          },
          issue_model_result: Google.Cloud.Contactcenterinsights.V1.IssueModelResult.t() | nil
        }

  defstruct annotations: [],
            entities: %{},
            sentiments: [],
            intents: %{},
            phrase_matchers: %{},
            issue_model_result: nil

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CallAnnotation

  field :entities, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.EntitiesEntry,
    map: true

  field :sentiments, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment

  field :intents, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.IntentsEntry,
    map: true

  field :phrase_matchers, 7,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.PhraseMatchersEntry,
    json_name: "phraseMatchers",
    map: true

  field :issue_model_result, 8,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelResult,
    json_name: "issueModelResult"
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata:
            {:call_analysis_metadata,
             Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.t() | nil},
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct metadata: nil,
            end_time: nil

  oneof :metadata, 0

  field :call_analysis_metadata, 2,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata,
    json_name: "callAnalysisMetadata",
    oneof: 0

  field :end_time, 1, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_model: String.t(),
          issues: [Google.Cloud.Contactcenterinsights.V1.IssueAssignment.t()]
        }

  defstruct issue_model: "",
            issues: []

  field :issue_model, 1, type: :string, json_name: "issueModel", deprecated: false
  field :issues, 2, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.IssueAssignment
end
defmodule Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_tag: integer,
          sentiment_data: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct channel_tag: 0,
            sentiment_data: nil

  field :channel_tag, 1, type: :int32, json_name: "channelTag"

  field :sentiment_data, 2,
    type: Google.Cloud.Contactcenterinsights.V1.SentimentData,
    json_name: "sentimentData"
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          display_name: String.t()
        }

  defstruct issue: "",
            score: 0.0,
            display_name: ""

  field :issue, 1, type: :string
  field :score, 2, type: :double
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.CallAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data:
            {:interruption_data, Google.Cloud.Contactcenterinsights.V1.InterruptionData.t() | nil}
            | {:sentiment_data, Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil}
            | {:silence_data, Google.Cloud.Contactcenterinsights.V1.SilenceData.t() | nil}
            | {:hold_data, Google.Cloud.Contactcenterinsights.V1.HoldData.t() | nil}
            | {:entity_mention_data,
               Google.Cloud.Contactcenterinsights.V1.EntityMentionData.t() | nil}
            | {:intent_match_data,
               Google.Cloud.Contactcenterinsights.V1.IntentMatchData.t() | nil}
            | {:phrase_match_data,
               Google.Cloud.Contactcenterinsights.V1.PhraseMatchData.t() | nil},
          channel_tag: integer,
          annotation_start_boundary:
            Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          annotation_end_boundary:
            Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil
        }

  defstruct data: nil,
            channel_tag: 0,
            annotation_start_boundary: nil,
            annotation_end_boundary: nil

  oneof :data, 0

  field :interruption_data, 10,
    type: Google.Cloud.Contactcenterinsights.V1.InterruptionData,
    json_name: "interruptionData",
    oneof: 0

  field :sentiment_data, 11,
    type: Google.Cloud.Contactcenterinsights.V1.SentimentData,
    json_name: "sentimentData",
    oneof: 0

  field :silence_data, 12,
    type: Google.Cloud.Contactcenterinsights.V1.SilenceData,
    json_name: "silenceData",
    oneof: 0

  field :hold_data, 13,
    type: Google.Cloud.Contactcenterinsights.V1.HoldData,
    json_name: "holdData",
    oneof: 0

  field :entity_mention_data, 15,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData,
    json_name: "entityMentionData",
    oneof: 0

  field :intent_match_data, 16,
    type: Google.Cloud.Contactcenterinsights.V1.IntentMatchData,
    json_name: "intentMatchData",
    oneof: 0

  field :phrase_match_data, 17,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData,
    json_name: "phraseMatchData",
    oneof: 0

  field :channel_tag, 1, type: :int32, json_name: "channelTag"

  field :annotation_start_boundary, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "annotationStartBoundary"

  field :annotation_end_boundary, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "annotationEndBoundary"
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detailed_boundary: {:word_index, integer},
          transcript_index: integer
        }

  defstruct detailed_boundary: nil,
            transcript_index: 0

  oneof :detailed_boundary, 0

  field :word_index, 3, type: :int32, json_name: "wordIndex", oneof: 0
  field :transcript_index, 1, type: :int32, json_name: "transcriptIndex"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Entity.MetadataEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.Entity.Type.t(),
          metadata: %{String.t() => String.t()},
          salience: float | :infinity | :negative_infinity | :nan,
          sentiment: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct display_name: "",
            type: :TYPE_UNSPECIFIED,
            metadata: %{},
            salience: 0.0,
            sentiment: nil

  field :display_name, 1, type: :string, json_name: "displayName"
  field :type, 2, type: Google.Cloud.Contactcenterinsights.V1.Entity.Type, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Entity.MetadataEntry,
    map: true

  field :salience, 4, type: :float
  field :sentiment, 5, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end
defmodule Google.Cloud.Contactcenterinsights.V1.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t()
        }

  defstruct id: "",
            display_name: ""

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_matcher: String.t(),
          display_name: String.t()
        }

  defstruct phrase_matcher: "",
            display_name: ""

  field :phrase_matcher, 1, type: :string, json_name: "phraseMatcher"
  field :display_name, 2, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t()
        }

  defstruct display_name: ""

  field :display_name, 1, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Contactcenterinsights.V1.InterruptionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Contactcenterinsights.V1.SilenceData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Contactcenterinsights.V1.HoldData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Contactcenterinsights.V1.EntityMentionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_unique_id: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType.t(),
          sentiment: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct entity_unique_id: "",
            type: :MENTION_TYPE_UNSPECIFIED,
            sentiment: nil

  field :entity_unique_id, 1, type: :string, json_name: "entityUniqueId"

  field :type, 2,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType,
    enum: true

  field :sentiment, 3, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end
defmodule Google.Cloud.Contactcenterinsights.V1.IntentMatchData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent_unique_id: String.t()
        }

  defstruct intent_unique_id: ""

  field :intent_unique_id, 1, type: :string, json_name: "intentUniqueId"
end
defmodule Google.Cloud.Contactcenterinsights.V1.SentimentData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          magnitude: float | :infinity | :negative_infinity | :nan,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct magnitude: 0.0,
            score: 0.0

  field :magnitude, 1, type: :float
  field :score, 2, type: :float
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          medium: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium.t(),
          training_conversations_count: integer,
          filter: String.t()
        }

  defstruct medium: :MEDIUM_UNSPECIFIED,
            training_conversations_count: 0,
            filter: ""

  field :medium, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: true

  field :training_conversations_count, 2,
    type: :int64,
    json_name: "trainingConversationsCount",
    deprecated: false

  field :filter, 3, type: :string
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Contactcenterinsights.V1.IssueModel.State.t(),
          input_data_config:
            Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig.t() | nil,
          training_stats: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.t() | nil
        }

  defstruct name: "",
            display_name: "",
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            input_data_config: nil,
            training_stats: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.State,
    enum: true,
    deprecated: false

  field :input_data_config, 6,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig,
    json_name: "inputDataConfig"

  field :training_stats, 7,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats,
    json_name: "trainingStats",
    deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.Issue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            display_name: "",
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: String.t(),
          labeled_conversations_count: integer,
          display_name: String.t()
        }

  defstruct issue: "",
            labeled_conversations_count: 0,
            display_name: ""

  field :issue, 1, type: :string
  field :labeled_conversations_count, 2, type: :int64, json_name: "labeledConversationsCount"
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats
end
defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analyzed_conversations_count: integer,
          unclassified_conversations_count: integer,
          issue_stats: %{
            String.t() =>
              Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
          }
        }

  defstruct analyzed_conversations_count: 0,
            unclassified_conversations_count: 0,
            issue_stats: %{}

  field :analyzed_conversations_count, 1, type: :int64, json_name: "analyzedConversationsCount"

  field :unclassified_conversations_count, 2,
    type: :int64,
    json_name: "unclassifiedConversationsCount"

  field :issue_stats, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry,
    json_name: "issueStats",
    map: true
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          revision_id: String.t(),
          version_tag: String.t(),
          revision_create_time: Google.Protobuf.Timestamp.t() | nil,
          display_name: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType.t(),
          active: boolean,
          phrase_match_rule_groups: [
            Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.t()
          ],
          activation_update_time: Google.Protobuf.Timestamp.t() | nil,
          role_match: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            revision_id: "",
            version_tag: "",
            revision_create_time: nil,
            display_name: "",
            type: :PHRASE_MATCHER_TYPE_UNSPECIFIED,
            active: false,
            phrase_match_rule_groups: [],
            activation_update_time: nil,
            role_match: :ROLE_UNSPECIFIED,
            update_time: nil

  field :name, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
  field :version_tag, 3, type: :string, json_name: "versionTag"

  field :revision_create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName"

  field :type, 6,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType,
    enum: true,
    deprecated: false

  field :active, 7, type: :bool

  field :phrase_match_rule_groups, 8,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup,
    json_name: "phraseMatchRuleGroups"

  field :activation_update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "activationUpdateTime",
    deprecated: false

  field :role_match, 10,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    json_name: "roleMatch",
    enum: true

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType.t(),
          phrase_match_rules: [Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule.t()]
        }

  defstruct type: :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED,
            phrase_match_rules: []

  field :type, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType,
    enum: true,
    deprecated: false

  field :phrase_match_rules, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule,
    json_name: "phraseMatchRules"
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          negated: boolean,
          config: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig.t() | nil
        }

  defstruct query: "",
            negated: false,
            config: nil

  field :query, 1, type: :string, deprecated: false
  field :negated, 2, type: :bool
  field :config, 3, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig
end
defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config:
            {:exact_match_config,
             Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig.t() | nil}
        }

  defstruct config: nil

  oneof :config, 0

  field :exact_match_config, 1,
    type: Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig,
    json_name: "exactMatchConfig",
    oneof: 0
end
defmodule Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          case_sensitive: boolean
        }

  defstruct case_sensitive: false

  field :case_sensitive, 1, type: :bool, json_name: "caseSensitive"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runtime_integration_analysis_percentage: float | :infinity | :negative_infinity | :nan
        }

  defstruct runtime_integration_analysis_percentage: 0.0

  field :runtime_integration_analysis_percentage, 1,
    type: :double,
    json_name: "runtimeIntegrationAnalysisPercentage"
end
defmodule Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          language_code: String.t(),
          conversation_ttl: Google.Protobuf.Duration.t() | nil,
          pubsub_notification_settings: %{String.t() => String.t()},
          analysis_config: Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            language_code: "",
            conversation_ttl: nil,
            pubsub_notification_settings: %{},
            analysis_config: nil

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :language_code, 4, type: :string, json_name: "languageCode"
  field :conversation_ttl, 5, type: Google.Protobuf.Duration, json_name: "conversationTtl"

  field :pubsub_notification_settings, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry,
    json_name: "pubsubNotificationSettings",
    map: true

  field :analysis_config, 7,
    type: Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig,
    json_name: "analysisConfig"
end
defmodule Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data:
            {:article_suggestion,
             Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.t() | nil}
            | {:faq_answer, Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.t() | nil}
            | {:smart_reply, Google.Cloud.Contactcenterinsights.V1.SmartReplyData.t() | nil}
            | {:smart_compose_suggestion,
               Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.t() | nil}
            | {:dialogflow_interaction,
               Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData.t() | nil},
          annotation_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_boundary: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          end_boundary: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          answer_feedback: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.t() | nil
        }

  defstruct data: nil,
            annotation_id: "",
            create_time: nil,
            start_boundary: nil,
            end_boundary: nil,
            answer_feedback: nil

  oneof :data, 0

  field :article_suggestion, 6,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData,
    json_name: "articleSuggestion",
    oneof: 0

  field :faq_answer, 7,
    type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData,
    json_name: "faqAnswer",
    oneof: 0

  field :smart_reply, 8,
    type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData,
    json_name: "smartReply",
    oneof: 0

  field :smart_compose_suggestion, 9,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData,
    json_name: "smartComposeSuggestion",
    oneof: 0

  field :dialogflow_interaction, 10,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData,
    json_name: "dialogflowInteraction",
    oneof: 0

  field :annotation_id, 1, type: :string, json_name: "annotationId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :start_boundary, 3,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "startBoundary"

  field :end_boundary, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "endBoundary"

  field :answer_feedback, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback,
    json_name: "answerFeedback"
end
defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          correctness_level:
            Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel.t(),
          clicked: boolean,
          displayed: boolean
        }

  defstruct correctness_level: :CORRECTNESS_LEVEL_UNSPECIFIED,
            clicked: false,
            displayed: false

  field :correctness_level, 1,
    type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel,
    json_name: "correctnessLevel",
    enum: true

  field :clicked, 2, type: :bool
  field :displayed, 3, type: :bool
end
defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t(),
          source: String.t()
        }

  defstruct title: "",
            uri: "",
            confidence_score: 0.0,
            metadata: %{},
            query_record: "",
            source: ""

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :confidence_score, 3, type: :float, json_name: "confidenceScore"

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string, json_name: "queryRecord"
  field :source, 6, type: :string
end
defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          metadata: %{String.t() => String.t()},
          query_record: String.t(),
          source: String.t()
        }

  defstruct answer: "",
            confidence_score: 0.0,
            question: "",
            metadata: %{},
            query_record: "",
            source: ""

  field :answer, 1, type: :string
  field :confidence_score, 2, type: :float, json_name: "confidenceScore"
  field :question, 3, type: :string

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string, json_name: "queryRecord"
  field :source, 6, type: :string
end
defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t()
        }

  defstruct reply: "",
            confidence_score: 0.0,
            metadata: %{},
            query_record: ""

  field :reply, 1, type: :string
  field :confidence_score, 2, type: :double, json_name: "confidenceScore"

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string, json_name: "queryRecord"
end
defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry do
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
defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t()
        }

  defstruct suggestion: "",
            confidence_score: 0.0,
            metadata: %{},
            query_record: ""

  field :suggestion, 1, type: :string
  field :confidence_score, 2, type: :double, json_name: "confidenceScore"

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string, json_name: "queryRecord"
end
defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dialogflow_intent_id: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct dialogflow_intent_id: "",
            confidence: 0.0

  field :dialogflow_intent_id, 1, type: :string, json_name: "dialogflowIntentId"
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: {:dialogflow_participant_name, String.t()} | {:user_id, String.t()},
          dialogflow_participant: String.t(),
          obfuscated_external_user_id: String.t(),
          role: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role.t()
        }

  defstruct participant: nil,
            dialogflow_participant: "",
            obfuscated_external_user_id: "",
            role: :ROLE_UNSPECIFIED

  oneof :participant, 0

  field :dialogflow_participant_name, 5,
    type: :string,
    json_name: "dialogflowParticipantName",
    oneof: 0,
    deprecated: false

  field :user_id, 6, type: :string, json_name: "userId", oneof: 0

  field :dialogflow_participant, 1,
    type: :string,
    json_name: "dialogflowParticipant",
    deprecated: true

  field :obfuscated_external_user_id, 3, type: :string, json_name: "obfuscatedExternalUserId"

  field :role, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    enum: true
end
defmodule Google.Cloud.Contactcenterinsights.V1.View do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          value: String.t()
        }

  defstruct name: "",
            display_name: "",
            create_time: nil,
            update_time: nil,
            value: ""

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :value, 5, type: :string
end
