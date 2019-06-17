library sensor;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:sensors/sensors.dart';

part 'sensor.g.dart';

abstract class Sensor implements Built<Sensor, SensorBuilder> {
  // fields go here

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
}
