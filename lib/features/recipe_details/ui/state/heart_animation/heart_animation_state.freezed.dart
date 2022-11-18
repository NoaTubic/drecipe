// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'heart_animation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HeartAnimationState {
  bool get isAnimating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeartAnimationStateCopyWith<HeartAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartAnimationStateCopyWith<$Res> {
  factory $HeartAnimationStateCopyWith(
          HeartAnimationState value, $Res Function(HeartAnimationState) then) =
      _$HeartAnimationStateCopyWithImpl<$Res, HeartAnimationState>;
  @useResult
  $Res call({bool isAnimating});
}

/// @nodoc
class _$HeartAnimationStateCopyWithImpl<$Res, $Val extends HeartAnimationState>
    implements $HeartAnimationStateCopyWith<$Res> {
  _$HeartAnimationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAnimating = null,
  }) {
    return _then(_value.copyWith(
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeartAnimationStateCopyWith<$Res>
    implements $HeartAnimationStateCopyWith<$Res> {
  factory _$$_HeartAnimationStateCopyWith(_$_HeartAnimationState value,
          $Res Function(_$_HeartAnimationState) then) =
      __$$_HeartAnimationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAnimating});
}

/// @nodoc
class __$$_HeartAnimationStateCopyWithImpl<$Res>
    extends _$HeartAnimationStateCopyWithImpl<$Res, _$_HeartAnimationState>
    implements _$$_HeartAnimationStateCopyWith<$Res> {
  __$$_HeartAnimationStateCopyWithImpl(_$_HeartAnimationState _value,
      $Res Function(_$_HeartAnimationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAnimating = null,
  }) {
    return _then(_$_HeartAnimationState(
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HeartAnimationState implements _HeartAnimationState {
  const _$_HeartAnimationState({required this.isAnimating});

  @override
  final bool isAnimating;

  @override
  String toString() {
    return 'HeartAnimationState(isAnimating: $isAnimating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeartAnimationState &&
            (identical(other.isAnimating, isAnimating) ||
                other.isAnimating == isAnimating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAnimating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeartAnimationStateCopyWith<_$_HeartAnimationState> get copyWith =>
      __$$_HeartAnimationStateCopyWithImpl<_$_HeartAnimationState>(
          this, _$identity);
}

abstract class _HeartAnimationState implements HeartAnimationState {
  const factory _HeartAnimationState({required final bool isAnimating}) =
      _$_HeartAnimationState;

  @override
  bool get isAnimating;
  @override
  @JsonKey(ignore: true)
  _$$_HeartAnimationStateCopyWith<_$_HeartAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}
