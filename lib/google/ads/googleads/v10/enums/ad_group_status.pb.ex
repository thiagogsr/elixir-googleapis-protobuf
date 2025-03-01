defmodule Google.Ads.Googleads.V10.Enums.AdGroupStatusEnum.AdGroupStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :PAUSED | :REMOVED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :PAUSED, 3
  field :REMOVED, 4
end
defmodule Google.Ads.Googleads.V10.Enums.AdGroupStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
