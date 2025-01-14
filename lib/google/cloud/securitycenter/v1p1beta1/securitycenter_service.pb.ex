defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNUSED | :ADDED | :REMOVED | :ACTIVE

  field :UNUSED, 0
  field :ADDED, 1
  field :REMOVED, 2
  field :ACTIVE, 3
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNUSED | :CHANGED | :UNCHANGED | :ADDED | :REMOVED

  field :UNUSED, 0
  field :CHANGED, 1
  field :UNCHANGED, 2
  field :ADDED, 3
  field :REMOVED, 4
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          finding_id: String.t(),
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil
        }

  defstruct parent: "",
            finding_id: "",
            finding: nil

  field :parent, 1, type: :string, deprecated: false
  field :finding_id, 2, type: :string, json_name: "findingId", deprecated: false
  field :finding, 3, type: Google.Cloud.Securitycenter.V1p1beta1.Finding, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config_id: String.t(),
          notification_config: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t() | nil
        }

  defstruct parent: "",
            config_id: "",
            notification_config: nil

  field :parent, 1, type: :string, deprecated: false
  field :config_id, 2, type: :string, json_name: "configId", deprecated: false

  field :notification_config, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig,
    json_name: "notificationConfig",
    deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source: Google.Cloud.Securitycenter.V1p1beta1.Source.t() | nil
        }

  defstruct parent: "",
            source: nil

  field :parent, 1, type: :string, deprecated: false
  field :source, 2, type: Google.Cloud.Securitycenter.V1p1beta1.Source, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.DeleteNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GetNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GetOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GetSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          compare_duration: Google.Protobuf.Duration.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            group_by: "",
            compare_duration: nil,
            read_time: nil,
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :compare_duration, 4, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :read_time, 5, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1p1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct group_by_results: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            group_by: "",
            read_time: nil,
            compare_duration: nil,
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :compare_duration, 5, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1p1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct group_by_results: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupResult.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          count: integer
        }

  defstruct properties: %{},
            count: 0

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_configs: [Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t()],
          next_page_token: String.t()
        }

  defstruct notification_configs: [],
            next_page_token: ""

  field :notification_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig,
    json_name: "notificationConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListSourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Securitycenter.V1p1beta1.Source.t()],
          next_page_token: String.t()
        }

  defstruct sources: [],
            next_page_token: ""

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            order_by: "",
            read_time: nil,
            compare_duration: nil,
            field_mask: nil,
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :compare_duration, 5, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :field_mask, 7, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :page_token, 8, type: :string, json_name: "pageToken"
  field :page_size, 9, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Cloud.Securitycenter.V1p1beta1.Asset.t() | nil,
          state_change:
            Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange.t()
        }

  defstruct asset: nil,
            state_change: :UNUSED

  field :asset, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Asset

  field :state_change, 2,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange,
    json_name: "stateChange",
    enum: true
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_assets_results: [
            Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct list_assets_results: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

  field :list_assets_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult,
    json_name: "listAssetsResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            order_by: "",
            read_time: nil,
            compare_duration: nil,
            field_mask: nil,
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :compare_duration, 5, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :field_mask, 7, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
  field :page_token, 8, type: :string, json_name: "pageToken"
  field :page_size, 9, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_name: String.t(),
          project_display_name: String.t(),
          parent_name: String.t(),
          parent_display_name: String.t(),
          folders: [Google.Cloud.Securitycenter.V1p1beta1.Folder.t()]
        }

  defstruct name: "",
            project_name: "",
            project_display_name: "",
            parent_name: "",
            parent_display_name: "",
            folders: []

  field :name, 1, type: :string
  field :project_name, 2, type: :string, json_name: "projectName"
  field :project_display_name, 3, type: :string, json_name: "projectDisplayName"
  field :parent_name, 4, type: :string, json_name: "parentName"
  field :parent_display_name, 5, type: :string, json_name: "parentDisplayName"
  field :folders, 10, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Folder
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil,
          state_change:
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange.t(),
          resource:
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource.t()
            | nil
        }

  defstruct finding: nil,
            state_change: :UNUSED,
            resource: nil

  field :finding, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Finding

  field :state_change, 2,
    type:
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange,
    json_name: "stateChange",
    enum: true

  field :resource, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource,
    deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_findings_results: [
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct list_findings_results: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

  field :list_findings_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult,
    json_name: "listFindingsResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.SetFindingStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Securitycenter.V1p1beta1.Finding.State.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            start_time: nil

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1p1beta1.Finding.State,
    enum: true,
    deprecated: false

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.RunAssetDiscoveryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct finding: nil,
            update_mask: nil

  field :finding, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Finding, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_config: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct notification_config: nil,
            update_mask: nil

  field :notification_config, 1,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig,
    json_name: "notificationConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization_settings:
            Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct organization_settings: nil,
            update_mask: nil

  field :organization_settings, 1,
    type: Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings,
    json_name: "organizationSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Securitycenter.V1p1beta1.Source.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct source: nil,
            update_mask: nil

  field :source, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Source, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateSecurityMarksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_marks: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct security_marks: nil,
            update_mask: nil,
            start_time: nil

  field :security_marks, 1,
    type: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.securitycenter.v1p1beta1.SecurityCenter"

  rpc :CreateSource,
      Google.Cloud.Securitycenter.V1p1beta1.CreateSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :CreateFinding,
      Google.Cloud.Securitycenter.V1p1beta1.CreateFindingRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :CreateNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.CreateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :DeleteNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.DeleteNotificationConfigRequest,
      Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.GetNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :GetOrganizationSettings,
      Google.Cloud.Securitycenter.V1p1beta1.GetOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings

  rpc :GetSource,
      Google.Cloud.Securitycenter.V1p1beta1.GetSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :GroupAssets,
      Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsResponse

  rpc :GroupFindings,
      Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsResponse

  rpc :ListAssets,
      Google.Cloud.Securitycenter.V1p1beta1.ListAssetsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse

  rpc :ListFindings,
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse

  rpc :ListNotificationConfigs,
      Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsResponse

  rpc :ListSources,
      Google.Cloud.Securitycenter.V1p1beta1.ListSourcesRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListSourcesResponse

  rpc :RunAssetDiscovery,
      Google.Cloud.Securitycenter.V1p1beta1.RunAssetDiscoveryRequest,
      Google.Longrunning.Operation

  rpc :SetFindingState,
      Google.Cloud.Securitycenter.V1p1beta1.SetFindingStateRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :UpdateFinding,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateFindingRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :UpdateNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :UpdateOrganizationSettings,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings

  rpc :UpdateSource,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :UpdateSecurityMarks,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateSecurityMarksRequest,
      Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Service
end
