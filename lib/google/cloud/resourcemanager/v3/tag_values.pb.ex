defmodule Google.Cloud.Resourcemanager.V3.TagValue do
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
defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesRequest do
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
defmodule Google.Cloud.Resourcemanager.V3.ListTagValuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_values: [Google.Cloud.Resourcemanager.V3.TagValue.t()],
          next_page_token: String.t()
        }

  defstruct tag_values: [],
            next_page_token: ""

  field :tag_values, 1,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValues"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.GetTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_value: Google.Cloud.Resourcemanager.V3.TagValue.t() | nil,
          validate_only: boolean
        }

  defstruct tag_value: nil,
            validate_only: false

  field :tag_value, 1,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValue",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.CreateTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag_value: Google.Cloud.Resourcemanager.V3.TagValue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct tag_value: nil,
            update_mask: nil,
            validate_only: false

  field :tag_value, 1,
    type: Google.Cloud.Resourcemanager.V3.TagValue,
    json_name: "tagValue",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueRequest do
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
defmodule Google.Cloud.Resourcemanager.V3.DeleteTagValueMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.TagValues.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcemanager.v3.TagValues"

  rpc :ListTagValues,
      Google.Cloud.Resourcemanager.V3.ListTagValuesRequest,
      Google.Cloud.Resourcemanager.V3.ListTagValuesResponse

  rpc :GetTagValue,
      Google.Cloud.Resourcemanager.V3.GetTagValueRequest,
      Google.Cloud.Resourcemanager.V3.TagValue

  rpc :CreateTagValue,
      Google.Cloud.Resourcemanager.V3.CreateTagValueRequest,
      Google.Longrunning.Operation

  rpc :UpdateTagValue,
      Google.Cloud.Resourcemanager.V3.UpdateTagValueRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagValue,
      Google.Cloud.Resourcemanager.V3.DeleteTagValueRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.TagValues.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagValues.Service
end
