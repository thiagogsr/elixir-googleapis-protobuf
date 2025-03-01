defmodule Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :INCLUSION_MODE_UNSPECIFIED | :INCLUDE_ONLY | :EXCLUDE

  field :INCLUSION_MODE_UNSPECIFIED, 0
  field :INCLUDE_ONLY, 1
  field :EXCLUDE, 2
end
defmodule Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_ids: [String.t()],
          inclusion_mode:
            Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode.t()
        }

  defstruct project_ids: [],
            inclusion_mode: :INCLUSION_MODE_UNSPECIFIED

  field :project_ids, 1, repeated: true, type: :string, json_name: "projectIds"

  field :inclusion_mode, 2,
    type:
      Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode,
    json_name: "inclusionMode",
    enum: true
end
defmodule Google.Cloud.Securitycenter.V1beta1.OrganizationSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          enable_asset_discovery: boolean,
          asset_discovery_config:
            Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig.t()
            | nil
        }

  defstruct name: "",
            enable_asset_discovery: false,
            asset_discovery_config: nil

  field :name, 1, type: :string
  field :enable_asset_discovery, 2, type: :bool, json_name: "enableAssetDiscovery"

  field :asset_discovery_config, 3,
    type: Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.AssetDiscoveryConfig,
    json_name: "assetDiscoveryConfig"
end
