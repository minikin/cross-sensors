library gyroscope;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cross_sensors/models/models.dart';

part 'gyroscope.g.dart';

abstract class Gyroscope implements Built<Gyroscope, GyroscopeBuilder> {
  double get x;
  double get y;
  double get z;

  Gyroscope._();

  factory Gyroscope([updates(GyroscopeBuilder b)]) = _$Gyroscope;

  String toJson() {
    return json.encode(serializers.serializeWith(Gyroscope.serializer, this));
  }

  static Gyroscope fromJson(String jsonString) {
    return serializers.deserializeWith(
        Gyroscope.serializer, json.decode(jsonString));
  }

  static Serializer<Gyroscope> get serializer => _$gyroscopeSerializer;
}
