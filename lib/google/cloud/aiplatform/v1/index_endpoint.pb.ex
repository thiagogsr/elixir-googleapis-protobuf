defmodule Google.Cloud.Aiplatform.V1.IndexEndpoint.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.IndexEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          deployed_indexes: [Google.Cloud.Aiplatform.V1.DeployedIndex.t()],
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          network: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :deployed_indexes,
    :etag,
    :labels,
    :create_time,
    :update_time,
    :network
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :deployed_indexes, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.DeployedIndex
  field :etag, 5, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.IndexEndpoint.LabelsEntry,
    map: true

  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :update_time, 8, type: Google.Protobuf.Timestamp
  field :network, 9, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          index: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          private_endpoints: Google.Cloud.Aiplatform.V1.IndexPrivateEndpoints.t() | nil,
          index_sync_time: Google.Protobuf.Timestamp.t() | nil,
          automatic_resources: Google.Cloud.Aiplatform.V1.AutomaticResources.t() | nil,
          enable_access_logging: boolean,
          deployed_index_auth_config:
            Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.t() | nil,
          reserved_ip_ranges: [String.t()],
          deployment_group: String.t()
        }

  defstruct [
    :id,
    :index,
    :display_name,
    :create_time,
    :private_endpoints,
    :index_sync_time,
    :automatic_resources,
    :enable_access_logging,
    :deployed_index_auth_config,
    :reserved_ip_ranges,
    :deployment_group
  ]

  field :id, 1, type: :string
  field :index, 2, type: :string
  field :display_name, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :private_endpoints, 5, type: Google.Cloud.Aiplatform.V1.IndexPrivateEndpoints
  field :index_sync_time, 6, type: Google.Protobuf.Timestamp
  field :automatic_resources, 7, type: Google.Cloud.Aiplatform.V1.AutomaticResources
  field :enable_access_logging, 8, type: :bool
  field :deployed_index_auth_config, 9, type: Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig
  field :reserved_ip_ranges, 10, repeated: true, type: :string
  field :deployment_group, 11, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.AuthProvider do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audiences: [String.t()],
          allowed_issuers: [String.t()]
        }

  defstruct [:audiences, :allowed_issuers]

  field :audiences, 1, repeated: true, type: :string
  field :allowed_issuers, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auth_provider: Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.AuthProvider.t() | nil
        }

  defstruct [:auth_provider]

  field :auth_provider, 1, type: Google.Cloud.Aiplatform.V1.DeployedIndexAuthConfig.AuthProvider
end

defmodule Google.Cloud.Aiplatform.V1.IndexPrivateEndpoints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_grpc_address: String.t()
        }

  defstruct [:match_grpc_address]

  field :match_grpc_address, 1, type: :string
end