// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pix_cam/application/hourly/hourly_watcher/hourly_watcher_bloc.dart'
    as _i5;
import 'package:pix_cam/domain/hourly/i_hourly_repository.dart' as _i3;
import 'package:pix_cam/infrastructure/hourly/hourly_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i5.HourlyWatcherBloc>(
        () => _i5.HourlyWatcherBloc(gh<_i3.IHourlyRepository>()));
    return this;
  }
}
