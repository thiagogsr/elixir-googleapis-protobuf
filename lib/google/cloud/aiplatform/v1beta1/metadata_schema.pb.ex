defmodule Google.Cloud.Aiplatform.V1beta1.MetadataSchema.MetadataSchemaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METADATA_SCHEMA_TYPE_UNSPECIFIED
          | :ARTIFACT_TYPE
          | :EXECUTION_TYPE
          | :CONTEXT_TYPE

  field :METADATA_SCHEMA_TYPE_UNSPECIFIED, 0
  field :ARTIFACT_TYPE, 1
  field :EXECUTION_TYPE, 2
  field :CONTEXT_TYPE, 3
end
defmodule Google.Cloud.Aiplatform.V1beta1.MetadataSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          schema_version: String.t(),
          schema: String.t(),
          schema_type: Google.Cloud.Aiplatform.V1beta1.MetadataSchema.MetadataSchemaType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t()
        }

  defstruct name: "",
            schema_version: "",
            schema: "",
            schema_type: :METADATA_SCHEMA_TYPE_UNSPECIFIED,
            create_time: nil,
            description: ""

  field :name, 1, type: :string, deprecated: false
  field :schema_version, 2, type: :string, json_name: "schemaVersion"
  field :schema, 3, type: :string, deprecated: false

  field :schema_type, 4,
    type: Google.Cloud.Aiplatform.V1beta1.MetadataSchema.MetadataSchemaType,
    json_name: "schemaType",
    enum: true

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 6, type: :string
end
