// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart'
    as _i11;
import 'package:pix_cam/application/monthly/monthly_watcher/monthly_watcher_bloc.dart'
    as _i9;
import 'package:pix_cam/application/weekly/weekly_watcher/weekly_watcher_bloc.dart'
    as _i10;
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart' as _i3;
import 'package:pix_cam/domain/monthly/i_monthly_repository.dart' as _i5;
import 'package:pix_cam/domain/weekly/i_weekly_repository.dart' as _i7;
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart' as _i4;
import 'package:pix_cam/infrastructure/monthly/monthly_repository.dart' as _i6;
import 'package:pix_cam/infrastructure/weekly/weekly_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i3.IHourlyRepository>(() => _i4.HourlyRepository());
    gh.lazySingleton<_i5.IMonthlyRepository>(() => _i6.MonthlyRepository());
    gh.lazySingleton<_i7.IWeeklyRepository>(() => _i8.WeeklyRepository());
    gh.factory<_i9.MonthlyWatcherBloc>(
        () => _i9.MonthlyWatcherBloc(gh<_i5.IMonthlyRepository>()));
    gh.factory<_i10.WeeklyWatcherBloc>(
        () => _i10.WeeklyWatcherBloc(gh<_i7.IWeeklyRepository>()));
    gh.factory<_i11.HourlyWatcherBloc>(
        () => _i11.HourlyWatcherBloc(gh<_i3.IHourlyRepository>()));
    return this;
  }
}
