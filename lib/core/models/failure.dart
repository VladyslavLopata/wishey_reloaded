import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server() = ServerFailure;
  const factory Failure.duplicate() = DuplicateFailure;
  const factory Failure.severe() = SevereFailure;
}
