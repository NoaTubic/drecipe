// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteRecipeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isHeartAnimating => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<Failure, Recipe>> get favoritesResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteRecipeStateCopyWith<FavoriteRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRecipeStateCopyWith<$Res> {
  factory $FavoriteRecipeStateCopyWith(
          FavoriteRecipeState value, $Res Function(FavoriteRecipeState) then) =
      _$FavoriteRecipeStateCopyWithImpl<$Res, FavoriteRecipeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isHeartAnimating,
      bool isFavorite,
      bool showErrorMessages,
      Option<Either<Failure, Recipe>> favoritesResult});
}

/// @nodoc
class _$FavoriteRecipeStateCopyWithImpl<$Res, $Val extends FavoriteRecipeState>
    implements $FavoriteRecipeStateCopyWith<$Res> {
  _$FavoriteRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isHeartAnimating = null,
    Object? isFavorite = null,
    Object? showErrorMessages = null,
    Object? favoritesResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeartAnimating: null == isHeartAnimating
          ? _value.isHeartAnimating
          : isHeartAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesResult: null == favoritesResult
          ? _value.favoritesResult
          : favoritesResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Recipe>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteRecipeStateCopyWith<$Res>
    implements $FavoriteRecipeStateCopyWith<$Res> {
  factory _$$_FavoriteRecipeStateCopyWith(_$_FavoriteRecipeState value,
          $Res Function(_$_FavoriteRecipeState) then) =
      __$$_FavoriteRecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isHeartAnimating,
      bool isFavorite,
      bool showErrorMessages,
      Option<Either<Failure, Recipe>> favoritesResult});
}

/// @nodoc
class __$$_FavoriteRecipeStateCopyWithImpl<$Res>
    extends _$FavoriteRecipeStateCopyWithImpl<$Res, _$_FavoriteRecipeState>
    implements _$$_FavoriteRecipeStateCopyWith<$Res> {
  __$$_FavoriteRecipeStateCopyWithImpl(_$_FavoriteRecipeState _value,
      $Res Function(_$_FavoriteRecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isHeartAnimating = null,
    Object? isFavorite = null,
    Object? showErrorMessages = null,
    Object? favoritesResult = null,
  }) {
    return _then(_$_FavoriteRecipeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeartAnimating: null == isHeartAnimating
          ? _value.isHeartAnimating
          : isHeartAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesResult: null == favoritesResult
          ? _value.favoritesResult
          : favoritesResult // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Recipe>>,
    ));
  }
}

/// @nodoc

class _$_FavoriteRecipeState implements _FavoriteRecipeState {
  const _$_FavoriteRecipeState(
      {required this.isLoading,
      required this.isHeartAnimating,
      required this.isFavorite,
      required this.showErrorMessages,
      required this.favoritesResult});

  @override
  final bool isLoading;
  @override
  final bool isHeartAnimating;
  @override
  final bool isFavorite;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<Failure, Recipe>> favoritesResult;

  @override
  String toString() {
    return 'FavoriteRecipeState(isLoading: $isLoading, isHeartAnimating: $isHeartAnimating, isFavorite: $isFavorite, showErrorMessages: $showErrorMessages, favoritesResult: $favoritesResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteRecipeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isHeartAnimating, isHeartAnimating) ||
                other.isHeartAnimating == isHeartAnimating) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.favoritesResult, favoritesResult) ||
                other.favoritesResult == favoritesResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isHeartAnimating,
      isFavorite, showErrorMessages, favoritesResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteRecipeStateCopyWith<_$_FavoriteRecipeState> get copyWith =>
      __$$_FavoriteRecipeStateCopyWithImpl<_$_FavoriteRecipeState>(
          this, _$identity);
}

abstract class _FavoriteRecipeState implements FavoriteRecipeState {
  const factory _FavoriteRecipeState(
          {required final bool isLoading,
          required final bool isHeartAnimating,
          required final bool isFavorite,
          required final bool showErrorMessages,
          required final Option<Either<Failure, Recipe>> favoritesResult}) =
      _$_FavoriteRecipeState;

  @override
  bool get isLoading;
  @override
  bool get isHeartAnimating;
  @override
  bool get isFavorite;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<Failure, Recipe>> get favoritesResult;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteRecipeStateCopyWith<_$_FavoriteRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
