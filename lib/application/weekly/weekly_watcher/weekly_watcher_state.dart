part of 'weekly_watcher_bloc.dart';

@freezed
class WeeklyWatcherState with _$WeeklyWatcherState {
  const factory WeeklyWatcherState.initial() = _Initial;
  const factory WeeklyWatcherState.loading() = _Loading;
  factory WeeklyWatcherState.success(KtList<Weekly> weeklyData) = _Success;
  factory WeeklyWatcherState.failures(ServerFailure failure) = _Failures;
}
