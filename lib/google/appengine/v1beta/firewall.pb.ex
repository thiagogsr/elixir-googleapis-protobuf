defmodule Google.Appengine.V1beta.FirewallRule.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED_ACTION | :ALLOW | :DENY

  field :UNSPECIFIED_ACTION, 0
  field :ALLOW, 1
  field :DENY, 2
end
defmodule Google.Appengine.V1beta.FirewallRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          priority: integer,
          action: Google.Appengine.V1beta.FirewallRule.Action.t(),
          source_range: String.t(),
          description: String.t()
        }

  defstruct priority: 0,
            action: :UNSPECIFIED_ACTION,
            source_range: "",
            description: ""

  field :priority, 1, type: :int32
  field :action, 2, type: Google.Appengine.V1beta.FirewallRule.Action, enum: true
  field :source_range, 3, type: :string, json_name: "sourceRange"
  field :description, 4, type: :string
end
