defmodule Google.Cloud.Dataproc.V1.LoggingConfig.Level do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LEVEL_UNSPECIFIED
          | :ALL
          | :TRACE
          | :DEBUG
          | :INFO
          | :WARN
          | :ERROR
          | :FATAL
          | :OFF

  field :LEVEL_UNSPECIFIED, 0
  field :ALL, 1
  field :TRACE, 2
  field :DEBUG, 3
  field :INFO, 4
  field :WARN, 5
  field :ERROR, 6
  field :FATAL, 7
  field :OFF, 8
end
defmodule Google.Cloud.Dataproc.V1.JobStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :SETUP_DONE
          | :RUNNING
          | :CANCEL_PENDING
          | :CANCEL_STARTED
          | :CANCELLED
          | :DONE
          | :ERROR
          | :ATTEMPT_FAILURE

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :SETUP_DONE, 8
  field :RUNNING, 2
  field :CANCEL_PENDING, 3
  field :CANCEL_STARTED, 7
  field :CANCELLED, 4
  field :DONE, 5
  field :ERROR, 6
  field :ATTEMPT_FAILURE, 9
end
defmodule Google.Cloud.Dataproc.V1.JobStatus.Substate do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :SUBMITTED | :QUEUED | :STALE_STATUS

  field :UNSPECIFIED, 0
  field :SUBMITTED, 1
  field :QUEUED, 2
  field :STALE_STATUS, 3
end
defmodule Google.Cloud.Dataproc.V1.YarnApplication.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :NEW
          | :NEW_SAVING
          | :SUBMITTED
          | :ACCEPTED
          | :RUNNING
          | :FINISHED
          | :FAILED
          | :KILLED

  field :STATE_UNSPECIFIED, 0
  field :NEW, 1
  field :NEW_SAVING, 2
  field :SUBMITTED, 3
  field :ACCEPTED, 4
  field :RUNNING, 5
  field :FINISHED, 6
  field :FAILED, 7
  field :KILLED, 8
end
defmodule Google.Cloud.Dataproc.V1.ListJobsRequest.JobStateMatcher do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ALL | :ACTIVE | :NON_ACTIVE

  field :ALL, 0
  field :ACTIVE, 1
  field :NON_ACTIVE, 2
end
defmodule Google.Cloud.Dataproc.V1.LoggingConfig.DriverLogLevelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Dataproc.V1.LoggingConfig.Level.t()
        }

  defstruct key: "",
            value: :LEVEL_UNSPECIFIED

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dataproc.V1.LoggingConfig.Level, enum: true
end
defmodule Google.Cloud.Dataproc.V1.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver_log_levels: %{String.t() => Google.Cloud.Dataproc.V1.LoggingConfig.Level.t()}
        }

  defstruct driver_log_levels: %{}

  field :driver_log_levels, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.LoggingConfig.DriverLogLevelsEntry,
    json_name: "driverLogLevels",
    map: true
end
defmodule Google.Cloud.Dataproc.V1.HadoopJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.HadoopJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver: {:main_jar_file_uri, String.t()} | {:main_class, String.t()},
          args: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct driver: nil,
            args: [],
            jar_file_uris: [],
            file_uris: [],
            archive_uris: [],
            properties: %{},
            logging_config: nil

  oneof :driver, 0

  field :main_jar_file_uri, 1, type: :string, json_name: "mainJarFileUri", oneof: 0
  field :main_class, 2, type: :string, json_name: "mainClass", oneof: 0
  field :args, 3, repeated: true, type: :string, deprecated: false

  field :jar_file_uris, 4,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :file_uris, 5, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 6,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.HadoopJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :logging_config, 8,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.SparkJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver: {:main_jar_file_uri, String.t()} | {:main_class, String.t()},
          args: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct driver: nil,
            args: [],
            jar_file_uris: [],
            file_uris: [],
            archive_uris: [],
            properties: %{},
            logging_config: nil

  oneof :driver, 0

  field :main_jar_file_uri, 1, type: :string, json_name: "mainJarFileUri", oneof: 0
  field :main_class, 2, type: :string, json_name: "mainClass", oneof: 0
  field :args, 3, repeated: true, type: :string, deprecated: false

  field :jar_file_uris, 4,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :file_uris, 5, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 6,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SparkJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :logging_config, 8,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.PySparkJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.PySparkJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_python_file_uri: String.t(),
          args: [String.t()],
          python_file_uris: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct main_python_file_uri: "",
            args: [],
            python_file_uris: [],
            jar_file_uris: [],
            file_uris: [],
            archive_uris: [],
            properties: %{},
            logging_config: nil

  field :main_python_file_uri, 1, type: :string, json_name: "mainPythonFileUri", deprecated: false
  field :args, 2, repeated: true, type: :string, deprecated: false

  field :python_file_uris, 3,
    repeated: true,
    type: :string,
    json_name: "pythonFileUris",
    deprecated: false

  field :jar_file_uris, 4,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :file_uris, 5, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 6,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.PySparkJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :logging_config, 8,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.QueryList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: [String.t()]
        }

  defstruct queries: []

  field :queries, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.HiveJob.ScriptVariablesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.HiveJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.HiveJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries:
            {:query_file_uri, String.t()}
            | {:query_list, Google.Cloud.Dataproc.V1.QueryList.t() | nil},
          continue_on_failure: boolean,
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()]
        }

  defstruct queries: nil,
            continue_on_failure: false,
            script_variables: %{},
            properties: %{},
            jar_file_uris: []

  oneof :queries, 0

  field :query_file_uri, 1, type: :string, json_name: "queryFileUri", oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1.QueryList, json_name: "queryList", oneof: 0
  field :continue_on_failure, 3, type: :bool, json_name: "continueOnFailure", deprecated: false

  field :script_variables, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.HiveJob.ScriptVariablesEntry,
    json_name: "scriptVariables",
    map: true,
    deprecated: false

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.HiveJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :jar_file_uris, 6,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkSqlJob.ScriptVariablesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.SparkSqlJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.SparkSqlJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries:
            {:query_file_uri, String.t()}
            | {:query_list, Google.Cloud.Dataproc.V1.QueryList.t() | nil},
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()],
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct queries: nil,
            script_variables: %{},
            properties: %{},
            jar_file_uris: [],
            logging_config: nil

  oneof :queries, 0

  field :query_file_uri, 1, type: :string, json_name: "queryFileUri", oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1.QueryList, json_name: "queryList", oneof: 0

  field :script_variables, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SparkSqlJob.ScriptVariablesEntry,
    json_name: "scriptVariables",
    map: true,
    deprecated: false

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SparkSqlJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :jar_file_uris, 56,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :logging_config, 6,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.PigJob.ScriptVariablesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.PigJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.PigJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries:
            {:query_file_uri, String.t()}
            | {:query_list, Google.Cloud.Dataproc.V1.QueryList.t() | nil},
          continue_on_failure: boolean,
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()],
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct queries: nil,
            continue_on_failure: false,
            script_variables: %{},
            properties: %{},
            jar_file_uris: [],
            logging_config: nil

  oneof :queries, 0

  field :query_file_uri, 1, type: :string, json_name: "queryFileUri", oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1.QueryList, json_name: "queryList", oneof: 0
  field :continue_on_failure, 3, type: :bool, json_name: "continueOnFailure", deprecated: false

  field :script_variables, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.PigJob.ScriptVariablesEntry,
    json_name: "scriptVariables",
    map: true,
    deprecated: false

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.PigJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :jar_file_uris, 6,
    repeated: true,
    type: :string,
    json_name: "jarFileUris",
    deprecated: false

  field :logging_config, 7,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkRJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.SparkRJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_r_file_uri: String.t(),
          args: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct main_r_file_uri: "",
            args: [],
            file_uris: [],
            archive_uris: [],
            properties: %{},
            logging_config: nil

  field :main_r_file_uri, 1, type: :string, json_name: "mainRFileUri", deprecated: false
  field :args, 2, repeated: true, type: :string, deprecated: false
  field :file_uris, 3, repeated: true, type: :string, json_name: "fileUris", deprecated: false

  field :archive_uris, 4,
    repeated: true,
    type: :string,
    json_name: "archiveUris",
    deprecated: false

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SparkRJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :logging_config, 6,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.PrestoJob.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.PrestoJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries:
            {:query_file_uri, String.t()}
            | {:query_list, Google.Cloud.Dataproc.V1.QueryList.t() | nil},
          continue_on_failure: boolean,
          output_format: String.t(),
          client_tags: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1.LoggingConfig.t() | nil
        }

  defstruct queries: nil,
            continue_on_failure: false,
            output_format: "",
            client_tags: [],
            properties: %{},
            logging_config: nil

  oneof :queries, 0

  field :query_file_uri, 1, type: :string, json_name: "queryFileUri", oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1.QueryList, json_name: "queryList", oneof: 0
  field :continue_on_failure, 3, type: :bool, json_name: "continueOnFailure", deprecated: false
  field :output_format, 4, type: :string, json_name: "outputFormat", deprecated: false
  field :client_tags, 5, repeated: true, type: :string, json_name: "clientTags", deprecated: false

  field :properties, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.PrestoJob.PropertiesEntry,
    map: true,
    deprecated: false

  field :logging_config, 7,
    type: Google.Cloud.Dataproc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobPlacement.ClusterLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.JobPlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          cluster_uuid: String.t(),
          cluster_labels: %{String.t() => String.t()}
        }

  defstruct cluster_name: "",
            cluster_uuid: "",
            cluster_labels: %{}

  field :cluster_name, 1, type: :string, json_name: "clusterName", deprecated: false
  field :cluster_uuid, 2, type: :string, json_name: "clusterUuid", deprecated: false

  field :cluster_labels, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.JobPlacement.ClusterLabelsEntry,
    json_name: "clusterLabels",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1.JobStatus.State.t(),
          details: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil,
          substate: Google.Cloud.Dataproc.V1.JobStatus.Substate.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            details: "",
            state_start_time: nil,
            substate: :UNSPECIFIED

  field :state, 1, type: Google.Cloud.Dataproc.V1.JobStatus.State, enum: true, deprecated: false
  field :details, 2, type: :string, deprecated: false

  field :state_start_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "stateStartTime",
    deprecated: false

  field :substate, 7,
    type: Google.Cloud.Dataproc.V1.JobStatus.Substate,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t()
        }

  defstruct project_id: "",
            job_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.YarnApplication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Dataproc.V1.YarnApplication.State.t(),
          progress: float | :infinity | :negative_infinity | :nan,
          tracking_url: String.t()
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            progress: 0.0,
            tracking_url: ""

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Dataproc.V1.YarnApplication.State,
    enum: true,
    deprecated: false

  field :progress, 3, type: :float, deprecated: false
  field :tracking_url, 4, type: :string, json_name: "trackingUrl", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.Job.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type_job:
            {:hadoop_job, Google.Cloud.Dataproc.V1.HadoopJob.t() | nil}
            | {:spark_job, Google.Cloud.Dataproc.V1.SparkJob.t() | nil}
            | {:pyspark_job, Google.Cloud.Dataproc.V1.PySparkJob.t() | nil}
            | {:hive_job, Google.Cloud.Dataproc.V1.HiveJob.t() | nil}
            | {:pig_job, Google.Cloud.Dataproc.V1.PigJob.t() | nil}
            | {:spark_r_job, Google.Cloud.Dataproc.V1.SparkRJob.t() | nil}
            | {:spark_sql_job, Google.Cloud.Dataproc.V1.SparkSqlJob.t() | nil}
            | {:presto_job, Google.Cloud.Dataproc.V1.PrestoJob.t() | nil},
          reference: Google.Cloud.Dataproc.V1.JobReference.t() | nil,
          placement: Google.Cloud.Dataproc.V1.JobPlacement.t() | nil,
          status: Google.Cloud.Dataproc.V1.JobStatus.t() | nil,
          status_history: [Google.Cloud.Dataproc.V1.JobStatus.t()],
          yarn_applications: [Google.Cloud.Dataproc.V1.YarnApplication.t()],
          driver_output_resource_uri: String.t(),
          driver_control_files_uri: String.t(),
          labels: %{String.t() => String.t()},
          scheduling: Google.Cloud.Dataproc.V1.JobScheduling.t() | nil,
          job_uuid: String.t(),
          done: boolean
        }

  defstruct type_job: nil,
            reference: nil,
            placement: nil,
            status: nil,
            status_history: [],
            yarn_applications: [],
            driver_output_resource_uri: "",
            driver_control_files_uri: "",
            labels: %{},
            scheduling: nil,
            job_uuid: "",
            done: false

  oneof :type_job, 0

  field :reference, 1, type: Google.Cloud.Dataproc.V1.JobReference, deprecated: false
  field :placement, 2, type: Google.Cloud.Dataproc.V1.JobPlacement, deprecated: false

  field :hadoop_job, 3,
    type: Google.Cloud.Dataproc.V1.HadoopJob,
    json_name: "hadoopJob",
    oneof: 0,
    deprecated: false

  field :spark_job, 4,
    type: Google.Cloud.Dataproc.V1.SparkJob,
    json_name: "sparkJob",
    oneof: 0,
    deprecated: false

  field :pyspark_job, 5,
    type: Google.Cloud.Dataproc.V1.PySparkJob,
    json_name: "pysparkJob",
    oneof: 0,
    deprecated: false

  field :hive_job, 6,
    type: Google.Cloud.Dataproc.V1.HiveJob,
    json_name: "hiveJob",
    oneof: 0,
    deprecated: false

  field :pig_job, 7,
    type: Google.Cloud.Dataproc.V1.PigJob,
    json_name: "pigJob",
    oneof: 0,
    deprecated: false

  field :spark_r_job, 21,
    type: Google.Cloud.Dataproc.V1.SparkRJob,
    json_name: "sparkRJob",
    oneof: 0,
    deprecated: false

  field :spark_sql_job, 12,
    type: Google.Cloud.Dataproc.V1.SparkSqlJob,
    json_name: "sparkSqlJob",
    oneof: 0,
    deprecated: false

  field :presto_job, 23,
    type: Google.Cloud.Dataproc.V1.PrestoJob,
    json_name: "prestoJob",
    oneof: 0,
    deprecated: false

  field :status, 8, type: Google.Cloud.Dataproc.V1.JobStatus, deprecated: false

  field :status_history, 13,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.JobStatus,
    json_name: "statusHistory",
    deprecated: false

  field :yarn_applications, 9,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.YarnApplication,
    json_name: "yarnApplications",
    deprecated: false

  field :driver_output_resource_uri, 17,
    type: :string,
    json_name: "driverOutputResourceUri",
    deprecated: false

  field :driver_control_files_uri, 15,
    type: :string,
    json_name: "driverControlFilesUri",
    deprecated: false

  field :labels, 18,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Job.LabelsEntry,
    map: true,
    deprecated: false

  field :scheduling, 20, type: Google.Cloud.Dataproc.V1.JobScheduling, deprecated: false
  field :job_uuid, 22, type: :string, json_name: "jobUuid", deprecated: false
  field :done, 24, type: :bool, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobScheduling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_failures_per_hour: integer,
          max_failures_total: integer
        }

  defstruct max_failures_per_hour: 0,
            max_failures_total: 0

  field :max_failures_per_hour, 1,
    type: :int32,
    json_name: "maxFailuresPerHour",
    deprecated: false

  field :max_failures_total, 2, type: :int32, json_name: "maxFailuresTotal", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SubmitJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job: Google.Cloud.Dataproc.V1.Job.t() | nil,
          request_id: String.t()
        }

  defstruct project_id: "",
            region: "",
            job: nil,
            request_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Dataproc.V1.Job, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_id: String.t(),
          status: Google.Cloud.Dataproc.V1.JobStatus.t() | nil,
          operation_type: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct job_id: "",
            status: nil,
            operation_type: "",
            start_time: nil

  field :job_id, 1, type: :string, json_name: "jobId", deprecated: false
  field :status, 2, type: Google.Cloud.Dataproc.V1.JobStatus, deprecated: false
  field :operation_type, 3, type: :string, json_name: "operationType", deprecated: false
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct project_id: "",
            region: "",
            job_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          page_size: integer,
          page_token: String.t(),
          cluster_name: String.t(),
          job_state_matcher: Google.Cloud.Dataproc.V1.ListJobsRequest.JobStateMatcher.t(),
          filter: String.t()
        }

  defstruct project_id: "",
            region: "",
            page_size: 0,
            page_token: "",
            cluster_name: "",
            job_state_matcher: :ALL,
            filter: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 6, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :cluster_name, 4, type: :string, json_name: "clusterName", deprecated: false

  field :job_state_matcher, 5,
    type: Google.Cloud.Dataproc.V1.ListJobsRequest.JobStateMatcher,
    json_name: "jobStateMatcher",
    enum: true,
    deprecated: false

  field :filter, 7, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.UpdateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t(),
          job: Google.Cloud.Dataproc.V1.Job.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct project_id: "",
            region: "",
            job_id: "",
            job: nil,
            update_mask: nil

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 2, type: :string, deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false
  field :job, 4, type: Google.Cloud.Dataproc.V1.Job, deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Dataproc.V1.Job.t()],
          next_page_token: String.t()
        }

  defstruct jobs: [],
            next_page_token: ""

  field :jobs, 1, repeated: true, type: Google.Cloud.Dataproc.V1.Job, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.CancelJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct project_id: "",
            region: "",
            job_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct project_id: "",
            region: "",
            job_id: ""

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.JobController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1.JobController"

  rpc :SubmitJob, Google.Cloud.Dataproc.V1.SubmitJobRequest, Google.Cloud.Dataproc.V1.Job

  rpc :SubmitJobAsOperation,
      Google.Cloud.Dataproc.V1.SubmitJobRequest,
      Google.Longrunning.Operation

  rpc :GetJob, Google.Cloud.Dataproc.V1.GetJobRequest, Google.Cloud.Dataproc.V1.Job

  rpc :ListJobs,
      Google.Cloud.Dataproc.V1.ListJobsRequest,
      Google.Cloud.Dataproc.V1.ListJobsResponse

  rpc :UpdateJob, Google.Cloud.Dataproc.V1.UpdateJobRequest, Google.Cloud.Dataproc.V1.Job

  rpc :CancelJob, Google.Cloud.Dataproc.V1.CancelJobRequest, Google.Cloud.Dataproc.V1.Job

  rpc :DeleteJob, Google.Cloud.Dataproc.V1.DeleteJobRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataproc.V1.JobController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.JobController.Service
end
