// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  EmailValueObject get email => throw _privateConstructorUsedError;
  PasswordValueObject get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get signInFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {EmailValueObject email,
      PasswordValueObject password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<Failure, Unit>> signInFailureOrSuccess});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? signInFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signInFailureOrSuccess: null == signInFailureOrSuccess
          ? _value.signInFailureOrSuccess
          : signInFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailValueObject email,
      PasswordValueObject password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<Failure, Unit>> signInFailureOrSuccess});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
    Object? signInFailureOrSuccess = null,
  }) {
    return _then(_$_SignInState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signInFailureOrSuccess: null == signInFailureOrSuccess
          ? _value.signInFailureOrSuccess
          : signInFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.signInFailureOrSuccess});

  @override
  final EmailValueObject email;
  @override
  final PasswordValueObject password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<Failure, Unit>> signInFailureOrSuccess;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, signInFailureOrSuccess: $signInFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.signInFailureOrSuccess, signInFailureOrSuccess) ||
                other.signInFailureOrSuccess == signInFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isSubmitting,
      showErrorMessages, signInFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final EmailValueObject email,
      required final PasswordValueObject password,
      required final bool isSubmitting,
      required final bool showErrorMessages,
      required final Option<Either<Failure, Unit>>
          signInFailureOrSuccess}) = _$_SignInState;

  @override
  EmailValueObject get email;
  @override
  PasswordValueObject get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<Failure, Unit>> get signInFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
