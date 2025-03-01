defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.CollectionBrowseItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          footer: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil,
          open_uri_action: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl.t() | nil
        }

  defstruct title: "",
            description: "",
            footer: "",
            image: nil,
            open_uri_action: nil

  field :title, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :footer, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt

  field :open_uri_action, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl,
    json_name: "openUriAction",
    deprecated: false
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.CollectionBrowseItem.t()
          ],
          image_fill:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill.t()
        }

  defstruct items: [],
            image_fill: :UNSPECIFIED

  field :items, 1,
    repeated: true,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.CollectionBrowseItem

  field :image_fill, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill,
    json_name: "imageFill",
    enum: true
end
