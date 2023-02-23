part of 'weekly_watcher_bloc.dart';

@freezed
class WeeklyWatcherEvent with _$WeeklyWatcherEvent {
  const factory WeeklyWatcherEvent.getWeeklyData(
          String selectedDate, String selectedMonth, String selectedYear) =
      _GetWeeklyData;
  factory WeeklyWatcherEvent.weeklyDataReceived(
    Either<ServerFailure, KtList<Weekly>> failureOrWeeklyData,
  ) = _WeeklyDataReceived;
}
