defmodule Google.Cloud.Retail.V2beta.Control do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          control:
            {:facet_spec, Google.Cloud.Retail.V2beta.SearchRequest.FacetSpec.t() | nil}
            | {:rule, Google.Cloud.Retail.V2beta.Rule.t() | nil},
          name: String.t(),
          display_name: String.t(),
          associated_serving_config_ids: [String.t()],
          solution_types: [Google.Cloud.Retail.V2beta.SolutionType.t()]
        }

  defstruct control: nil,
            name: "",
            display_name: "",
            associated_serving_config_ids: [],
            solution_types: []

  oneof :control, 0

  field :facet_spec, 3,
    type: Google.Cloud.Retail.V2beta.SearchRequest.FacetSpec,
    json_name: "facetSpec",
    oneof: 0

  field :rule, 4, type: Google.Cloud.Retail.V2beta.Rule, oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :associated_serving_config_ids, 5,
    repeated: true,
    type: :string,
    json_name: "associatedServingConfigIds",
    deprecated: false

  field :solution_types, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.SolutionType,
    json_name: "solutionTypes",
    enum: true,
    deprecated: false
end
