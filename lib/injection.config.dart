// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart'
    as _i14;
import 'package:pix_cam/application/hourly_comparison/hourly_comparison_watcher/houly_comparison_watcher_bloc.dart'
    as _i13;
import 'package:pix_cam/application/monthly/monthly_watcher/monthly_watcher_bloc.dart'
    as _i11;
import 'package:pix_cam/application/weekly/weekly_watcher/weekly_watcher_bloc.dart'
    as _i12;
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart' as _i5;
import 'package:pix_cam/domain/hourly_comparison/i_hourly_comparison_repository.dart'
    as _i3;
import 'package:pix_cam/domain/monthly/i_monthly_repositiory.dart' as _i7;
import 'package:pix_cam/domain/weekly/i_weekly_repository.dart' as _i9;
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart' as _i6;
import 'package:pix_cam/infrastructure/hourly_comparison/hourly_comparison_repository.dart'
    as _i4;
import 'package:pix_cam/infrastructure/monthly/monthly_repository.dart' as _i8;
import 'package:pix_cam/infrastructure/weekly/weekly_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IHourlyComparisonRepository>(
        () => _i4.HourlyComparisonRepository());
    gh.lazySingleton<_i5.IHourlyRepository>(() => _i6.HourlyRepository());
    gh.lazySingleton<_i7.IMonthlyRepository>(() => _i8.MonthlyRepository());
    gh.lazySingleton<_i9.IWeeklyRepository>(() => _i10.WeeklyRepository());
    gh.factory<_i11.MonthlyWatcherBloc>(
        () => _i11.MonthlyWatcherBloc(gh<_i7.IMonthlyRepository>()));
    gh.factory<_i12.WeeklyWatcherBloc>(
        () => _i12.WeeklyWatcherBloc(gh<_i9.IWeeklyRepository>()));
    gh.factory<_i13.HoulyComparisonWatcherBloc>(() =>
        _i13.HoulyComparisonWatcherBloc(gh<_i3.IHourlyComparisonRepository>()));
    gh.factory<_i14.HourlyWatcherBloc>(
        () => _i14.HourlyWatcherBloc(gh<_i5.IHourlyRepository>()));
    return this;
  }
}
