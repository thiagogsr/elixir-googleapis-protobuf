defmodule Google.Cloud.Memcache.V1.MemcacheVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MEMCACHE_VERSION_UNSPECIFIED | :MEMCACHE_1_5

  field :MEMCACHE_VERSION_UNSPECIFIED, 0
  field :MEMCACHE_1_5, 1
end
defmodule Google.Cloud.Memcache.V1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING | :PERFORMING_MAINTENANCE

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 4
  field :PERFORMING_MAINTENANCE, 5
end
defmodule Google.Cloud.Memcache.V1.Instance.Node.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING | :UPDATING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
end
defmodule Google.Cloud.Memcache.V1.Instance.InstanceMessage.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CODE_UNSPECIFIED | :ZONE_DISTRIBUTION_UNBALANCED

  field :CODE_UNSPECIFIED, 0
  field :ZONE_DISTRIBUTION_UNBALANCED, 1
end
defmodule Google.Cloud.Memcache.V1.Instance.NodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu_count: integer,
          memory_size_mb: integer
        }

  defstruct cpu_count: 0,
            memory_size_mb: 0

  field :cpu_count, 1, type: :int32, json_name: "cpuCount", deprecated: false
  field :memory_size_mb, 2, type: :int32, json_name: "memorySizeMb", deprecated: false
end
defmodule Google.Cloud.Memcache.V1.Instance.Node do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_id: String.t(),
          zone: String.t(),
          state: Google.Cloud.Memcache.V1.Instance.Node.State.t(),
          host: String.t(),
          port: integer,
          parameters: Google.Cloud.Memcache.V1.MemcacheParameters.t() | nil
        }

  defstruct node_id: "",
            zone: "",
            state: :STATE_UNSPECIFIED,
            host: "",
            port: 0,
            parameters: nil

  field :node_id, 1, type: :string, json_name: "nodeId", deprecated: false
  field :zone, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Memcache.V1.Instance.Node.State,
    enum: true,
    deprecated: false

  field :host, 4, type: :string, deprecated: false
  field :port, 5, type: :int32, deprecated: false
  field :parameters, 6, type: Google.Cloud.Memcache.V1.MemcacheParameters
end
defmodule Google.Cloud.Memcache.V1.Instance.InstanceMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Memcache.V1.Instance.InstanceMessage.Code.t(),
          message: String.t()
        }

  defstruct code: :CODE_UNSPECIFIED,
            message: ""

  field :code, 1, type: Google.Cloud.Memcache.V1.Instance.InstanceMessage.Code, enum: true
  field :message, 2, type: :string
end
defmodule Google.Cloud.Memcache.V1.Instance.LabelsEntry do
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
defmodule Google.Cloud.Memcache.V1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          authorized_network: String.t(),
          zones: [String.t()],
          node_count: integer,
          node_config: Google.Cloud.Memcache.V1.Instance.NodeConfig.t() | nil,
          memcache_version: Google.Cloud.Memcache.V1.MemcacheVersion.t(),
          parameters: Google.Cloud.Memcache.V1.MemcacheParameters.t() | nil,
          memcache_nodes: [Google.Cloud.Memcache.V1.Instance.Node.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Memcache.V1.Instance.State.t(),
          memcache_full_version: String.t(),
          instance_messages: [Google.Cloud.Memcache.V1.Instance.InstanceMessage.t()],
          discovery_endpoint: String.t()
        }

  defstruct name: "",
            display_name: "",
            labels: %{},
            authorized_network: "",
            zones: [],
            node_count: 0,
            node_config: nil,
            memcache_version: :MEMCACHE_VERSION_UNSPECIFIED,
            parameters: nil,
            memcache_nodes: [],
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            memcache_full_version: "",
            instance_messages: [],
            discovery_endpoint: ""

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :labels, 3, repeated: true, type: Google.Cloud.Memcache.V1.Instance.LabelsEntry, map: true
  field :authorized_network, 4, type: :string, json_name: "authorizedNetwork"
  field :zones, 5, repeated: true, type: :string
  field :node_count, 6, type: :int32, json_name: "nodeCount", deprecated: false

  field :node_config, 7,
    type: Google.Cloud.Memcache.V1.Instance.NodeConfig,
    json_name: "nodeConfig",
    deprecated: false

  field :memcache_version, 9,
    type: Google.Cloud.Memcache.V1.MemcacheVersion,
    json_name: "memcacheVersion",
    enum: true

  field :parameters, 11, type: Google.Cloud.Memcache.V1.MemcacheParameters

  field :memcache_nodes, 12,
    repeated: true,
    type: Google.Cloud.Memcache.V1.Instance.Node,
    json_name: "memcacheNodes",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 15, type: Google.Cloud.Memcache.V1.Instance.State, enum: true, deprecated: false

  field :memcache_full_version, 18,
    type: :string,
    json_name: "memcacheFullVersion",
    deprecated: false

  field :instance_messages, 19,
    repeated: true,
    type: Google.Cloud.Memcache.V1.Instance.InstanceMessage,
    json_name: "instanceMessages"

  field :discovery_endpoint, 20, type: :string, json_name: "discoveryEndpoint", deprecated: false
end
defmodule Google.Cloud.Memcache.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Memcache.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Memcache.V1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct instances: [],
            next_page_token: "",
            unreachable: []

  field :instances, 1, repeated: true, type: Google.Cloud.Memcache.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Memcache.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Memcache.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Memcache.V1.Instance.t() | nil
        }

  defstruct parent: "",
            instance_id: "",
            instance: nil

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Memcache.V1.Instance, deprecated: false
end
defmodule Google.Cloud.Memcache.V1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          instance: Google.Cloud.Memcache.V1.Instance.t() | nil
        }

  defstruct update_mask: nil,
            instance: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Memcache.V1.Instance, deprecated: false
end
defmodule Google.Cloud.Memcache.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Memcache.V1.ApplyParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          node_ids: [String.t()],
          apply_all: boolean
        }

  defstruct name: "",
            node_ids: [],
            apply_all: false

  field :name, 1, type: :string, deprecated: false
  field :node_ids, 2, repeated: true, type: :string, json_name: "nodeIds"
  field :apply_all, 3, type: :bool, json_name: "applyAll"
end
defmodule Google.Cloud.Memcache.V1.UpdateParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          parameters: Google.Cloud.Memcache.V1.MemcacheParameters.t() | nil
        }

  defstruct name: "",
            update_mask: nil,
            parameters: nil

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :parameters, 3, type: Google.Cloud.Memcache.V1.MemcacheParameters
end
defmodule Google.Cloud.Memcache.V1.MemcacheParameters.ParamsEntry do
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
defmodule Google.Cloud.Memcache.V1.MemcacheParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          params: %{String.t() => String.t()}
        }

  defstruct id: "",
            params: %{}

  field :id, 1, type: :string, deprecated: false

  field :params, 3,
    repeated: true,
    type: Google.Cloud.Memcache.V1.MemcacheParameters.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Memcache.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          cancel_requested: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            cancel_requested: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_detail, 5, type: :string, json_name: "statusDetail", deprecated: false
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested", deprecated: false
  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Memcache.V1.CloudMemcache.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.memcache.v1.CloudMemcache"

  rpc :ListInstances,
      Google.Cloud.Memcache.V1.ListInstancesRequest,
      Google.Cloud.Memcache.V1.ListInstancesResponse

  rpc :GetInstance, Google.Cloud.Memcache.V1.GetInstanceRequest, Google.Cloud.Memcache.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Memcache.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Memcache.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateParameters,
      Google.Cloud.Memcache.V1.UpdateParametersRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Memcache.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ApplyParameters,
      Google.Cloud.Memcache.V1.ApplyParametersRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Memcache.V1.CloudMemcache.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Memcache.V1.CloudMemcache.Service
end
