import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
abstract class ApiFailure with _$ApiFailure {
  const factory ApiFailure.serverError() = ServerError;
  const factory ApiFailure.notFound() = NotFound;
  const factory ApiFailure.badRequest() = BadRequest;
  const factory ApiFailure.unauthorized() = Unauthorized;
}
