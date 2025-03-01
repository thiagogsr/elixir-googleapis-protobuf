defmodule Google.Partner.Aistreams.V1alpha1.Cluster.LabelsEntry do
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
defmodule Google.Partner.Aistreams.V1alpha1.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          certificate: String.t(),
          service_endpoint: String.t()
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            certificate: "",
            service_endpoint: ""

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Partner.Aistreams.V1alpha1.Cluster.LabelsEntry,
    map: true

  field :certificate, 5, type: :string, deprecated: false
  field :service_endpoint, 6, type: :string, json_name: "serviceEndpoint", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.ListClustersRequest do
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
defmodule Google.Partner.Aistreams.V1alpha1.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Partner.Aistreams.V1alpha1.Cluster.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct clusters: [],
            next_page_token: "",
            unreachable: []

  field :clusters, 1, repeated: true, type: Google.Partner.Aistreams.V1alpha1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cluster_id: String.t(),
          cluster: Google.Partner.Aistreams.V1alpha1.Cluster.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            cluster_id: "",
            cluster: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Partner.Aistreams.V1alpha1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          cluster: Google.Partner.Aistreams.V1alpha1.Cluster.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            cluster: nil,
            request_id: ""

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Partner.Aistreams.V1alpha1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.Stream.LabelsEntry do
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
defmodule Google.Partner.Aistreams.V1alpha1.Stream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{}

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Partner.Aistreams.V1alpha1.Stream.LabelsEntry,
    map: true
end
defmodule Google.Partner.Aistreams.V1alpha1.ListStreamsRequest do
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
defmodule Google.Partner.Aistreams.V1alpha1.ListStreamsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streams: [Google.Partner.Aistreams.V1alpha1.Stream.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct streams: [],
            next_page_token: "",
            unreachable: []

  field :streams, 1, repeated: true, type: Google.Partner.Aistreams.V1alpha1.Stream
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Partner.Aistreams.V1alpha1.GetStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.CreateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          stream_id: String.t(),
          stream: Google.Partner.Aistreams.V1alpha1.Stream.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            stream_id: "",
            stream: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId", deprecated: false
  field :stream, 3, type: Google.Partner.Aistreams.V1alpha1.Stream, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.UpdateStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          stream: Google.Partner.Aistreams.V1alpha1.Stream.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            stream: nil,
            request_id: ""

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :stream, 2, type: Google.Partner.Aistreams.V1alpha1.Stream, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.DeleteStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Partner.Aistreams.V1alpha1.AIStreams.Service do
  @moduledoc false
  use GRPC.Service, name: "google.partner.aistreams.v1alpha1.AIStreams"

  rpc :ListClusters,
      Google.Partner.Aistreams.V1alpha1.ListClustersRequest,
      Google.Partner.Aistreams.V1alpha1.ListClustersResponse

  rpc :GetCluster,
      Google.Partner.Aistreams.V1alpha1.GetClusterRequest,
      Google.Partner.Aistreams.V1alpha1.Cluster

  rpc :CreateCluster,
      Google.Partner.Aistreams.V1alpha1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Partner.Aistreams.V1alpha1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Partner.Aistreams.V1alpha1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListStreams,
      Google.Partner.Aistreams.V1alpha1.ListStreamsRequest,
      Google.Partner.Aistreams.V1alpha1.ListStreamsResponse

  rpc :GetStream,
      Google.Partner.Aistreams.V1alpha1.GetStreamRequest,
      Google.Partner.Aistreams.V1alpha1.Stream

  rpc :CreateStream,
      Google.Partner.Aistreams.V1alpha1.CreateStreamRequest,
      Google.Longrunning.Operation

  rpc :UpdateStream,
      Google.Partner.Aistreams.V1alpha1.UpdateStreamRequest,
      Google.Longrunning.Operation

  rpc :DeleteStream,
      Google.Partner.Aistreams.V1alpha1.DeleteStreamRequest,
      Google.Longrunning.Operation
end

defmodule Google.Partner.Aistreams.V1alpha1.AIStreams.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Partner.Aistreams.V1alpha1.AIStreams.Service
end
