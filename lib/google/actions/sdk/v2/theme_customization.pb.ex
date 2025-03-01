defmodule Google.Actions.Sdk.V2.ThemeCustomization.ImageCornerStyle do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :IMAGE_CORNER_STYLE_UNSPECIFIED | :CURVED | :ANGLED

  field :IMAGE_CORNER_STYLE_UNSPECIFIED, 0
  field :CURVED, 1
  field :ANGLED, 2
end
defmodule Google.Actions.Sdk.V2.ThemeCustomization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          background_color: String.t(),
          primary_color: String.t(),
          font_family: String.t(),
          image_corner_style: Google.Actions.Sdk.V2.ThemeCustomization.ImageCornerStyle.t(),
          landscape_background_image: String.t(),
          portrait_background_image: String.t()
        }

  defstruct background_color: "",
            primary_color: "",
            font_family: "",
            image_corner_style: :IMAGE_CORNER_STYLE_UNSPECIFIED,
            landscape_background_image: "",
            portrait_background_image: ""

  field :background_color, 1, type: :string, json_name: "backgroundColor"
  field :primary_color, 2, type: :string, json_name: "primaryColor"
  field :font_family, 3, type: :string, json_name: "fontFamily"

  field :image_corner_style, 4,
    type: Google.Actions.Sdk.V2.ThemeCustomization.ImageCornerStyle,
    json_name: "imageCornerStyle",
    enum: true

  field :landscape_background_image, 5, type: :string, json_name: "landscapeBackgroundImage"
  field :portrait_background_image, 6, type: :string, json_name: "portraitBackgroundImage"
end
