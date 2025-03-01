defmodule Google.Datastore.Admin.V1.Index.AncestorMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ANCESTOR_MODE_UNSPECIFIED | :NONE | :ALL_ANCESTORS

  field :ANCESTOR_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :ALL_ANCESTORS, 2
end
defmodule Google.Datastore.Admin.V1.Index.Direction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DIRECTION_UNSPECIFIED | :ASCENDING | :DESCENDING

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end
defmodule Google.Datastore.Admin.V1.Index.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :ERROR, 4
end
defmodule Google.Datastore.Admin.V1.Index.IndexedProperty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          direction: Google.Datastore.Admin.V1.Index.Direction.t()
        }

  defstruct name: "",
            direction: :DIRECTION_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :direction, 2,
    type: Google.Datastore.Admin.V1.Index.Direction,
    enum: true,
    deprecated: false
end
defmodule Google.Datastore.Admin.V1.Index do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          index_id: String.t(),
          kind: String.t(),
          ancestor: Google.Datastore.Admin.V1.Index.AncestorMode.t(),
          properties: [Google.Datastore.Admin.V1.Index.IndexedProperty.t()],
          state: Google.Datastore.Admin.V1.Index.State.t()
        }

  defstruct project_id: "",
            index_id: "",
            kind: "",
            ancestor: :ANCESTOR_MODE_UNSPECIFIED,
            properties: [],
            state: :STATE_UNSPECIFIED

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :index_id, 3, type: :string, json_name: "indexId", deprecated: false
  field :kind, 4, type: :string, deprecated: false

  field :ancestor, 5,
    type: Google.Datastore.Admin.V1.Index.AncestorMode,
    enum: true,
    deprecated: false

  field :properties, 6,
    repeated: true,
    type: Google.Datastore.Admin.V1.Index.IndexedProperty,
    deprecated: false

  field :state, 7, type: Google.Datastore.Admin.V1.Index.State, enum: true, deprecated: false
end
