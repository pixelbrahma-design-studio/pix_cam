// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeeklyWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getWeeklyData,
    required TResult Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)
        weeklyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult? Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult Function(Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeeklyData value) getWeeklyData,
    required TResult Function(_WeeklyDataReceived value) weeklyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeeklyData value)? getWeeklyData,
    TResult? Function(_WeeklyDataReceived value)? weeklyDataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeeklyData value)? getWeeklyData,
    TResult Function(_WeeklyDataReceived value)? weeklyDataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyWatcherEventCopyWith<$Res> {
  factory $WeeklyWatcherEventCopyWith(
          WeeklyWatcherEvent value, $Res Function(WeeklyWatcherEvent) then) =
      _$WeeklyWatcherEventCopyWithImpl<$Res, WeeklyWatcherEvent>;
}

/// @nodoc
class _$WeeklyWatcherEventCopyWithImpl<$Res, $Val extends WeeklyWatcherEvent>
    implements $WeeklyWatcherEventCopyWith<$Res> {
  _$WeeklyWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetWeeklyDataCopyWith<$Res> {
  factory _$$_GetWeeklyDataCopyWith(
          _$_GetWeeklyData value, $Res Function(_$_GetWeeklyData) then) =
      __$$_GetWeeklyDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDate, String selectedMonth, String selectedYear});
}

/// @nodoc
class __$$_GetWeeklyDataCopyWithImpl<$Res>
    extends _$WeeklyWatcherEventCopyWithImpl<$Res, _$_GetWeeklyData>
    implements _$$_GetWeeklyDataCopyWith<$Res> {
  __$$_GetWeeklyDataCopyWithImpl(
      _$_GetWeeklyData _value, $Res Function(_$_GetWeeklyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? selectedMonth = null,
    Object? selectedYear = null,
  }) {
    return _then(_$_GetWeeklyData(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as String,
      null == selectedYear
          ? _value.selectedYear
          : selectedYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetWeeklyData implements _GetWeeklyData {
  const _$_GetWeeklyData(
      this.selectedDate, this.selectedMonth, this.selectedYear);

  @override
  final String selectedDate;
  @override
  final String selectedMonth;
  @override
  final String selectedYear;

  @override
  String toString() {
    return 'WeeklyWatcherEvent.getWeeklyData(selectedDate: $selectedDate, selectedMonth: $selectedMonth, selectedYear: $selectedYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetWeeklyData &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth) &&
            (identical(other.selectedYear, selectedYear) ||
                other.selectedYear == selectedYear));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedDate, selectedMonth, selectedYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetWeeklyDataCopyWith<_$_GetWeeklyData> get copyWith =>
      __$$_GetWeeklyDataCopyWithImpl<_$_GetWeeklyData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getWeeklyData,
    required TResult Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)
        weeklyDataReceived,
  }) {
    return getWeeklyData(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult? Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
  }) {
    return getWeeklyData?.call(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult Function(Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
    required TResult orElse(),
  }) {
    if (getWeeklyData != null) {
      return getWeeklyData(selectedDate, selectedMonth, selectedYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeeklyData value) getWeeklyData,
    required TResult Function(_WeeklyDataReceived value) weeklyDataReceived,
  }) {
    return getWeeklyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeeklyData value)? getWeeklyData,
    TResult? Function(_WeeklyDataReceived value)? weeklyDataReceived,
  }) {
    return getWeeklyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeeklyData value)? getWeeklyData,
    TResult Function(_WeeklyDataReceived value)? weeklyDataReceived,
    required TResult orElse(),
  }) {
    if (getWeeklyData != null) {
      return getWeeklyData(this);
    }
    return orElse();
  }
}

abstract class _GetWeeklyData implements WeeklyWatcherEvent {
  const factory _GetWeeklyData(final String selectedDate,
      final String selectedMonth, final String selectedYear) = _$_GetWeeklyData;

  String get selectedDate;
  String get selectedMonth;
  String get selectedYear;
  @JsonKey(ignore: true)
  _$$_GetWeeklyDataCopyWith<_$_GetWeeklyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeeklyDataReceivedCopyWith<$Res> {
  factory _$$_WeeklyDataReceivedCopyWith(_$_WeeklyDataReceived value,
          $Res Function(_$_WeeklyDataReceived) then) =
      __$$_WeeklyDataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ServerFailure, KtList<Weekly>> failureOrHourlyData});
}

/// @nodoc
class __$$_WeeklyDataReceivedCopyWithImpl<$Res>
    extends _$WeeklyWatcherEventCopyWithImpl<$Res, _$_WeeklyDataReceived>
    implements _$$_WeeklyDataReceivedCopyWith<$Res> {
  __$$_WeeklyDataReceivedCopyWithImpl(
      _$_WeeklyDataReceived _value, $Res Function(_$_WeeklyDataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrHourlyData = null,
  }) {
    return _then(_$_WeeklyDataReceived(
      null == failureOrHourlyData
          ? _value.failureOrHourlyData
          : failureOrHourlyData // ignore: cast_nullable_to_non_nullable
              as Either<ServerFailure, KtList<Weekly>>,
    ));
  }
}

/// @nodoc

class _$_WeeklyDataReceived implements _WeeklyDataReceived {
  _$_WeeklyDataReceived(this.failureOrHourlyData);

  @override
  final Either<ServerFailure, KtList<Weekly>> failureOrHourlyData;

  @override
  String toString() {
    return 'WeeklyWatcherEvent.weeklyDataReceived(failureOrHourlyData: $failureOrHourlyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeklyDataReceived &&
            (identical(other.failureOrHourlyData, failureOrHourlyData) ||
                other.failureOrHourlyData == failureOrHourlyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrHourlyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyDataReceivedCopyWith<_$_WeeklyDataReceived> get copyWith =>
      __$$_WeeklyDataReceivedCopyWithImpl<_$_WeeklyDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getWeeklyData,
    required TResult Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)
        weeklyDataReceived,
  }) {
    return weeklyDataReceived(failureOrHourlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult? Function(
            Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
  }) {
    return weeklyDataReceived?.call(failureOrHourlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getWeeklyData,
    TResult Function(Either<ServerFailure, KtList<Weekly>> failureOrHourlyData)?
        weeklyDataReceived,
    required TResult orElse(),
  }) {
    if (weeklyDataReceived != null) {
      return weeklyDataReceived(failureOrHourlyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeeklyData value) getWeeklyData,
    required TResult Function(_WeeklyDataReceived value) weeklyDataReceived,
  }) {
    return weeklyDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeeklyData value)? getWeeklyData,
    TResult? Function(_WeeklyDataReceived value)? weeklyDataReceived,
  }) {
    return weeklyDataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeeklyData value)? getWeeklyData,
    TResult Function(_WeeklyDataReceived value)? weeklyDataReceived,
    required TResult orElse(),
  }) {
    if (weeklyDataReceived != null) {
      return weeklyDataReceived(this);
    }
    return orElse();
  }
}

abstract class _WeeklyDataReceived implements WeeklyWatcherEvent {
  factory _WeeklyDataReceived(
          final Either<ServerFailure, KtList<Weekly>> failureOrHourlyData) =
      _$_WeeklyDataReceived;

  Either<ServerFailure, KtList<Weekly>> get failureOrHourlyData;
  @JsonKey(ignore: true)
  _$$_WeeklyDataReceivedCopyWith<_$_WeeklyDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeeklyWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Weekly> weeklyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Weekly> weeklyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Weekly> weeklyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyWatcherStateCopyWith<$Res> {
  factory $WeeklyWatcherStateCopyWith(
          WeeklyWatcherState value, $Res Function(WeeklyWatcherState) then) =
      _$WeeklyWatcherStateCopyWithImpl<$Res, WeeklyWatcherState>;
}

/// @nodoc
class _$WeeklyWatcherStateCopyWithImpl<$Res, $Val extends WeeklyWatcherState>
    implements $WeeklyWatcherStateCopyWith<$Res> {
  _$WeeklyWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WeeklyWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WeeklyWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Weekly> weeklyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Weekly> weeklyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Weekly> weeklyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeeklyWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WeeklyWatcherStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WeeklyWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Weekly> weeklyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Weekly> weeklyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Weekly> weeklyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WeeklyWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Weekly> weeklyData});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$WeeklyWatcherStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyData = null,
  }) {
    return _then(_$_Success(
      null == weeklyData
          ? _value.weeklyData
          : weeklyData // ignore: cast_nullable_to_non_nullable
              as KtList<Weekly>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  _$_Success(this.weeklyData);

  @override
  final KtList<Weekly> weeklyData;

  @override
  String toString() {
    return 'WeeklyWatcherState.success(weeklyData: $weeklyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.weeklyData, weeklyData) ||
                other.weeklyData == weeklyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weeklyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Weekly> weeklyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return success(weeklyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Weekly> weeklyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return success?.call(weeklyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Weekly> weeklyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(weeklyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements WeeklyWatcherState {
  factory _Success(final KtList<Weekly> weeklyData) = _$_Success;

  KtList<Weekly> get weeklyData;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailuresCopyWith<$Res> {
  factory _$$_FailuresCopyWith(
          _$_Failures value, $Res Function(_$_Failures) then) =
      __$$_FailuresCopyWithImpl<$Res>;
  @useResult
  $Res call({ServerFailure failure});

  $ServerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailuresCopyWithImpl<$Res>
    extends _$WeeklyWatcherStateCopyWithImpl<$Res, _$_Failures>
    implements _$$_FailuresCopyWith<$Res> {
  __$$_FailuresCopyWithImpl(
      _$_Failures _value, $Res Function(_$_Failures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failures(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<$Res> get failure {
    return $ServerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failures implements _Failures {
  _$_Failures(this.failure);

  @override
  final ServerFailure failure;

  @override
  String toString() {
    return 'WeeklyWatcherState.failures(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failures &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailuresCopyWith<_$_Failures> get copyWith =>
      __$$_FailuresCopyWithImpl<_$_Failures>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Weekly> weeklyData) success,
    required TResult Function(ServerFailure failure) failures,
  }) {
    return failures(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(KtList<Weekly> weeklyData)? success,
    TResult? Function(ServerFailure failure)? failures,
  }) {
    return failures?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Weekly> weeklyData)? success,
    TResult Function(ServerFailure failure)? failures,
    required TResult orElse(),
  }) {
    if (failures != null) {
      return failures(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failures value) failures,
  }) {
    return failures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failures value)? failures,
  }) {
    return failures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failures value)? failures,
    required TResult orElse(),
  }) {
    if (failures != null) {
      return failures(this);
    }
    return orElse();
  }
}

abstract class _Failures implements WeeklyWatcherState {
  factory _Failures(final ServerFailure failure) = _$_Failures;

  ServerFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailuresCopyWith<_$_Failures> get copyWith =>
      throw _privateConstructorUsedError;
}
