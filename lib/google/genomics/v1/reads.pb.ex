defmodule Google.Genomics.V1.ImportReadGroupSetsRequest.PartitionStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PARTITION_STRATEGY_UNSPECIFIED | :PER_FILE_PER_SAMPLE | :MERGE_ALL

  field :PARTITION_STRATEGY_UNSPECIFIED, 0
  field :PER_FILE_PER_SAMPLE, 1
  field :MERGE_ALL, 2
end
defmodule Google.Genomics.V1.SearchReadGroupSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_ids: [String.t()],
          name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct dataset_ids: [],
            name: "",
            page_token: "",
            page_size: 0

  field :dataset_ids, 1, repeated: true, type: :string, json_name: "datasetIds"
  field :name, 3, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end
defmodule Google.Genomics.V1.SearchReadGroupSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_sets: [Google.Genomics.V1.ReadGroupSet.t()],
          next_page_token: String.t()
        }

  defstruct read_group_sets: [],
            next_page_token: ""

  field :read_group_sets, 1,
    repeated: true,
    type: Google.Genomics.V1.ReadGroupSet,
    json_name: "readGroupSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Genomics.V1.ImportReadGroupSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t(),
          reference_set_id: String.t(),
          source_uris: [String.t()],
          partition_strategy: Google.Genomics.V1.ImportReadGroupSetsRequest.PartitionStrategy.t()
        }

  defstruct dataset_id: "",
            reference_set_id: "",
            source_uris: [],
            partition_strategy: :PARTITION_STRATEGY_UNSPECIFIED

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :reference_set_id, 4, type: :string, json_name: "referenceSetId"
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"

  field :partition_strategy, 5,
    type: Google.Genomics.V1.ImportReadGroupSetsRequest.PartitionStrategy,
    json_name: "partitionStrategy",
    enum: true
end
defmodule Google.Genomics.V1.ImportReadGroupSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_ids: [String.t()]
        }

  defstruct read_group_set_ids: []

  field :read_group_set_ids, 1, repeated: true, type: :string, json_name: "readGroupSetIds"
end
defmodule Google.Genomics.V1.ExportReadGroupSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          export_uri: String.t(),
          read_group_set_id: String.t(),
          reference_names: [String.t()]
        }

  defstruct project_id: "",
            export_uri: "",
            read_group_set_id: "",
            reference_names: []

  field :project_id, 1, type: :string, json_name: "projectId"
  field :export_uri, 2, type: :string, json_name: "exportUri"
  field :read_group_set_id, 3, type: :string, json_name: "readGroupSetId"
  field :reference_names, 4, repeated: true, type: :string, json_name: "referenceNames"
end
defmodule Google.Genomics.V1.UpdateReadGroupSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_id: String.t(),
          read_group_set: Google.Genomics.V1.ReadGroupSet.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct read_group_set_id: "",
            read_group_set: nil,
            update_mask: nil

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
  field :read_group_set, 2, type: Google.Genomics.V1.ReadGroupSet, json_name: "readGroupSet"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Genomics.V1.DeleteReadGroupSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_id: String.t()
        }

  defstruct read_group_set_id: ""

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
end
defmodule Google.Genomics.V1.GetReadGroupSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_id: String.t()
        }

  defstruct read_group_set_id: ""

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
end
defmodule Google.Genomics.V1.ListCoverageBucketsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_id: String.t(),
          reference_name: String.t(),
          start: integer,
          end: integer,
          target_bucket_width: integer,
          page_token: String.t(),
          page_size: integer
        }

  defstruct read_group_set_id: "",
            reference_name: "",
            start: 0,
            end: 0,
            target_bucket_width: 0,
            page_token: "",
            page_size: 0

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
  field :reference_name, 3, type: :string, json_name: "referenceName"
  field :start, 4, type: :int64
  field :end, 5, type: :int64
  field :target_bucket_width, 6, type: :int64, json_name: "targetBucketWidth"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end
defmodule Google.Genomics.V1.CoverageBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          range: Google.Genomics.V1.Range.t() | nil,
          mean_coverage: float | :infinity | :negative_infinity | :nan
        }

  defstruct range: nil,
            mean_coverage: 0.0

  field :range, 1, type: Google.Genomics.V1.Range
  field :mean_coverage, 2, type: :float, json_name: "meanCoverage"
end
defmodule Google.Genomics.V1.ListCoverageBucketsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_width: integer,
          coverage_buckets: [Google.Genomics.V1.CoverageBucket.t()],
          next_page_token: String.t()
        }

  defstruct bucket_width: 0,
            coverage_buckets: [],
            next_page_token: ""

  field :bucket_width, 1, type: :int64, json_name: "bucketWidth"

  field :coverage_buckets, 2,
    repeated: true,
    type: Google.Genomics.V1.CoverageBucket,
    json_name: "coverageBuckets"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Genomics.V1.SearchReadsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_group_set_ids: [String.t()],
          read_group_ids: [String.t()],
          reference_name: String.t(),
          start: integer,
          end: integer,
          page_token: String.t(),
          page_size: integer
        }

  defstruct read_group_set_ids: [],
            read_group_ids: [],
            reference_name: "",
            start: 0,
            end: 0,
            page_token: "",
            page_size: 0

  field :read_group_set_ids, 1, repeated: true, type: :string, json_name: "readGroupSetIds"
  field :read_group_ids, 5, repeated: true, type: :string, json_name: "readGroupIds"
  field :reference_name, 7, type: :string, json_name: "referenceName"
  field :start, 8, type: :int64
  field :end, 9, type: :int64
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end
defmodule Google.Genomics.V1.SearchReadsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alignments: [Google.Genomics.V1.Read.t()],
          next_page_token: String.t()
        }

  defstruct alignments: [],
            next_page_token: ""

  field :alignments, 1, repeated: true, type: Google.Genomics.V1.Read
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Genomics.V1.StreamReadsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          read_group_set_id: String.t(),
          reference_name: String.t(),
          start: integer,
          end: integer,
          shard: integer,
          total_shards: integer
        }

  defstruct project_id: "",
            read_group_set_id: "",
            reference_name: "",
            start: 0,
            end: 0,
            shard: 0,
            total_shards: 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :read_group_set_id, 2, type: :string, json_name: "readGroupSetId"
  field :reference_name, 3, type: :string, json_name: "referenceName"
  field :start, 4, type: :int64
  field :end, 5, type: :int64
  field :shard, 6, type: :int32
  field :total_shards, 7, type: :int32, json_name: "totalShards"
end
defmodule Google.Genomics.V1.StreamReadsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alignments: [Google.Genomics.V1.Read.t()]
        }

  defstruct alignments: []

  field :alignments, 1, repeated: true, type: Google.Genomics.V1.Read
end
defmodule Google.Genomics.V1.StreamingReadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.genomics.v1.StreamingReadService"

  rpc :StreamReads,
      Google.Genomics.V1.StreamReadsRequest,
      stream(Google.Genomics.V1.StreamReadsResponse)
end

defmodule Google.Genomics.V1.StreamingReadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Genomics.V1.StreamingReadService.Service
end
defmodule Google.Genomics.V1.ReadServiceV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.genomics.v1.ReadServiceV1"

  rpc :ImportReadGroupSets,
      Google.Genomics.V1.ImportReadGroupSetsRequest,
      Google.Longrunning.Operation

  rpc :ExportReadGroupSet,
      Google.Genomics.V1.ExportReadGroupSetRequest,
      Google.Longrunning.Operation

  rpc :SearchReadGroupSets,
      Google.Genomics.V1.SearchReadGroupSetsRequest,
      Google.Genomics.V1.SearchReadGroupSetsResponse

  rpc :UpdateReadGroupSet,
      Google.Genomics.V1.UpdateReadGroupSetRequest,
      Google.Genomics.V1.ReadGroupSet

  rpc :DeleteReadGroupSet, Google.Genomics.V1.DeleteReadGroupSetRequest, Google.Protobuf.Empty

  rpc :GetReadGroupSet, Google.Genomics.V1.GetReadGroupSetRequest, Google.Genomics.V1.ReadGroupSet

  rpc :ListCoverageBuckets,
      Google.Genomics.V1.ListCoverageBucketsRequest,
      Google.Genomics.V1.ListCoverageBucketsResponse

  rpc :SearchReads, Google.Genomics.V1.SearchReadsRequest, Google.Genomics.V1.SearchReadsResponse
end

defmodule Google.Genomics.V1.ReadServiceV1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Genomics.V1.ReadServiceV1.Service
end
