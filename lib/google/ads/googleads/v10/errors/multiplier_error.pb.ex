defmodule Google.Ads.Googleads.V10.Errors.MultiplierErrorEnum.MultiplierError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :MULTIPLIER_TOO_HIGH
          | :MULTIPLIER_TOO_LOW
          | :TOO_MANY_FRACTIONAL_DIGITS
          | :MULTIPLIER_NOT_ALLOWED_FOR_BIDDING_STRATEGY
          | :MULTIPLIER_NOT_ALLOWED_WHEN_BASE_BID_IS_MISSING
          | :NO_MULTIPLIER_SPECIFIED
          | :MULTIPLIER_CAUSES_BID_TO_EXCEED_DAILY_BUDGET
          | :MULTIPLIER_CAUSES_BID_TO_EXCEED_MONTHLY_BUDGET
          | :MULTIPLIER_CAUSES_BID_TO_EXCEED_CUSTOM_BUDGET
          | :MULTIPLIER_CAUSES_BID_TO_EXCEED_MAX_ALLOWED_BID
          | :BID_LESS_THAN_MIN_ALLOWED_BID_WITH_MULTIPLIER
          | :MULTIPLIER_AND_BIDDING_STRATEGY_TYPE_MISMATCH

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MULTIPLIER_TOO_HIGH, 2
  field :MULTIPLIER_TOO_LOW, 3
  field :TOO_MANY_FRACTIONAL_DIGITS, 4
  field :MULTIPLIER_NOT_ALLOWED_FOR_BIDDING_STRATEGY, 5
  field :MULTIPLIER_NOT_ALLOWED_WHEN_BASE_BID_IS_MISSING, 6
  field :NO_MULTIPLIER_SPECIFIED, 7
  field :MULTIPLIER_CAUSES_BID_TO_EXCEED_DAILY_BUDGET, 8
  field :MULTIPLIER_CAUSES_BID_TO_EXCEED_MONTHLY_BUDGET, 9
  field :MULTIPLIER_CAUSES_BID_TO_EXCEED_CUSTOM_BUDGET, 10
  field :MULTIPLIER_CAUSES_BID_TO_EXCEED_MAX_ALLOWED_BID, 11
  field :BID_LESS_THAN_MIN_ALLOWED_BID_WITH_MULTIPLIER, 12
  field :MULTIPLIER_AND_BIDDING_STRATEGY_TYPE_MISMATCH, 13
end
defmodule Google.Ads.Googleads.V10.Errors.MultiplierErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
