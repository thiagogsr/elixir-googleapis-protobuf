defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_SENSOR
          | :GPS
          | :NETWORK
          | :PASSIVE
          | :ROAD_SNAPPED_LOCATION_PROVIDER
          | :FUSED_LOCATION_PROVIDER

  field :UNKNOWN_SENSOR, 0
  field :GPS, 1
  field :NETWORK, 2
  field :PASSIVE, 3
  field :ROAD_SNAPPED_LOCATION_PROVIDER, 4
  field :FUSED_LOCATION_PROVIDER, 100
end
defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicleNavigationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_NAVIGATION_STATUS
          | :NO_GUIDANCE
          | :ENROUTE_TO_DESTINATION
          | :OFF_ROUTE
          | :ARRIVED_AT_DESTINATION

  field :UNKNOWN_NAVIGATION_STATUS, 0
  field :NO_GUIDANCE, 1
  field :ENROUTE_TO_DESTINATION, 2
  field :OFF_ROUTE, 3
  field :ARRIVED_AT_DESTINATION, 4
end
defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicleAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: Google.Type.LatLng.t() | nil,
          horizontal_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          latlng_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          heading: Google.Protobuf.Int32Value.t() | nil,
          bearing_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          heading_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          altitude: Google.Protobuf.DoubleValue.t() | nil,
          vertical_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          altitude_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          speed_kmph: Google.Protobuf.Int32Value.t() | nil,
          speed: Google.Protobuf.DoubleValue.t() | nil,
          speed_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          server_time: Google.Protobuf.Timestamp.t() | nil,
          location_sensor: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor.t(),
          is_road_snapped: Google.Protobuf.BoolValue.t() | nil,
          is_gps_sensor_enabled: Google.Protobuf.BoolValue.t() | nil,
          time_since_update: Google.Protobuf.Int32Value.t() | nil,
          num_stale_updates: Google.Protobuf.Int32Value.t() | nil,
          raw_location: Google.Type.LatLng.t() | nil,
          raw_location_time: Google.Protobuf.Timestamp.t() | nil,
          raw_location_sensor: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor.t(),
          raw_location_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          supplemental_location: Google.Type.LatLng.t() | nil,
          supplemental_location_time: Google.Protobuf.Timestamp.t() | nil,
          supplemental_location_sensor:
            Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor.t(),
          supplemental_location_accuracy: Google.Protobuf.DoubleValue.t() | nil,
          road_snapped: boolean
        }

  defstruct location: nil,
            horizontal_accuracy: nil,
            latlng_accuracy: nil,
            heading: nil,
            bearing_accuracy: nil,
            heading_accuracy: nil,
            altitude: nil,
            vertical_accuracy: nil,
            altitude_accuracy: nil,
            speed_kmph: nil,
            speed: nil,
            speed_accuracy: nil,
            update_time: nil,
            server_time: nil,
            location_sensor: :UNKNOWN_SENSOR,
            is_road_snapped: nil,
            is_gps_sensor_enabled: nil,
            time_since_update: nil,
            num_stale_updates: nil,
            raw_location: nil,
            raw_location_time: nil,
            raw_location_sensor: :UNKNOWN_SENSOR,
            raw_location_accuracy: nil,
            supplemental_location: nil,
            supplemental_location_time: nil,
            supplemental_location_sensor: :UNKNOWN_SENSOR,
            supplemental_location_accuracy: nil,
            road_snapped: false

  field :location, 1, type: Google.Type.LatLng

  field :horizontal_accuracy, 8,
    type: Google.Protobuf.DoubleValue,
    json_name: "horizontalAccuracy",
    deprecated: true

  field :latlng_accuracy, 22, type: Google.Protobuf.DoubleValue, json_name: "latlngAccuracy"
  field :heading, 2, type: Google.Protobuf.Int32Value

  field :bearing_accuracy, 10,
    type: Google.Protobuf.DoubleValue,
    json_name: "bearingAccuracy",
    deprecated: true

  field :heading_accuracy, 23, type: Google.Protobuf.DoubleValue, json_name: "headingAccuracy"
  field :altitude, 5, type: Google.Protobuf.DoubleValue

  field :vertical_accuracy, 9,
    type: Google.Protobuf.DoubleValue,
    json_name: "verticalAccuracy",
    deprecated: true

  field :altitude_accuracy, 24, type: Google.Protobuf.DoubleValue, json_name: "altitudeAccuracy"
  field :speed_kmph, 3, type: Google.Protobuf.Int32Value, json_name: "speedKmph", deprecated: true
  field :speed, 6, type: Google.Protobuf.DoubleValue
  field :speed_accuracy, 7, type: Google.Protobuf.DoubleValue, json_name: "speedAccuracy"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :server_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "serverTime",
    deprecated: false

  field :location_sensor, 11,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor,
    json_name: "locationSensor",
    enum: true

  field :is_road_snapped, 27, type: Google.Protobuf.BoolValue, json_name: "isRoadSnapped"

  field :is_gps_sensor_enabled, 12,
    type: Google.Protobuf.BoolValue,
    json_name: "isGpsSensorEnabled",
    deprecated: false

  field :time_since_update, 14,
    type: Google.Protobuf.Int32Value,
    json_name: "timeSinceUpdate",
    deprecated: false

  field :num_stale_updates, 15,
    type: Google.Protobuf.Int32Value,
    json_name: "numStaleUpdates",
    deprecated: false

  field :raw_location, 16, type: Google.Type.LatLng, json_name: "rawLocation"

  field :raw_location_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "rawLocationTime",
    deprecated: false

  field :raw_location_sensor, 28,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor,
    json_name: "rawLocationSensor",
    enum: true,
    deprecated: false

  field :raw_location_accuracy, 25,
    type: Google.Protobuf.DoubleValue,
    json_name: "rawLocationAccuracy",
    deprecated: false

  field :supplemental_location, 18,
    type: Google.Type.LatLng,
    json_name: "supplementalLocation",
    deprecated: false

  field :supplemental_location_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "supplementalLocationTime",
    deprecated: false

  field :supplemental_location_sensor, 20,
    type: Maps.Fleetengine.Delivery.V1.DeliveryVehicleLocationSensor,
    json_name: "supplementalLocationSensor",
    enum: true,
    deprecated: false

  field :supplemental_location_accuracy, 21,
    type: Google.Protobuf.DoubleValue,
    json_name: "supplementalLocationAccuracy",
    deprecated: false

  field :road_snapped, 26, type: :bool, json_name: "roadSnapped", deprecated: true
end
