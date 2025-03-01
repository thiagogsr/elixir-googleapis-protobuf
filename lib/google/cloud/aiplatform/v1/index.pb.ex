defmodule Google.Cloud.Aiplatform.V1.Index.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1.Index do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          metadata_schema_uri: String.t(),
          metadata: Google.Protobuf.Value.t() | nil,
          deployed_indexes: [Google.Cloud.Aiplatform.V1.DeployedIndexRef.t()],
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            display_name: "",
            description: "",
            metadata_schema_uri: "",
            metadata: nil,
            deployed_indexes: [],
            etag: "",
            labels: %{},
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :metadata_schema_uri, 4, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 6, type: Google.Protobuf.Value

  field :deployed_indexes, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployedIndexRef,
    json_name: "deployedIndexes",
    deprecated: false

  field :etag, 8, type: :string
  field :labels, 9, repeated: true, type: Google.Cloud.Aiplatform.V1.Index.LabelsEntry, map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
