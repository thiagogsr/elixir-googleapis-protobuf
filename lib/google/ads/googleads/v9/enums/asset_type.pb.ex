defmodule Google.Ads.Googleads.V9.Enums.AssetTypeEnum.AssetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :YOUTUBE_VIDEO
          | :MEDIA_BUNDLE
          | :IMAGE
          | :TEXT
          | :LEAD_FORM
          | :BOOK_ON_GOOGLE
          | :PROMOTION
          | :CALLOUT
          | :STRUCTURED_SNIPPET
          | :SITELINK
          | :PAGE_FEED
          | :DYNAMIC_EDUCATION
          | :MOBILE_APP
          | :HOTEL_CALLOUT
          | :CALL
          | :PRICE
          | :CALL_TO_ACTION

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :YOUTUBE_VIDEO, 2
  field :MEDIA_BUNDLE, 3
  field :IMAGE, 4
  field :TEXT, 5
  field :LEAD_FORM, 6
  field :BOOK_ON_GOOGLE, 7
  field :PROMOTION, 8
  field :CALLOUT, 9
  field :STRUCTURED_SNIPPET, 10
  field :SITELINK, 11
  field :PAGE_FEED, 12
  field :DYNAMIC_EDUCATION, 13
  field :MOBILE_APP, 14
  field :HOTEL_CALLOUT, 15
  field :CALL, 16
  field :PRICE, 17
  field :CALL_TO_ACTION, 18
end
defmodule Google.Ads.Googleads.V9.Enums.AssetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
