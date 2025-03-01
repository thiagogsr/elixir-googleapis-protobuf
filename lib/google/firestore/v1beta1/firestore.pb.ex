defmodule Google.Firestore.V1beta1.TargetChange.TargetChangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :NO_CHANGE | :ADD | :REMOVE | :CURRENT | :RESET

  field :NO_CHANGE, 0
  field :ADD, 1
  field :REMOVE, 2
  field :CURRENT, 3
  field :RESET, 4
end
defmodule Google.Firestore.V1beta1.GetDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_selector:
            {:transaction, binary} | {:read_time, Google.Protobuf.Timestamp.t() | nil},
          name: String.t(),
          mask: Google.Firestore.V1beta1.DocumentMask.t() | nil
        }

  defstruct consistency_selector: nil,
            name: "",
            mask: nil

  oneof :consistency_selector, 0

  field :name, 1, type: :string, deprecated: false
  field :mask, 2, type: Google.Firestore.V1beta1.DocumentMask
  field :transaction, 3, type: :bytes, oneof: 0
  field :read_time, 5, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end
defmodule Google.Firestore.V1beta1.ListDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_selector:
            {:transaction, binary} | {:read_time, Google.Protobuf.Timestamp.t() | nil},
          parent: String.t(),
          collection_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          mask: Google.Firestore.V1beta1.DocumentMask.t() | nil,
          show_missing: boolean
        }

  defstruct consistency_selector: nil,
            parent: "",
            collection_id: "",
            page_size: 0,
            page_token: "",
            order_by: "",
            mask: nil,
            show_missing: false

  oneof :consistency_selector, 0

  field :parent, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 6, type: :string, json_name: "orderBy"
  field :mask, 7, type: Google.Firestore.V1beta1.DocumentMask
  field :transaction, 8, type: :bytes, oneof: 0
  field :read_time, 10, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
  field :show_missing, 12, type: :bool, json_name: "showMissing"
end
defmodule Google.Firestore.V1beta1.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Firestore.V1beta1.Document.t()],
          next_page_token: String.t()
        }

  defstruct documents: [],
            next_page_token: ""

  field :documents, 1, repeated: true, type: Google.Firestore.V1beta1.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1beta1.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          collection_id: String.t(),
          document_id: String.t(),
          document: Google.Firestore.V1beta1.Document.t() | nil,
          mask: Google.Firestore.V1beta1.DocumentMask.t() | nil
        }

  defstruct parent: "",
            collection_id: "",
            document_id: "",
            document: nil,
            mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId", deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId"
  field :document, 4, type: Google.Firestore.V1beta1.Document, deprecated: false
  field :mask, 5, type: Google.Firestore.V1beta1.DocumentMask
end
defmodule Google.Firestore.V1beta1.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Firestore.V1beta1.Document.t() | nil,
          update_mask: Google.Firestore.V1beta1.DocumentMask.t() | nil,
          mask: Google.Firestore.V1beta1.DocumentMask.t() | nil,
          current_document: Google.Firestore.V1beta1.Precondition.t() | nil
        }

  defstruct document: nil,
            update_mask: nil,
            mask: nil,
            current_document: nil

  field :document, 1, type: Google.Firestore.V1beta1.Document, deprecated: false
  field :update_mask, 2, type: Google.Firestore.V1beta1.DocumentMask, json_name: "updateMask"
  field :mask, 3, type: Google.Firestore.V1beta1.DocumentMask

  field :current_document, 4,
    type: Google.Firestore.V1beta1.Precondition,
    json_name: "currentDocument"
end
defmodule Google.Firestore.V1beta1.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          current_document: Google.Firestore.V1beta1.Precondition.t() | nil
        }

  defstruct name: "",
            current_document: nil

  field :name, 1, type: :string, deprecated: false

  field :current_document, 2,
    type: Google.Firestore.V1beta1.Precondition,
    json_name: "currentDocument"
end
defmodule Google.Firestore.V1beta1.BatchGetDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consistency_selector:
            {:transaction, binary}
            | {:new_transaction, Google.Firestore.V1beta1.TransactionOptions.t() | nil}
            | {:read_time, Google.Protobuf.Timestamp.t() | nil},
          database: String.t(),
          documents: [String.t()],
          mask: Google.Firestore.V1beta1.DocumentMask.t() | nil
        }

  defstruct consistency_selector: nil,
            database: "",
            documents: [],
            mask: nil

  oneof :consistency_selector, 0

  field :database, 1, type: :string, deprecated: false
  field :documents, 2, repeated: true, type: :string
  field :mask, 3, type: Google.Firestore.V1beta1.DocumentMask
  field :transaction, 4, type: :bytes, oneof: 0

  field :new_transaction, 5,
    type: Google.Firestore.V1beta1.TransactionOptions,
    json_name: "newTransaction",
    oneof: 0

  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end
defmodule Google.Firestore.V1beta1.BatchGetDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: {:found, Google.Firestore.V1beta1.Document.t() | nil} | {:missing, String.t()},
          transaction: binary,
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct result: nil,
            transaction: "",
            read_time: nil

  oneof :result, 0

  field :found, 1, type: Google.Firestore.V1beta1.Document, oneof: 0
  field :missing, 2, type: :string, oneof: 0
  field :transaction, 3, type: :bytes
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
defmodule Google.Firestore.V1beta1.BeginTransactionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          options: Google.Firestore.V1beta1.TransactionOptions.t() | nil
        }

  defstruct database: "",
            options: nil

  field :database, 1, type: :string, deprecated: false
  field :options, 2, type: Google.Firestore.V1beta1.TransactionOptions
end
defmodule Google.Firestore.V1beta1.BeginTransactionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction: binary
        }

  defstruct transaction: ""

  field :transaction, 1, type: :bytes
end
defmodule Google.Firestore.V1beta1.CommitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          writes: [Google.Firestore.V1beta1.Write.t()],
          transaction: binary
        }

  defstruct database: "",
            writes: [],
            transaction: ""

  field :database, 1, type: :string, deprecated: false
  field :writes, 2, repeated: true, type: Google.Firestore.V1beta1.Write
  field :transaction, 3, type: :bytes
end
defmodule Google.Firestore.V1beta1.CommitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_results: [Google.Firestore.V1beta1.WriteResult.t()],
          commit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct write_results: [],
            commit_time: nil

  field :write_results, 1,
    repeated: true,
    type: Google.Firestore.V1beta1.WriteResult,
    json_name: "writeResults"

  field :commit_time, 2, type: Google.Protobuf.Timestamp, json_name: "commitTime"
end
defmodule Google.Firestore.V1beta1.RollbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          transaction: binary
        }

  defstruct database: "",
            transaction: ""

  field :database, 1, type: :string, deprecated: false
  field :transaction, 2, type: :bytes, deprecated: false
end
defmodule Google.Firestore.V1beta1.RunQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type: {:structured_query, Google.Firestore.V1beta1.StructuredQuery.t() | nil},
          consistency_selector:
            {:transaction, binary}
            | {:new_transaction, Google.Firestore.V1beta1.TransactionOptions.t() | nil}
            | {:read_time, Google.Protobuf.Timestamp.t() | nil},
          parent: String.t()
        }

  defstruct query_type: nil,
            consistency_selector: nil,
            parent: ""

  oneof :query_type, 0
  oneof :consistency_selector, 1

  field :parent, 1, type: :string, deprecated: false

  field :structured_query, 2,
    type: Google.Firestore.V1beta1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :transaction, 5, type: :bytes, oneof: 1

  field :new_transaction, 6,
    type: Google.Firestore.V1beta1.TransactionOptions,
    json_name: "newTransaction",
    oneof: 1

  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 1
end
defmodule Google.Firestore.V1beta1.RunQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transaction: binary,
          document: Google.Firestore.V1beta1.Document.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil,
          skipped_results: integer
        }

  defstruct transaction: "",
            document: nil,
            read_time: nil,
            skipped_results: 0

  field :transaction, 2, type: :bytes
  field :document, 1, type: Google.Firestore.V1beta1.Document
  field :read_time, 3, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :skipped_results, 4, type: :int32, json_name: "skippedResults"
end
defmodule Google.Firestore.V1beta1.PartitionQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type: {:structured_query, Google.Firestore.V1beta1.StructuredQuery.t() | nil},
          parent: String.t(),
          partition_count: integer,
          page_token: String.t(),
          page_size: integer
        }

  defstruct query_type: nil,
            parent: "",
            partition_count: 0,
            page_token: "",
            page_size: 0

  oneof :query_type, 0

  field :parent, 1, type: :string, deprecated: false

  field :structured_query, 2,
    type: Google.Firestore.V1beta1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :partition_count, 3, type: :int64, json_name: "partitionCount"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end
defmodule Google.Firestore.V1beta1.PartitionQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partitions: [Google.Firestore.V1beta1.Cursor.t()],
          next_page_token: String.t()
        }

  defstruct partitions: [],
            next_page_token: ""

  field :partitions, 1, repeated: true, type: Google.Firestore.V1beta1.Cursor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1beta1.WriteRequest.LabelsEntry do
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
defmodule Google.Firestore.V1beta1.WriteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          stream_id: String.t(),
          writes: [Google.Firestore.V1beta1.Write.t()],
          stream_token: binary,
          labels: %{String.t() => String.t()}
        }

  defstruct database: "",
            stream_id: "",
            writes: [],
            stream_token: "",
            labels: %{}

  field :database, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId"
  field :writes, 3, repeated: true, type: Google.Firestore.V1beta1.Write
  field :stream_token, 4, type: :bytes, json_name: "streamToken"

  field :labels, 5,
    repeated: true,
    type: Google.Firestore.V1beta1.WriteRequest.LabelsEntry,
    map: true
end
defmodule Google.Firestore.V1beta1.WriteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: String.t(),
          stream_token: binary,
          write_results: [Google.Firestore.V1beta1.WriteResult.t()],
          commit_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct stream_id: "",
            stream_token: "",
            write_results: [],
            commit_time: nil

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :stream_token, 2, type: :bytes, json_name: "streamToken"

  field :write_results, 3,
    repeated: true,
    type: Google.Firestore.V1beta1.WriteResult,
    json_name: "writeResults"

  field :commit_time, 4, type: Google.Protobuf.Timestamp, json_name: "commitTime"
end
defmodule Google.Firestore.V1beta1.ListenRequest.LabelsEntry do
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
defmodule Google.Firestore.V1beta1.ListenRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_change:
            {:add_target, Google.Firestore.V1beta1.Target.t() | nil} | {:remove_target, integer},
          database: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct target_change: nil,
            database: "",
            labels: %{}

  oneof :target_change, 0

  field :database, 1, type: :string, deprecated: false
  field :add_target, 2, type: Google.Firestore.V1beta1.Target, json_name: "addTarget", oneof: 0
  field :remove_target, 3, type: :int32, json_name: "removeTarget", oneof: 0

  field :labels, 4,
    repeated: true,
    type: Google.Firestore.V1beta1.ListenRequest.LabelsEntry,
    map: true
end
defmodule Google.Firestore.V1beta1.ListenResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type:
            {:target_change, Google.Firestore.V1beta1.TargetChange.t() | nil}
            | {:document_change, Google.Firestore.V1beta1.DocumentChange.t() | nil}
            | {:document_delete, Google.Firestore.V1beta1.DocumentDelete.t() | nil}
            | {:document_remove, Google.Firestore.V1beta1.DocumentRemove.t() | nil}
            | {:filter, Google.Firestore.V1beta1.ExistenceFilter.t() | nil}
        }

  defstruct response_type: nil

  oneof :response_type, 0

  field :target_change, 2,
    type: Google.Firestore.V1beta1.TargetChange,
    json_name: "targetChange",
    oneof: 0

  field :document_change, 3,
    type: Google.Firestore.V1beta1.DocumentChange,
    json_name: "documentChange",
    oneof: 0

  field :document_delete, 4,
    type: Google.Firestore.V1beta1.DocumentDelete,
    json_name: "documentDelete",
    oneof: 0

  field :document_remove, 6,
    type: Google.Firestore.V1beta1.DocumentRemove,
    json_name: "documentRemove",
    oneof: 0

  field :filter, 5, type: Google.Firestore.V1beta1.ExistenceFilter, oneof: 0
end
defmodule Google.Firestore.V1beta1.Target.DocumentsTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [String.t()]
        }

  defstruct documents: []

  field :documents, 2, repeated: true, type: :string
end
defmodule Google.Firestore.V1beta1.Target.QueryTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type: {:structured_query, Google.Firestore.V1beta1.StructuredQuery.t() | nil},
          parent: String.t()
        }

  defstruct query_type: nil,
            parent: ""

  oneof :query_type, 0

  field :parent, 1, type: :string

  field :structured_query, 2,
    type: Google.Firestore.V1beta1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0
end
defmodule Google.Firestore.V1beta1.Target do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_type:
            {:query, Google.Firestore.V1beta1.Target.QueryTarget.t() | nil}
            | {:documents, Google.Firestore.V1beta1.Target.DocumentsTarget.t() | nil},
          resume_type:
            {:resume_token, binary} | {:read_time, Google.Protobuf.Timestamp.t() | nil},
          target_id: integer,
          once: boolean
        }

  defstruct target_type: nil,
            resume_type: nil,
            target_id: 0,
            once: false

  oneof :target_type, 0
  oneof :resume_type, 1

  field :query, 2, type: Google.Firestore.V1beta1.Target.QueryTarget, oneof: 0
  field :documents, 3, type: Google.Firestore.V1beta1.Target.DocumentsTarget, oneof: 0
  field :resume_token, 4, type: :bytes, json_name: "resumeToken", oneof: 1
  field :read_time, 11, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 1
  field :target_id, 5, type: :int32, json_name: "targetId"
  field :once, 6, type: :bool
end
defmodule Google.Firestore.V1beta1.TargetChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_change_type: Google.Firestore.V1beta1.TargetChange.TargetChangeType.t(),
          target_ids: [integer],
          cause: Google.Rpc.Status.t() | nil,
          resume_token: binary,
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct target_change_type: :NO_CHANGE,
            target_ids: [],
            cause: nil,
            resume_token: "",
            read_time: nil

  field :target_change_type, 1,
    type: Google.Firestore.V1beta1.TargetChange.TargetChangeType,
    json_name: "targetChangeType",
    enum: true

  field :target_ids, 2, repeated: true, type: :int32, json_name: "targetIds"
  field :cause, 3, type: Google.Rpc.Status
  field :resume_token, 4, type: :bytes, json_name: "resumeToken"
  field :read_time, 6, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
defmodule Google.Firestore.V1beta1.ListCollectionIdsRequest do
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
defmodule Google.Firestore.V1beta1.ListCollectionIdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          collection_ids: [String.t()],
          next_page_token: String.t()
        }

  defstruct collection_ids: [],
            next_page_token: ""

  field :collection_ids, 1, repeated: true, type: :string, json_name: "collectionIds"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1beta1.BatchWriteRequest.LabelsEntry do
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
defmodule Google.Firestore.V1beta1.BatchWriteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          writes: [Google.Firestore.V1beta1.Write.t()],
          labels: %{String.t() => String.t()}
        }

  defstruct database: "",
            writes: [],
            labels: %{}

  field :database, 1, type: :string, deprecated: false
  field :writes, 2, repeated: true, type: Google.Firestore.V1beta1.Write

  field :labels, 3,
    repeated: true,
    type: Google.Firestore.V1beta1.BatchWriteRequest.LabelsEntry,
    map: true
end
defmodule Google.Firestore.V1beta1.BatchWriteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          write_results: [Google.Firestore.V1beta1.WriteResult.t()],
          status: [Google.Rpc.Status.t()]
        }

  defstruct write_results: [],
            status: []

  field :write_results, 1,
    repeated: true,
    type: Google.Firestore.V1beta1.WriteResult,
    json_name: "writeResults"

  field :status, 2, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Firestore.V1beta1.Firestore.Service do
  @moduledoc false
  use GRPC.Service, name: "google.firestore.v1beta1.Firestore"

  rpc :GetDocument, Google.Firestore.V1beta1.GetDocumentRequest, Google.Firestore.V1beta1.Document

  rpc :ListDocuments,
      Google.Firestore.V1beta1.ListDocumentsRequest,
      Google.Firestore.V1beta1.ListDocumentsResponse

  rpc :UpdateDocument,
      Google.Firestore.V1beta1.UpdateDocumentRequest,
      Google.Firestore.V1beta1.Document

  rpc :DeleteDocument, Google.Firestore.V1beta1.DeleteDocumentRequest, Google.Protobuf.Empty

  rpc :BatchGetDocuments,
      Google.Firestore.V1beta1.BatchGetDocumentsRequest,
      stream(Google.Firestore.V1beta1.BatchGetDocumentsResponse)

  rpc :BeginTransaction,
      Google.Firestore.V1beta1.BeginTransactionRequest,
      Google.Firestore.V1beta1.BeginTransactionResponse

  rpc :Commit, Google.Firestore.V1beta1.CommitRequest, Google.Firestore.V1beta1.CommitResponse

  rpc :Rollback, Google.Firestore.V1beta1.RollbackRequest, Google.Protobuf.Empty

  rpc :RunQuery,
      Google.Firestore.V1beta1.RunQueryRequest,
      stream(Google.Firestore.V1beta1.RunQueryResponse)

  rpc :PartitionQuery,
      Google.Firestore.V1beta1.PartitionQueryRequest,
      Google.Firestore.V1beta1.PartitionQueryResponse

  rpc :Write,
      stream(Google.Firestore.V1beta1.WriteRequest),
      stream(Google.Firestore.V1beta1.WriteResponse)

  rpc :Listen,
      stream(Google.Firestore.V1beta1.ListenRequest),
      stream(Google.Firestore.V1beta1.ListenResponse)

  rpc :ListCollectionIds,
      Google.Firestore.V1beta1.ListCollectionIdsRequest,
      Google.Firestore.V1beta1.ListCollectionIdsResponse

  rpc :BatchWrite,
      Google.Firestore.V1beta1.BatchWriteRequest,
      Google.Firestore.V1beta1.BatchWriteResponse

  rpc :CreateDocument,
      Google.Firestore.V1beta1.CreateDocumentRequest,
      Google.Firestore.V1beta1.Document
end

defmodule Google.Firestore.V1beta1.Firestore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Firestore.V1beta1.Firestore.Service
end
