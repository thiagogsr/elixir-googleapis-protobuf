defmodule Google.Iam.V1.SetIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          policy: Google.Iam.V1.Policy.t() | nil
        }

  defstruct [:resource, :policy]

  field :resource, 1, type: :string
  field :policy, 2, type: Google.Iam.V1.Policy
end

defmodule Google.Iam.V1.GetIamPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          options: Google.Iam.V1.GetPolicyOptions.t() | nil
        }

  defstruct [:resource, :options]

  field :resource, 1, type: :string
  field :options, 2, type: Google.Iam.V1.GetPolicyOptions
end

defmodule Google.Iam.V1.TestIamPermissionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          permissions: [String.t()]
        }

  defstruct [:resource, :permissions]

  field :resource, 1, type: :string
  field :permissions, 2, repeated: true, type: :string
end

defmodule Google.Iam.V1.TestIamPermissionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          permissions: [String.t()]
        }

  defstruct [:permissions]

  field :permissions, 1, repeated: true, type: :string
end

defmodule Google.Iam.V1.IAMPolicy.Service do
  @moduledoc false
  use GRPC.Service, name: "google.iam.v1.IAMPolicy"

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Iam.V1.IAMPolicy.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Iam.V1.IAMPolicy.Service
end
