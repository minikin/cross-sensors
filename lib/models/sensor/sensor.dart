library sensor;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cross_sensors/models/models.dart';
import 'package:sensors/sensors.dart';

part 'sensor.g.dart';

abstract class Sensor implements Built<Sensor, SensorBuilder> {
  Accelerometer get accelerometer;
  Gyroscope get gyroscope;

  Sensor._();

  factory Sensor([updates(SensorBuilder b)]) = _$Sensor;

  String toJson() {
    return json.encode(serializers.serializeWith(Sensor.serializer, this));
  }

  static Sensor fromJson(String jsonString) {
    return serializers.deserializeWith(
        Sensor.serializer, json.decode(jsonString));
  }

  static Serializer<Sensor> get serializer => _$sensorSerializer;

  factory Sensor.init(
    AccelerometerEvent accelerationEvent,
    GyroscopeEvent gyroscopeEvent,
  ) {
    return Sensor(
      (b) => b
        ..accelerometer.x = accelerationEvent.x
        ..accelerometer.y = accelerationEvent.y
        ..accelerometer.z = accelerationEvent.z
        ..gyroscope.x = gyroscopeEvent.x
        ..gyroscope.y = gyroscopeEvent.y
        ..gyroscope.z = gyroscopeEvent.z,
    );
  }
}
