defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageDataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t(),
          mime_type: String.t()
        }

  defstruct gcs_uri: "",
            mime_type: ""

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoDataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t(),
          mime_type: String.t()
        }

  defstruct gcs_uri: "",
            mime_type: ""

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextDataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t()
        }

  defstruct gcs_uri: ""

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
end
