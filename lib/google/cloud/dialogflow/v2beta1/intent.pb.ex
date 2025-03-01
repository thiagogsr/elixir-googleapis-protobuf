defmodule Google.Cloud.Dialogflow.V2beta1.IntentView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INTENT_VIEW_UNSPECIFIED | :INTENT_VIEW_FULL

  field :INTENT_VIEW_UNSPECIFIED, 0
  field :INTENT_VIEW_FULL, 1
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.WebhookState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :WEBHOOK_STATE_UNSPECIFIED
          | :WEBHOOK_STATE_ENABLED
          | :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING

  field :WEBHOOK_STATE_UNSPECIFIED, 0
  field :WEBHOOK_STATE_ENABLED, 1
  field :WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :EXAMPLE | :TEMPLATE

  field :TYPE_UNSPECIFIED, 0
  field :EXAMPLE, 1
  field :TEMPLATE, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PLATFORM_UNSPECIFIED
          | :FACEBOOK
          | :SLACK
          | :TELEGRAM
          | :KIK
          | :SKYPE
          | :LINE
          | :VIBER
          | :ACTIONS_ON_GOOGLE
          | :TELEPHONY
          | :GOOGLE_HANGOUTS

  field :PLATFORM_UNSPECIFIED, 0
  field :FACEBOOK, 1
  field :SLACK, 2
  field :TELEGRAM, 3
  field :KIK, 4
  field :SKYPE, 5
  field :LINE, 6
  field :VIBER, 7
  field :ACTIONS_ON_GOOGLE, 8
  field :TELEPHONY, 10
  field :GOOGLE_HANGOUTS, 11
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.CardWidth do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CARD_WIDTH_UNSPECIFIED | :SMALL | :MEDIUM

  field :CARD_WIDTH_UNSPECIFIED, 0
  field :SMALL, 1
  field :MEDIUM, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.CardOrientation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CARD_ORIENTATION_UNSPECIFIED | :HORIZONTAL | :VERTICAL

  field :CARD_ORIENTATION_UNSPECIFIED, 0
  field :HORIZONTAL, 1
  field :VERTICAL, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.ThumbnailImageAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED | :LEFT | :RIGHT

  field :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED, 0
  field :LEFT, 1
  field :RIGHT, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.Height do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HEIGHT_UNSPECIFIED | :SHORT | :MEDIUM | :TALL

  field :HEIGHT_UNSPECIFIED, 0
  field :SHORT, 1
  field :MEDIUM, 2
  field :TALL, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESPONSE_MEDIA_TYPE_UNSPECIFIED | :AUDIO

  field :RESPONSE_MEDIA_TYPE_UNSPECIFIED, 0
  field :AUDIO, 1
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.ImageDisplayOptions do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED
          | :GRAY
          | :WHITE
          | :CROPPED
          | :BLURRED_BACKGROUND

  field :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED, 0
  field :GRAY, 1
  field :WHITE, 2
  field :CROPPED, 3
  field :BLURRED_BACKGROUND, 4
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :URL_TYPE_HINT_UNSPECIFIED | :AMP_ACTION | :AMP_CONTENT

  field :URL_TYPE_HINT_UNSPECIFIED, 0
  field :AMP_ACTION, 1
  field :AMP_CONTENT, 2
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.HorizontalAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HORIZONTAL_ALIGNMENT_UNSPECIFIED | :LEADING | :CENTER | :TRAILING

  field :HORIZONTAL_ALIGNMENT_UNSPECIFIED, 0
  field :LEADING, 1
  field :CENTER, 2
  field :TRAILING, 3
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Part do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          entity_type: String.t(),
          alias: String.t(),
          user_defined: boolean
        }

  defstruct text: "",
            entity_type: "",
            alias: "",
            user_defined: false

  field :text, 1, type: :string
  field :entity_type, 2, type: :string, json_name: "entityType"
  field :alias, 3, type: :string
  field :user_defined, 4, type: :bool, json_name: "userDefined"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Type.t(),
          parts: [Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Part.t()],
          times_added_count: integer
        }

  defstruct name: "",
            type: :TYPE_UNSPECIFIED,
            parts: [],
            times_added_count: 0

  field :name, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Type,
    enum: true,
    deprecated: false

  field :parts, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.Part,
    deprecated: false

  field :times_added_count, 4, type: :int32, json_name: "timesAddedCount", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          value: String.t(),
          default_value: String.t(),
          entity_type_display_name: String.t(),
          mandatory: boolean,
          prompts: [String.t()],
          is_list: boolean
        }

  defstruct name: "",
            display_name: "",
            value: "",
            default_value: "",
            entity_type_display_name: "",
            mandatory: false,
            prompts: [],
            is_list: false

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :value, 3, type: :string
  field :default_value, 4, type: :string, json_name: "defaultValue"
  field :entity_type_display_name, 5, type: :string, json_name: "entityTypeDisplayName"
  field :mandatory, 6, type: :bool
  field :prompts, 7, repeated: true, type: :string
  field :is_list, 8, type: :bool, json_name: "isList"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()]
        }

  defstruct text: []

  field :text, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t(),
          accessibility_text: String.t()
        }

  defstruct image_uri: "",
            accessibility_text: ""

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :accessibility_text, 2, type: :string, json_name: "accessibilityText"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.QuickReplies do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          quick_replies: [String.t()]
        }

  defstruct title: "",
            quick_replies: []

  field :title, 1, type: :string
  field :quick_replies, 2, repeated: true, type: :string, json_name: "quickReplies"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.Button do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          postback: String.t()
        }

  defstruct text: "",
            postback: ""

  field :text, 1, type: :string
  field :postback, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image_uri: String.t(),
          buttons: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            image_uri: "",
            buttons: []

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image_uri, 3, type: :string, json_name: "imageUri"

  field :buttons, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.Button
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_to_speech: String.t(),
          ssml: String.t(),
          display_text: String.t()
        }

  defstruct text_to_speech: "",
            ssml: "",
            display_text: ""

  field :text_to_speech, 1, type: :string, json_name: "textToSpeech"
  field :ssml, 2, type: :string
  field :display_text, 3, type: :string, json_name: "displayText"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponses do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          simple_responses: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponse.t()]
        }

  defstruct simple_responses: []

  field :simple_responses, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponse,
    json_name: "simpleResponses"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.OpenUriAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          open_uri_action:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.OpenUriAction.t()
            | nil
        }

  defstruct title: "",
            open_uri_action: nil

  field :title, 1, type: :string

  field :open_uri_action, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.OpenUriAction,
    json_name: "openUriAction"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          formatted_text: String.t(),
          image: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil,
          buttons: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            formatted_text: "",
            image: nil,
            buttons: []

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :formatted_text, 3, type: :string, json_name: "formattedText"
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image

  field :buttons, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t()
        }

  defstruct title: ""

  field :title, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestions: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestion.t()]
        }

  defstruct suggestions: []

  field :suggestions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestion
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.LinkOutSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_name: String.t(),
          uri: String.t()
        }

  defstruct destination_name: "",
            uri: ""

  field :destination_name, 1, type: :string, json_name: "destinationName"
  field :uri, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo.t() | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil
        }

  defstruct info: nil,
            title: "",
            description: "",
            image: nil

  field :info, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          items: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.Item.t()],
          subtitle: String.t()
        }

  defstruct title: "",
            items: [],
            subtitle: ""

  field :title, 1, type: :string

  field :items, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.Item

  field :subtitle, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          info: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo.t() | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil
        }

  defstruct info: nil,
            title: "",
            description: "",
            image: nil

  field :info, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.Item.t()]
        }

  defstruct items: []

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.Item
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.SelectItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          synonyms: [String.t()]
        }

  defstruct key: "",
            synonyms: []

  field :key, 1, type: :string
  field :synonyms, 2, repeated: true, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyPlayAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_uri: String.t()
        }

  defstruct audio_uri: ""

  field :audio_uri, 1, type: :string, json_name: "audioUri"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonySynthesizeSpeech do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:text, String.t()} | {:ssml, String.t()}
        }

  defstruct source: nil

  oneof :source, 0

  field :text, 1, type: :string, oneof: 0
  field :ssml, 2, type: :string, oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyTransferCall do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t()
        }

  defstruct phone_number: ""

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmText do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          rbm_suggestion: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion.t()]
        }

  defstruct text: "",
            rbm_suggestion: []

  field :text, 1, type: :string

  field :rbm_suggestion, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion,
    json_name: "rbmSuggestion"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          card_width:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.CardWidth.t(),
          card_contents: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.t()]
        }

  defstruct card_width: :CARD_WIDTH_UNSPECIFIED,
            card_contents: []

  field :card_width, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.CardWidth,
    json_name: "cardWidth",
    enum: true

  field :card_contents, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent,
    json_name: "cardContents"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          card_orientation:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.CardOrientation.t(),
          thumbnail_image_alignment:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.ThumbnailImageAlignment.t(),
          card_content: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.t() | nil
        }

  defstruct card_orientation: :CARD_ORIENTATION_UNSPECIFIED,
            thumbnail_image_alignment: :THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED,
            card_content: nil

  field :card_orientation, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.CardOrientation,
    json_name: "cardOrientation",
    enum: true

  field :thumbnail_image_alignment, 2,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.ThumbnailImageAlignment,
    json_name: "thumbnailImageAlignment",
    enum: true

  field :card_content, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent,
    json_name: "cardContent"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_uri: String.t(),
          thumbnail_uri: String.t(),
          height:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.Height.t()
        }

  defstruct file_uri: "",
            thumbnail_uri: "",
            height: :HEIGHT_UNSPECIFIED

  field :file_uri, 1, type: :string, json_name: "fileUri"
  field :thumbnail_uri, 2, type: :string, json_name: "thumbnailUri"

  field :height, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.Height,
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          media: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia.t() | nil,
          suggestions: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion.t()]
        }

  defstruct title: "",
            description: "",
            media: nil,
            suggestions: []

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :media, 3, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCardContent.RbmMedia

  field :suggestions, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion:
            {:reply, Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedReply.t() | nil}
            | {:action,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.t() | nil}
        }

  defstruct suggestion: nil

  oneof :suggestion, 0

  field :reply, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedReply,
    oneof: 0

  field :action, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction,
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          postback_data: String.t()
        }

  defstruct text: "",
            postback_data: ""

  field :text, 1, type: :string
  field :postback_data, 2, type: :string, json_name: "postbackData"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionDial do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t()
        }

  defstruct phone_number: ""

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionOpenUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionShareLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action:
            {:dial,
             Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionDial.t()
             | nil}
            | {:open_url,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionOpenUri.t()
               | nil}
            | {:share_location,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionShareLocation.t()
               | nil},
          text: String.t(),
          postback_data: String.t()
        }

  defstruct action: nil,
            text: "",
            postback_data: ""

  oneof :action, 0

  field :text, 1, type: :string
  field :postback_data, 2, type: :string, json_name: "postbackData"

  field :dial, 3,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionDial,
    oneof: 0

  field :open_url, 4,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionOpenUri,
    json_name: "openUrl",
    oneof: 0

  field :share_location, 5,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmSuggestedAction.RbmSuggestedActionShareLocation,
    json_name: "shareLocation",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image:
            {:large_image, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil}
            | {:icon, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil},
          name: String.t(),
          description: String.t(),
          content_url: String.t()
        }

  defstruct image: nil,
            name: "",
            description: "",
            content_url: ""

  oneof :image, 0

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :large_image, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image,
    json_name: "largeImage",
    oneof: 0

  field :icon, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image, oneof: 0
  field :content_url, 5, type: :string, json_name: "contentUrl"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_type:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaType.t(),
          media_objects: [
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaObject.t()
          ]
        }

  defstruct media_type: :RESPONSE_MEDIA_TYPE_UNSPECIFIED,
            media_objects: []

  field :media_type, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaType,
    json_name: "mediaType",
    enum: true

  field :media_objects, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.ResponseMediaObject,
    json_name: "mediaObjects"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          url_type_hint:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint.t()
        }

  defstruct url: "",
            url_type_hint: :URL_TYPE_HINT_UNSPECIFIED

  field :url, 1, type: :string

  field :url_type_hint, 3,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.UrlTypeHint,
    json_name: "urlTypeHint",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          open_uri_action:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction.t()
            | nil,
          title: String.t(),
          description: String.t(),
          image: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil,
          footer: String.t()
        }

  defstruct open_uri_action: nil,
            title: "",
            description: "",
            image: nil,
            footer: ""

  field :open_uri_action, 1,
    type:
      Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.OpenUrlAction,
    json_name: "openUriAction"

  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image
  field :footer, 5, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem.t()
          ],
          image_display_options:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.ImageDisplayOptions.t()
        }

  defstruct items: [],
            image_display_options: :IMAGE_DISPLAY_OPTIONS_UNSPECIFIED

  field :items, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.BrowseCarouselCardItem

  field :image_display_options, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.ImageDisplayOptions,
    json_name: "imageDisplayOptions",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          image: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil,
          column_properties: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.t()],
          rows: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardRow.t()],
          buttons: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button.t()]
        }

  defstruct title: "",
            subtitle: "",
            image: nil,
            column_properties: [],
            rows: [],
            buttons: []

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :image, 3, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image

  field :column_properties, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties,
    json_name: "columnProperties"

  field :rows, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardRow

  field :buttons, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.Button
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          horizontal_alignment:
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.HorizontalAlignment.t()
        }

  defstruct header: "",
            horizontal_alignment: :HORIZONTAL_ALIGNMENT_UNSPECIFIED

  field :header, 1, type: :string

  field :horizontal_alignment, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ColumnProperties.HorizontalAlignment,
    json_name: "horizontalAlignment",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardCell.t()],
          divider_after: boolean
        }

  defstruct cells: [],
            divider_after: false

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardCell

  field :divider_after, 2, type: :bool, json_name: "dividerAfter"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCardCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 1, type: :string
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message:
            {:text, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Text.t() | nil}
            | {:image, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image.t() | nil}
            | {:quick_replies,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.QuickReplies.t() | nil}
            | {:card, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card.t() | nil}
            | {:payload, Google.Protobuf.Struct.t() | nil}
            | {:simple_responses,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponses.t() | nil}
            | {:basic_card, Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard.t() | nil}
            | {:suggestions, Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestions.t() | nil}
            | {:link_out_suggestion,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.LinkOutSuggestion.t() | nil}
            | {:list_select, Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect.t() | nil}
            | {:carousel_select,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect.t() | nil}
            | {:telephony_play_audio,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyPlayAudio.t() | nil}
            | {:telephony_synthesize_speech,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonySynthesizeSpeech.t() | nil}
            | {:telephony_transfer_call,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyTransferCall.t() | nil}
            | {:rbm_text, Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmText.t() | nil}
            | {:rbm_standalone_rich_card,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard.t() | nil}
            | {:rbm_carousel_rich_card,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard.t() | nil}
            | {:browse_carousel_card,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard.t() | nil}
            | {:table_card, Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCard.t() | nil}
            | {:media_content,
               Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent.t() | nil},
          platform: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform.t()
        }

  defstruct message: nil,
            platform: :PLATFORM_UNSPECIFIED

  oneof :message, 0

  field :text, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Text, oneof: 0
  field :image, 2, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Image, oneof: 0

  field :quick_replies, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.QuickReplies,
    json_name: "quickReplies",
    oneof: 0

  field :card, 4, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Card, oneof: 0
  field :payload, 5, type: Google.Protobuf.Struct, oneof: 0

  field :simple_responses, 7,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.SimpleResponses,
    json_name: "simpleResponses",
    oneof: 0

  field :basic_card, 8,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BasicCard,
    json_name: "basicCard",
    oneof: 0

  field :suggestions, 9,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Suggestions,
    oneof: 0

  field :link_out_suggestion, 10,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.LinkOutSuggestion,
    json_name: "linkOutSuggestion",
    oneof: 0

  field :list_select, 11,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.ListSelect,
    json_name: "listSelect",
    oneof: 0

  field :carousel_select, 12,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.CarouselSelect,
    json_name: "carouselSelect",
    oneof: 0

  field :telephony_play_audio, 13,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyPlayAudio,
    json_name: "telephonyPlayAudio",
    oneof: 0

  field :telephony_synthesize_speech, 14,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonySynthesizeSpeech,
    json_name: "telephonySynthesizeSpeech",
    oneof: 0

  field :telephony_transfer_call, 15,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TelephonyTransferCall,
    json_name: "telephonyTransferCall",
    oneof: 0

  field :rbm_text, 18,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmText,
    json_name: "rbmText",
    oneof: 0

  field :rbm_standalone_rich_card, 19,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmStandaloneCard,
    json_name: "rbmStandaloneRichCard",
    oneof: 0

  field :rbm_carousel_rich_card, 20,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.RbmCarouselCard,
    json_name: "rbmCarouselRichCard",
    oneof: 0

  field :browse_carousel_card, 22,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.BrowseCarouselCard,
    json_name: "browseCarouselCard",
    oneof: 0

  field :table_card, 23,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.TableCard,
    json_name: "tableCard",
    oneof: 0

  field :media_content, 24,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.MediaContent,
    json_name: "mediaContent",
    oneof: 0

  field :platform, 6,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent.FollowupIntentInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          followup_intent_name: String.t(),
          parent_followup_intent_name: String.t()
        }

  defstruct followup_intent_name: "",
            parent_followup_intent_name: ""

  field :followup_intent_name, 1, type: :string, json_name: "followupIntentName"
  field :parent_followup_intent_name, 2, type: :string, json_name: "parentFollowupIntentName"
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          webhook_state: Google.Cloud.Dialogflow.V2beta1.Intent.WebhookState.t(),
          priority: integer,
          is_fallback: boolean,
          ml_enabled: boolean,
          ml_disabled: boolean,
          live_agent_handoff: boolean,
          end_interaction: boolean,
          input_context_names: [String.t()],
          events: [String.t()],
          training_phrases: [Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase.t()],
          action: String.t(),
          output_contexts: [Google.Cloud.Dialogflow.V2beta1.Context.t()],
          reset_contexts: boolean,
          parameters: [Google.Cloud.Dialogflow.V2beta1.Intent.Parameter.t()],
          messages: [Google.Cloud.Dialogflow.V2beta1.Intent.Message.t()],
          default_response_platforms: [
            Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform.t()
          ],
          root_followup_intent_name: String.t(),
          parent_followup_intent_name: String.t(),
          followup_intent_info: [Google.Cloud.Dialogflow.V2beta1.Intent.FollowupIntentInfo.t()]
        }

  defstruct name: "",
            display_name: "",
            webhook_state: :WEBHOOK_STATE_UNSPECIFIED,
            priority: 0,
            is_fallback: false,
            ml_enabled: false,
            ml_disabled: false,
            live_agent_handoff: false,
            end_interaction: false,
            input_context_names: [],
            events: [],
            training_phrases: [],
            action: "",
            output_contexts: [],
            reset_contexts: false,
            parameters: [],
            messages: [],
            default_response_platforms: [],
            root_followup_intent_name: "",
            parent_followup_intent_name: "",
            followup_intent_info: []

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :webhook_state, 6,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.WebhookState,
    json_name: "webhookState",
    enum: true,
    deprecated: false

  field :priority, 3, type: :int32, deprecated: false
  field :is_fallback, 4, type: :bool, json_name: "isFallback", deprecated: false
  field :ml_enabled, 5, type: :bool, json_name: "mlEnabled", deprecated: true
  field :ml_disabled, 19, type: :bool, json_name: "mlDisabled", deprecated: false
  field :live_agent_handoff, 20, type: :bool, json_name: "liveAgentHandoff", deprecated: false
  field :end_interaction, 21, type: :bool, json_name: "endInteraction", deprecated: false

  field :input_context_names, 7,
    repeated: true,
    type: :string,
    json_name: "inputContextNames",
    deprecated: false

  field :events, 8, repeated: true, type: :string, deprecated: false

  field :training_phrases, 9,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.TrainingPhrase,
    json_name: "trainingPhrases",
    deprecated: false

  field :action, 10, type: :string, deprecated: false

  field :output_contexts, 11,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Context,
    json_name: "outputContexts",
    deprecated: false

  field :reset_contexts, 12, type: :bool, json_name: "resetContexts", deprecated: false

  field :parameters, 13,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Parameter,
    deprecated: false

  field :messages, 14, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent.Message

  field :default_response_platforms, 15,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.Message.Platform,
    json_name: "defaultResponsePlatforms",
    enum: true,
    deprecated: false

  field :root_followup_intent_name, 16,
    type: :string,
    json_name: "rootFollowupIntentName",
    deprecated: false

  field :parent_followup_intent_name, 17,
    type: :string,
    json_name: "parentFollowupIntentName",
    deprecated: false

  field :followup_intent_info, 18,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent.FollowupIntentInfo,
    json_name: "followupIntentInfo",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2beta1.IntentView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED,
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListIntentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2beta1.Intent.t()],
          next_page_token: String.t()
        }

  defstruct intents: [],
            next_page_token: ""

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2beta1.IntentView.t()
        }

  defstruct name: "",
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.CreateIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          intent: Google.Cloud.Dialogflow.V2beta1.Intent.t() | nil,
          language_code: String.t(),
          intent_view: Google.Cloud.Dialogflow.V2beta1.IntentView.t()
        }

  defstruct parent: "",
            intent: nil,
            language_code: "",
            intent_view: :INTENT_VIEW_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :intent, 2, type: Google.Cloud.Dialogflow.V2beta1.Intent, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.UpdateIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: Google.Cloud.Dialogflow.V2beta1.Intent.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          intent_view: Google.Cloud.Dialogflow.V2beta1.IntentView.t()
        }

  defstruct intent: nil,
            language_code: "",
            update_mask: nil,
            intent_view: :INTENT_VIEW_UNSPECIFIED

  field :intent, 1, type: Google.Cloud.Dialogflow.V2beta1.Intent, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :intent_view, 4,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.DeleteIntentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent_batch:
            {:intent_batch_uri, String.t()}
            | {:intent_batch_inline, Google.Cloud.Dialogflow.V2beta1.IntentBatch.t() | nil},
          parent: String.t(),
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          intent_view: Google.Cloud.Dialogflow.V2beta1.IntentView.t()
        }

  defstruct intent_batch: nil,
            parent: "",
            language_code: "",
            update_mask: nil,
            intent_view: :INTENT_VIEW_UNSPECIFIED

  oneof :intent_batch, 0

  field :parent, 1, type: :string, deprecated: false
  field :intent_batch_uri, 2, type: :string, json_name: "intentBatchUri", oneof: 0

  field :intent_batch_inline, 3,
    type: Google.Cloud.Dialogflow.V2beta1.IntentBatch,
    json_name: "intentBatchInline",
    oneof: 0

  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :update_mask, 5, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :intent_view, 6,
    type: Google.Cloud.Dialogflow.V2beta1.IntentView,
    json_name: "intentView",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2beta1.Intent.t()]
        }

  defstruct intents: []

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
end
defmodule Google.Cloud.Dialogflow.V2beta1.BatchDeleteIntentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          intents: [Google.Cloud.Dialogflow.V2beta1.Intent.t()]
        }

  defstruct parent: "",
            intents: []

  field :parent, 1, type: :string, deprecated: false

  field :intents, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Intent,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.IntentBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intents: [Google.Cloud.Dialogflow.V2beta1.Intent.t()]
        }

  defstruct intents: []

  field :intents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Intent
end
defmodule Google.Cloud.Dialogflow.V2beta1.Intents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Intents"

  rpc :ListIntents,
      Google.Cloud.Dialogflow.V2beta1.ListIntentsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListIntentsResponse

  rpc :GetIntent,
      Google.Cloud.Dialogflow.V2beta1.GetIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :CreateIntent,
      Google.Cloud.Dialogflow.V2beta1.CreateIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :UpdateIntent,
      Google.Cloud.Dialogflow.V2beta1.UpdateIntentRequest,
      Google.Cloud.Dialogflow.V2beta1.Intent

  rpc :DeleteIntent, Google.Cloud.Dialogflow.V2beta1.DeleteIntentRequest, Google.Protobuf.Empty

  rpc :BatchUpdateIntents,
      Google.Cloud.Dialogflow.V2beta1.BatchUpdateIntentsRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteIntents,
      Google.Cloud.Dialogflow.V2beta1.BatchDeleteIntentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2beta1.Intents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Intents.Service
end
