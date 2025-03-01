defmodule Google.Apps.Drive.Activity.V2.Delete.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :TRASH | :PERMANENT_DELETE

  field :TYPE_UNSPECIFIED, 0
  field :TRASH, 1
  field :PERMANENT_DELETE, 2
end
defmodule Google.Apps.Drive.Activity.V2.Restore.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :UNTRASH

  field :TYPE_UNSPECIFIED, 0
  field :UNTRASH, 1
end
defmodule Google.Apps.Drive.Activity.V2.Permission.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROLE_UNSPECIFIED
          | :OWNER
          | :ORGANIZER
          | :FILE_ORGANIZER
          | :EDITOR
          | :COMMENTER
          | :VIEWER
          | :PUBLISHED_VIEWER

  field :ROLE_UNSPECIFIED, 0
  field :OWNER, 1
  field :ORGANIZER, 2
  field :FILE_ORGANIZER, 3
  field :EDITOR, 4
  field :COMMENTER, 5
  field :VIEWER, 6
  field :PUBLISHED_VIEWER, 7
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Post.Subtype do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SUBTYPE_UNSPECIFIED
          | :ADDED
          | :DELETED
          | :REPLY_ADDED
          | :REPLY_DELETED
          | :RESOLVED
          | :REOPENED

  field :SUBTYPE_UNSPECIFIED, 0
  field :ADDED, 1
  field :DELETED, 2
  field :REPLY_ADDED, 3
  field :REPLY_DELETED, 4
  field :RESOLVED, 5
  field :REOPENED, 6
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Assignment.Subtype do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SUBTYPE_UNSPECIFIED
          | :ADDED
          | :DELETED
          | :REPLY_ADDED
          | :REPLY_DELETED
          | :RESOLVED
          | :REOPENED
          | :REASSIGNED

  field :SUBTYPE_UNSPECIFIED, 0
  field :ADDED, 1
  field :DELETED, 2
  field :REPLY_ADDED, 3
  field :REPLY_DELETED, 4
  field :RESOLVED, 5
  field :REOPENED, 6
  field :REASSIGNED, 7
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Suggestion.Subtype do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SUBTYPE_UNSPECIFIED
          | :ADDED
          | :DELETED
          | :REPLY_ADDED
          | :REPLY_DELETED
          | :ACCEPTED
          | :REJECTED
          | :ACCEPT_DELETED
          | :REJECT_DELETED

  field :SUBTYPE_UNSPECIFIED, 0
  field :ADDED, 1
  field :DELETED, 2
  field :REPLY_ADDED, 3
  field :REPLY_DELETED, 4
  field :ACCEPTED, 7
  field :REJECTED, 8
  field :ACCEPT_DELETED, 9
  field :REJECT_DELETED, 10
end
defmodule Google.Apps.Drive.Activity.V2.DataLeakPreventionChange.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :FLAGGED | :CLEARED

  field :TYPE_UNSPECIFIED, 0
  field :FLAGGED, 1
  field :CLEARED, 2
end
defmodule Google.Apps.Drive.Activity.V2.ApplicationReference.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED_REFERENCE_TYPE | :LINK | :DISCUSS

  field :UNSPECIFIED_REFERENCE_TYPE, 0
  field :LINK, 1
  field :DISCUSS, 2
end
defmodule Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :SHARING_OUTSIDE_DOMAIN
          | :DIRECT_SHARING
          | :ITEM_DUPLICATION
          | :DRIVE_FILE_STREAM

  field :FEATURE_UNSPECIFIED, 0
  field :SHARING_OUTSIDE_DOMAIN, 1
  field :DIRECT_SHARING, 2
  field :ITEM_DUPLICATION, 3
  field :DRIVE_FILE_STREAM, 4
end
defmodule Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Restriction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESTRICTION_UNSPECIFIED | :UNRESTRICTED | :FULLY_RESTRICTED

  field :RESTRICTION_UNSPECIFIED, 0
  field :UNRESTRICTED, 1
  field :FULLY_RESTRICTED, 2
end
defmodule Google.Apps.Drive.Activity.V2.Action do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time:
            {:timestamp, Google.Protobuf.Timestamp.t() | nil}
            | {:time_range, Google.Apps.Drive.Activity.V2.TimeRange.t() | nil},
          detail: Google.Apps.Drive.Activity.V2.ActionDetail.t() | nil,
          actor: Google.Apps.Drive.Activity.V2.Actor.t() | nil,
          target: Google.Apps.Drive.Activity.V2.Target.t() | nil
        }

  defstruct time: nil,
            detail: nil,
            actor: nil,
            target: nil

  oneof :time, 0

  field :detail, 1, type: Google.Apps.Drive.Activity.V2.ActionDetail
  field :actor, 3, type: Google.Apps.Drive.Activity.V2.Actor
  field :target, 4, type: Google.Apps.Drive.Activity.V2.Target
  field :timestamp, 5, type: Google.Protobuf.Timestamp, oneof: 0

  field :time_range, 6,
    type: Google.Apps.Drive.Activity.V2.TimeRange,
    json_name: "timeRange",
    oneof: 0
end
defmodule Google.Apps.Drive.Activity.V2.ActionDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_detail:
            {:create, Google.Apps.Drive.Activity.V2.Create.t() | nil}
            | {:edit, Google.Apps.Drive.Activity.V2.Edit.t() | nil}
            | {:move, Google.Apps.Drive.Activity.V2.Move.t() | nil}
            | {:rename, Google.Apps.Drive.Activity.V2.Rename.t() | nil}
            | {:delete, Google.Apps.Drive.Activity.V2.Delete.t() | nil}
            | {:restore, Google.Apps.Drive.Activity.V2.Restore.t() | nil}
            | {:permission_change, Google.Apps.Drive.Activity.V2.PermissionChange.t() | nil}
            | {:comment, Google.Apps.Drive.Activity.V2.Comment.t() | nil}
            | {:dlp_change, Google.Apps.Drive.Activity.V2.DataLeakPreventionChange.t() | nil}
            | {:reference, Google.Apps.Drive.Activity.V2.ApplicationReference.t() | nil}
            | {:settings_change, Google.Apps.Drive.Activity.V2.SettingsChange.t() | nil}
        }

  defstruct action_detail: nil

  oneof :action_detail, 0

  field :create, 1, type: Google.Apps.Drive.Activity.V2.Create, oneof: 0
  field :edit, 2, type: Google.Apps.Drive.Activity.V2.Edit, oneof: 0
  field :move, 3, type: Google.Apps.Drive.Activity.V2.Move, oneof: 0
  field :rename, 4, type: Google.Apps.Drive.Activity.V2.Rename, oneof: 0
  field :delete, 5, type: Google.Apps.Drive.Activity.V2.Delete, oneof: 0
  field :restore, 6, type: Google.Apps.Drive.Activity.V2.Restore, oneof: 0

  field :permission_change, 7,
    type: Google.Apps.Drive.Activity.V2.PermissionChange,
    json_name: "permissionChange",
    oneof: 0

  field :comment, 8, type: Google.Apps.Drive.Activity.V2.Comment, oneof: 0

  field :dlp_change, 9,
    type: Google.Apps.Drive.Activity.V2.DataLeakPreventionChange,
    json_name: "dlpChange",
    oneof: 0

  field :reference, 12, type: Google.Apps.Drive.Activity.V2.ApplicationReference, oneof: 0

  field :settings_change, 13,
    type: Google.Apps.Drive.Activity.V2.SettingsChange,
    json_name: "settingsChange",
    oneof: 0
end
defmodule Google.Apps.Drive.Activity.V2.Create.New do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.Create.Upload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.Create.Copy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_object: Google.Apps.Drive.Activity.V2.TargetReference.t() | nil
        }

  defstruct original_object: nil

  field :original_object, 1,
    type: Google.Apps.Drive.Activity.V2.TargetReference,
    json_name: "originalObject"
end
defmodule Google.Apps.Drive.Activity.V2.Create do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin:
            {:new, Google.Apps.Drive.Activity.V2.Create.New.t() | nil}
            | {:upload, Google.Apps.Drive.Activity.V2.Create.Upload.t() | nil}
            | {:copy, Google.Apps.Drive.Activity.V2.Create.Copy.t() | nil}
        }

  defstruct origin: nil

  oneof :origin, 0

  field :new, 1, type: Google.Apps.Drive.Activity.V2.Create.New, oneof: 0
  field :upload, 2, type: Google.Apps.Drive.Activity.V2.Create.Upload, oneof: 0
  field :copy, 3, type: Google.Apps.Drive.Activity.V2.Create.Copy, oneof: 0
end
defmodule Google.Apps.Drive.Activity.V2.Edit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.Move do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          added_parents: [Google.Apps.Drive.Activity.V2.TargetReference.t()],
          removed_parents: [Google.Apps.Drive.Activity.V2.TargetReference.t()]
        }

  defstruct added_parents: [],
            removed_parents: []

  field :added_parents, 1,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.TargetReference,
    json_name: "addedParents"

  field :removed_parents, 2,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.TargetReference,
    json_name: "removedParents"
end
defmodule Google.Apps.Drive.Activity.V2.Rename do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          old_title: String.t(),
          new_title: String.t()
        }

  defstruct old_title: "",
            new_title: ""

  field :old_title, 1, type: :string, json_name: "oldTitle"
  field :new_title, 2, type: :string, json_name: "newTitle"
end
defmodule Google.Apps.Drive.Activity.V2.Delete do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.Delete.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Apps.Drive.Activity.V2.Delete.Type, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.Restore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.Restore.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Apps.Drive.Activity.V2.Restore.Type, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.PermissionChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          added_permissions: [Google.Apps.Drive.Activity.V2.Permission.t()],
          removed_permissions: [Google.Apps.Drive.Activity.V2.Permission.t()]
        }

  defstruct added_permissions: [],
            removed_permissions: []

  field :added_permissions, 1,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.Permission,
    json_name: "addedPermissions"

  field :removed_permissions, 2,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.Permission,
    json_name: "removedPermissions"
end
defmodule Google.Apps.Drive.Activity.V2.Permission.Anyone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.Permission do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scope:
            {:user, Google.Apps.Drive.Activity.V2.User.t() | nil}
            | {:group, Google.Apps.Drive.Activity.V2.Group.t() | nil}
            | {:domain, Google.Apps.Drive.Activity.V2.Domain.t() | nil}
            | {:anyone, Google.Apps.Drive.Activity.V2.Permission.Anyone.t() | nil},
          role: Google.Apps.Drive.Activity.V2.Permission.Role.t(),
          allow_discovery: boolean
        }

  defstruct scope: nil,
            role: :ROLE_UNSPECIFIED,
            allow_discovery: false

  oneof :scope, 0

  field :role, 1, type: Google.Apps.Drive.Activity.V2.Permission.Role, enum: true
  field :user, 2, type: Google.Apps.Drive.Activity.V2.User, oneof: 0
  field :group, 3, type: Google.Apps.Drive.Activity.V2.Group, oneof: 0
  field :domain, 4, type: Google.Apps.Drive.Activity.V2.Domain, oneof: 0
  field :anyone, 5, type: Google.Apps.Drive.Activity.V2.Permission.Anyone, oneof: 0
  field :allow_discovery, 6, type: :bool, json_name: "allowDiscovery"
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Post do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subtype: Google.Apps.Drive.Activity.V2.Comment.Post.Subtype.t()
        }

  defstruct subtype: :SUBTYPE_UNSPECIFIED

  field :subtype, 1, type: Google.Apps.Drive.Activity.V2.Comment.Post.Subtype, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Assignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subtype: Google.Apps.Drive.Activity.V2.Comment.Assignment.Subtype.t(),
          assigned_user: Google.Apps.Drive.Activity.V2.User.t() | nil
        }

  defstruct subtype: :SUBTYPE_UNSPECIFIED,
            assigned_user: nil

  field :subtype, 1, type: Google.Apps.Drive.Activity.V2.Comment.Assignment.Subtype, enum: true
  field :assigned_user, 7, type: Google.Apps.Drive.Activity.V2.User, json_name: "assignedUser"
end
defmodule Google.Apps.Drive.Activity.V2.Comment.Suggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subtype: Google.Apps.Drive.Activity.V2.Comment.Suggestion.Subtype.t()
        }

  defstruct subtype: :SUBTYPE_UNSPECIFIED

  field :subtype, 1, type: Google.Apps.Drive.Activity.V2.Comment.Suggestion.Subtype, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.Comment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:post, Google.Apps.Drive.Activity.V2.Comment.Post.t() | nil}
            | {:assignment, Google.Apps.Drive.Activity.V2.Comment.Assignment.t() | nil}
            | {:suggestion, Google.Apps.Drive.Activity.V2.Comment.Suggestion.t() | nil},
          mentioned_users: [Google.Apps.Drive.Activity.V2.User.t()]
        }

  defstruct type: nil,
            mentioned_users: []

  oneof :type, 0

  field :post, 1, type: Google.Apps.Drive.Activity.V2.Comment.Post, oneof: 0
  field :assignment, 2, type: Google.Apps.Drive.Activity.V2.Comment.Assignment, oneof: 0
  field :suggestion, 3, type: Google.Apps.Drive.Activity.V2.Comment.Suggestion, oneof: 0

  field :mentioned_users, 7,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.User,
    json_name: "mentionedUsers"
end
defmodule Google.Apps.Drive.Activity.V2.DataLeakPreventionChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.DataLeakPreventionChange.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Apps.Drive.Activity.V2.DataLeakPreventionChange.Type, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.ApplicationReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.ApplicationReference.Type.t()
        }

  defstruct type: :UNSPECIFIED_REFERENCE_TYPE

  field :type, 1, type: Google.Apps.Drive.Activity.V2.ApplicationReference.Type, enum: true
end
defmodule Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature: Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Feature.t(),
          new_restriction:
            Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Restriction.t()
        }

  defstruct feature: :FEATURE_UNSPECIFIED,
            new_restriction: :RESTRICTION_UNSPECIFIED

  field :feature, 1,
    type: Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Feature,
    enum: true

  field :new_restriction, 2,
    type: Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.Restriction,
    json_name: "newRestriction",
    enum: true
end
defmodule Google.Apps.Drive.Activity.V2.SettingsChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          restriction_changes: [
            Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange.t()
          ]
        }

  defstruct restriction_changes: []

  field :restriction_changes, 1,
    repeated: true,
    type: Google.Apps.Drive.Activity.V2.SettingsChange.RestrictionChange,
    json_name: "restrictionChanges"
end
