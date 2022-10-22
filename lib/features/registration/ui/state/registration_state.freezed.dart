// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationState {
  UsernameValueObject get username => throw _privateConstructorUsedError;
  EmailValueObject get email => throw _privateConstructorUsedError;
  PasswordValueObject get password => throw _privateConstructorUsedError;
  PasswordValueObject get passwordRepeated =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get registrationFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {UsernameValueObject username,
      EmailValueObject email,
      PasswordValueObject password,
      PasswordValueObject passwordRepeated,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> registrationFailureOrSuccess});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? passwordRepeated = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? registrationFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameValueObject,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationFailureOrSuccess: null == registrationFailureOrSuccess
          ? _value.registrationFailureOrSuccess
          : registrationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_RegistrationStateCopyWith(_$_RegistrationState value,
          $Res Function(_$_RegistrationState) then) =
      __$$_RegistrationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UsernameValueObject username,
      EmailValueObject email,
      PasswordValueObject password,
      PasswordValueObject passwordRepeated,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> registrationFailureOrSuccess});
}

/// @nodoc
class __$$_RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationState>
    implements _$$_RegistrationStateCopyWith<$Res> {
  __$$_RegistrationStateCopyWithImpl(
      _$_RegistrationState _value, $Res Function(_$_RegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? passwordRepeated = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? registrationFailureOrSuccess = null,
  }) {
    return _then(_$_RegistrationState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameValueObject,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      passwordRepeated: null == passwordRepeated
          ? _value.passwordRepeated
          : passwordRepeated // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationFailureOrSuccess: null == registrationFailureOrSuccess
          ? _value.registrationFailureOrSuccess
          : registrationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {required this.username,
      required this.email,
      required this.password,
      required this.passwordRepeated,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.registrationFailureOrSuccess});

  @override
  final UsernameValueObject username;
  @override
  final EmailValueObject email;
  @override
  final PasswordValueObject password;
  @override
  final PasswordValueObject passwordRepeated;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> registrationFailureOrSuccess;

  @override
  String toString() {
    return 'RegistrationState(username: $username, email: $email, password: $password, passwordRepeated: $passwordRepeated, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, registrationFailureOrSuccess: $registrationFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeated, passwordRepeated) ||
                other.passwordRepeated == passwordRepeated) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.registrationFailureOrSuccess,
                    registrationFailureOrSuccess) ||
                other.registrationFailureOrSuccess ==
                    registrationFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      email,
      password,
      passwordRepeated,
      isSubmitting,
      showErrorMessages,
      registrationFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      __$$_RegistrationStateCopyWithImpl<_$_RegistrationState>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {required final UsernameValueObject username,
      required final EmailValueObject email,
      required final PasswordValueObject password,
      required final PasswordValueObject passwordRepeated,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<AuthFailure, Unit>>
          registrationFailureOrSuccess}) = _$_RegistrationState;

  @override
  UsernameValueObject get username;
  @override
  EmailValueObject get email;
  @override
  PasswordValueObject get password;
  @override
  PasswordValueObject get passwordRepeated;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get registrationFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
