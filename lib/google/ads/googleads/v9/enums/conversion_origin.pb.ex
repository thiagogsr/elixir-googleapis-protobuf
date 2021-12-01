defmodule Google.Ads.Googleads.V9.Enums.ConversionOriginEnum.ConversionOrigin do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :WEBSITE
          | :GOOGLE_HOSTED
          | :APP
          | :CALL_FROM_ADS
          | :STORE
          | :YOUTUBE_HOSTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :WEBSITE, 2
  field :GOOGLE_HOSTED, 3
  field :APP, 4
  field :CALL_FROM_ADS, 5
  field :STORE, 6
  field :YOUTUBE_HOSTED, 7
end

defmodule Google.Ads.Googleads.V9.Enums.ConversionOriginEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end