defmodule Google.Cloud.Retail.V2alpha.Product.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :PRIMARY | :VARIANT | :COLLECTION

  field :TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :VARIANT, 2
  field :COLLECTION, 3
end
defmodule Google.Cloud.Retail.V2alpha.Product.Availability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :AVAILABILITY_UNSPECIFIED | :IN_STOCK | :OUT_OF_STOCK | :PREORDER | :BACKORDER

  field :AVAILABILITY_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :OUT_OF_STOCK, 2
  field :PREORDER, 3
  field :BACKORDER, 4
end
defmodule Google.Cloud.Retail.V2alpha.Product.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CustomAttribute
end
defmodule Google.Cloud.Retail.V2alpha.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expiration:
            {:expire_time, Google.Protobuf.Timestamp.t() | nil}
            | {:ttl, Google.Protobuf.Duration.t() | nil},
          name: String.t(),
          id: String.t(),
          type: Google.Cloud.Retail.V2alpha.Product.Type.t(),
          primary_product_id: String.t(),
          collection_member_ids: [String.t()],
          gtin: String.t(),
          categories: [String.t()],
          title: String.t(),
          brands: [String.t()],
          description: String.t(),
          language_code: String.t(),
          attributes: %{String.t() => Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil},
          tags: [String.t()],
          price_info: Google.Cloud.Retail.V2alpha.PriceInfo.t() | nil,
          rating: Google.Cloud.Retail.V2alpha.Rating.t() | nil,
          available_time: Google.Protobuf.Timestamp.t() | nil,
          availability: Google.Cloud.Retail.V2alpha.Product.Availability.t(),
          available_quantity: Google.Protobuf.Int32Value.t() | nil,
          fulfillment_info: [Google.Cloud.Retail.V2alpha.FulfillmentInfo.t()],
          uri: String.t(),
          images: [Google.Cloud.Retail.V2alpha.Image.t()],
          audience: Google.Cloud.Retail.V2alpha.Audience.t() | nil,
          color_info: Google.Cloud.Retail.V2alpha.ColorInfo.t() | nil,
          sizes: [String.t()],
          materials: [String.t()],
          patterns: [String.t()],
          conditions: [String.t()],
          promotions: [Google.Cloud.Retail.V2alpha.Promotion.t()],
          publish_time: Google.Protobuf.Timestamp.t() | nil,
          retrievable_fields: Google.Protobuf.FieldMask.t() | nil,
          variants: [Google.Cloud.Retail.V2alpha.Product.t()]
        }

  defstruct expiration: nil,
            name: "",
            id: "",
            type: :TYPE_UNSPECIFIED,
            primary_product_id: "",
            collection_member_ids: [],
            gtin: "",
            categories: [],
            title: "",
            brands: [],
            description: "",
            language_code: "",
            attributes: %{},
            tags: [],
            price_info: nil,
            rating: nil,
            available_time: nil,
            availability: :AVAILABILITY_UNSPECIFIED,
            available_quantity: nil,
            fulfillment_info: [],
            uri: "",
            images: [],
            audience: nil,
            color_info: nil,
            sizes: [],
            materials: [],
            patterns: [],
            conditions: [],
            promotions: [],
            publish_time: nil,
            retrievable_fields: nil,
            variants: []

  oneof :expiration, 0

  field :expire_time, 16, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 17, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :type, 3, type: Google.Cloud.Retail.V2alpha.Product.Type, enum: true, deprecated: false
  field :primary_product_id, 4, type: :string, json_name: "primaryProductId"
  field :collection_member_ids, 5, repeated: true, type: :string, json_name: "collectionMemberIds"
  field :gtin, 6, type: :string
  field :categories, 7, repeated: true, type: :string
  field :title, 8, type: :string, deprecated: false
  field :brands, 9, repeated: true, type: :string
  field :description, 10, type: :string
  field :language_code, 11, type: :string, json_name: "languageCode"

  field :attributes, 12,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product.AttributesEntry,
    map: true

  field :tags, 13, repeated: true, type: :string
  field :price_info, 14, type: Google.Cloud.Retail.V2alpha.PriceInfo, json_name: "priceInfo"
  field :rating, 15, type: Google.Cloud.Retail.V2alpha.Rating
  field :available_time, 18, type: Google.Protobuf.Timestamp, json_name: "availableTime"
  field :availability, 19, type: Google.Cloud.Retail.V2alpha.Product.Availability, enum: true
  field :available_quantity, 20, type: Google.Protobuf.Int32Value, json_name: "availableQuantity"

  field :fulfillment_info, 21,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.FulfillmentInfo,
    json_name: "fulfillmentInfo"

  field :uri, 22, type: :string
  field :images, 23, repeated: true, type: Google.Cloud.Retail.V2alpha.Image
  field :audience, 24, type: Google.Cloud.Retail.V2alpha.Audience
  field :color_info, 25, type: Google.Cloud.Retail.V2alpha.ColorInfo, json_name: "colorInfo"
  field :sizes, 26, repeated: true, type: :string
  field :materials, 27, repeated: true, type: :string
  field :patterns, 28, repeated: true, type: :string
  field :conditions, 29, repeated: true, type: :string
  field :promotions, 34, repeated: true, type: Google.Cloud.Retail.V2alpha.Promotion
  field :publish_time, 33, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :retrievable_fields, 30, type: Google.Protobuf.FieldMask, json_name: "retrievableFields"

  field :variants, 31,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product,
    deprecated: false
end
