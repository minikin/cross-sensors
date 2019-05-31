// GENERATED CODE - DO NOT MODIFY BY HAND

part of gyroscope;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gyroscope> _$gyroscopeSerializer = new _$GyroscopeSerializer();

class _$GyroscopeSerializer implements StructuredSerializer<Gyroscope> {
  @override
  final Iterable<Type> types = const [Gyroscope, _$Gyroscope];
  @override
  final String wireName = 'Gyroscope';

  @override
  Iterable serialize(Serializers serializers, Gyroscope object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'x',
      serializers.serialize(object.x, specifiedType: const FullType(double)),
      'y',
      serializers.serialize(object.y, specifiedType: const FullType(double)),
      'z',
      serializers.serialize(object.z, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gyroscope deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GyroscopeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'z':
          result.z = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gyroscope extends Gyroscope {
  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  factory _$Gyroscope([void Function(GyroscopeBuilder) updates]) =>
      (new GyroscopeBuilder()..update(updates)).build();

  _$Gyroscope._({this.x, this.y, this.z}) : super._() {
    if (x == null) {
      throw new BuiltValueNullFieldError('Gyroscope', 'x');
    }
    if (y == null) {
      throw new BuiltValueNullFieldError('Gyroscope', 'y');
    }
    if (z == null) {
      throw new BuiltValueNullFieldError('Gyroscope', 'z');
    }
  }

  @override
  Gyroscope rebuild(void Function(GyroscopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GyroscopeBuilder toBuilder() => new GyroscopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gyroscope && x == other.x && y == other.y && z == other.z;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, x.hashCode), y.hashCode), z.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gyroscope')
          ..add('x', x)
          ..add('y', y)
          ..add('z', z))
        .toString();
  }
}

class GyroscopeBuilder implements Builder<Gyroscope, GyroscopeBuilder> {
  _$Gyroscope _$v;

  double _x;
  double get x => _$this._x;
  set x(double x) => _$this._x = x;

  double _y;
  double get y => _$this._y;
  set y(double y) => _$this._y = y;

  double _z;
  double get z => _$this._z;
  set z(double z) => _$this._z = z;

  GyroscopeBuilder();

  GyroscopeBuilder get _$this {
    if (_$v != null) {
      _x = _$v.x;
      _y = _$v.y;
      _z = _$v.z;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gyroscope other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Gyroscope;
  }

  @override
  void update(void Function(GyroscopeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gyroscope build() {
    final _$result = _$v ?? new _$Gyroscope._(x: x, y: y, z: z);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
