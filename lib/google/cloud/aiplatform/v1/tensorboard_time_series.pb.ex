defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VALUE_TYPE_UNSPECIFIED | :SCALAR | :TENSOR | :BLOB_SEQUENCE

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :SCALAR, 1
  field :TENSOR, 2
  field :BLOB_SEQUENCE, 3
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_step: integer,
          max_wall_time: Google.Protobuf.Timestamp.t() | nil,
          max_blob_sequence_length: integer
        }

  defstruct [:max_step, :max_wall_time, :max_blob_sequence_length]

  field :max_step, 1, type: :int64, json_name: "maxStep"
  field :max_wall_time, 2, type: Google.Protobuf.Timestamp, json_name: "maxWallTime"
  field :max_blob_sequence_length, 3, type: :int64, json_name: "maxBlobSequenceLength"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          value_type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.ValueType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          plugin_name: String.t(),
          plugin_data: binary,
          metadata: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.Metadata.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :value_type,
    :create_time,
    :update_time,
    :etag,
    :plugin_name,
    :plugin_data,
    :metadata
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :value_type, 4,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.ValueType,
    enum: true,
    json_name: "valueType"

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :etag, 7, type: :string
  field :plugin_name, 8, type: :string, json_name: "pluginName"
  field :plugin_data, 9, type: :bytes, json_name: "pluginData"
  field :metadata, 10, type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.Metadata

  def transform_module(), do: nil
end