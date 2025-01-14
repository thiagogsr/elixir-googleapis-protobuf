defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :SKIPPED | :VALIDATION_PASSED | :IN_PROGRESS | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :SKIPPED, 1
  field :VALIDATION_PASSED, 2
  field :IN_PROGRESS, 3
  field :ERROR, 4
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :WAITING
          | :RUNNING
          | :SUCCEEDED
          | :CANCELLING
          | :CANCELLED
          | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :WAITING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :CANCELLING, 4
  field :CANCELLED, 5
  field :FAILED, 6
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest.Priority do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DEFAULT | :URGENT

  field :DEFAULT, 0
  field :URGENT, 1
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :CANCELLING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELLING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :CANCELLED, 5
end
defmodule Google.Cloud.Documentai.V1beta3.ProcessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:inline_document, Google.Cloud.Documentai.V1beta3.Document.t() | nil}
            | {:raw_document, Google.Cloud.Documentai.V1beta3.RawDocument.t() | nil},
          name: String.t(),
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil,
          skip_human_review: boolean
        }

  defstruct source: nil,
            name: "",
            document: nil,
            skip_human_review: false

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1beta3.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :raw_document, 5,
    type: Google.Cloud.Documentai.V1beta3.RawDocument,
    json_name: "rawDocument",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
  field :skip_human_review, 3, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State.t(),
          state_message: String.t(),
          human_review_operation: String.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_message: "",
            human_review_operation: ""

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :human_review_operation, 3, type: :string, json_name: "humanReviewOperation"
end
defmodule Google.Cloud.Documentai.V1beta3.ProcessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil,
          human_review_operation: String.t(),
          human_review_status: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.t() | nil
        }

  defstruct document: nil,
            human_review_operation: "",
            human_review_status: nil

  field :document, 1, type: Google.Cloud.Documentai.V1beta3.Document

  field :human_review_operation, 2,
    type: :string,
    json_name: "humanReviewOperation",
    deprecated: true

  field :human_review_status, 3,
    type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: String.t(),
          mime_type: String.t()
        }

  defstruct gcs_source: "",
            mime_type: ""

  field :gcs_source, 1, type: :string, json_name: "gcsSource"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: String.t()
        }

  defstruct gcs_destination: ""

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_configs: [
            Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig.t()
          ],
          output_config:
            Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig.t() | nil,
          input_documents: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig.t() | nil,
          document_output_config: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.t() | nil,
          skip_human_review: boolean
        }

  defstruct name: "",
            input_configs: [],
            output_config: nil,
            input_documents: nil,
            document_output_config: nil,
            skip_human_review: false

  field :name, 1, type: :string, deprecated: false

  field :input_configs, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig,
    json_name: "inputConfigs",
    deprecated: true

  field :output_config, 3,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig,
    json_name: "outputConfig",
    deprecated: true

  field :input_documents, 5,
    type: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig,
    json_name: "inputDocuments"

  field :document_output_config, 6,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig,
    json_name: "documentOutputConfig"

  field :skip_human_review, 4, type: :bool, json_name: "skipHumanReview"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_gcs_source: String.t(),
          status: Google.Rpc.Status.t() | nil,
          output_gcs_destination: String.t(),
          human_review_operation: String.t(),
          human_review_status: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.t() | nil
        }

  defstruct input_gcs_source: "",
            status: nil,
            output_gcs_destination: "",
            human_review_operation: "",
            human_review_status: nil

  field :input_gcs_source, 1, type: :string, json_name: "inputGcsSource"
  field :status, 2, type: Google.Rpc.Status
  field :output_gcs_destination, 3, type: :string, json_name: "outputGcsDestination"

  field :human_review_operation, 4,
    type: :string,
    json_name: "humanReviewOperation",
    deprecated: true

  field :human_review_status, 5,
    type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus,
    json_name: "humanReviewStatus"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          individual_process_statuses: [
            Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus.t()
          ]
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_message: "",
            create_time: nil,
            update_time: nil,
            individual_process_statuses: []

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :individual_process_statuses, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus,
    json_name: "individualProcessStatuses"
end
defmodule Google.Cloud.Documentai.V1beta3.FetchProcessorTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.FetchProcessorTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          processor_types: [Google.Cloud.Documentai.V1beta3.ProcessorType.t()]
        }

  defstruct processor_types: []

  field :processor_types, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ProcessorType,
    json_name: "processorTypes"
end
defmodule Google.Cloud.Documentai.V1beta3.ListProcessorsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Documentai.V1beta3.ListProcessorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          processors: [Google.Cloud.Documentai.V1beta3.Processor.t()],
          next_page_token: String.t()
        }

  defstruct processors: [],
            next_page_token: ""

  field :processors, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.Processor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Documentai.V1beta3.CreateProcessorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          processor: Google.Cloud.Documentai.V1beta3.Processor.t() | nil
        }

  defstruct parent: "",
            processor: nil

  field :parent, 1, type: :string, deprecated: false
  field :processor, 2, type: Google.Cloud.Documentai.V1beta3.Processor, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DeleteProcessorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DeleteProcessorMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common_metadata: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.t() | nil
        }

  defstruct common_metadata: nil

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Documentai.V1beta3.EnableProcessorMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common_metadata: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.t() | nil
        }

  defstruct common_metadata: nil

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Documentai.V1beta3.DisableProcessorMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          common_metadata: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.t() | nil
        }

  defstruct common_metadata: nil

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:inline_document, Google.Cloud.Documentai.V1beta3.Document.t() | nil},
          human_review_config: String.t(),
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil,
          enable_schema_validation: boolean,
          priority: Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest.Priority.t()
        }

  defstruct source: nil,
            human_review_config: "",
            document: nil,
            enable_schema_validation: false,
            priority: :DEFAULT

  oneof :source, 0

  field :inline_document, 4,
    type: Google.Cloud.Documentai.V1beta3.Document,
    json_name: "inlineDocument",
    oneof: 0

  field :human_review_config, 1, type: :string, json_name: "humanReviewConfig", deprecated: false
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
  field :enable_schema_validation, 3, type: :bool, json_name: "enableSchemaValidation"

  field :priority, 5,
    type: Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest.Priority,
    enum: true
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: String.t()
        }

  defstruct gcs_destination: ""

  field :gcs_destination, 1, type: :string, json_name: "gcsDestination"
end
defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          common_metadata: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.t() | nil,
          question_id: String.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_message: "",
            create_time: nil,
            update_time: nil,
            common_metadata: nil,
            question_id: ""

  field :state, 1,
    type: Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State,
    enum: true

  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :common_metadata, 5,
    type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata,
    json_name: "commonMetadata"

  field :question_id, 6, type: :string, json_name: "questionId"
end
defmodule Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.documentai.v1beta3.DocumentProcessorService"

  rpc :ProcessDocument,
      Google.Cloud.Documentai.V1beta3.ProcessRequest,
      Google.Cloud.Documentai.V1beta3.ProcessResponse

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1beta3.BatchProcessRequest,
      Google.Longrunning.Operation

  rpc :FetchProcessorTypes,
      Google.Cloud.Documentai.V1beta3.FetchProcessorTypesRequest,
      Google.Cloud.Documentai.V1beta3.FetchProcessorTypesResponse

  rpc :ListProcessors,
      Google.Cloud.Documentai.V1beta3.ListProcessorsRequest,
      Google.Cloud.Documentai.V1beta3.ListProcessorsResponse

  rpc :CreateProcessor,
      Google.Cloud.Documentai.V1beta3.CreateProcessorRequest,
      Google.Cloud.Documentai.V1beta3.Processor

  rpc :DeleteProcessor,
      Google.Cloud.Documentai.V1beta3.DeleteProcessorRequest,
      Google.Longrunning.Operation

  rpc :EnableProcessor,
      Google.Cloud.Documentai.V1beta3.EnableProcessorRequest,
      Google.Longrunning.Operation

  rpc :DisableProcessor,
      Google.Cloud.Documentai.V1beta3.DisableProcessorRequest,
      Google.Longrunning.Operation

  rpc :ReviewDocument,
      Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta3.DocumentProcessorService.Service
end
