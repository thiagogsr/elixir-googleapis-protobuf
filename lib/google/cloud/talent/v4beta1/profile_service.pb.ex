defmodule Google.Cloud.Talent.V4beta1.ListProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer,
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_token, :page_size, :read_mask]

  field :parent, 1, type: :string
  field :filter, 5, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
  field :read_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4beta1.ListProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profiles: [Google.Cloud.Talent.V4beta1.Profile.t()],
          next_page_token: String.t()
        }

  defstruct [:profiles, :next_page_token]

  field :profiles, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Profile
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.CreateProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          profile: Google.Cloud.Talent.V4beta1.Profile.t() | nil
        }

  defstruct [:parent, :profile]

  field :parent, 1, type: :string
  field :profile, 2, type: Google.Cloud.Talent.V4beta1.Profile
end

defmodule Google.Cloud.Talent.V4beta1.GetProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.UpdateProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile: Google.Cloud.Talent.V4beta1.Profile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:profile, :update_mask]

  field :profile, 1, type: Google.Cloud.Talent.V4beta1.Profile
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4beta1.DeleteProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.SearchProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          request_metadata: Google.Cloud.Talent.V4beta1.RequestMetadata.t() | nil,
          profile_query: Google.Cloud.Talent.V4beta1.ProfileQuery.t() | nil,
          page_size: integer,
          page_token: String.t(),
          offset: integer,
          disable_spell_check: boolean,
          order_by: String.t(),
          case_sensitive_sort: boolean,
          histogram_queries: [Google.Cloud.Talent.V4beta1.HistogramQuery.t()],
          result_set_id: String.t(),
          strict_keywords_search: boolean
        }

  defstruct [
    :parent,
    :request_metadata,
    :profile_query,
    :page_size,
    :page_token,
    :offset,
    :disable_spell_check,
    :order_by,
    :case_sensitive_sort,
    :histogram_queries,
    :result_set_id,
    :strict_keywords_search
  ]

  field :parent, 1, type: :string
  field :request_metadata, 2, type: Google.Cloud.Talent.V4beta1.RequestMetadata
  field :profile_query, 3, type: Google.Cloud.Talent.V4beta1.ProfileQuery
  field :page_size, 4, type: :int32
  field :page_token, 5, type: :string
  field :offset, 6, type: :int32
  field :disable_spell_check, 7, type: :bool
  field :order_by, 8, type: :string
  field :case_sensitive_sort, 9, type: :bool
  field :histogram_queries, 10, repeated: true, type: Google.Cloud.Talent.V4beta1.HistogramQuery
  field :result_set_id, 12, type: :string
  field :strict_keywords_search, 13, type: :bool
end

defmodule Google.Cloud.Talent.V4beta1.SearchProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          estimated_total_size: integer,
          spell_correction: Google.Cloud.Talent.V4beta1.SpellingCorrection.t() | nil,
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil,
          next_page_token: String.t(),
          histogram_query_results: [Google.Cloud.Talent.V4beta1.HistogramQueryResult.t()],
          summarized_profiles: [Google.Cloud.Talent.V4beta1.SummarizedProfile.t()],
          result_set_id: String.t()
        }

  defstruct [
    :estimated_total_size,
    :spell_correction,
    :metadata,
    :next_page_token,
    :histogram_query_results,
    :summarized_profiles,
    :result_set_id
  ]

  field :estimated_total_size, 1, type: :int64
  field :spell_correction, 2, type: Google.Cloud.Talent.V4beta1.SpellingCorrection
  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
  field :next_page_token, 4, type: :string

  field :histogram_query_results, 5,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQueryResult

  field :summarized_profiles, 6,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.SummarizedProfile

  field :result_set_id, 7, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.SummarizedProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profiles: [Google.Cloud.Talent.V4beta1.Profile.t()],
          summary: Google.Cloud.Talent.V4beta1.Profile.t() | nil
        }

  defstruct [:profiles, :summary]

  field :profiles, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Profile
  field :summary, 2, type: Google.Cloud.Talent.V4beta1.Profile
end
