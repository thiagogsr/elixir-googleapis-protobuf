defmodule Google.Ads.Googleads.V10.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :RETRACTION | :RESTATEMENT | :ENHANCEMENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RETRACTION, 2
  field :RESTATEMENT, 3
  field :ENHANCEMENT, 4
end
defmodule Google.Ads.Googleads.V10.Enums.ConversionAdjustmentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
