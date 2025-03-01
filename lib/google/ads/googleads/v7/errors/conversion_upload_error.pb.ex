defmodule Google.Ads.Googleads.V7.Errors.ConversionUploadErrorEnum.ConversionUploadError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :TOO_MANY_CONVERSIONS_IN_REQUEST
          | :UNPARSEABLE_GCLID
          | :CONVERSION_PRECEDES_GCLID
          | :EXPIRED_GCLID
          | :TOO_RECENT_GCLID
          | :GCLID_NOT_FOUND
          | :UNAUTHORIZED_CUSTOMER
          | :INVALID_CONVERSION_ACTION
          | :TOO_RECENT_CONVERSION_ACTION
          | :CONVERSION_TRACKING_NOT_ENABLED_AT_IMPRESSION_TIME
          | :EXTERNAL_ATTRIBUTION_DATA_SET_FOR_NON_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION
          | :EXTERNAL_ATTRIBUTION_DATA_NOT_SET_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION
          | :ORDER_ID_NOT_PERMITTED_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION
          | :ORDER_ID_ALREADY_IN_USE
          | :DUPLICATE_ORDER_ID
          | :TOO_RECENT_CALL
          | :EXPIRED_CALL
          | :CALL_NOT_FOUND
          | :CONVERSION_PRECEDES_CALL
          | :CONVERSION_TRACKING_NOT_ENABLED_AT_CALL_TIME
          | :UNPARSEABLE_CALLERS_PHONE_NUMBER
          | :CUSTOM_VARIABLE_NOT_ENABLED
          | :CUSTOM_VARIABLE_VALUE_CONTAINS_PII

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_MANY_CONVERSIONS_IN_REQUEST, 2
  field :UNPARSEABLE_GCLID, 3
  field :CONVERSION_PRECEDES_GCLID, 4
  field :EXPIRED_GCLID, 5
  field :TOO_RECENT_GCLID, 6
  field :GCLID_NOT_FOUND, 7
  field :UNAUTHORIZED_CUSTOMER, 8
  field :INVALID_CONVERSION_ACTION, 9
  field :TOO_RECENT_CONVERSION_ACTION, 10
  field :CONVERSION_TRACKING_NOT_ENABLED_AT_IMPRESSION_TIME, 11
  field :EXTERNAL_ATTRIBUTION_DATA_SET_FOR_NON_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 12
  field :EXTERNAL_ATTRIBUTION_DATA_NOT_SET_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 13
  field :ORDER_ID_NOT_PERMITTED_FOR_EXTERNALLY_ATTRIBUTED_CONVERSION_ACTION, 14
  field :ORDER_ID_ALREADY_IN_USE, 15
  field :DUPLICATE_ORDER_ID, 16
  field :TOO_RECENT_CALL, 17
  field :EXPIRED_CALL, 18
  field :CALL_NOT_FOUND, 19
  field :CONVERSION_PRECEDES_CALL, 20
  field :CONVERSION_TRACKING_NOT_ENABLED_AT_CALL_TIME, 21
  field :UNPARSEABLE_CALLERS_PHONE_NUMBER, 22
  field :CUSTOM_VARIABLE_NOT_ENABLED, 28
  field :CUSTOM_VARIABLE_VALUE_CONTAINS_PII, 29
end
defmodule Google.Ads.Googleads.V7.Errors.ConversionUploadErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
