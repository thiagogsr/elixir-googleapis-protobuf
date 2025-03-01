defmodule Google.Devtools.Artifactregistry.V1.Repository.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FORMAT_UNSPECIFIED | :DOCKER | :MAVEN | :NPM | :APT | :YUM | :PYTHON

  field :FORMAT_UNSPECIFIED, 0
  field :DOCKER, 1
  field :MAVEN, 2
  field :NPM, 3
  field :APT, 5
  field :YUM, 6
  field :PYTHON, 8
end
defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :VERSION_POLICY_UNSPECIFIED | :RELEASE | :SNAPSHOT

  field :VERSION_POLICY_UNSPECIFIED, 0
  field :RELEASE, 1
  field :SNAPSHOT, 2
end
defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_snapshot_overwrites: boolean,
          version_policy:
            Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy.t()
        }

  defstruct allow_snapshot_overwrites: false,
            version_policy: :VERSION_POLICY_UNSPECIFIED

  field :allow_snapshot_overwrites, 1, type: :bool, json_name: "allowSnapshotOverwrites"

  field :version_policy, 2,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy,
    json_name: "versionPolicy",
    enum: true
end
defmodule Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry do
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
defmodule Google.Devtools.Artifactregistry.V1.Repository do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format_config:
            {:maven_config,
             Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.t() | nil},
          name: String.t(),
          format: Google.Devtools.Artifactregistry.V1.Repository.Format.t(),
          description: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          kms_key_name: String.t()
        }

  defstruct format_config: nil,
            name: "",
            format: :FORMAT_UNSPECIFIED,
            description: "",
            labels: %{},
            create_time: nil,
            update_time: nil,
            kms_key_name: ""

  oneof :format_config, 0

  field :maven_config, 9,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig,
    json_name: "mavenConfig",
    oneof: 0

  field :name, 1, type: :string
  field :format, 2, type: Google.Devtools.Artifactregistry.V1.Repository.Format, enum: true
  field :description, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry,
    map: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :kms_key_name, 8, type: :string, json_name: "kmsKeyName"
end
defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest do
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
defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repositories: [Google.Devtools.Artifactregistry.V1.Repository.t()],
          next_page_token: String.t()
        }

  defstruct repositories: [],
            next_page_token: ""

  field :repositories, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Devtools.Artifactregistry.V1.GetRepositoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Devtools.Artifactregistry.V1.CreateRepositoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          repository_id: String.t(),
          repository: Google.Devtools.Artifactregistry.V1.Repository.t() | nil
        }

  defstruct parent: "",
            repository_id: "",
            repository: nil

  field :parent, 1, type: :string, deprecated: false
  field :repository_id, 2, type: :string, json_name: "repositoryId"
  field :repository, 3, type: Google.Devtools.Artifactregistry.V1.Repository
end
defmodule Google.Devtools.Artifactregistry.V1.UpdateRepositoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repository: Google.Devtools.Artifactregistry.V1.Repository.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct repository: nil,
            update_mask: nil

  field :repository, 1, type: Google.Devtools.Artifactregistry.V1.Repository
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Devtools.Artifactregistry.V1.DeleteRepositoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
