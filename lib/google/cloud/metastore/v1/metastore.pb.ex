defmodule Google.Cloud.Metastore.V1.Service.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :ACTIVE
          | :SUSPENDING
          | :SUSPENDED
          | :UPDATING
          | :DELETING
          | :ERROR

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :SUSPENDING, 3
  field :SUSPENDED, 4
  field :UPDATING, 5
  field :DELETING, 6
  field :ERROR, 7
end
defmodule Google.Cloud.Metastore.V1.Service.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TIER_UNSPECIFIED | :DEVELOPER | :ENTERPRISE

  field :TIER_UNSPECIFIED, 0
  field :DEVELOPER, 1
  field :ENTERPRISE, 3
end
defmodule Google.Cloud.Metastore.V1.Service.ReleaseChannel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RELEASE_CHANNEL_UNSPECIFIED | :CANARY | :STABLE

  field :RELEASE_CHANNEL_UNSPECIFIED, 0
  field :CANARY, 1
  field :STABLE, 2
end
defmodule Google.Cloud.Metastore.V1.MetadataImport.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :UPDATING | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :UPDATING, 3
  field :FAILED, 4
end
defmodule Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATABASE_TYPE_UNSPECIFIED | :MYSQL

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :MYSQL, 1
end
defmodule Google.Cloud.Metastore.V1.MetadataExport.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end
defmodule Google.Cloud.Metastore.V1.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :DELETING | :ACTIVE | :FAILED | :RESTORING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :DELETING, 2
  field :ACTIVE, 3
  field :FAILED, 4
  field :RESTORING, 5
end
defmodule Google.Cloud.Metastore.V1.Restore.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end
defmodule Google.Cloud.Metastore.V1.Restore.RestoreType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESTORE_TYPE_UNSPECIFIED | :FULL | :METADATA_ONLY

  field :RESTORE_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :METADATA_ONLY, 2
end
defmodule Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :MYSQL | :AVRO

  field :TYPE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :AVRO, 2
end
defmodule Google.Cloud.Metastore.V1.Service.LabelsEntry do
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
defmodule Google.Cloud.Metastore.V1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metastore_config:
            {:hive_metastore_config, Google.Cloud.Metastore.V1.HiveMetastoreConfig.t() | nil},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          network: String.t(),
          endpoint_uri: String.t(),
          port: integer,
          state: Google.Cloud.Metastore.V1.Service.State.t(),
          state_message: String.t(),
          artifact_gcs_uri: String.t(),
          tier: Google.Cloud.Metastore.V1.Service.Tier.t(),
          maintenance_window: Google.Cloud.Metastore.V1.MaintenanceWindow.t() | nil,
          uid: String.t(),
          metadata_management_activity:
            Google.Cloud.Metastore.V1.MetadataManagementActivity.t() | nil,
          release_channel: Google.Cloud.Metastore.V1.Service.ReleaseChannel.t()
        }

  defstruct metastore_config: nil,
            name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            network: "",
            endpoint_uri: "",
            port: 0,
            state: :STATE_UNSPECIFIED,
            state_message: "",
            artifact_gcs_uri: "",
            tier: :TIER_UNSPECIFIED,
            maintenance_window: nil,
            uid: "",
            metadata_management_activity: nil,
            release_channel: :RELEASE_CHANNEL_UNSPECIFIED

  oneof :metastore_config, 0

  field :hive_metastore_config, 5,
    type: Google.Cloud.Metastore.V1.HiveMetastoreConfig,
    json_name: "hiveMetastoreConfig",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Metastore.V1.Service.LabelsEntry, map: true
  field :network, 7, type: :string, deprecated: false
  field :endpoint_uri, 8, type: :string, json_name: "endpointUri", deprecated: false
  field :port, 9, type: :int32
  field :state, 10, type: Google.Cloud.Metastore.V1.Service.State, enum: true, deprecated: false
  field :state_message, 11, type: :string, json_name: "stateMessage", deprecated: false
  field :artifact_gcs_uri, 12, type: :string, json_name: "artifactGcsUri", deprecated: false
  field :tier, 13, type: Google.Cloud.Metastore.V1.Service.Tier, enum: true

  field :maintenance_window, 15,
    type: Google.Cloud.Metastore.V1.MaintenanceWindow,
    json_name: "maintenanceWindow"

  field :uid, 16, type: :string, deprecated: false

  field :metadata_management_activity, 17,
    type: Google.Cloud.Metastore.V1.MetadataManagementActivity,
    json_name: "metadataManagementActivity",
    deprecated: false

  field :release_channel, 19,
    type: Google.Cloud.Metastore.V1.Service.ReleaseChannel,
    json_name: "releaseChannel",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hour_of_day: Google.Protobuf.Int32Value.t() | nil,
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct hour_of_day: nil,
            day_of_week: :DAY_OF_WEEK_UNSPECIFIED

  field :hour_of_day, 1, type: Google.Protobuf.Int32Value, json_name: "hourOfDay"
  field :day_of_week, 2, type: Google.Type.DayOfWeek, json_name: "dayOfWeek", enum: true
end
defmodule Google.Cloud.Metastore.V1.HiveMetastoreConfig.ConfigOverridesEntry do
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
defmodule Google.Cloud.Metastore.V1.HiveMetastoreConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          config_overrides: %{String.t() => String.t()},
          kerberos_config: Google.Cloud.Metastore.V1.KerberosConfig.t() | nil
        }

  defstruct version: "",
            config_overrides: %{},
            kerberos_config: nil

  field :version, 1, type: :string, deprecated: false

  field :config_overrides, 2,
    repeated: true,
    type: Google.Cloud.Metastore.V1.HiveMetastoreConfig.ConfigOverridesEntry,
    json_name: "configOverrides",
    map: true

  field :kerberos_config, 3,
    type: Google.Cloud.Metastore.V1.KerberosConfig,
    json_name: "kerberosConfig"
end
defmodule Google.Cloud.Metastore.V1.KerberosConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keytab: Google.Cloud.Metastore.V1.Secret.t() | nil,
          principal: String.t(),
          krb5_config_gcs_uri: String.t()
        }

  defstruct keytab: nil,
            principal: "",
            krb5_config_gcs_uri: ""

  field :keytab, 1, type: Google.Cloud.Metastore.V1.Secret
  field :principal, 2, type: :string
  field :krb5_config_gcs_uri, 3, type: :string, json_name: "krb5ConfigGcsUri"
end
defmodule Google.Cloud.Metastore.V1.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {:cloud_secret, String.t()}
        }

  defstruct value: nil

  oneof :value, 0

  field :cloud_secret, 2, type: :string, json_name: "cloudSecret", oneof: 0
end
defmodule Google.Cloud.Metastore.V1.MetadataManagementActivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_exports: [Google.Cloud.Metastore.V1.MetadataExport.t()],
          restores: [Google.Cloud.Metastore.V1.Restore.t()]
        }

  defstruct metadata_exports: [],
            restores: []

  field :metadata_exports, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1.MetadataExport,
    json_name: "metadataExports",
    deprecated: false

  field :restores, 2, repeated: true, type: Google.Cloud.Metastore.V1.Restore, deprecated: false
end
defmodule Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_type: Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump.DatabaseType.t(),
          gcs_uri: String.t(),
          type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type.t()
        }

  defstruct database_type: :DATABASE_TYPE_UNSPECIFIED,
            gcs_uri: "",
            type: :TYPE_UNSPECIFIED

  field :database_type, 1,
    type: Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump.DatabaseType,
    json_name: "databaseType",
    enum: true,
    deprecated: true

  field :gcs_uri, 2, type: :string, json_name: "gcsUri"

  field :type, 4,
    type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.MetadataImport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata:
            {:database_dump, Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump.t() | nil},
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1.MetadataImport.State.t()
        }

  defstruct metadata: nil,
            name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED

  oneof :metadata, 0

  field :database_dump, 6,
    type: Google.Cloud.Metastore.V1.MetadataImport.DatabaseDump,
    json_name: "databaseDump",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 5,
    type: Google.Cloud.Metastore.V1.MetadataImport.State,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.MetadataExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:destination_gcs_uri, String.t()},
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1.MetadataExport.State.t(),
          database_dump_type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type.t()
        }

  defstruct destination: nil,
            start_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            database_dump_type: :TYPE_UNSPECIFIED

  oneof :destination, 0

  field :destination_gcs_uri, 4,
    type: :string,
    json_name: "destinationGcsUri",
    oneof: 0,
    deprecated: false

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 3,
    type: Google.Cloud.Metastore.V1.MetadataExport.State,
    enum: true,
    deprecated: false

  field :database_dump_type, 5,
    type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type,
    json_name: "databaseDumpType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.Backup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1.Backup.State.t(),
          service_revision: Google.Cloud.Metastore.V1.Service.t() | nil,
          description: String.t(),
          restoring_services: [String.t()]
        }

  defstruct name: "",
            create_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            service_revision: nil,
            description: "",
            restoring_services: []

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :state, 4, type: Google.Cloud.Metastore.V1.Backup.State, enum: true, deprecated: false

  field :service_revision, 5,
    type: Google.Cloud.Metastore.V1.Service,
    json_name: "serviceRevision",
    deprecated: false

  field :description, 6, type: :string

  field :restoring_services, 7,
    repeated: true,
    type: :string,
    json_name: "restoringServices",
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.Restore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1.Restore.State.t(),
          backup: String.t(),
          type: Google.Cloud.Metastore.V1.Restore.RestoreType.t(),
          details: String.t()
        }

  defstruct start_time: nil,
            end_time: nil,
            state: :STATE_UNSPECIFIED,
            backup: "",
            type: :RESTORE_TYPE_UNSPECIFIED,
            details: ""

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :state, 3, type: Google.Cloud.Metastore.V1.Restore.State, enum: true, deprecated: false
  field :backup, 4, type: :string, deprecated: false

  field :type, 5,
    type: Google.Cloud.Metastore.V1.Restore.RestoreType,
    enum: true,
    deprecated: false

  field :details, 6, type: :string, deprecated: false
end
defmodule Google.Cloud.Metastore.V1.ListServicesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Cloud.Metastore.V1.Service.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct services: [],
            next_page_token: "",
            unreachable: []

  field :services, 1, repeated: true, type: Google.Cloud.Metastore.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Metastore.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Metastore.V1.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_id: String.t(),
          service: Google.Cloud.Metastore.V1.Service.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            service_id: "",
            service: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :service_id, 2, type: :string, json_name: "serviceId", deprecated: false
  field :service, 3, type: Google.Cloud.Metastore.V1.Service, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          service: Google.Cloud.Metastore.V1.Service.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            service: nil,
            request_id: ""

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service, 2, type: Google.Cloud.Metastore.V1.Service, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.DeleteServiceRequest do
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
defmodule Google.Cloud.Metastore.V1.ListMetadataImportsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.ListMetadataImportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_imports: [Google.Cloud.Metastore.V1.MetadataImport.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct metadata_imports: [],
            next_page_token: "",
            unreachable: []

  field :metadata_imports, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1.MetadataImport,
    json_name: "metadataImports"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Metastore.V1.GetMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Metastore.V1.CreateMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_import_id: String.t(),
          metadata_import: Google.Cloud.Metastore.V1.MetadataImport.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            metadata_import_id: "",
            metadata_import: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :metadata_import_id, 2, type: :string, json_name: "metadataImportId", deprecated: false

  field :metadata_import, 3,
    type: Google.Cloud.Metastore.V1.MetadataImport,
    json_name: "metadataImport",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.UpdateMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          metadata_import: Google.Cloud.Metastore.V1.MetadataImport.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            metadata_import: nil,
            request_id: ""

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :metadata_import, 2,
    type: Google.Cloud.Metastore.V1.MetadataImport,
    json_name: "metadataImport",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.ListBackupsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Cloud.Metastore.V1.Backup.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct backups: [],
            next_page_token: "",
            unreachable: []

  field :backups, 1, repeated: true, type: Google.Cloud.Metastore.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Metastore.V1.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Metastore.V1.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_id: String.t(),
          backup: Google.Cloud.Metastore.V1.Backup.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            backup_id: "",
            backup: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Metastore.V1.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.DeleteBackupRequest do
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
defmodule Google.Cloud.Metastore.V1.ExportMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:destination_gcs_folder, String.t()},
          service: String.t(),
          request_id: String.t(),
          database_dump_type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type.t()
        }

  defstruct destination: nil,
            service: "",
            request_id: "",
            database_dump_type: :TYPE_UNSPECIFIED

  oneof :destination, 0

  field :destination_gcs_folder, 2, type: :string, json_name: "destinationGcsFolder", oneof: 0
  field :service, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false

  field :database_dump_type, 4,
    type: Google.Cloud.Metastore.V1.DatabaseDumpSpec.Type,
    json_name: "databaseDumpType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Metastore.V1.RestoreServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          backup: String.t(),
          restore_type: Google.Cloud.Metastore.V1.Restore.RestoreType.t(),
          request_id: String.t()
        }

  defstruct service: "",
            backup: "",
            restore_type: :RESTORE_TYPE_UNSPECIFIED,
            request_id: ""

  field :service, 1, type: :string, deprecated: false
  field :backup, 2, type: :string, deprecated: false

  field :restore_type, 3,
    type: Google.Cloud.Metastore.V1.Restore.RestoreType,
    json_name: "restoreType",
    enum: true,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Metastore.V1.OperationMetadata do
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
defmodule Google.Cloud.Metastore.V1.LocationMetadata.HiveMetastoreVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          is_default: boolean
        }

  defstruct version: "",
            is_default: false

  field :version, 1, type: :string
  field :is_default, 2, type: :bool, json_name: "isDefault"
end
defmodule Google.Cloud.Metastore.V1.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          supported_hive_metastore_versions: [
            Google.Cloud.Metastore.V1.LocationMetadata.HiveMetastoreVersion.t()
          ]
        }

  defstruct supported_hive_metastore_versions: []

  field :supported_hive_metastore_versions, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1.LocationMetadata.HiveMetastoreVersion,
    json_name: "supportedHiveMetastoreVersions"
end
defmodule Google.Cloud.Metastore.V1.DatabaseDumpSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Metastore.V1.DataprocMetastore.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.metastore.v1.DataprocMetastore"

  rpc :ListServices,
      Google.Cloud.Metastore.V1.ListServicesRequest,
      Google.Cloud.Metastore.V1.ListServicesResponse

  rpc :GetService, Google.Cloud.Metastore.V1.GetServiceRequest, Google.Cloud.Metastore.V1.Service

  rpc :CreateService, Google.Cloud.Metastore.V1.CreateServiceRequest, Google.Longrunning.Operation

  rpc :UpdateService, Google.Cloud.Metastore.V1.UpdateServiceRequest, Google.Longrunning.Operation

  rpc :DeleteService, Google.Cloud.Metastore.V1.DeleteServiceRequest, Google.Longrunning.Operation

  rpc :ListMetadataImports,
      Google.Cloud.Metastore.V1.ListMetadataImportsRequest,
      Google.Cloud.Metastore.V1.ListMetadataImportsResponse

  rpc :GetMetadataImport,
      Google.Cloud.Metastore.V1.GetMetadataImportRequest,
      Google.Cloud.Metastore.V1.MetadataImport

  rpc :CreateMetadataImport,
      Google.Cloud.Metastore.V1.CreateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :UpdateMetadataImport,
      Google.Cloud.Metastore.V1.UpdateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :ExportMetadata,
      Google.Cloud.Metastore.V1.ExportMetadataRequest,
      Google.Longrunning.Operation

  rpc :RestoreService,
      Google.Cloud.Metastore.V1.RestoreServiceRequest,
      Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Metastore.V1.ListBackupsRequest,
      Google.Cloud.Metastore.V1.ListBackupsResponse

  rpc :GetBackup, Google.Cloud.Metastore.V1.GetBackupRequest, Google.Cloud.Metastore.V1.Backup

  rpc :CreateBackup, Google.Cloud.Metastore.V1.CreateBackupRequest, Google.Longrunning.Operation

  rpc :DeleteBackup, Google.Cloud.Metastore.V1.DeleteBackupRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Metastore.V1.DataprocMetastore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Metastore.V1.DataprocMetastore.Service
end
