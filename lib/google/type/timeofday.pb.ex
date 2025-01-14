defmodule Google.Type.TimeOfDay do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hours: integer,
          minutes: integer,
          seconds: integer,
          nanos: integer
        }

  defstruct hours: 0,
            minutes: 0,
            seconds: 0,
            nanos: 0

  field :hours, 1, type: :int32
  field :minutes, 2, type: :int32
  field :seconds, 3, type: :int32
  field :nanos, 4, type: :int32
end
