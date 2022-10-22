// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_recovery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountRecoveryState {
  EmailValueObject get email => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showFailureMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get recoverySuccessOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountRecoveryStateCopyWith<AccountRecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRecoveryStateCopyWith<$Res> {
  factory $AccountRecoveryStateCopyWith(AccountRecoveryState value,
          $Res Function(AccountRecoveryState) then) =
      _$AccountRecoveryStateCopyWithImpl<$Res, AccountRecoveryState>;
  @useResult
  $Res call(
      {EmailValueObject email,
      bool isSubmitting,
      bool showFailureMessages,
      Option<Either<AuthFailure, Unit>> recoverySuccessOrFailure});
}

/// @nodoc
class _$AccountRecoveryStateCopyWithImpl<$Res,
        $Val extends AccountRecoveryState>
    implements $AccountRecoveryStateCopyWith<$Res> {
  _$AccountRecoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isSubmitting = null,
    Object? showFailureMessages = null,
    Object? recoverySuccessOrFailure = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showFailureMessages: null == showFailureMessages
          ? _value.showFailureMessages
          : showFailureMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      recoverySuccessOrFailure: null == recoverySuccessOrFailure
          ? _value.recoverySuccessOrFailure
          : recoverySuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountRecoveryStateCopyWith<$Res>
    implements $AccountRecoveryStateCopyWith<$Res> {
  factory _$$_AccountRecoveryStateCopyWith(_$_AccountRecoveryState value,
          $Res Function(_$_AccountRecoveryState) then) =
      __$$_AccountRecoveryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailValueObject email,
      bool isSubmitting,
      bool showFailureMessages,
      Option<Either<AuthFailure, Unit>> recoverySuccessOrFailure});
}

/// @nodoc
class __$$_AccountRecoveryStateCopyWithImpl<$Res>
    extends _$AccountRecoveryStateCopyWithImpl<$Res, _$_AccountRecoveryState>
    implements _$$_AccountRecoveryStateCopyWith<$Res> {
  __$$_AccountRecoveryStateCopyWithImpl(_$_AccountRecoveryState _value,
      $Res Function(_$_AccountRecoveryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isSubmitting = null,
    Object? showFailureMessages = null,
    Object? recoverySuccessOrFailure = null,
  }) {
    return _then(_$_AccountRecoveryState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailValueObject,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showFailureMessages: null == showFailureMessages
          ? _value.showFailureMessages
          : showFailureMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      recoverySuccessOrFailure: null == recoverySuccessOrFailure
          ? _value.recoverySuccessOrFailure
          : recoverySuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AccountRecoveryState implements _AccountRecoveryState {
  const _$_AccountRecoveryState(
      {required this.email,
      required this.isSubmitting,
      required this.showFailureMessages,
      required this.recoverySuccessOrFailure});

  @override
  final EmailValueObject email;
  @override
  final bool isSubmitting;
  @override
  final bool showFailureMessages;
  @override
  final Option<Either<AuthFailure, Unit>> recoverySuccessOrFailure;

  @override
  String toString() {
    return 'AccountRecoveryState(email: $email, isSubmitting: $isSubmitting, showFailureMessages: $showFailureMessages, recoverySuccessOrFailure: $recoverySuccessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountRecoveryState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showFailureMessages, showFailureMessages) ||
                other.showFailureMessages == showFailureMessages) &&
            (identical(
                    other.recoverySuccessOrFailure, recoverySuccessOrFailure) ||
                other.recoverySuccessOrFailure == recoverySuccessOrFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isSubmitting,
      showFailureMessages, recoverySuccessOrFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountRecoveryStateCopyWith<_$_AccountRecoveryState> get copyWith =>
      __$$_AccountRecoveryStateCopyWithImpl<_$_AccountRecoveryState>(
          this, _$identity);
}

abstract class _AccountRecoveryState implements AccountRecoveryState {
  const factory _AccountRecoveryState(
      {required final EmailValueObject email,
      required final bool isSubmitting,
      required final bool showFailureMessages,
      required final Option<Either<AuthFailure, Unit>>
          recoverySuccessOrFailure}) = _$_AccountRecoveryState;

  @override
  EmailValueObject get email;
  @override
  bool get isSubmitting;
  @override
  bool get showFailureMessages;
  @override
  Option<Either<AuthFailure, Unit>> get recoverySuccessOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_AccountRecoveryStateCopyWith<_$_AccountRecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}
