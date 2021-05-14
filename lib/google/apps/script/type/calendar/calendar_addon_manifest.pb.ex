defmodule Google.Apps.Script.Type.Calendar.CalendarAddOnManifest.EventAccess do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :METADATA | :READ | :WRITE | :READ_WRITE

  field :UNSPECIFIED, 0

  field :METADATA, 1

  field :READ, 3

  field :WRITE, 4

  field :READ_WRITE, 5
end

defmodule Google.Apps.Script.Type.Calendar.CalendarAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          conference_solution: [Google.Apps.Script.Type.Calendar.ConferenceSolution.t()],
          create_settings_url_function: String.t(),
          event_open_trigger: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint.t() | nil,
          event_update_trigger: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint.t() | nil,
          current_event_access:
            Google.Apps.Script.Type.Calendar.CalendarAddOnManifest.EventAccess.t()
        }

  defstruct [
    :homepage_trigger,
    :conference_solution,
    :create_settings_url_function,
    :event_open_trigger,
    :event_update_trigger,
    :current_event_access
  ]

  field :homepage_trigger, 6, type: Google.Apps.Script.Type.HomepageExtensionPoint

  field :conference_solution, 3,
    repeated: true,
    type: Google.Apps.Script.Type.Calendar.ConferenceSolution

  field :create_settings_url_function, 5, type: :string
  field :event_open_trigger, 10, type: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint
  field :event_update_trigger, 11, type: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint

  field :current_event_access, 12,
    type: Google.Apps.Script.Type.Calendar.CalendarAddOnManifest.EventAccess,
    enum: true
end

defmodule Google.Apps.Script.Type.Calendar.ConferenceSolution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_create_function: String.t(),
          id: String.t(),
          name: String.t(),
          logo_url: String.t()
        }

  defstruct [:on_create_function, :id, :name, :logo_url]

  field :on_create_function, 1, type: :string
  field :id, 4, type: :string
  field :name, 5, type: :string
  field :logo_url, 6, type: :string
end

defmodule Google.Apps.Script.Type.Calendar.CalendarExtensionPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          run_function: String.t()
        }

  defstruct [:run_function]

  field :run_function, 1, type: :string
end
