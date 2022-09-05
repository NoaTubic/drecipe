// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealTimeState {
  String get currentTime => throw _privateConstructorUsedError;
  String get mealTypeIcon => throw _privateConstructorUsedError;
  String get mealType => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealTimeStateCopyWith<MealTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealTimeStateCopyWith<$Res> {
  factory $MealTimeStateCopyWith(
          MealTimeState value, $Res Function(MealTimeState) then) =
      _$MealTimeStateCopyWithImpl<$Res>;
  $Res call(
      {String currentTime,
      String mealTypeIcon,
      String mealType,
      bool isLoading});
}

/// @nodoc
class _$MealTimeStateCopyWithImpl<$Res>
    implements $MealTimeStateCopyWith<$Res> {
  _$MealTimeStateCopyWithImpl(this._value, this._then);

  final MealTimeState _value;
  // ignore: unused_field
  final $Res Function(MealTimeState) _then;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? mealTypeIcon = freezed,
    Object? mealType = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      mealTypeIcon: mealTypeIcon == freezed
          ? _value.mealTypeIcon
          : mealTypeIcon // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: mealType == freezed
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MealTimeStateCopyWith<$Res>
    implements $MealTimeStateCopyWith<$Res> {
  factory _$$_MealTimeStateCopyWith(
          _$_MealTimeState value, $Res Function(_$_MealTimeState) then) =
      __$$_MealTimeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String currentTime,
      String mealTypeIcon,
      String mealType,
      bool isLoading});
}

/// @nodoc
class __$$_MealTimeStateCopyWithImpl<$Res>
    extends _$MealTimeStateCopyWithImpl<$Res>
    implements _$$_MealTimeStateCopyWith<$Res> {
  __$$_MealTimeStateCopyWithImpl(
      _$_MealTimeState _value, $Res Function(_$_MealTimeState) _then)
      : super(_value, (v) => _then(v as _$_MealTimeState));

  @override
  _$_MealTimeState get _value => super._value as _$_MealTimeState;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? mealTypeIcon = freezed,
    Object? mealType = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_MealTimeState(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      mealTypeIcon: mealTypeIcon == freezed
          ? _value.mealTypeIcon
          : mealTypeIcon // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: mealType == freezed
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MealTimeState implements _MealTimeState {
  const _$_MealTimeState(
      {required this.currentTime,
      required this.mealTypeIcon,
      required this.mealType,
      required this.isLoading});

  @override
  final String currentTime;
  @override
  final String mealTypeIcon;
  @override
  final String mealType;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MealTimeState(currentTime: $currentTime, mealTypeIcon: $mealTypeIcon, mealType: $mealType, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealTimeState &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeIcon, mealTypeIcon) &&
            const DeepCollectionEquality().equals(other.mealType, mealType) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTime),
      const DeepCollectionEquality().hash(mealTypeIcon),
      const DeepCollectionEquality().hash(mealType),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_MealTimeStateCopyWith<_$_MealTimeState> get copyWith =>
      __$$_MealTimeStateCopyWithImpl<_$_MealTimeState>(this, _$identity);
}

abstract class _MealTimeState implements MealTimeState {
  const factory _MealTimeState(
      {required final String currentTime,
      required final String mealTypeIcon,
      required final String mealType,
      required final bool isLoading}) = _$_MealTimeState;

  @override
  String get currentTime;
  @override
  String get mealTypeIcon;
  @override
  String get mealType;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_MealTimeStateCopyWith<_$_MealTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}
