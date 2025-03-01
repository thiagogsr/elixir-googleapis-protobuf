defmodule Google.Devtools.Artifactregistry.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.artifactregistry.v1.ArtifactRegistry"

  rpc :ListDockerImages,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesRequest,
      Google.Devtools.Artifactregistry.V1.ListDockerImagesResponse

  rpc :GetDockerImage,
      Google.Devtools.Artifactregistry.V1.GetDockerImageRequest,
      Google.Devtools.Artifactregistry.V1.DockerImage

  rpc :ImportAptArtifacts,
      Google.Devtools.Artifactregistry.V1.ImportAptArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ImportYumArtifacts,
      Google.Devtools.Artifactregistry.V1.ImportYumArtifactsRequest,
      Google.Longrunning.Operation

  rpc :ListRepositories,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest,
      Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Devtools.Artifactregistry.V1.GetRepositoryRequest,
      Google.Devtools.Artifactregistry.V1.Repository

  rpc :CreateRepository,
      Google.Devtools.Artifactregistry.V1.CreateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateRepository,
      Google.Devtools.Artifactregistry.V1.UpdateRepositoryRequest,
      Google.Devtools.Artifactregistry.V1.Repository

  rpc :DeleteRepository,
      Google.Devtools.Artifactregistry.V1.DeleteRepositoryRequest,
      Google.Longrunning.Operation

  rpc :ListPackages,
      Google.Devtools.Artifactregistry.V1.ListPackagesRequest,
      Google.Devtools.Artifactregistry.V1.ListPackagesResponse

  rpc :GetPackage,
      Google.Devtools.Artifactregistry.V1.GetPackageRequest,
      Google.Devtools.Artifactregistry.V1.Package

  rpc :DeletePackage,
      Google.Devtools.Artifactregistry.V1.DeletePackageRequest,
      Google.Longrunning.Operation

  rpc :ListVersions,
      Google.Devtools.Artifactregistry.V1.ListVersionsRequest,
      Google.Devtools.Artifactregistry.V1.ListVersionsResponse

  rpc :GetVersion,
      Google.Devtools.Artifactregistry.V1.GetVersionRequest,
      Google.Devtools.Artifactregistry.V1.Version

  rpc :DeleteVersion,
      Google.Devtools.Artifactregistry.V1.DeleteVersionRequest,
      Google.Longrunning.Operation

  rpc :ListFiles,
      Google.Devtools.Artifactregistry.V1.ListFilesRequest,
      Google.Devtools.Artifactregistry.V1.ListFilesResponse

  rpc :GetFile,
      Google.Devtools.Artifactregistry.V1.GetFileRequest,
      Google.Devtools.Artifactregistry.V1.File

  rpc :ListTags,
      Google.Devtools.Artifactregistry.V1.ListTagsRequest,
      Google.Devtools.Artifactregistry.V1.ListTagsResponse

  rpc :GetTag,
      Google.Devtools.Artifactregistry.V1.GetTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :CreateTag,
      Google.Devtools.Artifactregistry.V1.CreateTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :UpdateTag,
      Google.Devtools.Artifactregistry.V1.UpdateTagRequest,
      Google.Devtools.Artifactregistry.V1.Tag

  rpc :DeleteTag, Google.Devtools.Artifactregistry.V1.DeleteTagRequest, Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :GetProjectSettings,
      Google.Devtools.Artifactregistry.V1.GetProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1.ProjectSettings

  rpc :UpdateProjectSettings,
      Google.Devtools.Artifactregistry.V1.UpdateProjectSettingsRequest,
      Google.Devtools.Artifactregistry.V1.ProjectSettings
end

defmodule Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Artifactregistry.V1.ArtifactRegistry.Service
end
