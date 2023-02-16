part of 'hourly_watcher_bloc.dart';

@freezed
class HourlyWatcherState with _$HourlyWatcherState {
  const factory HourlyWatcherState.initial() = _Initial;
  const factory HourlyWatcherState.loadInProgress() = _LoadInProgress;
  const factory HourlyWatcherState.loadSuccess(KtList<Hourly> hourlyData) =
      _LoadSuccess;
  const factory HourlyWatcherState.loadFailed(ServerFailure serverFailure) =
      _LoadFailed;
}
