defmodule Google.Cloud.Resourcemanager.V3.TagKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          short_name: String.t(),
          namespaced_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct name: "",
            parent: "",
            short_name: "",
            namespaced_name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string, deprecated: false
  field :short_name, 3, type: :string, json_name: "shortName", deprecated: false
  field :namespaced_name, 4, type: :string, json_name: "namespacedName", deprecated: false
  field :description, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListTagKeysRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListTagKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_keys: [Google.Cloud.Resourcemanager.V3.TagKey.t()],
          next_page_token: String.t()
        }

  defstruct tag_keys: [],
            next_page_token: ""

  field :tag_keys, 1,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.TagKey,
    json_name: "tagKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.GetTagKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_key: Google.Cloud.Resourcemanager.V3.TagKey.t() | nil,
          validate_only: boolean
        }

  defstruct tag_key: nil,
            validate_only: false

  field :tag_key, 1,
    type: Google.Cloud.Resourcemanager.V3.TagKey,
    json_name: "tagKey",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateTagKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_key: Google.Cloud.Resourcemanager.V3.TagKey.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct tag_key: nil,
            update_mask: nil,
            validate_only: false

  field :tag_key, 1,
    type: Google.Cloud.Resourcemanager.V3.TagKey,
    json_name: "tagKey",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateTagKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean,
          etag: String.t()
        }

  defstruct name: "",
            validate_only: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagKeyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.TagKeys.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcemanager.v3.TagKeys"

  rpc :ListTagKeys,
      Google.Cloud.Resourcemanager.V3.ListTagKeysRequest,
      Google.Cloud.Resourcemanager.V3.ListTagKeysResponse

  rpc :GetTagKey,
      Google.Cloud.Resourcemanager.V3.GetTagKeyRequest,
      Google.Cloud.Resourcemanager.V3.TagKey

  rpc :CreateTagKey,
      Google.Cloud.Resourcemanager.V3.CreateTagKeyRequest,
      Google.Longrunning.Operation

  rpc :UpdateTagKey,
      Google.Cloud.Resourcemanager.V3.UpdateTagKeyRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagKey,
      Google.Cloud.Resourcemanager.V3.DeleteTagKeyRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.TagKeys.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagKeys.Service
end
