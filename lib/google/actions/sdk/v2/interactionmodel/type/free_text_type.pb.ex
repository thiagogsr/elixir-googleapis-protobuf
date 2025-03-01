defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.FreeTextType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay.t() | nil
        }

  defstruct display: nil

  field :display, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay,
    deprecated: false
end
