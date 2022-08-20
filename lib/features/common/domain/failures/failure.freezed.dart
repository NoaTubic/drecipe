// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$_OfflineCopyWith<$Res> {
  factory _$$_OfflineCopyWith(
          _$_Offline value, $Res Function(_$_Offline) then) =
      __$$_OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OfflineCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_OfflineCopyWith<$Res> {
  __$$_OfflineCopyWithImpl(_$_Offline _value, $Res Function(_$_Offline) _then)
      : super(_value, (v) => _then(v as _$_Offline));

  @override
  _$_Offline get _value => super._value as _$_Offline;
}

/// @nodoc

class _$_Offline implements _Offline {
  const _$_Offline();

  @override
  String toString() {
    return 'Failure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() unexpectedError,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements Failure {
  const factory _Offline() = _$_Offline;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$_UnexpectedError));

  @override
  _$_UnexpectedError get _value => super._value as _$_UnexpectedError;
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'Failure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Offline value) offline,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Offline value)? offline,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements Failure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}

/// @nodoc
mixin _$ValueFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure _value;
  // ignore: unused_field
  final $Res Function(ValueFailure) _then;
}

/// @nodoc
abstract class _$$_EmptyEmailFieldCopyWith<$Res> {
  factory _$$_EmptyEmailFieldCopyWith(
          _$_EmptyEmailField value, $Res Function(_$_EmptyEmailField) then) =
      __$$_EmptyEmailFieldCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyEmailFieldCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_EmptyEmailFieldCopyWith<$Res> {
  __$$_EmptyEmailFieldCopyWithImpl(
      _$_EmptyEmailField _value, $Res Function(_$_EmptyEmailField) _then)
      : super(_value, (v) => _then(v as _$_EmptyEmailField));

  @override
  _$_EmptyEmailField get _value => super._value as _$_EmptyEmailField;
}

/// @nodoc

class _$_EmptyEmailField implements _EmptyEmailField {
  const _$_EmptyEmailField();

  @override
  String toString() {
    return 'ValueFailure.emptyEmailField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyEmailField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return emptyEmailField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return emptyEmailField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (emptyEmailField != null) {
      return emptyEmailField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return emptyEmailField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return emptyEmailField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (emptyEmailField != null) {
      return emptyEmailField(this);
    }
    return orElse();
  }
}

abstract class _EmptyEmailField implements ValueFailure {
  const factory _EmptyEmailField() = _$_EmptyEmailField;
}

/// @nodoc
abstract class _$$_InvalidEmailCopyWith<$Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail value, $Res Function(_$_InvalidEmail) then) =
      __$$_InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_InvalidEmailCopyWith<$Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail _value, $Res Function(_$_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$_InvalidEmail));

  @override
  _$_InvalidEmail get _value => super._value as _$_InvalidEmail;
}

/// @nodoc

class _$_InvalidEmail implements _InvalidEmail {
  const _$_InvalidEmail();

  @override
  String toString() {
    return 'ValueFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements ValueFailure {
  const factory _InvalidEmail() = _$_InvalidEmail;
}

/// @nodoc
abstract class _$$_EmptyPasscodFieldCopyWith<$Res> {
  factory _$$_EmptyPasscodFieldCopyWith(_$_EmptyPasscodField value,
          $Res Function(_$_EmptyPasscodField) then) =
      __$$_EmptyPasscodFieldCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyPasscodFieldCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_EmptyPasscodFieldCopyWith<$Res> {
  __$$_EmptyPasscodFieldCopyWithImpl(
      _$_EmptyPasscodField _value, $Res Function(_$_EmptyPasscodField) _then)
      : super(_value, (v) => _then(v as _$_EmptyPasscodField));

  @override
  _$_EmptyPasscodField get _value => super._value as _$_EmptyPasscodField;
}

/// @nodoc

class _$_EmptyPasscodField implements _EmptyPasscodField {
  const _$_EmptyPasscodField();

  @override
  String toString() {
    return 'ValueFailure.emptyPasswordField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyPasscodField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return emptyPasswordField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return emptyPasswordField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (emptyPasswordField != null) {
      return emptyPasswordField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return emptyPasswordField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return emptyPasswordField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (emptyPasswordField != null) {
      return emptyPasswordField(this);
    }
    return orElse();
  }
}

abstract class _EmptyPasscodField implements ValueFailure {
  const factory _EmptyPasscodField() = _$_EmptyPasscodField;
}

/// @nodoc
abstract class _$$_ShortPasswordCopyWith<$Res> {
  factory _$$_ShortPasswordCopyWith(
          _$_ShortPassword value, $Res Function(_$_ShortPassword) then) =
      __$$_ShortPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShortPasswordCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_ShortPasswordCopyWith<$Res> {
  __$$_ShortPasswordCopyWithImpl(
      _$_ShortPassword _value, $Res Function(_$_ShortPassword) _then)
      : super(_value, (v) => _then(v as _$_ShortPassword));

  @override
  _$_ShortPassword get _value => super._value as _$_ShortPassword;
}

/// @nodoc

class _$_ShortPassword implements _ShortPassword {
  const _$_ShortPassword();

  @override
  String toString() {
    return 'ValueFailure.shortPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShortPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return shortPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return shortPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword implements ValueFailure {
  const factory _ShortPassword() = _$_ShortPassword;
}

/// @nodoc
abstract class _$$_PasswordsDontMatchCopyWith<$Res> {
  factory _$$_PasswordsDontMatchCopyWith(_$_PasswordsDontMatch value,
          $Res Function(_$_PasswordsDontMatch) then) =
      __$$_PasswordsDontMatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordsDontMatchCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_PasswordsDontMatchCopyWith<$Res> {
  __$$_PasswordsDontMatchCopyWithImpl(
      _$_PasswordsDontMatch _value, $Res Function(_$_PasswordsDontMatch) _then)
      : super(_value, (v) => _then(v as _$_PasswordsDontMatch));

  @override
  _$_PasswordsDontMatch get _value => super._value as _$_PasswordsDontMatch;
}

/// @nodoc

class _$_PasswordsDontMatch implements _PasswordsDontMatch {
  const _$_PasswordsDontMatch();

  @override
  String toString() {
    return 'ValueFailure.passwordsDontMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordsDontMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return passwordsDontMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return passwordsDontMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return passwordsDontMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return passwordsDontMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch(this);
    }
    return orElse();
  }
}

abstract class _PasswordsDontMatch implements ValueFailure {
  const factory _PasswordsDontMatch() = _$_PasswordsDontMatch;
}

/// @nodoc
abstract class _$$_EmptyUsernameFieldCopyWith<$Res> {
  factory _$$_EmptyUsernameFieldCopyWith(_$_EmptyUsernameField value,
          $Res Function(_$_EmptyUsernameField) then) =
      __$$_EmptyUsernameFieldCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyUsernameFieldCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_EmptyUsernameFieldCopyWith<$Res> {
  __$$_EmptyUsernameFieldCopyWithImpl(
      _$_EmptyUsernameField _value, $Res Function(_$_EmptyUsernameField) _then)
      : super(_value, (v) => _then(v as _$_EmptyUsernameField));

  @override
  _$_EmptyUsernameField get _value => super._value as _$_EmptyUsernameField;
}

/// @nodoc

class _$_EmptyUsernameField implements _EmptyUsernameField {
  const _$_EmptyUsernameField();

  @override
  String toString() {
    return 'ValueFailure.emptyUsernameField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyUsernameField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return emptyUsernameField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return emptyUsernameField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (emptyUsernameField != null) {
      return emptyUsernameField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return emptyUsernameField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return emptyUsernameField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (emptyUsernameField != null) {
      return emptyUsernameField(this);
    }
    return orElse();
  }
}

abstract class _EmptyUsernameField implements ValueFailure {
  const factory _EmptyUsernameField() = _$_EmptyUsernameField;
}

/// @nodoc
abstract class _$$_InvalidUsernameCopyWith<$Res> {
  factory _$$_InvalidUsernameCopyWith(
          _$_InvalidUsername value, $Res Function(_$_InvalidUsername) then) =
      __$$_InvalidUsernameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidUsernameCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_InvalidUsernameCopyWith<$Res> {
  __$$_InvalidUsernameCopyWithImpl(
      _$_InvalidUsername _value, $Res Function(_$_InvalidUsername) _then)
      : super(_value, (v) => _then(v as _$_InvalidUsername));

  @override
  _$_InvalidUsername get _value => super._value as _$_InvalidUsername;
}

/// @nodoc

class _$_InvalidUsername implements _InvalidUsername {
  const _$_InvalidUsername();

  @override
  String toString() {
    return 'ValueFailure.invalidUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidUsername);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return invalidUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return invalidUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return invalidUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class _InvalidUsername implements ValueFailure {
  const factory _InvalidUsername() = _$_InvalidUsername;
}

/// @nodoc
abstract class _$$_LongUsernameCopyWith<$Res> {
  factory _$$_LongUsernameCopyWith(
          _$_LongUsername value, $Res Function(_$_LongUsername) then) =
      __$$_LongUsernameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LongUsernameCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res>
    implements _$$_LongUsernameCopyWith<$Res> {
  __$$_LongUsernameCopyWithImpl(
      _$_LongUsername _value, $Res Function(_$_LongUsername) _then)
      : super(_value, (v) => _then(v as _$_LongUsername));

  @override
  _$_LongUsername get _value => super._value as _$_LongUsername;
}

/// @nodoc

class _$_LongUsername implements _LongUsername {
  const _$_LongUsername();

  @override
  String toString() {
    return 'ValueFailure.longUsername()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LongUsername);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyEmailField,
    required TResult Function() invalidEmail,
    required TResult Function() emptyPasswordField,
    required TResult Function() shortPassword,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emptyUsernameField,
    required TResult Function() invalidUsername,
    required TResult Function() longUsername,
  }) {
    return longUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
  }) {
    return longUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyEmailField,
    TResult Function()? invalidEmail,
    TResult Function()? emptyPasswordField,
    TResult Function()? shortPassword,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emptyUsernameField,
    TResult Function()? invalidUsername,
    TResult Function()? longUsername,
    required TResult orElse(),
  }) {
    if (longUsername != null) {
      return longUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyEmailField value) emptyEmailField,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_EmptyPasscodField value) emptyPasswordField,
    required TResult Function(_ShortPassword value) shortPassword,
    required TResult Function(_PasswordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmptyUsernameField value) emptyUsernameField,
    required TResult Function(_InvalidUsername value) invalidUsername,
    required TResult Function(_LongUsername value) longUsername,
  }) {
    return longUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
  }) {
    return longUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyEmailField value)? emptyEmailField,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_EmptyPasscodField value)? emptyPasswordField,
    TResult Function(_ShortPassword value)? shortPassword,
    TResult Function(_PasswordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmptyUsernameField value)? emptyUsernameField,
    TResult Function(_InvalidUsername value)? invalidUsername,
    TResult Function(_LongUsername value)? longUsername,
    required TResult orElse(),
  }) {
    if (longUsername != null) {
      return longUsername(this);
    }
    return orElse();
  }
}

abstract class _LongUsername implements ValueFailure {
  const factory _LongUsername() = _$_LongUsername;
}

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$_CancelledByUserCopyWith<$Res> {
  factory _$$_CancelledByUserCopyWith(
          _$_CancelledByUser value, $Res Function(_$_CancelledByUser) then) =
      __$$_CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_CancelledByUserCopyWith<$Res> {
  __$$_CancelledByUserCopyWithImpl(
      _$_CancelledByUser _value, $Res Function(_$_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _$_CancelledByUser));

  @override
  _$_CancelledByUser get _value => super._value as _$_CancelledByUser;
}

/// @nodoc

class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_EmailAlreadyInUseCopyWith<$Res> {
  factory _$$_EmailAlreadyInUseCopyWith(_$_EmailAlreadyInUse value,
          $Res Function(_$_EmailAlreadyInUse) then) =
      __$$_EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_EmailAlreadyInUseCopyWith<$Res> {
  __$$_EmailAlreadyInUseCopyWithImpl(
      _$_EmailAlreadyInUse _value, $Res Function(_$_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _$_EmailAlreadyInUse));

  @override
  _$_EmailAlreadyInUse get _value => super._value as _$_EmailAlreadyInUse;
}

/// @nodoc

class _$_EmailAlreadyInUse implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements AuthFailure {
  const factory _EmailAlreadyInUse() = _$_EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$_InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$$_InvalidEmailAndPasswordCombinationCopyWith(
          _$_InvalidEmailAndPasswordCombination value,
          $Res Function(_$_InvalidEmailAndPasswordCombination) then) =
      __$$_InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$$_InvalidEmailAndPasswordCombinationCopyWithImpl(
      _$_InvalidEmailAndPasswordCombination _value,
      $Res Function(_$_InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as _$_InvalidEmailAndPasswordCombination));

  @override
  _$_InvalidEmailAndPasswordCombination get _value =>
      super._value as _$_InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$_InvalidEmailAndPasswordCombination
    implements _InvalidEmailAndPasswordCombination {
  const _$_InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory _InvalidEmailAndPasswordCombination() =
      _$_InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<$Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound value, $Res Function(_$_UserNotFound) then) =
      __$$_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_UserNotFoundCopyWith<$Res> {
  __$$_UserNotFoundCopyWithImpl(
      _$_UserNotFound _value, $Res Function(_$_UserNotFound) _then)
      : super(_value, (v) => _then(v as _$_UserNotFound));

  @override
  _$_UserNotFound get _value => super._value as _$_UserNotFound;
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$$_passwordsDontMatchCopyWith<$Res> {
  factory _$$_passwordsDontMatchCopyWith(_$_passwordsDontMatch value,
          $Res Function(_$_passwordsDontMatch) then) =
      __$$_passwordsDontMatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_passwordsDontMatchCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_passwordsDontMatchCopyWith<$Res> {
  __$$_passwordsDontMatchCopyWithImpl(
      _$_passwordsDontMatch _value, $Res Function(_$_passwordsDontMatch) _then)
      : super(_value, (v) => _then(v as _$_passwordsDontMatch));

  @override
  _$_passwordsDontMatch get _value => super._value as _$_passwordsDontMatch;
}

/// @nodoc

class _$_passwordsDontMatch implements _passwordsDontMatch {
  const _$_passwordsDontMatch();

  @override
  String toString() {
    return 'AuthFailure.passwordsDontMatch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_passwordsDontMatch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return passwordsDontMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return passwordsDontMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return passwordsDontMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return passwordsDontMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (passwordsDontMatch != null) {
      return passwordsDontMatch(this);
    }
    return orElse();
  }
}

abstract class _passwordsDontMatch implements AuthFailure {
  const factory _passwordsDontMatch() = _$_passwordsDontMatch;
}

/// @nodoc
abstract class _$$_EmailNotVerifiedCopyWith<$Res> {
  factory _$$_EmailNotVerifiedCopyWith(
          _$_EmailNotVerified value, $Res Function(_$_EmailNotVerified) then) =
      __$$_EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailNotVerifiedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_EmailNotVerifiedCopyWith<$Res> {
  __$$_EmailNotVerifiedCopyWithImpl(
      _$_EmailNotVerified _value, $Res Function(_$_EmailNotVerified) _then)
      : super(_value, (v) => _then(v as _$_EmailNotVerified));

  @override
  _$_EmailNotVerified get _value => super._value as _$_EmailNotVerified;
}

/// @nodoc

class _$_EmailNotVerified implements _EmailNotVerified {
  const _$_EmailNotVerified();

  @override
  String toString() {
    return 'AuthFailure.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() userNotFound,
    required TResult Function() passwordsDontMatch,
    required TResult Function() emailNotVerified,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
  }) {
    return emailNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? userNotFound,
    TResult Function()? passwordsDontMatch,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_passwordsDontMatch value) passwordsDontMatch,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_passwordsDontMatch value)? passwordsDontMatch,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailNotVerified implements AuthFailure {
  const factory _EmailNotVerified() = _$_EmailNotVerified;
}
