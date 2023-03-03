part of 'weekly_watcher_bloc.dart';

@freezed
class WeeklyWatcherEvent with _$WeeklyWatcherEvent {
  const factory WeeklyWatcherEvent.getWeeklyData(String endDate) =
      _GetWeeklyData;
  factory WeeklyWatcherEvent.weeklyDataReceived(
    Either<ServerFailure, KtList<Weekly>> failureOrWeeklyData,
  ) = _WeeklyDataReceived;
}
