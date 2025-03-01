defmodule Google.Bigtable.Admin.V2.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_NOT_KNOWN | :READY | :CREATING

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
end
defmodule Google.Bigtable.Admin.V2.Instance.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :PRODUCTION | :DEVELOPMENT

  field :TYPE_UNSPECIFIED, 0
  field :PRODUCTION, 1
  field :DEVELOPMENT, 2
end
defmodule Google.Bigtable.Admin.V2.Cluster.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_NOT_KNOWN | :READY | :CREATING | :RESIZING | :DISABLED

  field :STATE_NOT_KNOWN, 0
  field :READY, 1
  field :CREATING, 2
  field :RESIZING, 3
  field :DISABLED, 4
end
defmodule Google.Bigtable.Admin.V2.Instance.LabelsEntry do
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
defmodule Google.Bigtable.Admin.V2.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Bigtable.Admin.V2.Instance.State.t(),
          type: Google.Bigtable.Admin.V2.Instance.Type.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            display_name: "",
            state: :STATE_NOT_KNOWN,
            type: :TYPE_UNSPECIFIED,
            labels: %{},
            create_time: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :state, 3, type: Google.Bigtable.Admin.V2.Instance.State, enum: true
  field :type, 4, type: Google.Bigtable.Admin.V2.Instance.Type, enum: true
  field :labels, 5, repeated: true, type: Google.Bigtable.Admin.V2.Instance.LabelsEntry, map: true

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.AutoscalingTargets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu_utilization_percent: integer
        }

  defstruct cpu_utilization_percent: 0

  field :cpu_utilization_percent, 2, type: :int32, json_name: "cpuUtilizationPercent"
end
defmodule Google.Bigtable.Admin.V2.AutoscalingLimits do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_serve_nodes: integer,
          max_serve_nodes: integer
        }

  defstruct min_serve_nodes: 0,
            max_serve_nodes: 0

  field :min_serve_nodes, 1, type: :int32, json_name: "minServeNodes", deprecated: false
  field :max_serve_nodes, 2, type: :int32, json_name: "maxServeNodes", deprecated: false
end
defmodule Google.Bigtable.Admin.V2.Cluster.ClusterAutoscalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          autoscaling_limits: Google.Bigtable.Admin.V2.AutoscalingLimits.t() | nil,
          autoscaling_targets: Google.Bigtable.Admin.V2.AutoscalingTargets.t() | nil
        }

  defstruct autoscaling_limits: nil,
            autoscaling_targets: nil

  field :autoscaling_limits, 1,
    type: Google.Bigtable.Admin.V2.AutoscalingLimits,
    json_name: "autoscalingLimits",
    deprecated: false

  field :autoscaling_targets, 2,
    type: Google.Bigtable.Admin.V2.AutoscalingTargets,
    json_name: "autoscalingTargets",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.Cluster.ClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_autoscaling_config:
            Google.Bigtable.Admin.V2.Cluster.ClusterAutoscalingConfig.t() | nil
        }

  defstruct cluster_autoscaling_config: nil

  field :cluster_autoscaling_config, 1,
    type: Google.Bigtable.Admin.V2.Cluster.ClusterAutoscalingConfig,
    json_name: "clusterAutoscalingConfig"
end
defmodule Google.Bigtable.Admin.V2.Cluster.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct kms_key_name: ""

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end
defmodule Google.Bigtable.Admin.V2.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {:cluster_config, Google.Bigtable.Admin.V2.Cluster.ClusterConfig.t() | nil},
          name: String.t(),
          location: String.t(),
          state: Google.Bigtable.Admin.V2.Cluster.State.t(),
          serve_nodes: integer,
          default_storage_type: Google.Bigtable.Admin.V2.StorageType.t(),
          encryption_config: Google.Bigtable.Admin.V2.Cluster.EncryptionConfig.t() | nil
        }

  defstruct config: nil,
            name: "",
            location: "",
            state: :STATE_NOT_KNOWN,
            serve_nodes: 0,
            default_storage_type: :STORAGE_TYPE_UNSPECIFIED,
            encryption_config: nil

  oneof :config, 0

  field :name, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :state, 3, type: Google.Bigtable.Admin.V2.Cluster.State, enum: true, deprecated: false
  field :serve_nodes, 4, type: :int32, json_name: "serveNodes"

  field :cluster_config, 7,
    type: Google.Bigtable.Admin.V2.Cluster.ClusterConfig,
    json_name: "clusterConfig",
    oneof: 0

  field :default_storage_type, 5,
    type: Google.Bigtable.Admin.V2.StorageType,
    json_name: "defaultStorageType",
    enum: true

  field :encryption_config, 6,
    type: Google.Bigtable.Admin.V2.Cluster.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false
end
defmodule Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_ids: [String.t()]
        }

  defstruct cluster_ids: []

  field :cluster_ids, 1, repeated: true, type: :string, json_name: "clusterIds"
end
defmodule Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_id: String.t(),
          allow_transactional_writes: boolean
        }

  defstruct cluster_id: "",
            allow_transactional_writes: false

  field :cluster_id, 1, type: :string, json_name: "clusterId"
  field :allow_transactional_writes, 2, type: :bool, json_name: "allowTransactionalWrites"
end
defmodule Google.Bigtable.Admin.V2.AppProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routing_policy:
            {:multi_cluster_routing_use_any,
             Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny.t() | nil}
            | {:single_cluster_routing,
               Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting.t() | nil},
          name: String.t(),
          etag: String.t(),
          description: String.t()
        }

  defstruct routing_policy: nil,
            name: "",
            etag: "",
            description: ""

  oneof :routing_policy, 0

  field :name, 1, type: :string
  field :etag, 2, type: :string
  field :description, 3, type: :string

  field :multi_cluster_routing_use_any, 5,
    type: Google.Bigtable.Admin.V2.AppProfile.MultiClusterRoutingUseAny,
    json_name: "multiClusterRoutingUseAny",
    oneof: 0

  field :single_cluster_routing, 6,
    type: Google.Bigtable.Admin.V2.AppProfile.SingleClusterRouting,
    json_name: "singleClusterRouting",
    oneof: 0
end
defmodule Google.Bigtable.Admin.V2.HotTablet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          table_name: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          start_key: String.t(),
          end_key: String.t(),
          node_cpu_usage_percent: float | :infinity | :negative_infinity | :nan
        }

  defstruct name: "",
            table_name: "",
            start_time: nil,
            end_time: nil,
            start_key: "",
            end_key: "",
            node_cpu_usage_percent: 0.0

  field :name, 1, type: :string
  field :table_name, 2, type: :string, json_name: "tableName", deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :start_key, 5, type: :string, json_name: "startKey"
  field :end_key, 6, type: :string, json_name: "endKey"

  field :node_cpu_usage_percent, 7,
    type: :float,
    json_name: "nodeCpuUsagePercent",
    deprecated: false
end
