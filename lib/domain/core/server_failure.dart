import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failure.freezed.dart';

@freezed
class ServerFailure with _$ServerFailure {
  const factory ServerFailure.serverError() = _ServerError;
  const factory ServerFailure.unexpected() = _Unexpected;
  const factory ServerFailure.insufficientPermission() =
      _InsufficientPermission;
}
