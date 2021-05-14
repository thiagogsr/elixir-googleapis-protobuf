defmodule Google.Cloud.Documentai.V1.RawDocument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          mime_type: String.t()
        }

  defstruct [:content, :mime_type]

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1.GcsDocument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t(),
          mime_type: String.t()
        }

  defstruct [:gcs_uri, :mime_type]

  field :gcs_uri, 1, type: :string
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1.GcsDocuments do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Cloud.Documentai.V1.GcsDocument.t()]
        }

  defstruct [:documents]

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1.GcsDocument
end

defmodule Google.Cloud.Documentai.V1.GcsPrefix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri_prefix: String.t()
        }

  defstruct [:gcs_uri_prefix]

  field :gcs_uri_prefix, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1.BatchDocumentsInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_prefix, 1, type: Google.Cloud.Documentai.V1.GcsPrefix, oneof: 0
  field :gcs_documents, 2, type: Google.Cloud.Documentai.V1.GcsDocuments, oneof: 0
end

defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t()
        }

  defstruct [:gcs_uri]

  field :gcs_uri, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig,
    oneof: 0
end
