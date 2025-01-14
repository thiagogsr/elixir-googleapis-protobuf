defmodule Google.Api.Servicecontrol.V1.LogEntry.LabelsEntry do
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
defmodule Google.Api.Servicecontrol.V1.LogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload:
            {:proto_payload, Google.Protobuf.Any.t() | nil}
            | {:text_payload, String.t()}
            | {:struct_payload, Google.Protobuf.Struct.t() | nil},
          name: String.t(),
          timestamp: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Logging.Type.LogSeverity.t(),
          http_request: Google.Api.Servicecontrol.V1.HttpRequest.t() | nil,
          trace: String.t(),
          insert_id: String.t(),
          labels: %{String.t() => String.t()},
          operation: Google.Api.Servicecontrol.V1.LogEntryOperation.t() | nil,
          source_location: Google.Api.Servicecontrol.V1.LogEntrySourceLocation.t() | nil
        }

  defstruct payload: nil,
            name: "",
            timestamp: nil,
            severity: :DEFAULT,
            http_request: nil,
            trace: "",
            insert_id: "",
            labels: %{},
            operation: nil,
            source_location: nil

  oneof :payload, 0

  field :name, 10, type: :string
  field :timestamp, 11, type: Google.Protobuf.Timestamp
  field :severity, 12, type: Google.Logging.Type.LogSeverity, enum: true

  field :http_request, 14,
    type: Google.Api.Servicecontrol.V1.HttpRequest,
    json_name: "httpRequest"

  field :trace, 15, type: :string
  field :insert_id, 4, type: :string, json_name: "insertId"

  field :labels, 13,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.LogEntry.LabelsEntry,
    map: true

  field :proto_payload, 2, type: Google.Protobuf.Any, json_name: "protoPayload", oneof: 0
  field :text_payload, 3, type: :string, json_name: "textPayload", oneof: 0
  field :struct_payload, 6, type: Google.Protobuf.Struct, json_name: "structPayload", oneof: 0
  field :operation, 16, type: Google.Api.Servicecontrol.V1.LogEntryOperation

  field :source_location, 17,
    type: Google.Api.Servicecontrol.V1.LogEntrySourceLocation,
    json_name: "sourceLocation"
end
defmodule Google.Api.Servicecontrol.V1.LogEntryOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          producer: String.t(),
          first: boolean,
          last: boolean
        }

  defstruct id: "",
            producer: "",
            first: false,
            last: false

  field :id, 1, type: :string
  field :producer, 2, type: :string
  field :first, 3, type: :bool
  field :last, 4, type: :bool
end
defmodule Google.Api.Servicecontrol.V1.LogEntrySourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: String.t(),
          line: integer,
          function: String.t()
        }

  defstruct file: "",
            line: 0,
            function: ""

  field :file, 1, type: :string
  field :line, 2, type: :int64
  field :function, 3, type: :string
end
