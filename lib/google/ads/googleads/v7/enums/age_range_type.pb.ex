defmodule Google.Ads.Googleads.V7.Enums.AgeRangeTypeEnum.AgeRangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :AGE_RANGE_18_24
          | :AGE_RANGE_25_34
          | :AGE_RANGE_35_44
          | :AGE_RANGE_45_54
          | :AGE_RANGE_55_64
          | :AGE_RANGE_65_UP
          | :AGE_RANGE_UNDETERMINED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :AGE_RANGE_18_24, 503_001
  field :AGE_RANGE_25_34, 503_002
  field :AGE_RANGE_35_44, 503_003
  field :AGE_RANGE_45_54, 503_004
  field :AGE_RANGE_55_64, 503_005
  field :AGE_RANGE_65_UP, 503_006
  field :AGE_RANGE_UNDETERMINED, 503_999
end
defmodule Google.Ads.Googleads.V7.Enums.AgeRangeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
