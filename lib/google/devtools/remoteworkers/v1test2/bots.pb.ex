defmodule Google.Devtools.Remoteworkers.V1test2.BotStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :BOT_STATUS_UNSPECIFIED
          | :OK
          | :UNHEALTHY
          | :HOST_REBOOTING
          | :BOT_TERMINATING
          | :INITIALIZING

  field :BOT_STATUS_UNSPECIFIED, 0
  field :OK, 1
  field :UNHEALTHY, 2
  field :HOST_REBOOTING, 3
  field :BOT_TERMINATING, 4
  field :INITIALIZING, 5
end
defmodule Google.Devtools.Remoteworkers.V1test2.LeaseState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LEASE_STATE_UNSPECIFIED | :PENDING | :ACTIVE | :COMPLETED | :CANCELLED

  field :LEASE_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :COMPLETED, 4
  field :CANCELLED, 5
end
defmodule Google.Devtools.Remoteworkers.V1test2.AdminTemp.Command do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :BOT_UPDATE | :BOT_RESTART | :BOT_TERMINATE | :HOST_RESTART

  field :UNSPECIFIED, 0
  field :BOT_UPDATE, 1
  field :BOT_RESTART, 2
  field :BOT_TERMINATE, 3
  field :HOST_RESTART, 4
end
defmodule Google.Devtools.Remoteworkers.V1test2.BotSession do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bot_id: String.t(),
          status: Google.Devtools.Remoteworkers.V1test2.BotStatus.t(),
          worker: Google.Devtools.Remoteworkers.V1test2.Worker.t() | nil,
          leases: [Google.Devtools.Remoteworkers.V1test2.Lease.t()],
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          version: String.t()
        }

  defstruct name: "",
            bot_id: "",
            status: :BOT_STATUS_UNSPECIFIED,
            worker: nil,
            leases: [],
            expire_time: nil,
            version: ""

  field :name, 1, type: :string
  field :bot_id, 2, type: :string, json_name: "botId"
  field :status, 3, type: Google.Devtools.Remoteworkers.V1test2.BotStatus, enum: true
  field :worker, 4, type: Google.Devtools.Remoteworkers.V1test2.Worker
  field :leases, 5, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Lease
  field :expire_time, 6, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :version, 7, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.Lease do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          payload: Google.Protobuf.Any.t() | nil,
          result: Google.Protobuf.Any.t() | nil,
          state: Google.Devtools.Remoteworkers.V1test2.LeaseState.t(),
          status: Google.Rpc.Status.t() | nil,
          requirements: Google.Devtools.Remoteworkers.V1test2.Worker.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          assignment: String.t(),
          inline_assignment: Google.Protobuf.Any.t() | nil
        }

  defstruct id: "",
            payload: nil,
            result: nil,
            state: :LEASE_STATE_UNSPECIFIED,
            status: nil,
            requirements: nil,
            expire_time: nil,
            assignment: "",
            inline_assignment: nil

  field :id, 7, type: :string
  field :payload, 8, type: Google.Protobuf.Any
  field :result, 9, type: Google.Protobuf.Any
  field :state, 2, type: Google.Devtools.Remoteworkers.V1test2.LeaseState, enum: true
  field :status, 3, type: Google.Rpc.Status
  field :requirements, 4, type: Google.Devtools.Remoteworkers.V1test2.Worker
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :assignment, 1, type: :string, deprecated: true

  field :inline_assignment, 6,
    type: Google.Protobuf.Any,
    json_name: "inlineAssignment",
    deprecated: true
end
defmodule Google.Devtools.Remoteworkers.V1test2.AdminTemp do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          command: Google.Devtools.Remoteworkers.V1test2.AdminTemp.Command.t(),
          arg: String.t()
        }

  defstruct command: :UNSPECIFIED,
            arg: ""

  field :command, 1, type: Google.Devtools.Remoteworkers.V1test2.AdminTemp.Command, enum: true
  field :arg, 2, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.CreateBotSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          bot_session: Google.Devtools.Remoteworkers.V1test2.BotSession.t() | nil
        }

  defstruct parent: "",
            bot_session: nil

  field :parent, 1, type: :string, deprecated: false

  field :bot_session, 2,
    type: Google.Devtools.Remoteworkers.V1test2.BotSession,
    json_name: "botSession",
    deprecated: false
end
defmodule Google.Devtools.Remoteworkers.V1test2.UpdateBotSessionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bot_session: Google.Devtools.Remoteworkers.V1test2.BotSession.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            bot_session: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :bot_session, 2,
    type: Google.Devtools.Remoteworkers.V1test2.BotSession,
    json_name: "botSession",
    deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Devtools.Remoteworkers.V1test2.Bots.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.remoteworkers.v1test2.Bots"

  rpc :CreateBotSession,
      Google.Devtools.Remoteworkers.V1test2.CreateBotSessionRequest,
      Google.Devtools.Remoteworkers.V1test2.BotSession

  rpc :UpdateBotSession,
      Google.Devtools.Remoteworkers.V1test2.UpdateBotSessionRequest,
      Google.Devtools.Remoteworkers.V1test2.BotSession
end

defmodule Google.Devtools.Remoteworkers.V1test2.Bots.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Remoteworkers.V1test2.Bots.Service
end
