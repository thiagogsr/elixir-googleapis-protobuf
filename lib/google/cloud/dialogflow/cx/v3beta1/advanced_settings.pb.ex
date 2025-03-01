defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.LoggingSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_stackdriver_logging: boolean,
          enable_interaction_logging: boolean
        }

  defstruct enable_stackdriver_logging: false,
            enable_interaction_logging: false

  field :enable_stackdriver_logging, 2, type: :bool, json_name: "enableStackdriverLogging"
  field :enable_interaction_logging, 3, type: :bool, json_name: "enableInteractionLogging"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          logging_settings:
            Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.LoggingSettings.t() | nil
        }

  defstruct logging_settings: nil

  field :logging_settings, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.LoggingSettings,
    json_name: "loggingSettings"
end
