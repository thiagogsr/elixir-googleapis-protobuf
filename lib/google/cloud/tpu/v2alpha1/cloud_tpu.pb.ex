defmodule Google.Cloud.Tpu.V2alpha1.AttachedDisk.DiskMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DISK_MODE_UNSPECIFIED | :READ_WRITE | :READ_ONLY

  field :DISK_MODE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
end
defmodule Google.Cloud.Tpu.V2alpha1.Node.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :READY
          | :RESTARTING
          | :REIMAGING
          | :DELETING
          | :REPAIRING
          | :STOPPED
          | :STOPPING
          | :STARTING
          | :PREEMPTED
          | :TERMINATED
          | :HIDING
          | :HIDDEN
          | :UNHIDING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :RESTARTING, 3
  field :REIMAGING, 4
  field :DELETING, 5
  field :REPAIRING, 6
  field :STOPPED, 8
  field :STOPPING, 9
  field :STARTING, 10
  field :PREEMPTED, 11
  field :TERMINATED, 12
  field :HIDING, 13
  field :HIDDEN, 14
  field :UNHIDING, 15
end
defmodule Google.Cloud.Tpu.V2alpha1.Node.Health do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HEALTH_UNSPECIFIED
          | :HEALTHY
          | :TIMEOUT
          | :UNHEALTHY_TENSORFLOW
          | :UNHEALTHY_MAINTENANCE

  field :HEALTH_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :TIMEOUT, 3
  field :UNHEALTHY_TENSORFLOW, 4
  field :UNHEALTHY_MAINTENANCE, 5
end
defmodule Google.Cloud.Tpu.V2alpha1.Node.ApiVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :API_VERSION_UNSPECIFIED | :V1_ALPHA1 | :V1 | :V2_ALPHA1

  field :API_VERSION_UNSPECIFIED, 0
  field :V1_ALPHA1, 1
  field :V1, 2
  field :V2_ALPHA1, 3
end
defmodule Google.Cloud.Tpu.V2alpha1.Symptom.SymptomType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SYMPTOM_TYPE_UNSPECIFIED
          | :LOW_MEMORY
          | :OUT_OF_MEMORY
          | :EXECUTE_TIMED_OUT
          | :MESH_BUILD_FAIL
          | :HBM_OUT_OF_MEMORY
          | :PROJECT_ABUSE

  field :SYMPTOM_TYPE_UNSPECIFIED, 0
  field :LOW_MEMORY, 1
  field :OUT_OF_MEMORY, 2
  field :EXECUTE_TIMED_OUT, 3
  field :MESH_BUILD_FAIL, 4
  field :HBM_OUT_OF_MEMORY, 5
  field :PROJECT_ABUSE, 6
end
defmodule Google.Cloud.Tpu.V2alpha1.GuestAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_path: String.t(),
          query_value: Google.Cloud.Tpu.V2alpha1.GuestAttributesValue.t() | nil
        }

  defstruct query_path: "",
            query_value: nil

  field :query_path, 1, type: :string, json_name: "queryPath"

  field :query_value, 2,
    type: Google.Cloud.Tpu.V2alpha1.GuestAttributesValue,
    json_name: "queryValue"
end
defmodule Google.Cloud.Tpu.V2alpha1.GuestAttributesValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Cloud.Tpu.V2alpha1.GuestAttributesEntry.t()]
        }

  defstruct items: []

  field :items, 1, repeated: true, type: Google.Cloud.Tpu.V2alpha1.GuestAttributesEntry
end
defmodule Google.Cloud.Tpu.V2alpha1.GuestAttributesEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespace: String.t(),
          key: String.t(),
          value: String.t()
        }

  defstruct namespace: "",
            key: "",
            value: ""

  field :namespace, 1, type: :string
  field :key, 2, type: :string
  field :value, 3, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.AttachedDisk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_disk: String.t(),
          mode: Google.Cloud.Tpu.V2alpha1.AttachedDisk.DiskMode.t()
        }

  defstruct source_disk: "",
            mode: :DISK_MODE_UNSPECIFIED

  field :source_disk, 3, type: :string, json_name: "sourceDisk"
  field :mode, 4, type: Google.Cloud.Tpu.V2alpha1.AttachedDisk.DiskMode, enum: true
end
defmodule Google.Cloud.Tpu.V2alpha1.SchedulingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          preemptible: boolean,
          reserved: boolean
        }

  defstruct preemptible: false,
            reserved: false

  field :preemptible, 1, type: :bool
  field :reserved, 2, type: :bool
end
defmodule Google.Cloud.Tpu.V2alpha1.NetworkEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t(),
          port: integer,
          access_config: Google.Cloud.Tpu.V2alpha1.AccessConfig.t() | nil
        }

  defstruct ip_address: "",
            port: 0,
            access_config: nil

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
  field :access_config, 5, type: Google.Cloud.Tpu.V2alpha1.AccessConfig, json_name: "accessConfig"
end
defmodule Google.Cloud.Tpu.V2alpha1.AccessConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_ip: String.t()
        }

  defstruct external_ip: ""

  field :external_ip, 1, type: :string, json_name: "externalIp", deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.NetworkConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          subnetwork: String.t(),
          enable_external_ips: boolean
        }

  defstruct network: "",
            subnetwork: "",
            enable_external_ips: false

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :enable_external_ips, 3, type: :bool, json_name: "enableExternalIps"
end
defmodule Google.Cloud.Tpu.V2alpha1.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          scope: [String.t()]
        }

  defstruct email: "",
            scope: []

  field :email, 1, type: :string
  field :scope, 2, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.Node.LabelsEntry do
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
defmodule Google.Cloud.Tpu.V2alpha1.Node.MetadataEntry do
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
defmodule Google.Cloud.Tpu.V2alpha1.Node do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          accelerator_type: String.t(),
          state: Google.Cloud.Tpu.V2alpha1.Node.State.t(),
          health_description: String.t(),
          runtime_version: String.t(),
          network_config: Google.Cloud.Tpu.V2alpha1.NetworkConfig.t() | nil,
          cidr_block: String.t(),
          service_account: Google.Cloud.Tpu.V2alpha1.ServiceAccount.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          scheduling_config: Google.Cloud.Tpu.V2alpha1.SchedulingConfig.t() | nil,
          network_endpoints: [Google.Cloud.Tpu.V2alpha1.NetworkEndpoint.t()],
          health: Google.Cloud.Tpu.V2alpha1.Node.Health.t(),
          labels: %{String.t() => String.t()},
          metadata: %{String.t() => String.t()},
          tags: [String.t()],
          id: integer,
          data_disks: [Google.Cloud.Tpu.V2alpha1.AttachedDisk.t()],
          api_version: Google.Cloud.Tpu.V2alpha1.Node.ApiVersion.t(),
          symptoms: [Google.Cloud.Tpu.V2alpha1.Symptom.t()]
        }

  defstruct name: "",
            description: "",
            accelerator_type: "",
            state: :STATE_UNSPECIFIED,
            health_description: "",
            runtime_version: "",
            network_config: nil,
            cidr_block: "",
            service_account: nil,
            create_time: nil,
            scheduling_config: nil,
            network_endpoints: [],
            health: :HEALTH_UNSPECIFIED,
            labels: %{},
            metadata: %{},
            tags: [],
            id: 0,
            data_disks: [],
            api_version: :API_VERSION_UNSPECIFIED,
            symptoms: []

  field :name, 1, type: :string, deprecated: false
  field :description, 3, type: :string
  field :accelerator_type, 5, type: :string, json_name: "acceleratorType", deprecated: false
  field :state, 9, type: Google.Cloud.Tpu.V2alpha1.Node.State, enum: true, deprecated: false
  field :health_description, 10, type: :string, json_name: "healthDescription", deprecated: false
  field :runtime_version, 11, type: :string, json_name: "runtimeVersion", deprecated: false

  field :network_config, 36,
    type: Google.Cloud.Tpu.V2alpha1.NetworkConfig,
    json_name: "networkConfig"

  field :cidr_block, 13, type: :string, json_name: "cidrBlock"

  field :service_account, 37,
    type: Google.Cloud.Tpu.V2alpha1.ServiceAccount,
    json_name: "serviceAccount"

  field :create_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :scheduling_config, 17,
    type: Google.Cloud.Tpu.V2alpha1.SchedulingConfig,
    json_name: "schedulingConfig"

  field :network_endpoints, 21,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.NetworkEndpoint,
    json_name: "networkEndpoints",
    deprecated: false

  field :health, 22, type: Google.Cloud.Tpu.V2alpha1.Node.Health, enum: true
  field :labels, 24, repeated: true, type: Google.Cloud.Tpu.V2alpha1.Node.LabelsEntry, map: true

  field :metadata, 34,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.Node.MetadataEntry,
    map: true

  field :tags, 40, repeated: true, type: :string
  field :id, 33, type: :int64, deprecated: false

  field :data_disks, 41,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.AttachedDisk,
    json_name: "dataDisks"

  field :api_version, 38,
    type: Google.Cloud.Tpu.V2alpha1.Node.ApiVersion,
    json_name: "apiVersion",
    enum: true,
    deprecated: false

  field :symptoms, 39, repeated: true, type: Google.Cloud.Tpu.V2alpha1.Symptom, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.ListNodesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Tpu.V2alpha1.ListNodesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: [Google.Cloud.Tpu.V2alpha1.Node.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct nodes: [],
            next_page_token: "",
            unreachable: []

  field :nodes, 1, repeated: true, type: Google.Cloud.Tpu.V2alpha1.Node
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.GetNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.CreateNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          node_id: String.t(),
          node: Google.Cloud.Tpu.V2alpha1.Node.t() | nil
        }

  defstruct parent: "",
            node_id: "",
            node: nil

  field :parent, 1, type: :string, deprecated: false
  field :node_id, 2, type: :string, json_name: "nodeId"
  field :node, 3, type: Google.Cloud.Tpu.V2alpha1.Node, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.DeleteNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.StopNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.StartNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.UpdateNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          node: Google.Cloud.Tpu.V2alpha1.Node.t() | nil
        }

  defstruct update_mask: nil,
            node: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :node, 2, type: Google.Cloud.Tpu.V2alpha1.Node, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.ServiceIdentity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t()
        }

  defstruct email: ""

  field :email, 1, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.GenerateServiceIdentityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.GenerateServiceIdentityResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: Google.Cloud.Tpu.V2alpha1.ServiceIdentity.t() | nil
        }

  defstruct identity: nil

  field :identity, 1, type: Google.Cloud.Tpu.V2alpha1.ServiceIdentity
end
defmodule Google.Cloud.Tpu.V2alpha1.AcceleratorType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t()
        }

  defstruct name: "",
            type: ""

  field :name, 1, type: :string
  field :type, 2, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.GetAcceleratorTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.ListAcceleratorTypesRequest do
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
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Tpu.V2alpha1.ListAcceleratorTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_types: [Google.Cloud.Tpu.V2alpha1.AcceleratorType.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct accelerator_types: [],
            next_page_token: "",
            unreachable: []

  field :accelerator_types, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.AcceleratorType,
    json_name: "acceleratorTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.OperationMetadata do
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

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Tpu.V2alpha1.RuntimeVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t()
        }

  defstruct name: "",
            version: ""

  field :name, 1, type: :string
  field :version, 2, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.GetRuntimeVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V2alpha1.ListRuntimeVersionsRequest do
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
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Tpu.V2alpha1.ListRuntimeVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runtime_versions: [Google.Cloud.Tpu.V2alpha1.RuntimeVersion.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct runtime_versions: [],
            next_page_token: "",
            unreachable: []

  field :runtime_versions, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.RuntimeVersion,
    json_name: "runtimeVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V2alpha1.Symptom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          symptom_type: Google.Cloud.Tpu.V2alpha1.Symptom.SymptomType.t(),
          details: String.t(),
          worker_id: String.t()
        }

  defstruct create_time: nil,
            symptom_type: :SYMPTOM_TYPE_UNSPECIFIED,
            details: "",
            worker_id: ""

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :symptom_type, 2,
    type: Google.Cloud.Tpu.V2alpha1.Symptom.SymptomType,
    json_name: "symptomType",
    enum: true

  field :details, 3, type: :string
  field :worker_id, 4, type: :string, json_name: "workerId"
end
defmodule Google.Cloud.Tpu.V2alpha1.GetGuestAttributesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          query_path: String.t(),
          worker_ids: [String.t()]
        }

  defstruct name: "",
            query_path: "",
            worker_ids: []

  field :name, 1, type: :string, deprecated: false
  field :query_path, 2, type: :string, json_name: "queryPath"
  field :worker_ids, 3, repeated: true, type: :string, json_name: "workerIds"
end
defmodule Google.Cloud.Tpu.V2alpha1.GetGuestAttributesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          guest_attributes: [Google.Cloud.Tpu.V2alpha1.GuestAttributes.t()]
        }

  defstruct guest_attributes: []

  field :guest_attributes, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V2alpha1.GuestAttributes,
    json_name: "guestAttributes"
end
defmodule Google.Cloud.Tpu.V2alpha1.Tpu.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.tpu.v2alpha1.Tpu"

  rpc :ListNodes,
      Google.Cloud.Tpu.V2alpha1.ListNodesRequest,
      Google.Cloud.Tpu.V2alpha1.ListNodesResponse

  rpc :GetNode, Google.Cloud.Tpu.V2alpha1.GetNodeRequest, Google.Cloud.Tpu.V2alpha1.Node

  rpc :CreateNode, Google.Cloud.Tpu.V2alpha1.CreateNodeRequest, Google.Longrunning.Operation

  rpc :DeleteNode, Google.Cloud.Tpu.V2alpha1.DeleteNodeRequest, Google.Longrunning.Operation

  rpc :StopNode, Google.Cloud.Tpu.V2alpha1.StopNodeRequest, Google.Longrunning.Operation

  rpc :StartNode, Google.Cloud.Tpu.V2alpha1.StartNodeRequest, Google.Longrunning.Operation

  rpc :UpdateNode, Google.Cloud.Tpu.V2alpha1.UpdateNodeRequest, Google.Longrunning.Operation

  rpc :GenerateServiceIdentity,
      Google.Cloud.Tpu.V2alpha1.GenerateServiceIdentityRequest,
      Google.Cloud.Tpu.V2alpha1.GenerateServiceIdentityResponse

  rpc :ListAcceleratorTypes,
      Google.Cloud.Tpu.V2alpha1.ListAcceleratorTypesRequest,
      Google.Cloud.Tpu.V2alpha1.ListAcceleratorTypesResponse

  rpc :GetAcceleratorType,
      Google.Cloud.Tpu.V2alpha1.GetAcceleratorTypeRequest,
      Google.Cloud.Tpu.V2alpha1.AcceleratorType

  rpc :ListRuntimeVersions,
      Google.Cloud.Tpu.V2alpha1.ListRuntimeVersionsRequest,
      Google.Cloud.Tpu.V2alpha1.ListRuntimeVersionsResponse

  rpc :GetRuntimeVersion,
      Google.Cloud.Tpu.V2alpha1.GetRuntimeVersionRequest,
      Google.Cloud.Tpu.V2alpha1.RuntimeVersion

  rpc :GetGuestAttributes,
      Google.Cloud.Tpu.V2alpha1.GetGuestAttributesRequest,
      Google.Cloud.Tpu.V2alpha1.GetGuestAttributesResponse
end

defmodule Google.Cloud.Tpu.V2alpha1.Tpu.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Tpu.V2alpha1.Tpu.Service
end
