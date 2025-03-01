defmodule Google.Pubsub.V1.SchemaView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SCHEMA_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :SCHEMA_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Pubsub.V1.Encoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ENCODING_UNSPECIFIED | :JSON | :BINARY

  field :ENCODING_UNSPECIFIED, 0
  field :JSON, 1
  field :BINARY, 2
end
defmodule Google.Pubsub.V1.Schema.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :PROTOCOL_BUFFER | :AVRO

  field :TYPE_UNSPECIFIED, 0
  field :PROTOCOL_BUFFER, 1
  field :AVRO, 2
end
defmodule Google.Pubsub.V1.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Pubsub.V1.Schema.Type.t(),
          definition: String.t()
        }

  defstruct name: "",
            type: :TYPE_UNSPECIFIED,
            definition: ""

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Pubsub.V1.Schema.Type, enum: true
  field :definition, 3, type: :string
end
defmodule Google.Pubsub.V1.CreateSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          schema: Google.Pubsub.V1.Schema.t() | nil,
          schema_id: String.t()
        }

  defstruct parent: "",
            schema: nil,
            schema_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Pubsub.V1.Schema, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId"
end
defmodule Google.Pubsub.V1.GetSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Pubsub.V1.SchemaView.t()
        }

  defstruct name: "",
            view: :SCHEMA_VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Pubsub.V1.SchemaView, enum: true
end
defmodule Google.Pubsub.V1.ListSchemasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          view: Google.Pubsub.V1.SchemaView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            view: :SCHEMA_VIEW_UNSPECIFIED,
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Pubsub.V1.SchemaView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListSchemasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schemas: [Google.Pubsub.V1.Schema.t()],
          next_page_token: String.t()
        }

  defstruct schemas: [],
            next_page_token: ""

  field :schemas, 1, repeated: true, type: Google.Pubsub.V1.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.DeleteSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.ValidateSchemaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          schema: Google.Pubsub.V1.Schema.t() | nil
        }

  defstruct parent: "",
            schema: nil

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Pubsub.V1.Schema, deprecated: false
end
defmodule Google.Pubsub.V1.ValidateSchemaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Pubsub.V1.ValidateMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema_spec: {:name, String.t()} | {:schema, Google.Pubsub.V1.Schema.t() | nil},
          parent: String.t(),
          message: binary,
          encoding: Google.Pubsub.V1.Encoding.t()
        }

  defstruct schema_spec: nil,
            parent: "",
            message: "",
            encoding: :ENCODING_UNSPECIFIED

  oneof :schema_spec, 0

  field :parent, 1, type: :string, deprecated: false
  field :name, 2, type: :string, oneof: 0, deprecated: false
  field :schema, 3, type: Google.Pubsub.V1.Schema, oneof: 0
  field :message, 4, type: :bytes
  field :encoding, 5, type: Google.Pubsub.V1.Encoding, enum: true
end
defmodule Google.Pubsub.V1.ValidateMessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Pubsub.V1.SchemaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.pubsub.v1.SchemaService"

  rpc :CreateSchema, Google.Pubsub.V1.CreateSchemaRequest, Google.Pubsub.V1.Schema

  rpc :GetSchema, Google.Pubsub.V1.GetSchemaRequest, Google.Pubsub.V1.Schema

  rpc :ListSchemas, Google.Pubsub.V1.ListSchemasRequest, Google.Pubsub.V1.ListSchemasResponse

  rpc :DeleteSchema, Google.Pubsub.V1.DeleteSchemaRequest, Google.Protobuf.Empty

  rpc :ValidateSchema,
      Google.Pubsub.V1.ValidateSchemaRequest,
      Google.Pubsub.V1.ValidateSchemaResponse

  rpc :ValidateMessage,
      Google.Pubsub.V1.ValidateMessageRequest,
      Google.Pubsub.V1.ValidateMessageResponse
end

defmodule Google.Pubsub.V1.SchemaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Pubsub.V1.SchemaService.Service
end
