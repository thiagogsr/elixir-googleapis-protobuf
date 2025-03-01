defmodule Google.Ads.Googleads.V10.Enums.AsyncActionStatusEnum.AsyncActionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NOT_STARTED
          | :IN_PROGRESS
          | :COMPLETED
          | :FAILED
          | :COMPLETED_WITH_WARNING

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NOT_STARTED, 2
  field :IN_PROGRESS, 3
  field :COMPLETED, 4
  field :FAILED, 5
  field :COMPLETED_WITH_WARNING, 6
end
defmodule Google.Ads.Googleads.V10.Enums.AsyncActionStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
