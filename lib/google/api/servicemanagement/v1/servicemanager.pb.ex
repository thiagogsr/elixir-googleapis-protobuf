defmodule Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0
  field :FULL, 1
end
defmodule Google.Api.Servicemanagement.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          producer_project_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          consumer_id: String.t()
        }

  defstruct producer_project_id: "",
            page_size: 0,
            page_token: "",
            consumer_id: ""

  field :producer_project_id, 1, type: :string, json_name: "producerProjectId"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :consumer_id, 7, type: :string, json_name: "consumerId", deprecated: true
end
defmodule Google.Api.Servicemanagement.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Servicemanagement.V1.ManagedService.t()],
          next_page_token: String.t()
        }

  defstruct services: [],
            next_page_token: ""

  field :services, 1, repeated: true, type: Google.Api.Servicemanagement.V1.ManagedService
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Servicemanagement.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct service_name: ""

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Servicemanagement.V1.ManagedService.t() | nil
        }

  defstruct service: nil

  field :service, 1, type: Google.Api.Servicemanagement.V1.ManagedService, deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct service_name: ""

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.UndeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct service_name: ""

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.UndeleteServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Servicemanagement.V1.ManagedService.t() | nil
        }

  defstruct service: nil

  field :service, 1, type: Google.Api.Servicemanagement.V1.ManagedService
end
defmodule Google.Api.Servicemanagement.V1.GetServiceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          config_id: String.t(),
          view: Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView.t()
        }

  defstruct service_name: "",
            config_id: "",
            view: :BASIC

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :config_id, 2, type: :string, json_name: "configId", deprecated: false

  field :view, 3,
    type: Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView,
    enum: true
end
defmodule Google.Api.Servicemanagement.V1.ListServiceConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct service_name: "",
            page_token: "",
            page_size: 0

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Api.Servicemanagement.V1.ListServiceConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_configs: [Google.Api.Service.t()],
          next_page_token: String.t()
        }

  defstruct service_configs: [],
            next_page_token: ""

  field :service_configs, 1, repeated: true, type: Google.Api.Service, json_name: "serviceConfigs"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Servicemanagement.V1.CreateServiceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          service_config: Google.Api.Service.t() | nil
        }

  defstruct service_name: "",
            service_config: nil

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false

  field :service_config, 2,
    type: Google.Api.Service,
    json_name: "serviceConfig",
    deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.SubmitConfigSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          config_source: Google.Api.Servicemanagement.V1.ConfigSource.t() | nil,
          validate_only: boolean
        }

  defstruct service_name: "",
            config_source: nil,
            validate_only: false

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false

  field :config_source, 2,
    type: Google.Api.Servicemanagement.V1.ConfigSource,
    json_name: "configSource",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.SubmitConfigSourceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_config: Google.Api.Service.t() | nil
        }

  defstruct service_config: nil

  field :service_config, 1, type: Google.Api.Service, json_name: "serviceConfig"
end
defmodule Google.Api.Servicemanagement.V1.CreateServiceRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          rollout: Google.Api.Servicemanagement.V1.Rollout.t() | nil
        }

  defstruct service_name: "",
            rollout: nil

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :rollout, 2, type: Google.Api.Servicemanagement.V1.Rollout, deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.ListServiceRolloutsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          page_token: String.t(),
          page_size: integer,
          filter: String.t()
        }

  defstruct service_name: "",
            page_token: "",
            page_size: 0,
            filter: ""

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :filter, 4, type: :string, deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.ListServiceRolloutsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollouts: [Google.Api.Servicemanagement.V1.Rollout.t()],
          next_page_token: String.t()
        }

  defstruct rollouts: [],
            next_page_token: ""

  field :rollouts, 1, repeated: true, type: Google.Api.Servicemanagement.V1.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Servicemanagement.V1.GetServiceRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          rollout_id: String.t()
        }

  defstruct service_name: "",
            rollout_id: ""

  field :service_name, 1, type: :string, json_name: "serviceName", deprecated: false
  field :rollout_id, 2, type: :string, json_name: "rolloutId", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.GenerateConfigReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_config: Google.Protobuf.Any.t() | nil,
          old_config: Google.Protobuf.Any.t() | nil
        }

  defstruct new_config: nil,
            old_config: nil

  field :new_config, 1, type: Google.Protobuf.Any, json_name: "newConfig", deprecated: false
  field :old_config, 2, type: Google.Protobuf.Any, json_name: "oldConfig", deprecated: false
end
defmodule Google.Api.Servicemanagement.V1.GenerateConfigReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          id: String.t(),
          change_reports: [Google.Api.Servicemanagement.V1.ChangeReport.t()],
          diagnostics: [Google.Api.Servicemanagement.V1.Diagnostic.t()]
        }

  defstruct service_name: "",
            id: "",
            change_reports: [],
            diagnostics: []

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :id, 2, type: :string

  field :change_reports, 3,
    repeated: true,
    type: Google.Api.Servicemanagement.V1.ChangeReport,
    json_name: "changeReports"

  field :diagnostics, 4, repeated: true, type: Google.Api.Servicemanagement.V1.Diagnostic
end
defmodule Google.Api.Servicemanagement.V1.ServiceManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.servicemanagement.v1.ServiceManager"

  rpc :ListServices,
      Google.Api.Servicemanagement.V1.ListServicesRequest,
      Google.Api.Servicemanagement.V1.ListServicesResponse

  rpc :GetService,
      Google.Api.Servicemanagement.V1.GetServiceRequest,
      Google.Api.Servicemanagement.V1.ManagedService

  rpc :CreateService,
      Google.Api.Servicemanagement.V1.CreateServiceRequest,
      Google.Longrunning.Operation

  rpc :DeleteService,
      Google.Api.Servicemanagement.V1.DeleteServiceRequest,
      Google.Longrunning.Operation

  rpc :UndeleteService,
      Google.Api.Servicemanagement.V1.UndeleteServiceRequest,
      Google.Longrunning.Operation

  rpc :ListServiceConfigs,
      Google.Api.Servicemanagement.V1.ListServiceConfigsRequest,
      Google.Api.Servicemanagement.V1.ListServiceConfigsResponse

  rpc :GetServiceConfig,
      Google.Api.Servicemanagement.V1.GetServiceConfigRequest,
      Google.Api.Service

  rpc :CreateServiceConfig,
      Google.Api.Servicemanagement.V1.CreateServiceConfigRequest,
      Google.Api.Service

  rpc :SubmitConfigSource,
      Google.Api.Servicemanagement.V1.SubmitConfigSourceRequest,
      Google.Longrunning.Operation

  rpc :ListServiceRollouts,
      Google.Api.Servicemanagement.V1.ListServiceRolloutsRequest,
      Google.Api.Servicemanagement.V1.ListServiceRolloutsResponse

  rpc :GetServiceRollout,
      Google.Api.Servicemanagement.V1.GetServiceRolloutRequest,
      Google.Api.Servicemanagement.V1.Rollout

  rpc :CreateServiceRollout,
      Google.Api.Servicemanagement.V1.CreateServiceRolloutRequest,
      Google.Longrunning.Operation

  rpc :GenerateConfigReport,
      Google.Api.Servicemanagement.V1.GenerateConfigReportRequest,
      Google.Api.Servicemanagement.V1.GenerateConfigReportResponse
end

defmodule Google.Api.Servicemanagement.V1.ServiceManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Servicemanagement.V1.ServiceManager.Service
end
