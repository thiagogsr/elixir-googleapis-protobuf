defmodule Google.Type.Fraction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          numerator: integer,
          denominator: integer
        }

  defstruct numerator: 0,
            denominator: 0

  field :numerator, 1, type: :int64
  field :denominator, 2, type: :int64
end
