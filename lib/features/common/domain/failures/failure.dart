import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_messages.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.offline() = _Offline;
  const factory Failure.unexpectedError() = _UnexpectedError;
}

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.emptyEmailField() = _EmptyEmailField;
  const factory ValueFailure.invalidEmail() = _InvalidEmail;
  const factory ValueFailure.emptyPasswordField() = _EmptyPasscodField;
  const factory ValueFailure.shortPassword() = _ShortPassword;
  const factory ValueFailure.passwordsDontMatch() = _PasswordsDontMatch;
  const factory ValueFailure.emptyUsernameField() = _EmptyUsernameField;
  const factory ValueFailure.invalidUsername() = _InvalidUsername;
  const factory ValueFailure.longUsername() = _LongUsername;
}

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.passwordsDontMatch() = _passwordsDontMatch;
  const factory AuthFailure.emailNotVerified() = _EmailNotVerified;
}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
