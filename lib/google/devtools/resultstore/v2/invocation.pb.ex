defmodule Google.Devtools.Resultstore.V2.Invocation.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t()
        }

  defstruct invocation_id: ""

  field :invocation_id, 1, type: :string, json_name: "invocationId"
end
defmodule Google.Devtools.Resultstore.V2.Invocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.Invocation.Id.t() | nil,
          status_attributes: Google.Devtools.Resultstore.V2.StatusAttributes.t() | nil,
          timing: Google.Devtools.Resultstore.V2.Timing.t() | nil,
          invocation_attributes: Google.Devtools.Resultstore.V2.InvocationAttributes.t() | nil,
          workspace_info: Google.Devtools.Resultstore.V2.WorkspaceInfo.t() | nil,
          properties: [Google.Devtools.Resultstore.V2.Property.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()],
          coverage_summaries: [Google.Devtools.Resultstore.V2.LanguageCoverageSummary.t()],
          aggregate_coverage: Google.Devtools.Resultstore.V2.AggregateCoverage.t() | nil,
          file_processing_errors: [Google.Devtools.Resultstore.V2.FileProcessingErrors.t()]
        }

  defstruct name: "",
            id: nil,
            status_attributes: nil,
            timing: nil,
            invocation_attributes: nil,
            workspace_info: nil,
            properties: [],
            files: [],
            coverage_summaries: [],
            aggregate_coverage: nil,
            file_processing_errors: []

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Invocation.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes"

  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing

  field :invocation_attributes, 5,
    type: Google.Devtools.Resultstore.V2.InvocationAttributes,
    json_name: "invocationAttributes"

  field :workspace_info, 6,
    type: Google.Devtools.Resultstore.V2.WorkspaceInfo,
    json_name: "workspaceInfo"

  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File

  field :coverage_summaries, 9,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.LanguageCoverageSummary,
    json_name: "coverageSummaries"

  field :aggregate_coverage, 10,
    type: Google.Devtools.Resultstore.V2.AggregateCoverage,
    json_name: "aggregateCoverage"

  field :file_processing_errors, 11,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.FileProcessingErrors,
    json_name: "fileProcessingErrors"
end
defmodule Google.Devtools.Resultstore.V2.WorkspaceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Devtools.Resultstore.V2.WorkspaceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workspace_context: Google.Devtools.Resultstore.V2.WorkspaceContext.t() | nil,
          hostname: String.t(),
          working_directory: String.t(),
          tool_tag: String.t(),
          command_lines: [Google.Devtools.Resultstore.V2.CommandLine.t()]
        }

  defstruct workspace_context: nil,
            hostname: "",
            working_directory: "",
            tool_tag: "",
            command_lines: []

  field :workspace_context, 1,
    type: Google.Devtools.Resultstore.V2.WorkspaceContext,
    json_name: "workspaceContext"

  field :hostname, 3, type: :string
  field :working_directory, 4, type: :string, json_name: "workingDirectory"
  field :tool_tag, 5, type: :string, json_name: "toolTag"

  field :command_lines, 7,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.CommandLine,
    json_name: "commandLines"
end
defmodule Google.Devtools.Resultstore.V2.CommandLine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: String.t(),
          tool: String.t(),
          args: [String.t()],
          command: String.t()
        }

  defstruct label: "",
            tool: "",
            args: [],
            command: ""

  field :label, 1, type: :string
  field :tool, 2, type: :string
  field :args, 3, repeated: true, type: :string
  field :command, 4, type: :string
end
defmodule Google.Devtools.Resultstore.V2.InvocationAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          users: [String.t()],
          labels: [String.t()],
          description: String.t(),
          invocation_contexts: [Google.Devtools.Resultstore.V2.InvocationContext.t()],
          exit_code: integer
        }

  defstruct project_id: "",
            users: [],
            labels: [],
            description: "",
            invocation_contexts: [],
            exit_code: 0

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :users, 2, repeated: true, type: :string
  field :labels, 3, repeated: true, type: :string
  field :description, 4, type: :string

  field :invocation_contexts, 6,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.InvocationContext,
    json_name: "invocationContexts"

  field :exit_code, 7, type: :int32, json_name: "exitCode"
end
defmodule Google.Devtools.Resultstore.V2.InvocationContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          url: String.t()
        }

  defstruct display_name: "",
            url: ""

  field :display_name, 1, type: :string, json_name: "displayName"
  field :url, 2, type: :string
end
