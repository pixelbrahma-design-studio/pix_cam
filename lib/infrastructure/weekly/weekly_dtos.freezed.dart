// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeeklyDto _$WeeklyDtoFromJson(Map<String, dynamic> json) {
  return _WeeklyDto.fromJson(json);
}

/// @nodoc
mixin _$WeeklyDto {
  int get day => throw _privateConstructorUsedError;
  int get outCount => throw _privateConstructorUsedError;
  int get inCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyDtoCopyWith<WeeklyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyDtoCopyWith<$Res> {
  factory $WeeklyDtoCopyWith(WeeklyDto value, $Res Function(WeeklyDto) then) =
      _$WeeklyDtoCopyWithImpl<$Res, WeeklyDto>;
  @useResult
  $Res call({int day, int outCount, int inCount, int total});
}

/// @nodoc
class _$WeeklyDtoCopyWithImpl<$Res, $Val extends WeeklyDto>
    implements $WeeklyDtoCopyWith<$Res> {
  _$WeeklyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_WeeklyDtoCopyWith<$Res> implements $WeeklyDtoCopyWith<$Res> {
  factory _$$_WeeklyDtoCopyWith(
          _$_WeeklyDto value, $Res Function(_$_WeeklyDto) then) =
      __$$_WeeklyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int day, int outCount, int inCount, int total});
}

/// @nodoc
class __$$_WeeklyDtoCopyWithImpl<$Res>
    extends _$WeeklyDtoCopyWithImpl<$Res, _$_WeeklyDto>
    implements _$$_WeeklyDtoCopyWith<$Res> {
  __$$_WeeklyDtoCopyWithImpl(
      _$_WeeklyDto _value, $Res Function(_$_WeeklyDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? outCount = null,
    Object? inCount = null,
    Object? total = null,
  }) {
    return _then(_$_WeeklyDto(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
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
class _$_WeeklyDto extends _WeeklyDto {
  _$_WeeklyDto(
      {required this.day,
      required this.outCount,
      required this.inCount,
      required this.total})
      : super._();

  factory _$_WeeklyDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeeklyDtoFromJson(json);

  @override
  final int day;
  @override
  final int outCount;
  @override
  final int inCount;
  @override
  final int total;

  @override
  String toString() {
    return 'WeeklyDto(day: $day, outCount: $outCount, inCount: $inCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeklyDto &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.outCount, outCount) ||
                other.outCount == outCount) &&
            (identical(other.inCount, inCount) || other.inCount == inCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, outCount, inCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyDtoCopyWith<_$_WeeklyDto> get copyWith =>
      __$$_WeeklyDtoCopyWithImpl<_$_WeeklyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeeklyDtoToJson(
      this,
    );
  }
}

abstract class _WeeklyDto extends WeeklyDto {
  factory _WeeklyDto(
      {required final int day,
      required final int outCount,
      required final int inCount,
      required final int total}) = _$_WeeklyDto;
  _WeeklyDto._() : super._();

  factory _WeeklyDto.fromJson(Map<String, dynamic> json) =
      _$_WeeklyDto.fromJson;

  @override
  int get day;
  @override
  int get outCount;
  @override
  int get inCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_WeeklyDtoCopyWith<_$_WeeklyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
