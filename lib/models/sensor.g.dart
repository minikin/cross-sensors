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
    return <Object>[];
  }

  @override
  Sensor deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SensorBuilder().build();
  }
}

class _$Sensor extends Sensor {
  factory _$Sensor([void Function(SensorBuilder) updates]) =>
      (new SensorBuilder()..update(updates)).build();

  _$Sensor._() : super._();

  @override
  Sensor rebuild(void Function(SensorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorBuilder toBuilder() => new SensorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sensor;
  }

  @override
  int get hashCode {
    return 633566183;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Sensor').toString();
  }
}

class SensorBuilder implements Builder<Sensor, SensorBuilder> {
  _$Sensor _$v;

  SensorBuilder();

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
    final _$result = _$v ?? new _$Sensor._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
