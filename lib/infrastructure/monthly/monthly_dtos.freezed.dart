// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonthlyDto _$MonthlyDtoFromJson(Map<String, dynamic> json) {
  return _MonthlyDto.fromJson(json);
}

/// @nodoc
mixin _$MonthlyDto {
  int get hour => throw _privateConstructorUsedError;
  int get outCount => throw _privateConstructorUsedError;
  int get inCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyDtoCopyWith<MonthlyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyDtoCopyWith<$Res> {
  factory $MonthlyDtoCopyWith(
          MonthlyDto value, $Res Function(MonthlyDto) then) =
      _$MonthlyDtoCopyWithImpl<$Res, MonthlyDto>;
  @useResult
  $Res call({int hour, int outCount, int inCount, int total});
}

/// @nodoc
class _$MonthlyDtoCopyWithImpl<$Res, $Val extends MonthlyDto>
    implements $MonthlyDtoCopyWith<$Res> {
  _$MonthlyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      outCount: null == outCount
          ? _value.outCount
          : outCount // ignore: cast_nullable_to_non_nullable
              as int,
      inCount: null == inCount
          ? _value.inCount
          : inCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthlyDtoCopyWith<$Res>
    implements $MonthlyDtoCopyWith<$Res> {
  factory _$$_MonthlyDtoCopyWith(
          _$_MonthlyDto value, $Res Function(_$_MonthlyDto) then) =
      __$$_MonthlyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int outCount, int inCount, int total});
}

/// @nodoc
class __$$_MonthlyDtoCopyWithImpl<$Res>
    extends _$MonthlyDtoCopyWithImpl<$Res, _$_MonthlyDto>
    implements _$$_MonthlyDtoCopyWith<$Res> {
  __$$_MonthlyDtoCopyWithImpl(
      _$_MonthlyDto _value, $Res Function(_$_MonthlyDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_$_MonthlyDto(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      outCount: null == outCount
          ? _value.outCount
          : outCount // ignore: cast_nullable_to_non_nullable
              as int,
      inCount: null == inCount
          ? _value.inCount
          : inCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonthlyDto extends _MonthlyDto {
  _$_MonthlyDto(
      {required this.hour,
      required this.outCount,
      required this.inCount,
      required this.total})
      : super._();

  factory _$_MonthlyDto.fromJson(Map<String, dynamic> json) =>
      _$$_MonthlyDtoFromJson(json);

  @override
  final int hour;
  @override
  final int outCount;
  @override
  final int inCount;
  @override
  final int total;

  @override
  String toString() {
    return 'MonthlyDto(hour: $hour, outCount: $outCount, inCount: $inCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthlyDto &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.outCount, outCount) ||
                other.outCount == outCount) &&
            (identical(other.inCount, inCount) || other.inCount == inCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hour, outCount, inCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthlyDtoCopyWith<_$_MonthlyDto> get copyWith =>
      __$$_MonthlyDtoCopyWithImpl<_$_MonthlyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthlyDtoToJson(
      this,
    );
  }
}

abstract class _MonthlyDto extends MonthlyDto {
  factory _MonthlyDto(
      {required final int hour,
      required final int outCount,
      required final int inCount,
      required final int total}) = _$_MonthlyDto;
  _MonthlyDto._() : super._();

  factory _MonthlyDto.fromJson(Map<String, dynamic> json) =
      _$_MonthlyDto.fromJson;

  @override
  int get hour;
  @override
  int get outCount;
  @override
  int get inCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MonthlyDtoCopyWith<_$_MonthlyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
