// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HourlyWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getHourlyDataForDay,
    required TResult Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)
        hourlyDataForDayReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult? Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult Function(Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHourlyDataForDay value) getHourlyDataForDay,
    required TResult Function(_HourlyDataForDayReceived value)
        hourlyDataForDayReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult? Function(_HourlyDataForDayReceived value)?
        hourlyDataForDayReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult Function(_HourlyDataForDayReceived value)? hourlyDataForDayReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWatcherEventCopyWith<$Res> {
  factory $HourlyWatcherEventCopyWith(
          HourlyWatcherEvent value, $Res Function(HourlyWatcherEvent) then) =
      _$HourlyWatcherEventCopyWithImpl<$Res, HourlyWatcherEvent>;
}

/// @nodoc
class _$HourlyWatcherEventCopyWithImpl<$Res, $Val extends HourlyWatcherEvent>
    implements $HourlyWatcherEventCopyWith<$Res> {
  _$HourlyWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHourlyDataForDayCopyWith<$Res> {
  factory _$$_GetHourlyDataForDayCopyWith(_$_GetHourlyDataForDay value,
          $Res Function(_$_GetHourlyDataForDay) then) =
      __$$_GetHourlyDataForDayCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDate, String selectedMonth, String selectedYear});
}

/// @nodoc
class __$$_GetHourlyDataForDayCopyWithImpl<$Res>
    extends _$HourlyWatcherEventCopyWithImpl<$Res, _$_GetHourlyDataForDay>
    implements _$$_GetHourlyDataForDayCopyWith<$Res> {
  __$$_GetHourlyDataForDayCopyWithImpl(_$_GetHourlyDataForDay _value,
      $Res Function(_$_GetHourlyDataForDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? selectedMonth = null,
    Object? selectedYear = null,
  }) {
    return _then(_$_GetHourlyDataForDay(
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

class _$_GetHourlyDataForDay implements _GetHourlyDataForDay {
  const _$_GetHourlyDataForDay(
      this.selectedDate, this.selectedMonth, this.selectedYear);

  @override
  final String selectedDate;
  @override
  final String selectedMonth;
  @override
  final String selectedYear;

  @override
  String toString() {
    return 'HourlyWatcherEvent.getHourlyDataForDay(selectedDate: $selectedDate, selectedMonth: $selectedMonth, selectedYear: $selectedYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetHourlyDataForDay &&
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
  _$$_GetHourlyDataForDayCopyWith<_$_GetHourlyDataForDay> get copyWith =>
      __$$_GetHourlyDataForDayCopyWithImpl<_$_GetHourlyDataForDay>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getHourlyDataForDay,
    required TResult Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)
        hourlyDataForDayReceived,
  }) {
    return getHourlyDataForDay(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult? Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
  }) {
    return getHourlyDataForDay?.call(selectedDate, selectedMonth, selectedYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult Function(Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
    required TResult orElse(),
  }) {
    if (getHourlyDataForDay != null) {
      return getHourlyDataForDay(selectedDate, selectedMonth, selectedYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHourlyDataForDay value) getHourlyDataForDay,
    required TResult Function(_HourlyDataForDayReceived value)
        hourlyDataForDayReceived,
  }) {
    return getHourlyDataForDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult? Function(_HourlyDataForDayReceived value)?
        hourlyDataForDayReceived,
  }) {
    return getHourlyDataForDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult Function(_HourlyDataForDayReceived value)? hourlyDataForDayReceived,
    required TResult orElse(),
  }) {
    if (getHourlyDataForDay != null) {
      return getHourlyDataForDay(this);
    }
    return orElse();
  }
}

abstract class _GetHourlyDataForDay implements HourlyWatcherEvent {
  const factory _GetHourlyDataForDay(
      final String selectedDate,
      final String selectedMonth,
      final String selectedYear) = _$_GetHourlyDataForDay;

  String get selectedDate;
  String get selectedMonth;
  String get selectedYear;
  @JsonKey(ignore: true)
  _$$_GetHourlyDataForDayCopyWith<_$_GetHourlyDataForDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HourlyDataForDayReceivedCopyWith<$Res> {
  factory _$$_HourlyDataForDayReceivedCopyWith(
          _$_HourlyDataForDayReceived value,
          $Res Function(_$_HourlyDataForDayReceived) then) =
      __$$_HourlyDataForDayReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ServerFailure, KtList<Hourly>> failureOrHourlyData});
}

/// @nodoc
class __$$_HourlyDataForDayReceivedCopyWithImpl<$Res>
    extends _$HourlyWatcherEventCopyWithImpl<$Res, _$_HourlyDataForDayReceived>
    implements _$$_HourlyDataForDayReceivedCopyWith<$Res> {
  __$$_HourlyDataForDayReceivedCopyWithImpl(_$_HourlyDataForDayReceived _value,
      $Res Function(_$_HourlyDataForDayReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrHourlyData = null,
  }) {
    return _then(_$_HourlyDataForDayReceived(
      null == failureOrHourlyData
          ? _value.failureOrHourlyData
          : failureOrHourlyData // ignore: cast_nullable_to_non_nullable
              as Either<ServerFailure, KtList<Hourly>>,
    ));
  }
}

/// @nodoc

class _$_HourlyDataForDayReceived implements _HourlyDataForDayReceived {
  const _$_HourlyDataForDayReceived(this.failureOrHourlyData);

  @override
  final Either<ServerFailure, KtList<Hourly>> failureOrHourlyData;

  @override
  String toString() {
    return 'HourlyWatcherEvent.hourlyDataForDayReceived(failureOrHourlyData: $failureOrHourlyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyDataForDayReceived &&
            (identical(other.failureOrHourlyData, failureOrHourlyData) ||
                other.failureOrHourlyData == failureOrHourlyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrHourlyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyDataForDayReceivedCopyWith<_$_HourlyDataForDayReceived>
      get copyWith => __$$_HourlyDataForDayReceivedCopyWithImpl<
          _$_HourlyDataForDayReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)
        getHourlyDataForDay,
    required TResult Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)
        hourlyDataForDayReceived,
  }) {
    return hourlyDataForDayReceived(failureOrHourlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult? Function(
            Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
  }) {
    return hourlyDataForDayReceived?.call(failureOrHourlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String selectedDate, String selectedMonth, String selectedYear)?
        getHourlyDataForDay,
    TResult Function(Either<ServerFailure, KtList<Hourly>> failureOrHourlyData)?
        hourlyDataForDayReceived,
    required TResult orElse(),
  }) {
    if (hourlyDataForDayReceived != null) {
      return hourlyDataForDayReceived(failureOrHourlyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHourlyDataForDay value) getHourlyDataForDay,
    required TResult Function(_HourlyDataForDayReceived value)
        hourlyDataForDayReceived,
  }) {
    return hourlyDataForDayReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult? Function(_HourlyDataForDayReceived value)?
        hourlyDataForDayReceived,
  }) {
    return hourlyDataForDayReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHourlyDataForDay value)? getHourlyDataForDay,
    TResult Function(_HourlyDataForDayReceived value)? hourlyDataForDayReceived,
    required TResult orElse(),
  }) {
    if (hourlyDataForDayReceived != null) {
      return hourlyDataForDayReceived(this);
    }
    return orElse();
  }
}

abstract class _HourlyDataForDayReceived implements HourlyWatcherEvent {
  const factory _HourlyDataForDayReceived(
          final Either<ServerFailure, KtList<Hourly>> failureOrHourlyData) =
      _$_HourlyDataForDayReceived;

  Either<ServerFailure, KtList<Hourly>> get failureOrHourlyData;
  @JsonKey(ignore: true)
  _$$_HourlyDataForDayReceivedCopyWith<_$_HourlyDataForDayReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HourlyWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Hourly> hourlyData) loadSuccess,
    required TResult Function(ServerFailure serverFailure) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult? Function(ServerFailure serverFailure)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult Function(ServerFailure serverFailure)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWatcherStateCopyWith<$Res> {
  factory $HourlyWatcherStateCopyWith(
          HourlyWatcherState value, $Res Function(HourlyWatcherState) then) =
      _$HourlyWatcherStateCopyWithImpl<$Res, HourlyWatcherState>;
}

/// @nodoc
class _$HourlyWatcherStateCopyWithImpl<$Res, $Val extends HourlyWatcherState>
    implements $HourlyWatcherStateCopyWith<$Res> {
  _$HourlyWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$HourlyWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HourlyWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Hourly> hourlyData) loadSuccess,
    required TResult Function(ServerFailure serverFailure) loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult? Function(ServerFailure serverFailure)? loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult Function(ServerFailure serverFailure)? loadFailed,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HourlyWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$HourlyWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'HourlyWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Hourly> hourlyData) loadSuccess,
    required TResult Function(ServerFailure serverFailure) loadFailed,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult? Function(ServerFailure serverFailure)? loadFailed,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult Function(ServerFailure serverFailure)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements HourlyWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Hourly> hourlyData});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$HourlyWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyData = null,
  }) {
    return _then(_$_LoadSuccess(
      null == hourlyData
          ? _value.hourlyData
          : hourlyData // ignore: cast_nullable_to_non_nullable
              as KtList<Hourly>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.hourlyData);

  @override
  final KtList<Hourly> hourlyData;

  @override
  String toString() {
    return 'HourlyWatcherState.loadSuccess(hourlyData: $hourlyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.hourlyData, hourlyData) ||
                other.hourlyData == hourlyData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hourlyData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Hourly> hourlyData) loadSuccess,
    required TResult Function(ServerFailure serverFailure) loadFailed,
  }) {
    return loadSuccess(hourlyData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult? Function(ServerFailure serverFailure)? loadFailed,
  }) {
    return loadSuccess?.call(hourlyData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult Function(ServerFailure serverFailure)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(hourlyData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements HourlyWatcherState {
  const factory _LoadSuccess(final KtList<Hourly> hourlyData) = _$_LoadSuccess;

  KtList<Hourly> get hourlyData;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailedCopyWith<$Res> {
  factory _$$_LoadFailedCopyWith(
          _$_LoadFailed value, $Res Function(_$_LoadFailed) then) =
      __$$_LoadFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({ServerFailure serverFailure});

  $ServerFailureCopyWith<$Res> get serverFailure;
}

/// @nodoc
class __$$_LoadFailedCopyWithImpl<$Res>
    extends _$HourlyWatcherStateCopyWithImpl<$Res, _$_LoadFailed>
    implements _$$_LoadFailedCopyWith<$Res> {
  __$$_LoadFailedCopyWithImpl(
      _$_LoadFailed _value, $Res Function(_$_LoadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverFailure = null,
  }) {
    return _then(_$_LoadFailed(
      null == serverFailure
          ? _value.serverFailure
          : serverFailure // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerFailureCopyWith<$Res> get serverFailure {
    return $ServerFailureCopyWith<$Res>(_value.serverFailure, (value) {
      return _then(_value.copyWith(serverFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailed implements _LoadFailed {
  const _$_LoadFailed(this.serverFailure);

  @override
  final ServerFailure serverFailure;

  @override
  String toString() {
    return 'HourlyWatcherState.loadFailed(serverFailure: $serverFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailed &&
            (identical(other.serverFailure, serverFailure) ||
                other.serverFailure == serverFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      __$$_LoadFailedCopyWithImpl<_$_LoadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Hourly> hourlyData) loadSuccess,
    required TResult Function(ServerFailure serverFailure) loadFailed,
  }) {
    return loadFailed(serverFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult? Function(ServerFailure serverFailure)? loadFailed,
  }) {
    return loadFailed?.call(serverFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Hourly> hourlyData)? loadSuccess,
    TResult Function(ServerFailure serverFailure)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(serverFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadFailed implements HourlyWatcherState {
  const factory _LoadFailed(final ServerFailure serverFailure) = _$_LoadFailed;

  ServerFailure get serverFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
