// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) {
  return _ExchangeRate.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRate {
  String get baseCode => throw _privateConstructorUsedError;
  Map<String, num> get conversionRates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateCopyWith<ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res, ExchangeRate>;
  @useResult
  $Res call({String baseCode, Map<String, num> conversionRates});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res, $Val extends ExchangeRate>
    implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeRateImplCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$$ExchangeRateImplCopyWith(
          _$ExchangeRateImpl value, $Res Function(_$ExchangeRateImpl) then) =
      __$$ExchangeRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseCode, Map<String, num> conversionRates});
}

/// @nodoc
class __$$ExchangeRateImplCopyWithImpl<$Res>
    extends _$ExchangeRateCopyWithImpl<$Res, _$ExchangeRateImpl>
    implements _$$ExchangeRateImplCopyWith<$Res> {
  __$$ExchangeRateImplCopyWithImpl(
      _$ExchangeRateImpl _value, $Res Function(_$ExchangeRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_$ExchangeRateImpl(
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeRateImpl implements _ExchangeRate {
  const _$ExchangeRateImpl(
      {required this.baseCode, required final Map<String, num> conversionRates})
      : _conversionRates = conversionRates;

  factory _$ExchangeRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRateImplFromJson(json);

  @override
  final String baseCode;
  final Map<String, num> _conversionRates;
  @override
  Map<String, num> get conversionRates {
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRates);
  }

  @override
  String toString() {
    return 'ExchangeRate(baseCode: $baseCode, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRateImpl &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseCode,
      const DeepCollectionEquality().hash(_conversionRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRateImplCopyWith<_$ExchangeRateImpl> get copyWith =>
      __$$ExchangeRateImplCopyWithImpl<_$ExchangeRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRateImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRate implements ExchangeRate {
  const factory _ExchangeRate(
      {required final String baseCode,
      required final Map<String, num> conversionRates}) = _$ExchangeRateImpl;

  factory _ExchangeRate.fromJson(Map<String, dynamic> json) =
      _$ExchangeRateImpl.fromJson;

  @override
  String get baseCode;
  @override
  Map<String, num> get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRateImplCopyWith<_$ExchangeRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
