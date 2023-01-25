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
  List<RecipeDiscover> get randomRecipes => throw _privateConstructorUsedError;
  List<RecipeDiscover> get popularRecipes => throw _privateConstructorUsedError;
  List<RecipeDiscover> get healthyRecipes => throw _privateConstructorUsedError;
  List<RecipeRecommended> get recommendedRecipes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverRecipesCopyWith<DiscoverRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverRecipesCopyWith<$Res> {
  factory $DiscoverRecipesCopyWith(
          DiscoverRecipes value, $Res Function(DiscoverRecipes) then) =
      _$DiscoverRecipesCopyWithImpl<$Res, DiscoverRecipes>;
  @useResult
  $Res call(
      {List<RecipeDiscover> randomRecipes,
      List<RecipeDiscover> popularRecipes,
      List<RecipeDiscover> healthyRecipes,
      List<RecipeRecommended> recommendedRecipes});
}

/// @nodoc
class _$DiscoverRecipesCopyWithImpl<$Res, $Val extends DiscoverRecipes>
    implements $DiscoverRecipesCopyWith<$Res> {
  _$DiscoverRecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomRecipes = null,
    Object? popularRecipes = null,
    Object? healthyRecipes = null,
    Object? recommendedRecipes = null,
  }) {
    return _then(_value.copyWith(
      randomRecipes: null == randomRecipes
          ? _value.randomRecipes
          : randomRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      popularRecipes: null == popularRecipes
          ? _value.popularRecipes
          : popularRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      healthyRecipes: null == healthyRecipes
          ? _value.healthyRecipes
          : healthyRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      recommendedRecipes: null == recommendedRecipes
          ? _value.recommendedRecipes
          : recommendedRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeRecommended>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscoverRecipesCopyWith<$Res>
    implements $DiscoverRecipesCopyWith<$Res> {
  factory _$$_DiscoverRecipesCopyWith(
          _$_DiscoverRecipes value, $Res Function(_$_DiscoverRecipes) then) =
      __$$_DiscoverRecipesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RecipeDiscover> randomRecipes,
      List<RecipeDiscover> popularRecipes,
      List<RecipeDiscover> healthyRecipes,
      List<RecipeRecommended> recommendedRecipes});
}

/// @nodoc
class __$$_DiscoverRecipesCopyWithImpl<$Res>
    extends _$DiscoverRecipesCopyWithImpl<$Res, _$_DiscoverRecipes>
    implements _$$_DiscoverRecipesCopyWith<$Res> {
  __$$_DiscoverRecipesCopyWithImpl(
      _$_DiscoverRecipes _value, $Res Function(_$_DiscoverRecipes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomRecipes = null,
    Object? popularRecipes = null,
    Object? healthyRecipes = null,
    Object? recommendedRecipes = null,
  }) {
    return _then(_$_DiscoverRecipes(
      randomRecipes: null == randomRecipes
          ? _value._randomRecipes
          : randomRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      popularRecipes: null == popularRecipes
          ? _value._popularRecipes
          : popularRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      healthyRecipes: null == healthyRecipes
          ? _value._healthyRecipes
          : healthyRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscover>,
      recommendedRecipes: null == recommendedRecipes
          ? _value._recommendedRecipes
          : recommendedRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeRecommended>,
    ));
  }
}

/// @nodoc

class _$_DiscoverRecipes implements _DiscoverRecipes {
  const _$_DiscoverRecipes(
      {required final List<RecipeDiscover> randomRecipes,
      required final List<RecipeDiscover> popularRecipes,
      required final List<RecipeDiscover> healthyRecipes,
      required final List<RecipeRecommended> recommendedRecipes})
      : _randomRecipes = randomRecipes,
        _popularRecipes = popularRecipes,
        _healthyRecipes = healthyRecipes,
        _recommendedRecipes = recommendedRecipes;

  final List<RecipeDiscover> _randomRecipes;
  @override
  List<RecipeDiscover> get randomRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_randomRecipes);
  }

  final List<RecipeDiscover> _popularRecipes;
  @override
  List<RecipeDiscover> get popularRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularRecipes);
  }

  final List<RecipeDiscover> _healthyRecipes;
  @override
  List<RecipeDiscover> get healthyRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthyRecipes);
  }

  final List<RecipeRecommended> _recommendedRecipes;
  @override
  List<RecipeRecommended> get recommendedRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedRecipes);
  }

  @override
  String toString() {
    return 'DiscoverRecipes(randomRecipes: $randomRecipes, popularRecipes: $popularRecipes, healthyRecipes: $healthyRecipes, recommendedRecipes: $recommendedRecipes)';
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
                .equals(other._healthyRecipes, _healthyRecipes) &&
            const DeepCollectionEquality()
                .equals(other._recommendedRecipes, _recommendedRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_randomRecipes),
      const DeepCollectionEquality().hash(_popularRecipes),
      const DeepCollectionEquality().hash(_healthyRecipes),
      const DeepCollectionEquality().hash(_recommendedRecipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverRecipesCopyWith<_$_DiscoverRecipes> get copyWith =>
      __$$_DiscoverRecipesCopyWithImpl<_$_DiscoverRecipes>(this, _$identity);
}

abstract class _DiscoverRecipes implements DiscoverRecipes {
  const factory _DiscoverRecipes(
          {required final List<RecipeDiscover> randomRecipes,
          required final List<RecipeDiscover> popularRecipes,
          required final List<RecipeDiscover> healthyRecipes,
          required final List<RecipeRecommended> recommendedRecipes}) =
      _$_DiscoverRecipes;

  @override
  List<RecipeDiscover> get randomRecipes;
  @override
  List<RecipeDiscover> get popularRecipes;
  @override
  List<RecipeDiscover> get healthyRecipes;
  @override
  List<RecipeRecommended> get recommendedRecipes;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverRecipesCopyWith<_$_DiscoverRecipes> get copyWith =>
      throw _privateConstructorUsedError;
}
