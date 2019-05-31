// GENERATED CODE - DO NOT MODIFY BY HAND

part of sensor;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Sensor> _$sensorSerializer = new _$SensorSerializer();

class _$SensorSerializer implements StructuredSerializer<Sensor> {
  @override
  final Iterable<Type> types = const [Sensor, _$Sensor];
  @override
  final String wireName = 'Sensor';

  @override
  Iterable serialize(Serializers serializers, Sensor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'accelerometer',
      serializers.serialize(object.accelerometer,
          specifiedType: const FullType(Accelerometer)),
      'gyroscope',
      serializers.serialize(object.gyroscope,
          specifiedType: const FullType(Gyroscope)),
    ];

    return result;
  }

  @override
  Sensor deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SensorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accelerometer':
          result.accelerometer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Accelerometer)) as Accelerometer);
          break;
        case 'gyroscope':
          result.gyroscope.replace(serializers.deserialize(value,
              specifiedType: const FullType(Gyroscope)) as Gyroscope);
          break;
      }
    }

    return result.build();
  }
}

class _$Sensor extends Sensor {
  @override
  final Accelerometer accelerometer;
  @override
  final Gyroscope gyroscope;

  factory _$Sensor([void Function(SensorBuilder) updates]) =>
      (new SensorBuilder()..update(updates)).build();

  _$Sensor._({this.accelerometer, this.gyroscope}) : super._() {
    if (accelerometer == null) {
      throw new BuiltValueNullFieldError('Sensor', 'accelerometer');
    }
    if (gyroscope == null) {
      throw new BuiltValueNullFieldError('Sensor', 'gyroscope');
    }
  }

  @override
  Sensor rebuild(void Function(SensorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorBuilder toBuilder() => new SensorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sensor &&
        accelerometer == other.accelerometer &&
        gyroscope == other.gyroscope;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accelerometer.hashCode), gyroscope.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sensor')
          ..add('accelerometer', accelerometer)
          ..add('gyroscope', gyroscope))
        .toString();
  }
}

class SensorBuilder implements Builder<Sensor, SensorBuilder> {
  _$Sensor _$v;

  AccelerometerBuilder _accelerometer;
  AccelerometerBuilder get accelerometer =>
      _$this._accelerometer ??= new AccelerometerBuilder();
  set accelerometer(AccelerometerBuilder accelerometer) =>
      _$this._accelerometer = accelerometer;

  GyroscopeBuilder _gyroscope;
  GyroscopeBuilder get gyroscope =>
      _$this._gyroscope ??= new GyroscopeBuilder();
  set gyroscope(GyroscopeBuilder gyroscope) => _$this._gyroscope = gyroscope;

  SensorBuilder();

  SensorBuilder get _$this {
    if (_$v != null) {
      _accelerometer = _$v.accelerometer?.toBuilder();
      _gyroscope = _$v.gyroscope?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sensor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sensor;
  }

  @override
  void update(void Function(SensorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sensor build() {
    _$Sensor _$result;
    try {
      _$result = _$v ??
          new _$Sensor._(
              accelerometer: accelerometer.build(),
              gyroscope: gyroscope.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'accelerometer';
        accelerometer.build();
        _$failedField = 'gyroscope';
        gyroscope.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Sensor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
