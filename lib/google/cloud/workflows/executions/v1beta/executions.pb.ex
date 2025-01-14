defmodule Google.Cloud.Workflows.Executions.V1beta.ExecutionView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EXECUTION_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :EXECUTION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t(),
          context: String.t()
        }

  defstruct payload: "",
            context: ""

  field :payload, 1, type: :string
  field :context, 2, type: :string
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Execution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Workflows.Executions.V1beta.Execution.State.t(),
          argument: String.t(),
          result: String.t(),
          error: Google.Cloud.Workflows.Executions.V1beta.Execution.Error.t() | nil,
          workflow_revision_id: String.t()
        }

  defstruct name: "",
            start_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            argument: "",
            result: "",
            error: nil,
            workflow_revision_id: ""

  field :name, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 4,
    type: Google.Cloud.Workflows.Executions.V1beta.Execution.State,
    enum: true,
    deprecated: false

  field :argument, 5, type: :string
  field :result, 6, type: :string, deprecated: false

  field :error, 7,
    type: Google.Cloud.Workflows.Executions.V1beta.Execution.Error,
    deprecated: false

  field :workflow_revision_id, 8,
    type: :string,
    json_name: "workflowRevisionId",
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.ListExecutionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Workflows.Executions.V1beta.ExecutionView.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            view: :EXECUTION_VIEW_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :view, 4,
    type: Google.Cloud.Workflows.Executions.V1beta.ExecutionView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.ListExecutionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executions: [Google.Cloud.Workflows.Executions.V1beta.Execution.t()],
          next_page_token: String.t()
        }

  defstruct executions: [],
            next_page_token: ""

  field :executions, 1, repeated: true, type: Google.Cloud.Workflows.Executions.V1beta.Execution
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Workflows.Executions.V1beta.CreateExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          execution: Google.Cloud.Workflows.Executions.V1beta.Execution.t() | nil
        }

  defstruct parent: "",
            execution: nil

  field :parent, 1, type: :string, deprecated: false
  field :execution, 2, type: Google.Cloud.Workflows.Executions.V1beta.Execution, deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.GetExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Workflows.Executions.V1beta.ExecutionView.t()
        }

  defstruct name: "",
            view: :EXECUTION_VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Workflows.Executions.V1beta.ExecutionView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.CancelExecutionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Workflows.Executions.V1beta.Executions.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.workflows.executions.v1beta.Executions"

  rpc :ListExecutions,
      Google.Cloud.Workflows.Executions.V1beta.ListExecutionsRequest,
      Google.Cloud.Workflows.Executions.V1beta.ListExecutionsResponse

  rpc :CreateExecution,
      Google.Cloud.Workflows.Executions.V1beta.CreateExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution

  rpc :GetExecution,
      Google.Cloud.Workflows.Executions.V1beta.GetExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution

  rpc :CancelExecution,
      Google.Cloud.Workflows.Executions.V1beta.CancelExecutionRequest,
      Google.Cloud.Workflows.Executions.V1beta.Execution
end

defmodule Google.Cloud.Workflows.Executions.V1beta.Executions.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Workflows.Executions.V1beta.Executions.Service
end
