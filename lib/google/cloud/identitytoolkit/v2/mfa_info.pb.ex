defmodule Google.Cloud.Identitytoolkit.V2.AutoRetrievalInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_signature_hash: String.t()
        }

  defstruct app_signature_hash: ""

  field :app_signature_hash, 1, type: :string, json_name: "appSignatureHash"
end
defmodule Google.Cloud.Identitytoolkit.V2.StartMfaPhoneRequestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t(),
          ios_receipt: String.t(),
          ios_secret: String.t(),
          recaptcha_token: String.t(),
          auto_retrieval_info: Google.Cloud.Identitytoolkit.V2.AutoRetrievalInfo.t() | nil,
          safety_net_token: String.t()
        }

  defstruct phone_number: "",
            ios_receipt: "",
            ios_secret: "",
            recaptcha_token: "",
            auto_retrieval_info: nil,
            safety_net_token: ""

  field :phone_number, 1, type: :string, json_name: "phoneNumber"
  field :ios_receipt, 2, type: :string, json_name: "iosReceipt"
  field :ios_secret, 3, type: :string, json_name: "iosSecret"
  field :recaptcha_token, 4, type: :string, json_name: "recaptchaToken"

  field :auto_retrieval_info, 5,
    type: Google.Cloud.Identitytoolkit.V2.AutoRetrievalInfo,
    json_name: "autoRetrievalInfo"

  field :safety_net_token, 6, type: :string, json_name: "safetyNetToken"
end
defmodule Google.Cloud.Identitytoolkit.V2.StartMfaPhoneResponseInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_info: String.t()
        }

  defstruct session_info: ""

  field :session_info, 1, type: :string, json_name: "sessionInfo"
end
defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneRequestInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_info: String.t(),
          code: String.t(),
          android_verification_proof: String.t(),
          phone_number: String.t()
        }

  defstruct session_info: "",
            code: "",
            android_verification_proof: "",
            phone_number: ""

  field :session_info, 1, type: :string, json_name: "sessionInfo"
  field :code, 2, type: :string
  field :android_verification_proof, 3, type: :string, json_name: "androidVerificationProof"
  field :phone_number, 4, type: :string, json_name: "phoneNumber"
end
defmodule Google.Cloud.Identitytoolkit.V2.FinalizeMfaPhoneResponseInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          android_verification_proof: String.t(),
          android_verification_proof_expire_time: Google.Protobuf.Timestamp.t() | nil,
          phone_number: String.t()
        }

  defstruct android_verification_proof: "",
            android_verification_proof_expire_time: nil,
            phone_number: ""

  field :android_verification_proof, 1, type: :string, json_name: "androidVerificationProof"

  field :android_verification_proof_expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "androidVerificationProofExpireTime"

  field :phone_number, 3, type: :string, json_name: "phoneNumber"
end
