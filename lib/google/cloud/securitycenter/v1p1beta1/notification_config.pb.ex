defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :FINDING

  field :EVENT_TYPE_UNSPECIFIED, 0

  field :FINDING, 1
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.StreamingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t()
        }

  defstruct [:filter]

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notify_config: {atom, any},
          name: String.t(),
          description: String.t(),
          event_type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.EventType.t(),
          pubsub_topic: String.t(),
          service_account: String.t()
        }

  defstruct [:notify_config, :name, :description, :event_type, :pubsub_topic, :service_account]

  oneof :notify_config, 0
  field :name, 1, type: :string
  field :description, 2, type: :string

  field :event_type, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.EventType,
    enum: true

  field :pubsub_topic, 4, type: :string
  field :service_account, 5, type: :string

  field :streaming_config, 6,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.StreamingConfig,
    oneof: 0
end
