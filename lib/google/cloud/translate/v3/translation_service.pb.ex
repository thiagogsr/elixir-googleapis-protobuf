defmodule Google.Cloud.Translation.V3.BatchTranslateMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Translation.V3.CreateGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Translation.V3.DeleteGlossaryMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Translation.V3.TranslateTextGlossaryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          glossary: String.t(),
          ignore_case: boolean
        }

  defstruct glossary: "",
            ignore_case: false

  field :glossary, 1, type: :string, deprecated: false
  field :ignore_case, 2, type: :bool, json_name: "ignoreCase", deprecated: false
end
defmodule Google.Cloud.Translation.V3.TranslateTextRequest.LabelsEntry do
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
defmodule Google.Cloud.Translation.V3.TranslateTextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contents: [String.t()],
          mime_type: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          parent: String.t(),
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct contents: [],
            mime_type: "",
            source_language_code: "",
            target_language_code: "",
            parent: "",
            model: "",
            glossary_config: nil,
            labels: %{}

  field :contents, 1, repeated: true, type: :string, deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :source_language_code, 4,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 5,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :parent, 8, type: :string, deprecated: false
  field :model, 6, type: :string, deprecated: false

  field :glossary_config, 7,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Translation.V3.TranslateTextRequest.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Translation.V3.TranslateTextResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translations: [Google.Cloud.Translation.V3.Translation.t()],
          glossary_translations: [Google.Cloud.Translation.V3.Translation.t()]
        }

  defstruct translations: [],
            glossary_translations: []

  field :translations, 1, repeated: true, type: Google.Cloud.Translation.V3.Translation

  field :glossary_translations, 3,
    repeated: true,
    type: Google.Cloud.Translation.V3.Translation,
    json_name: "glossaryTranslations"
end
defmodule Google.Cloud.Translation.V3.Translation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          translated_text: String.t(),
          model: String.t(),
          detected_language_code: String.t(),
          glossary_config: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct translated_text: "",
            model: "",
            detected_language_code: "",
            glossary_config: nil

  field :translated_text, 1, type: :string, json_name: "translatedText"
  field :model, 2, type: :string
  field :detected_language_code, 4, type: :string, json_name: "detectedLanguageCode"

  field :glossary_config, 3,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig"
end
defmodule Google.Cloud.Translation.V3.DetectLanguageRequest.LabelsEntry do
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
defmodule Google.Cloud.Translation.V3.DetectLanguageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:content, String.t()},
          parent: String.t(),
          model: String.t(),
          mime_type: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct source: nil,
            parent: "",
            model: "",
            mime_type: "",
            labels: %{}

  oneof :source, 0

  field :parent, 5, type: :string, deprecated: false
  field :model, 4, type: :string, deprecated: false
  field :content, 1, type: :string, oneof: 0
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3.DetectLanguageRequest.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Translation.V3.DetectedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct language_code: "",
            confidence: 0.0

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Translation.V3.DetectLanguageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages: [Google.Cloud.Translation.V3.DetectedLanguage.t()]
        }

  defstruct languages: []

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3.DetectedLanguage
end
defmodule Google.Cloud.Translation.V3.GetSupportedLanguagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          display_language_code: String.t(),
          model: String.t()
        }

  defstruct parent: "",
            display_language_code: "",
            model: ""

  field :parent, 3, type: :string, deprecated: false

  field :display_language_code, 1,
    type: :string,
    json_name: "displayLanguageCode",
    deprecated: false

  field :model, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Translation.V3.SupportedLanguages do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages: [Google.Cloud.Translation.V3.SupportedLanguage.t()]
        }

  defstruct languages: []

  field :languages, 1, repeated: true, type: Google.Cloud.Translation.V3.SupportedLanguage
end
defmodule Google.Cloud.Translation.V3.SupportedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          display_name: String.t(),
          support_source: boolean,
          support_target: boolean
        }

  defstruct language_code: "",
            display_name: "",
            support_source: false,
            support_target: false

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :support_source, 3, type: :bool, json_name: "supportSource"
  field :support_target, 4, type: :bool, json_name: "supportTarget"
end
defmodule Google.Cloud.Translation.V3.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t()
        }

  defstruct input_uri: ""

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end
defmodule Google.Cloud.Translation.V3.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Translation.V3.GcsSource.t() | nil},
          mime_type: String.t()
        }

  defstruct source: nil,
            mime_type: ""

  oneof :source, 0

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Translation.V3.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct output_uri_prefix: ""

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end
defmodule Google.Cloud.Translation.V3.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Translation.V3.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end
defmodule Google.Cloud.Translation.V3.DocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:content, binary} | {:gcs_source, Google.Cloud.Translation.V3.GcsSource.t() | nil},
          mime_type: String.t()
        }

  defstruct source: nil,
            mime_type: ""

  oneof :source, 0

  field :content, 1, type: :bytes, oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :mime_type, 4, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Translation.V3.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Translation.V3.GcsDestination.t() | nil},
          mime_type: String.t()
        }

  defstruct destination: nil,
            mime_type: ""

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0,
    deprecated: false

  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false
end
defmodule Google.Cloud.Translation.V3.TranslateDocumentRequest.LabelsEntry do
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
defmodule Google.Cloud.Translation.V3.TranslateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_code: String.t(),
          document_input_config: Google.Cloud.Translation.V3.DocumentInputConfig.t() | nil,
          document_output_config: Google.Cloud.Translation.V3.DocumentOutputConfig.t() | nil,
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct parent: "",
            source_language_code: "",
            target_language_code: "",
            document_input_config: nil,
            document_output_config: nil,
            model: "",
            glossary_config: nil,
            labels: %{}

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_code, 3,
    type: :string,
    json_name: "targetLanguageCode",
    deprecated: false

  field :document_input_config, 4,
    type: Google.Cloud.Translation.V3.DocumentInputConfig,
    json_name: "documentInputConfig",
    deprecated: false

  field :document_output_config, 5,
    type: Google.Cloud.Translation.V3.DocumentOutputConfig,
    json_name: "documentOutputConfig",
    deprecated: false

  field :model, 6, type: :string, deprecated: false

  field :glossary_config, 7,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Translation.V3.TranslateDocumentRequest.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Translation.V3.DocumentTranslation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          byte_stream_outputs: [binary],
          mime_type: String.t(),
          detected_language_code: String.t()
        }

  defstruct byte_stream_outputs: [],
            mime_type: "",
            detected_language_code: ""

  field :byte_stream_outputs, 1, repeated: true, type: :bytes, json_name: "byteStreamOutputs"
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :detected_language_code, 3, type: :string, json_name: "detectedLanguageCode"
end
defmodule Google.Cloud.Translation.V3.TranslateDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document_translation: Google.Cloud.Translation.V3.DocumentTranslation.t() | nil,
          glossary_document_translation:
            Google.Cloud.Translation.V3.DocumentTranslation.t() | nil,
          model: String.t(),
          glossary_config: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct document_translation: nil,
            glossary_document_translation: nil,
            model: "",
            glossary_config: nil

  field :document_translation, 1,
    type: Google.Cloud.Translation.V3.DocumentTranslation,
    json_name: "documentTranslation"

  field :glossary_document_translation, 2,
    type: Google.Cloud.Translation.V3.DocumentTranslation,
    json_name: "glossaryDocumentTranslation"

  field :model, 3, type: :string

  field :glossary_config, 4,
    type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig,
    json_name: "glossaryConfig"
end
defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.ModelsEntry do
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
defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig
end
defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest.LabelsEntry do
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
defmodule Google.Cloud.Translation.V3.BatchTranslateTextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_codes: [String.t()],
          models: %{String.t() => String.t()},
          input_configs: [Google.Cloud.Translation.V3.InputConfig.t()],
          output_config: Google.Cloud.Translation.V3.OutputConfig.t() | nil,
          glossaries: %{
            String.t() => Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
          },
          labels: %{String.t() => String.t()}
        }

  defstruct parent: "",
            source_language_code: "",
            target_language_codes: [],
            models: %{},
            input_configs: [],
            output_config: nil,
            glossaries: %{},
            labels: %{}

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_codes, 3,
    repeated: true,
    type: :string,
    json_name: "targetLanguageCodes",
    deprecated: false

  field :models, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.ModelsEntry,
    map: true,
    deprecated: false

  field :input_configs, 5,
    repeated: true,
    type: Google.Cloud.Translation.V3.InputConfig,
    json_name: "inputConfigs",
    deprecated: false

  field :output_config, 6,
    type: Google.Cloud.Translation.V3.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.GlossariesEntry,
    map: true,
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateTextRequest.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Translation.V3.BatchTranslateMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Translation.V3.BatchTranslateMetadata.State.t(),
          translated_characters: integer,
          failed_characters: integer,
          total_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            translated_characters: 0,
            failed_characters: 0,
            total_characters: 0,
            submit_time: nil

  field :state, 1, type: Google.Cloud.Translation.V3.BatchTranslateMetadata.State, enum: true
  field :translated_characters, 2, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 3, type: :int64, json_name: "failedCharacters"
  field :total_characters, 4, type: :int64, json_name: "totalCharacters"
  field :submit_time, 5, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end
defmodule Google.Cloud.Translation.V3.BatchTranslateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct total_characters: 0,
            translated_characters: 0,
            failed_characters: 0,
            submit_time: nil,
            end_time: nil

  field :total_characters, 1, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 2, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 3, type: :int64, json_name: "failedCharacters"
  field :submit_time, 4, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Translation.V3.GlossaryInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Translation.V3.GcsSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Translation.V3.Glossary.LanguageCodePair do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_language_code: String.t(),
          target_language_code: String.t()
        }

  defstruct source_language_code: "",
            target_language_code: ""

  field :source_language_code, 1, type: :string, json_name: "sourceLanguageCode"
  field :target_language_code, 2, type: :string, json_name: "targetLanguageCode"
end
defmodule Google.Cloud.Translation.V3.Glossary.LanguageCodesSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_codes: [String.t()]
        }

  defstruct language_codes: []

  field :language_codes, 1, repeated: true, type: :string, json_name: "languageCodes"
end
defmodule Google.Cloud.Translation.V3.Glossary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          languages:
            {:language_pair, Google.Cloud.Translation.V3.Glossary.LanguageCodePair.t() | nil}
            | {:language_codes_set,
               Google.Cloud.Translation.V3.Glossary.LanguageCodesSet.t() | nil},
          name: String.t(),
          input_config: Google.Cloud.Translation.V3.GlossaryInputConfig.t() | nil,
          entry_count: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct languages: nil,
            name: "",
            input_config: nil,
            entry_count: 0,
            submit_time: nil,
            end_time: nil

  oneof :languages, 0

  field :name, 1, type: :string, deprecated: false

  field :language_pair, 3,
    type: Google.Cloud.Translation.V3.Glossary.LanguageCodePair,
    json_name: "languagePair",
    oneof: 0

  field :language_codes_set, 4,
    type: Google.Cloud.Translation.V3.Glossary.LanguageCodesSet,
    json_name: "languageCodesSet",
    oneof: 0

  field :input_config, 5,
    type: Google.Cloud.Translation.V3.GlossaryInputConfig,
    json_name: "inputConfig"

  field :entry_count, 6, type: :int32, json_name: "entryCount", deprecated: false

  field :submit_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "submitTime",
    deprecated: false

  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end
defmodule Google.Cloud.Translation.V3.CreateGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          glossary: Google.Cloud.Translation.V3.Glossary.t() | nil
        }

  defstruct parent: "",
            glossary: nil

  field :parent, 1, type: :string, deprecated: false
  field :glossary, 2, type: Google.Cloud.Translation.V3.Glossary, deprecated: false
end
defmodule Google.Cloud.Translation.V3.GetGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Translation.V3.DeleteGlossaryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Translation.V3.ListGlossariesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end
defmodule Google.Cloud.Translation.V3.ListGlossariesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          glossaries: [Google.Cloud.Translation.V3.Glossary.t()],
          next_page_token: String.t()
        }

  defstruct glossaries: [],
            next_page_token: ""

  field :glossaries, 1, repeated: true, type: Google.Cloud.Translation.V3.Glossary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Translation.V3.CreateGlossaryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Translation.V3.CreateGlossaryMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            submit_time: nil

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3.CreateGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end
defmodule Google.Cloud.Translation.V3.DeleteGlossaryMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Translation.V3.DeleteGlossaryMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            submit_time: nil

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Translation.V3.DeleteGlossaryMetadata.State, enum: true
  field :submit_time, 3, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end
defmodule Google.Cloud.Translation.V3.DeleteGlossaryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            submit_time: nil,
            end_time: nil

  field :name, 1, type: :string
  field :submit_time, 2, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.ModelsEntry do
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
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.GlossariesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Translation.V3.TranslateTextGlossaryConfig
end
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.FormatConversionsEntry do
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
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source_language_code: String.t(),
          target_language_codes: [String.t()],
          input_configs: [Google.Cloud.Translation.V3.BatchDocumentInputConfig.t()],
          output_config: Google.Cloud.Translation.V3.BatchDocumentOutputConfig.t() | nil,
          models: %{String.t() => String.t()},
          glossaries: %{
            String.t() => Google.Cloud.Translation.V3.TranslateTextGlossaryConfig.t() | nil
          },
          format_conversions: %{String.t() => String.t()}
        }

  defstruct parent: "",
            source_language_code: "",
            target_language_codes: [],
            input_configs: [],
            output_config: nil,
            models: %{},
            glossaries: %{},
            format_conversions: %{}

  field :parent, 1, type: :string, deprecated: false

  field :source_language_code, 2,
    type: :string,
    json_name: "sourceLanguageCode",
    deprecated: false

  field :target_language_codes, 3,
    repeated: true,
    type: :string,
    json_name: "targetLanguageCodes",
    deprecated: false

  field :input_configs, 4,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchDocumentInputConfig,
    json_name: "inputConfigs",
    deprecated: false

  field :output_config, 5,
    type: Google.Cloud.Translation.V3.BatchDocumentOutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :models, 6,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.ModelsEntry,
    map: true,
    deprecated: false

  field :glossaries, 7,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.GlossariesEntry,
    map: true,
    deprecated: false

  field :format_conversions, 8,
    repeated: true,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentRequest.FormatConversionsEntry,
    json_name: "formatConversions",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Translation.V3.BatchDocumentInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Translation.V3.GcsSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Translation.V3.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Translation.V3.BatchDocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Translation.V3.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Translation.V3.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_pages: integer,
          translated_pages: integer,
          failed_pages: integer,
          total_billable_pages: integer,
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          total_billable_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct total_pages: 0,
            translated_pages: 0,
            failed_pages: 0,
            total_billable_pages: 0,
            total_characters: 0,
            translated_characters: 0,
            failed_characters: 0,
            total_billable_characters: 0,
            submit_time: nil,
            end_time: nil

  field :total_pages, 1, type: :int64, json_name: "totalPages"
  field :translated_pages, 2, type: :int64, json_name: "translatedPages"
  field :failed_pages, 3, type: :int64, json_name: "failedPages"
  field :total_billable_pages, 4, type: :int64, json_name: "totalBillablePages"
  field :total_characters, 5, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 6, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 7, type: :int64, json_name: "failedCharacters"
  field :total_billable_characters, 8, type: :int64, json_name: "totalBillableCharacters"
  field :submit_time, 9, type: Google.Protobuf.Timestamp, json_name: "submitTime"
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata.State.t(),
          total_pages: integer,
          translated_pages: integer,
          failed_pages: integer,
          total_billable_pages: integer,
          total_characters: integer,
          translated_characters: integer,
          failed_characters: integer,
          total_billable_characters: integer,
          submit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            total_pages: 0,
            translated_pages: 0,
            failed_pages: 0,
            total_billable_pages: 0,
            total_characters: 0,
            translated_characters: 0,
            failed_characters: 0,
            total_billable_characters: 0,
            submit_time: nil

  field :state, 1,
    type: Google.Cloud.Translation.V3.BatchTranslateDocumentMetadata.State,
    enum: true

  field :total_pages, 2, type: :int64, json_name: "totalPages"
  field :translated_pages, 3, type: :int64, json_name: "translatedPages"
  field :failed_pages, 4, type: :int64, json_name: "failedPages"
  field :total_billable_pages, 5, type: :int64, json_name: "totalBillablePages"
  field :total_characters, 6, type: :int64, json_name: "totalCharacters"
  field :translated_characters, 7, type: :int64, json_name: "translatedCharacters"
  field :failed_characters, 8, type: :int64, json_name: "failedCharacters"
  field :total_billable_characters, 9, type: :int64, json_name: "totalBillableCharacters"
  field :submit_time, 10, type: Google.Protobuf.Timestamp, json_name: "submitTime"
end
defmodule Google.Cloud.Translation.V3.TranslationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.translation.v3.TranslationService"

  rpc :TranslateText,
      Google.Cloud.Translation.V3.TranslateTextRequest,
      Google.Cloud.Translation.V3.TranslateTextResponse

  rpc :DetectLanguage,
      Google.Cloud.Translation.V3.DetectLanguageRequest,
      Google.Cloud.Translation.V3.DetectLanguageResponse

  rpc :GetSupportedLanguages,
      Google.Cloud.Translation.V3.GetSupportedLanguagesRequest,
      Google.Cloud.Translation.V3.SupportedLanguages

  rpc :TranslateDocument,
      Google.Cloud.Translation.V3.TranslateDocumentRequest,
      Google.Cloud.Translation.V3.TranslateDocumentResponse

  rpc :BatchTranslateText,
      Google.Cloud.Translation.V3.BatchTranslateTextRequest,
      Google.Longrunning.Operation

  rpc :BatchTranslateDocument,
      Google.Cloud.Translation.V3.BatchTranslateDocumentRequest,
      Google.Longrunning.Operation

  rpc :CreateGlossary,
      Google.Cloud.Translation.V3.CreateGlossaryRequest,
      Google.Longrunning.Operation

  rpc :ListGlossaries,
      Google.Cloud.Translation.V3.ListGlossariesRequest,
      Google.Cloud.Translation.V3.ListGlossariesResponse

  rpc :GetGlossary,
      Google.Cloud.Translation.V3.GetGlossaryRequest,
      Google.Cloud.Translation.V3.Glossary

  rpc :DeleteGlossary,
      Google.Cloud.Translation.V3.DeleteGlossaryRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Translation.V3.TranslationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Translation.V3.TranslationService.Service
end
