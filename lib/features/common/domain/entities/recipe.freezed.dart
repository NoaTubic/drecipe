// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  int get servings => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(4)
  int get readyInMinutes => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String>? get dishTypes => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get vegetarian => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get vegan => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get glutenFree => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get veryPopular => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get vertHealthy =>
      throw _privateConstructorUsedError; // required String instructions,
  @HiveField(11)
  List<Ingredient>? get ingredients =>
      throw _privateConstructorUsedError; // List<Instructions>? instructionsDetailed,
  @HiveField(12)
  NutritionData? get nutritionData => throw _privateConstructorUsedError;
  @HiveField(13)
  List<Instructions>? get instructionsDetailed =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) int servings,
      @HiveField(3) String? image,
      @HiveField(4) int readyInMinutes,
      @HiveField(5) List<String>? dishTypes,
      @HiveField(6) bool vegetarian,
      @HiveField(7) bool vegan,
      @HiveField(8) bool glutenFree,
      @HiveField(9) bool veryPopular,
      @HiveField(10) bool vertHealthy,
      @HiveField(11) List<Ingredient>? ingredients,
      @HiveField(12) NutritionData? nutritionData,
      @HiveField(13) List<Instructions>? instructionsDetailed});

  $NutritionDataCopyWith<$Res>? get nutritionData;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? servings = null,
    Object? image = freezed,
    Object? readyInMinutes = null,
    Object? dishTypes = freezed,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? vertHealthy = null,
    Object? ingredients = freezed,
    Object? nutritionData = freezed,
    Object? instructionsDetailed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: freezed == dishTypes
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: null == veryPopular
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      vertHealthy: null == vertHealthy
          ? _value.vertHealthy
          : vertHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      nutritionData: freezed == nutritionData
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as NutritionData?,
      instructionsDetailed: freezed == instructionsDetailed
          ? _value.instructionsDetailed
          : instructionsDetailed // ignore: cast_nullable_to_non_nullable
              as List<Instructions>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutritionDataCopyWith<$Res>? get nutritionData {
    if (_value.nutritionData == null) {
      return null;
    }

    return $NutritionDataCopyWith<$Res>(_value.nutritionData!, (value) {
      return _then(_value.copyWith(nutritionData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) int servings,
      @HiveField(3) String? image,
      @HiveField(4) int readyInMinutes,
      @HiveField(5) List<String>? dishTypes,
      @HiveField(6) bool vegetarian,
      @HiveField(7) bool vegan,
      @HiveField(8) bool glutenFree,
      @HiveField(9) bool veryPopular,
      @HiveField(10) bool vertHealthy,
      @HiveField(11) List<Ingredient>? ingredients,
      @HiveField(12) NutritionData? nutritionData,
      @HiveField(13) List<Instructions>? instructionsDetailed});

  @override
  $NutritionDataCopyWith<$Res>? get nutritionData;
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$_Recipe>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? servings = null,
    Object? image = freezed,
    Object? readyInMinutes = null,
    Object? dishTypes = freezed,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? vertHealthy = null,
    Object? ingredients = freezed,
    Object? nutritionData = freezed,
    Object? instructionsDetailed = freezed,
  }) {
    return _then(_$_Recipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: freezed == dishTypes
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: null == veryPopular
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      vertHealthy: null == vertHealthy
          ? _value.vertHealthy
          : vertHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      nutritionData: freezed == nutritionData
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as NutritionData?,
      instructionsDetailed: freezed == instructionsDetailed
          ? _value._instructionsDetailed
          : instructionsDetailed // ignore: cast_nullable_to_non_nullable
              as List<Instructions>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.servings,
      @HiveField(3) this.image,
      @HiveField(4) required this.readyInMinutes,
      @HiveField(5) final List<String>? dishTypes,
      @HiveField(6) required this.vegetarian,
      @HiveField(7) required this.vegan,
      @HiveField(8) required this.glutenFree,
      @HiveField(9) required this.veryPopular,
      @HiveField(10) required this.vertHealthy,
      @HiveField(11) final List<Ingredient>? ingredients,
      @HiveField(12) this.nutritionData,
      @HiveField(13) final List<Instructions>? instructionsDetailed})
      : _dishTypes = dishTypes,
        _ingredients = ingredients,
        _instructionsDetailed = instructionsDetailed;

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final int servings;
  @override
  @HiveField(3)
  final String? image;
  @override
  @HiveField(4)
  final int readyInMinutes;
  final List<String>? _dishTypes;
  @override
  @HiveField(5)
  List<String>? get dishTypes {
    final value = _dishTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(6)
  final bool vegetarian;
  @override
  @HiveField(7)
  final bool vegan;
  @override
  @HiveField(8)
  final bool glutenFree;
  @override
  @HiveField(9)
  final bool veryPopular;
  @override
  @HiveField(10)
  final bool vertHealthy;
// required String instructions,
  final List<Ingredient>? _ingredients;
// required String instructions,
  @override
  @HiveField(11)
  List<Ingredient>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// List<Instructions>? instructionsDetailed,
  @override
  @HiveField(12)
  final NutritionData? nutritionData;
  final List<Instructions>? _instructionsDetailed;
  @override
  @HiveField(13)
  List<Instructions>? get instructionsDetailed {
    final value = _instructionsDetailed;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Recipe(id: $id, title: $title, servings: $servings, image: $image, readyInMinutes: $readyInMinutes, dishTypes: $dishTypes, vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, veryPopular: $veryPopular, vertHealthy: $vertHealthy, ingredients: $ingredients, nutritionData: $nutritionData, instructionsDetailed: $instructionsDetailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.veryPopular, veryPopular) ||
                other.veryPopular == veryPopular) &&
            (identical(other.vertHealthy, vertHealthy) ||
                other.vertHealthy == vertHealthy) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.nutritionData, nutritionData) ||
                other.nutritionData == nutritionData) &&
            const DeepCollectionEquality()
                .equals(other._instructionsDetailed, _instructionsDetailed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      servings,
      image,
      readyInMinutes,
      const DeepCollectionEquality().hash(_dishTypes),
      vegetarian,
      vegan,
      glutenFree,
      veryPopular,
      vertHealthy,
      const DeepCollectionEquality().hash(_ingredients),
      nutritionData,
      const DeepCollectionEquality().hash(_instructionsDetailed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
          {@HiveField(0) required final int id,
          @HiveField(1) required final String title,
          @HiveField(2) required final int servings,
          @HiveField(3) final String? image,
          @HiveField(4) required final int readyInMinutes,
          @HiveField(5) final List<String>? dishTypes,
          @HiveField(6) required final bool vegetarian,
          @HiveField(7) required final bool vegan,
          @HiveField(8) required final bool glutenFree,
          @HiveField(9) required final bool veryPopular,
          @HiveField(10) required final bool vertHealthy,
          @HiveField(11) final List<Ingredient>? ingredients,
          @HiveField(12) final NutritionData? nutritionData,
          @HiveField(13) final List<Instructions>? instructionsDetailed}) =
      _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  int get servings;
  @override
  @HiveField(3)
  String? get image;
  @override
  @HiveField(4)
  int get readyInMinutes;
  @override
  @HiveField(5)
  List<String>? get dishTypes;
  @override
  @HiveField(6)
  bool get vegetarian;
  @override
  @HiveField(7)
  bool get vegan;
  @override
  @HiveField(8)
  bool get glutenFree;
  @override
  @HiveField(9)
  bool get veryPopular;
  @override
  @HiveField(10)
  bool get vertHealthy;
  @override // required String instructions,
  @HiveField(11)
  List<Ingredient>? get ingredients;
  @override // List<Instructions>? instructionsDetailed,
  @HiveField(12)
  NutritionData? get nutritionData;
  @override
  @HiveField(13)
  List<Instructions>? get instructionsDetailed;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
