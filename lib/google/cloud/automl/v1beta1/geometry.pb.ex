defmodule Google.Cloud.Automl.V1beta1.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.BoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_vertices: [Google.Cloud.Automl.V1beta1.NormalizedVertex.t()]
        }

  defstruct [:normalized_vertices]

  field :normalized_vertices, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.NormalizedVertex
end
