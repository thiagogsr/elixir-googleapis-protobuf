defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :STABLE | :UPDATING

  field :STATE_UNSPECIFIED, 0
  field :STABLE, 1
  field :UPDATING, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.Scaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_node_count: integer,
          max_node_count: integer
        }

  defstruct min_node_count: 0,
            max_node_count: 0

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fixed_node_count: integer,
          scaling:
            Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.Scaling.t() | nil
        }

  defstruct fixed_node_count: 0,
            scaling: nil

  field :fixed_node_count, 2, type: :int32, json_name: "fixedNodeCount"

  field :scaling, 4,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.Scaling
end
defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1beta1.Featurestore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          labels: %{String.t() => String.t()},
          online_serving_config:
            Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.Featurestore.State.t(),
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            etag: "",
            labels: %{},
            online_serving_config: nil,
            state: :STATE_UNSPECIFIED,
            encryption_spec: nil

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 5, type: :string, deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.LabelsEntry,
    map: true,
    deprecated: false

  field :online_serving_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.OnlineServingConfig,
    json_name: "onlineServingConfig",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Aiplatform.V1beta1.Featurestore.State,
    enum: true,
    deprecated: false

  field :encryption_spec, 10,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false
end
