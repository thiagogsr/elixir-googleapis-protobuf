defmodule Google.Api.ErrorReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_REASON_UNSPECIFIED
          | :SERVICE_DISABLED
          | :BILLING_DISABLED
          | :API_KEY_INVALID
          | :API_KEY_SERVICE_BLOCKED
          | :API_KEY_HTTP_REFERRER_BLOCKED
          | :API_KEY_IP_ADDRESS_BLOCKED
          | :API_KEY_ANDROID_APP_BLOCKED
          | :API_KEY_IOS_APP_BLOCKED
          | :RATE_LIMIT_EXCEEDED
          | :RESOURCE_QUOTA_EXCEEDED
          | :LOCATION_TAX_POLICY_VIOLATED
          | :USER_PROJECT_DENIED
          | :CONSUMER_SUSPENDED
          | :CONSUMER_INVALID
          | :SECURITY_POLICY_VIOLATED
          | :ACCESS_TOKEN_EXPIRED
          | :ACCESS_TOKEN_SCOPE_INSUFFICIENT
          | :ACCOUNT_STATE_INVALID
          | :ACCESS_TOKEN_TYPE_UNSUPPORTED

  field :ERROR_REASON_UNSPECIFIED, 0

  field :SERVICE_DISABLED, 1

  field :BILLING_DISABLED, 2

  field :API_KEY_INVALID, 3

  field :API_KEY_SERVICE_BLOCKED, 4

  field :API_KEY_HTTP_REFERRER_BLOCKED, 7

  field :API_KEY_IP_ADDRESS_BLOCKED, 8

  field :API_KEY_ANDROID_APP_BLOCKED, 9

  field :API_KEY_IOS_APP_BLOCKED, 13

  field :RATE_LIMIT_EXCEEDED, 5

  field :RESOURCE_QUOTA_EXCEEDED, 6

  field :LOCATION_TAX_POLICY_VIOLATED, 10

  field :USER_PROJECT_DENIED, 11

  field :CONSUMER_SUSPENDED, 12

  field :CONSUMER_INVALID, 14

  field :SECURITY_POLICY_VIOLATED, 15

  field :ACCESS_TOKEN_EXPIRED, 16

  field :ACCESS_TOKEN_SCOPE_INSUFFICIENT, 17

  field :ACCOUNT_STATE_INVALID, 18

  field :ACCESS_TOKEN_TYPE_UNSUPPORTED, 19
end
