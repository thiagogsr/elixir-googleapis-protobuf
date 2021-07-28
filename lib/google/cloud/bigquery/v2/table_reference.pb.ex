defmodule Google.Cloud.Bigquery.V2.TableReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t(),
          project_id_alternative: [String.t()],
          dataset_id_alternative: [String.t()],
          table_id_alternative: [String.t()]
        }

  defstruct [
    :project_id,
    :dataset_id,
    :table_id,
    :project_id_alternative,
    :dataset_id_alternative,
    :table_id_alternative
  ]

  field :project_id, 1, type: :string
  field :dataset_id, 2, type: :string
  field :table_id, 3, type: :string
  field :project_id_alternative, 4, repeated: true, type: :string
  field :dataset_id_alternative, 5, repeated: true, type: :string
  field :table_id_alternative, 6, repeated: true, type: :string
end
