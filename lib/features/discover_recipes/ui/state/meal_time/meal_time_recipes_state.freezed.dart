// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_time_recipes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealTimeRecipesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RecipeDiscover> get mealTimeRecipes =>
      throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealTimeRecipesStateCopyWith<MealTimeRecipesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealTimeRecipesStateCopyWith<$Res> {
  factory $MealTimeRecipesStateCopyWith(MealTimeRecipesState value,
          $Res Function(MealTimeRecipesState) then) =
      _$MealTimeRecipesStateCopyWithImpl<$Res, MealTimeRecipesState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<RecipeDiscover> mealTimeRecipes,
      String error,
      bool showErrorMessages});
}

/// @nodoc
class _$MealTimeRecipesStateCopyWithImpl<$Res,
        $Val extends MealTimeRecipesState>
    implements $MealTimeRecipesStateCopyWith<$Res> {
  _$MealTimeRecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mealTimeRecipes = null,
    Object? error = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mealTimeRecipes: null == mealTimeRecipes
          ? _value.mealTimeRecipes
          : mealTimeRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealTimeRecipesStateCopyWith<$Res>
    implements $MealTimeRecipesStateCopyWith<$Res> {
  factory _$$_MealTimeRecipesStateCopyWith(_$_MealTimeRecipesState value,
          $Res Function(_$_MealTimeRecipesState) then) =
      __$$_MealTimeRecipesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<RecipeDiscover> mealTimeRecipes,
      String error,
      bool showErrorMessages});
}

/// @nodoc
class __$$_MealTimeRecipesStateCopyWithImpl<$Res>
    extends _$MealTimeRecipesStateCopyWithImpl<$Res, _$_MealTimeRecipesState>
    implements _$$_MealTimeRecipesStateCopyWith<$Res> {
  __$$_MealTimeRecipesStateCopyWithImpl(_$_MealTimeRecipesState _value,
      $Res Function(_$_MealTimeRecipesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mealTimeRecipes = null,
    Object? error = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_$_MealTimeRecipesState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mealTimeRecipes: null == mealTimeRecipes
          ? _value._mealTimeRecipes
          : mealTimeRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MealTimeRecipesState implements _MealTimeRecipesState {
  const _$_MealTimeRecipesState(
      {required this.isLoading,
      required final List<RecipeDiscover> mealTimeRecipes,
      required this.error,
      required this.showErrorMessages})
      : _mealTimeRecipes = mealTimeRecipes;

  @override
  final bool isLoading;
  final List<RecipeDiscover> _mealTimeRecipes;
  @override
  List<RecipeDiscover> get mealTimeRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealTimeRecipes);
  }

  @override
  final String error;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'MealTimeRecipesState(isLoading: $isLoading, mealTimeRecipes: $mealTimeRecipes, error: $error, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealTimeRecipesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._mealTimeRecipes, _mealTimeRecipes) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_mealTimeRecipes),
      error,
      showErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealTimeRecipesStateCopyWith<_$_MealTimeRecipesState> get copyWith =>
      __$$_MealTimeRecipesStateCopyWithImpl<_$_MealTimeRecipesState>(
          this, _$identity);
}

abstract class _MealTimeRecipesState implements MealTimeRecipesState {
  const factory _MealTimeRecipesState(
      {required final bool isLoading,
      required final List<RecipeDiscover> mealTimeRecipes,
      required final String error,
      required final bool showErrorMessages}) = _$_MealTimeRecipesState;

  @override
  bool get isLoading;
  @override
  List<RecipeDiscover> get mealTimeRecipes;
  @override
  String get error;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$_MealTimeRecipesStateCopyWith<_$_MealTimeRecipesState> get copyWith =>
      throw _privateConstructorUsedError;
}
