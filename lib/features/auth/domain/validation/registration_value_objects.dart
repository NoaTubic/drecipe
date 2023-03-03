import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/domain/validation/value_object.dart';

class EmailValueObject extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory EmailValueObject(String input) {
    return EmailValueObject._(
      _validateEmail(input),
    );
  }

  const EmailValueObject._(this.value);
}

Either<ValueFailure, String> _validateEmail(String input) {
  const emailRegex = RegexConstants.email;
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else if (input.isEmpty) {
    return left(const ValueFailure.emptyEmailField());
  } else {
    return left(const ValueFailure.invalidEmail());
  }
}

class PasswordValueObject extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory PasswordValueObject(String input) {
    return PasswordValueObject._(
      validatePassword(input),
    );
  }

  factory PasswordValueObject.withCheck(String input, String check) {
    return PasswordValueObject._(validatePasswordMatch(input, check));
  }

  const PasswordValueObject._(this.value);
}

Either<ValueFailure, String> validatePassword(String input) {
  if (input.length >= Constants.minPasswordLength) {
    return right(input);
  } else if (input.isEmpty) {
    return left(const ValueFailure.emptyPasswordField());
  } else {
    return left(const ValueFailure.shortPassword());
  }
}

Either<ValueFailure, String> validatePasswordMatch(String input, String check) {
  if (input == check) {
    return right(input);
  } else if (input.isEmpty) {
    return left(const ValueFailure.emptyPasswordField());
  } else {
    return left(const ValueFailure.passwordsDontMatch());
  }
}

class UsernameValueObject extends ValueObject<String> {
  @override
  final Either<ValueFailure, String> value;

  factory UsernameValueObject(String input) {
    return UsernameValueObject._(
      _validateUsername(input),
    );
  }

  const UsernameValueObject._(this.value);
}

Either<ValueFailure, String> _validateUsername(String input) {
  const emailRegex = RegexConstants.name;
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else if (input.isEmpty) {
    return left(const ValueFailure.emptyUsernameField());
  } else if (input.length > Constants.maxUsernameLength) {
    return left(const ValueFailure.longUsername());
  } else {
    return left(const ValueFailure.invalidUsername());
  }
}
