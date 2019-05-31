library accelerometer;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cross_sensors/models/serializer/serializers.dart';

part 'accelerometer.g.dart';

abstract class Accelerometer
    implements Built<Accelerometer, AccelerometerBuilder> {
  double get x;
  double get y;
  double get z;

  Accelerometer._();

  factory Accelerometer([updates(AccelerometerBuilder b)]) = _$Accelerometer;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Accelerometer.serializer, this));
  }

  static Accelerometer fromJson(String jsonString) {
    return serializers.deserializeWith(
        Accelerometer.serializer, json.decode(jsonString));
  }

  static Serializer<Accelerometer> get serializer => _$accelerometerSerializer;
}
