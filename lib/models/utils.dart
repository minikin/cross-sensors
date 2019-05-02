import 'dart:async';
import 'dart:math' as math;

import 'package:sensors/sensors.dart';
import 'package:cross_sensors/models/models.dart';

class DeviceMotionEvents {
  static Sensor writeData() {
    GyroscopeEvent gyroscopeEvent;
    AccelerometerEvent accelerationEvent;
    accelerometerEvents.listen((AccelerometerEvent accelerationRawEvent) {
      accelerationEvent = accelerationRawEvent;
      gyroscopeEvents.listen((GyroscopeEvent gyroscopeRawEvent) {
        gyroscopeEvent = gyroscopeRawEvent;
      });
    });
    return Sensor.init(accelerationEvent, gyroscopeEvent);
  }
}
