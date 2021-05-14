defmodule Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PROCESSING | :SUCCESSFUL | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :PROCESSING, 1

  field :SUCCESSFUL, 2

  field :FAILED, 3

  field :CANCELLED, 4
end

defmodule Google.Cloud.Vision.V1p3beta1.Product.KeyValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          product_category: String.t(),
          product_labels: [Google.Cloud.Vision.V1p3beta1.Product.KeyValue.t()]
        }

  defstruct [:name, :display_name, :description, :product_category, :product_labels]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :product_category, 4, type: :string
  field :product_labels, 5, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Product.KeyValue
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          index_time: Google.Protobuf.Timestamp.t() | nil,
          index_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:name, :display_name, :index_time, :index_error]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :index_time, 3, type: Google.Protobuf.Timestamp
  field :index_error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Vision.V1p3beta1.ReferenceImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uri: String.t(),
          bounding_polys: [Google.Cloud.Vision.V1p3beta1.BoundingPoly.t()]
        }

  defstruct [:name, :uri, :bounding_polys]

  field :name, 1, type: :string
  field :uri, 2, type: :string
  field :bounding_polys, 3, repeated: true, type: Google.Cloud.Vision.V1p3beta1.BoundingPoly
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product: Google.Cloud.Vision.V1p3beta1.Product.t() | nil,
          product_id: String.t()
        }

  defstruct [:parent, :product, :product_id]

  field :parent, 1, type: :string
  field :product, 2, type: Google.Cloud.Vision.V1p3beta1.Product
  field :product_id, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Vision.V1p3beta1.Product.t()],
          next_page_token: String.t()
        }

  defstruct [:products, :next_page_token]

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Product
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.GetProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.UpdateProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Vision.V1p3beta1.Product.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:product, :update_mask]

  field :product, 1, type: Google.Cloud.Vision.V1p3beta1.Product
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteProductRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          product_set: Google.Cloud.Vision.V1p3beta1.ProductSet.t() | nil,
          product_set_id: String.t()
        }

  defstruct [:parent, :product_set, :product_set_id]

  field :parent, 1, type: :string
  field :product_set, 2, type: Google.Cloud.Vision.V1p3beta1.ProductSet
  field :product_set_id, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_sets: [Google.Cloud.Vision.V1p3beta1.ProductSet.t()],
          next_page_token: String.t()
        }

  defstruct [:product_sets, :next_page_token]

  field :product_sets, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.ProductSet
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.GetProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.UpdateProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_set: Google.Cloud.Vision.V1p3beta1.ProductSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:product_set, :update_mask]

  field :product_set, 1, type: Google.Cloud.Vision.V1p3beta1.ProductSet
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.CreateReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          reference_image: Google.Cloud.Vision.V1p3beta1.ReferenceImage.t() | nil,
          reference_image_id: String.t()
        }

  defstruct [:parent, :reference_image, :reference_image_id]

  field :parent, 1, type: :string
  field :reference_image, 2, type: Google.Cloud.Vision.V1p3beta1.ReferenceImage
  field :reference_image_id, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListReferenceImagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListReferenceImagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_images: [Google.Cloud.Vision.V1p3beta1.ReferenceImage.t()],
          page_size: integer,
          next_page_token: String.t()
        }

  defstruct [:reference_images, :page_size, :next_page_token]

  field :reference_images, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.ReferenceImage
  field :page_size, 2, type: :int32
  field :next_page_token, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.GetReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.DeleteReferenceImageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.AddProductToProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          product: String.t()
        }

  defstruct [:name, :product]

  field :name, 1, type: :string
  field :product, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.RemoveProductFromProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          product: String.t()
        }

  defstruct [:name, :product]

  field :name, 1, type: :string
  field :product, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Vision.V1p3beta1.Product.t()],
          next_page_token: String.t()
        }

  defstruct [:products, :next_page_token]

  field :products, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.Product
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsGcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          csv_file_uri: String.t()
        }

  defstruct [:csv_file_uri]

  field :csv_file_uri, 1, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Vision.V1p3beta1.ImportProductSetsGcsSource, oneof: 0
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input_config: Google.Cloud.Vision.V1p3beta1.ImportProductSetsInputConfig.t() | nil
        }

  defstruct [:parent, :input_config]

  field :parent, 1, type: :string
  field :input_config, 2, type: Google.Cloud.Vision.V1p3beta1.ImportProductSetsInputConfig
end

defmodule Google.Cloud.Vision.V1p3beta1.ImportProductSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_images: [Google.Cloud.Vision.V1p3beta1.ReferenceImage.t()],
          statuses: [Google.Rpc.Status.t()]
        }

  defstruct [:reference_images, :statuses]

  field :reference_images, 1, repeated: true, type: Google.Cloud.Vision.V1p3beta1.ReferenceImage
  field :statuses, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata.State.t(),
          submit_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :submit_time, :end_time]

  field :state, 1, type: Google.Cloud.Vision.V1p3beta1.BatchOperationMetadata.State, enum: true
  field :submit_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearch.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.vision.v1p3beta1.ProductSearch"

  rpc :CreateProductSet,
      Google.Cloud.Vision.V1p3beta1.CreateProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :ListProductSets,
      Google.Cloud.Vision.V1p3beta1.ListProductSetsRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductSetsResponse

  rpc :GetProductSet,
      Google.Cloud.Vision.V1p3beta1.GetProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :UpdateProductSet,
      Google.Cloud.Vision.V1p3beta1.UpdateProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ProductSet

  rpc :DeleteProductSet,
      Google.Cloud.Vision.V1p3beta1.DeleteProductSetRequest,
      Google.Protobuf.Empty

  rpc :CreateProduct,
      Google.Cloud.Vision.V1p3beta1.CreateProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :ListProducts,
      Google.Cloud.Vision.V1p3beta1.ListProductsRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductsResponse

  rpc :GetProduct,
      Google.Cloud.Vision.V1p3beta1.GetProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :UpdateProduct,
      Google.Cloud.Vision.V1p3beta1.UpdateProductRequest,
      Google.Cloud.Vision.V1p3beta1.Product

  rpc :DeleteProduct, Google.Cloud.Vision.V1p3beta1.DeleteProductRequest, Google.Protobuf.Empty

  rpc :CreateReferenceImage,
      Google.Cloud.Vision.V1p3beta1.CreateReferenceImageRequest,
      Google.Cloud.Vision.V1p3beta1.ReferenceImage

  rpc :DeleteReferenceImage,
      Google.Cloud.Vision.V1p3beta1.DeleteReferenceImageRequest,
      Google.Protobuf.Empty

  rpc :ListReferenceImages,
      Google.Cloud.Vision.V1p3beta1.ListReferenceImagesRequest,
      Google.Cloud.Vision.V1p3beta1.ListReferenceImagesResponse

  rpc :GetReferenceImage,
      Google.Cloud.Vision.V1p3beta1.GetReferenceImageRequest,
      Google.Cloud.Vision.V1p3beta1.ReferenceImage

  rpc :AddProductToProductSet,
      Google.Cloud.Vision.V1p3beta1.AddProductToProductSetRequest,
      Google.Protobuf.Empty

  rpc :RemoveProductFromProductSet,
      Google.Cloud.Vision.V1p3beta1.RemoveProductFromProductSetRequest,
      Google.Protobuf.Empty

  rpc :ListProductsInProductSet,
      Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetRequest,
      Google.Cloud.Vision.V1p3beta1.ListProductsInProductSetResponse

  rpc :ImportProductSets,
      Google.Cloud.Vision.V1p3beta1.ImportProductSetsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearch.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Vision.V1p3beta1.ProductSearch.Service
end
