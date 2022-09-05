// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverRecipes {
  List<Recipe> get randomRecipes => throw _privateConstructorUsedError;
  List<Recipe> get popularRecipes => throw _privateConstructorUsedError;
  List<Recipe> get healthyRecipe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverRecipesCopyWith<DiscoverRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverRecipesCopyWith<$Res> {
  factory $DiscoverRecipesCopyWith(
          DiscoverRecipes value, $Res Function(DiscoverRecipes) then) =
      _$DiscoverRecipesCopyWithImpl<$Res>;
  $Res call(
      {List<Recipe> randomRecipes,
      List<Recipe> popularRecipes,
      List<Recipe> healthyRecipe});
}

/// @nodoc
class _$DiscoverRecipesCopyWithImpl<$Res>
    implements $DiscoverRecipesCopyWith<$Res> {
  _$DiscoverRecipesCopyWithImpl(this._value, this._then);

  final DiscoverRecipes _value;
  // ignore: unused_field
  final $Res Function(DiscoverRecipes) _then;

  @override
  $Res call({
    Object? randomRecipes = freezed,
    Object? popularRecipes = freezed,
    Object? healthyRecipe = freezed,
  }) {
    return _then(_value.copyWith(
      randomRecipes: randomRecipes == freezed
          ? _value.randomRecipes
          : randomRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      popularRecipes: popularRecipes == freezed
          ? _value.popularRecipes
          : popularRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      healthyRecipe: healthyRecipe == freezed
          ? _value.healthyRecipe
          : healthyRecipe // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscoverRecipesCopyWith<$Res>
    implements $DiscoverRecipesCopyWith<$Res> {
  factory _$$_DiscoverRecipesCopyWith(
          _$_DiscoverRecipes value, $Res Function(_$_DiscoverRecipes) then) =
      __$$_DiscoverRecipesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Recipe> randomRecipes,
      List<Recipe> popularRecipes,
      List<Recipe> healthyRecipe});
}

/// @nodoc
class __$$_DiscoverRecipesCopyWithImpl<$Res>
    extends _$DiscoverRecipesCopyWithImpl<$Res>
    implements _$$_DiscoverRecipesCopyWith<$Res> {
  __$$_DiscoverRecipesCopyWithImpl(
      _$_DiscoverRecipes _value, $Res Function(_$_DiscoverRecipes) _then)
      : super(_value, (v) => _then(v as _$_DiscoverRecipes));

  @override
  _$_DiscoverRecipes get _value => super._value as _$_DiscoverRecipes;

  @override
  $Res call({
    Object? randomRecipes = freezed,
    Object? popularRecipes = freezed,
    Object? healthyRecipe = freezed,
  }) {
    return _then(_$_DiscoverRecipes(
      randomRecipes: randomRecipes == freezed
          ? _value._randomRecipes
          : randomRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      popularRecipes: popularRecipes == freezed
          ? _value._popularRecipes
          : popularRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      healthyRecipe: healthyRecipe == freezed
          ? _value._healthyRecipe
          : healthyRecipe // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_DiscoverRecipes implements _DiscoverRecipes {
  const _$_DiscoverRecipes(
      {required final List<Recipe> randomRecipes,
      required final List<Recipe> popularRecipes,
      required final List<Recipe> healthyRecipe})
      : _randomRecipes = randomRecipes,
        _popularRecipes = popularRecipes,
        _healthyRecipe = healthyRecipe;

  final List<Recipe> _randomRecipes;
  @override
  List<Recipe> get randomRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_randomRecipes);
  }

  final List<Recipe> _popularRecipes;
  @override
  List<Recipe> get popularRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularRecipes);
  }

  final List<Recipe> _healthyRecipe;
  @override
  List<Recipe> get healthyRecipe {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthyRecipe);
  }

  @override
  String toString() {
    return 'DiscoverRecipes(randomRecipes: $randomRecipes, popularRecipes: $popularRecipes, healthyRecipe: $healthyRecipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverRecipes &&
            const DeepCollectionEquality()
                .equals(other._randomRecipes, _randomRecipes) &&
            const DeepCollectionEquality()
                .equals(other._popularRecipes, _popularRecipes) &&
            const DeepCollectionEquality()
                .equals(other._healthyRecipe, _healthyRecipe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_randomRecipes),
      const DeepCollectionEquality().hash(_popularRecipes),
      const DeepCollectionEquality().hash(_healthyRecipe));

  @JsonKey(ignore: true)
  @override
  _$$_DiscoverRecipesCopyWith<_$_DiscoverRecipes> get copyWith =>
      __$$_DiscoverRecipesCopyWithImpl<_$_DiscoverRecipes>(this, _$identity);
}

abstract class _DiscoverRecipes implements DiscoverRecipes {
  const factory _DiscoverRecipes(
      {required final List<Recipe> randomRecipes,
      required final List<Recipe> popularRecipes,
      required final List<Recipe> healthyRecipe}) = _$_DiscoverRecipes;

  @override
  List<Recipe> get randomRecipes;
  @override
  List<Recipe> get popularRecipes;
  @override
  List<Recipe> get healthyRecipe;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverRecipesCopyWith<_$_DiscoverRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}
