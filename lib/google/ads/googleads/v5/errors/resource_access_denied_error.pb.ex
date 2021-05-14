defmodule Google.Ads.Googleads.V5.Errors.ResourceAccessDeniedErrorEnum.ResourceAccessDeniedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :WRITE_ACCESS_DENIED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :WRITE_ACCESS_DENIED, 3
end

defmodule Google.Ads.Googleads.V5.Errors.ResourceAccessDeniedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
