// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipesResponse _$RecipesResponseFromJson(Map<String, dynamic> json) {
  return _RecipesResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipesResponse {
  List<RecipeResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesResponseCopyWith<RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesResponseCopyWith<$Res> {
  factory $RecipesResponseCopyWith(
          RecipesResponse value, $Res Function(RecipesResponse) then) =
      _$RecipesResponseCopyWithImpl<$Res, RecipesResponse>;
  @useResult
  $Res call({List<RecipeResponse> results});
}

/// @nodoc
class _$RecipesResponseCopyWithImpl<$Res, $Val extends RecipesResponse>
    implements $RecipesResponseCopyWith<$Res> {
  _$RecipesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipesResponseCopyWith<$Res>
    implements $RecipesResponseCopyWith<$Res> {
  factory _$$_RecipesResponseCopyWith(
          _$_RecipesResponse value, $Res Function(_$_RecipesResponse) then) =
      __$$_RecipesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeResponse> results});
}

/// @nodoc
class __$$_RecipesResponseCopyWithImpl<$Res>
    extends _$RecipesResponseCopyWithImpl<$Res, _$_RecipesResponse>
    implements _$$_RecipesResponseCopyWith<$Res> {
  __$$_RecipesResponseCopyWithImpl(
      _$_RecipesResponse _value, $Res Function(_$_RecipesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_RecipesResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipesResponse implements _RecipesResponse {
  const _$_RecipesResponse({required final List<RecipeResponse> results})
      : _results = results;

  factory _$_RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesResponseFromJson(json);

  final List<RecipeResponse> _results;
  @override
  List<RecipeResponse> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'RecipesResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipesResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipesResponseCopyWith<_$_RecipesResponse> get copyWith =>
      __$$_RecipesResponseCopyWithImpl<_$_RecipesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesResponseToJson(
      this,
    );
  }
}

abstract class _RecipesResponse implements RecipesResponse {
  const factory _RecipesResponse(
      {required final List<RecipeResponse> results}) = _$_RecipesResponse;

  factory _RecipesResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipesResponse.fromJson;

  @override
  List<RecipeResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesResponseCopyWith<_$_RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipeResponse _$RecipeResponseFromJson(Map<String, dynamic> json) {
  return _RecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;
  List<String> get dishTypes => throw _privateConstructorUsedError;
  bool get vegetarian => throw _privateConstructorUsedError;
  bool get vegan => throw _privateConstructorUsedError;
  bool get glutenFree => throw _privateConstructorUsedError;
  bool get veryPopular => throw _privateConstructorUsedError;
  bool get veryHealthy => throw _privateConstructorUsedError;
  List<IngredientResponse> get extendedIngredients =>
      throw _privateConstructorUsedError;
  NutritionResponse get nutrition => throw _privateConstructorUsedError;
  List<InstructionsResponse> get analyzedInstructions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeResponseCopyWith<RecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeResponseCopyWith<$Res> {
  factory $RecipeResponseCopyWith(
          RecipeResponse value, $Res Function(RecipeResponse) then) =
      _$RecipeResponseCopyWithImpl<$Res, RecipeResponse>;
  @useResult
  $Res call(
      {int id,
      String title,
      int servings,
      String? image,
      int readyInMinutes,
      List<String> dishTypes,
      bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool veryPopular,
      bool veryHealthy,
      List<IngredientResponse> extendedIngredients,
      NutritionResponse nutrition,
      List<InstructionsResponse> analyzedInstructions});

  $NutritionResponseCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$RecipeResponseCopyWithImpl<$Res, $Val extends RecipeResponse>
    implements $RecipeResponseCopyWith<$Res> {
  _$RecipeResponseCopyWithImpl(this._value, this._then);

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
    Object? dishTypes = null,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? veryHealthy = null,
    Object? extendedIngredients = null,
    Object? nutrition = null,
    Object? analyzedInstructions = null,
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
      dishTypes: null == dishTypes
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      veryHealthy: null == veryHealthy
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      extendedIngredients: null == extendedIngredients
          ? _value.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionResponse,
      analyzedInstructions: null == analyzedInstructions
          ? _value.analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<InstructionsResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutritionResponseCopyWith<$Res> get nutrition {
    return $NutritionResponseCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeResponseCopyWith<$Res>
    implements $RecipeResponseCopyWith<$Res> {
  factory _$$_RecipeResponseCopyWith(
          _$_RecipeResponse value, $Res Function(_$_RecipeResponse) then) =
      __$$_RecipeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      int servings,
      String? image,
      int readyInMinutes,
      List<String> dishTypes,
      bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool veryPopular,
      bool veryHealthy,
      List<IngredientResponse> extendedIngredients,
      NutritionResponse nutrition,
      List<InstructionsResponse> analyzedInstructions});

  @override
  $NutritionResponseCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_RecipeResponseCopyWithImpl<$Res>
    extends _$RecipeResponseCopyWithImpl<$Res, _$_RecipeResponse>
    implements _$$_RecipeResponseCopyWith<$Res> {
  __$$_RecipeResponseCopyWithImpl(
      _$_RecipeResponse _value, $Res Function(_$_RecipeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? servings = null,
    Object? image = freezed,
    Object? readyInMinutes = null,
    Object? dishTypes = null,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? veryHealthy = null,
    Object? extendedIngredients = null,
    Object? nutrition = null,
    Object? analyzedInstructions = null,
  }) {
    return _then(_$_RecipeResponse(
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
      dishTypes: null == dishTypes
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      veryHealthy: null == veryHealthy
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      extendedIngredients: null == extendedIngredients
          ? _value._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionResponse,
      analyzedInstructions: null == analyzedInstructions
          ? _value._analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<InstructionsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeResponse implements _RecipeResponse {
  const _$_RecipeResponse(
      {required this.id,
      required this.title,
      required this.servings,
      this.image,
      required this.readyInMinutes,
      required final List<String> dishTypes,
      required this.vegetarian,
      required this.vegan,
      required this.glutenFree,
      required this.veryPopular,
      required this.veryHealthy,
      required final List<IngredientResponse> extendedIngredients,
      required this.nutrition,
      required final List<InstructionsResponse> analyzedInstructions})
      : _dishTypes = dishTypes,
        _extendedIngredients = extendedIngredients,
        _analyzedInstructions = analyzedInstructions;

  factory _$_RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int servings;
  @override
  final String? image;
  @override
  final int readyInMinutes;
  final List<String> _dishTypes;
  @override
  List<String> get dishTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  @override
  final bool vegetarian;
  @override
  final bool vegan;
  @override
  final bool glutenFree;
  @override
  final bool veryPopular;
  @override
  final bool veryHealthy;
  final List<IngredientResponse> _extendedIngredients;
  @override
  List<IngredientResponse> get extendedIngredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  final NutritionResponse nutrition;
  final List<InstructionsResponse> _analyzedInstructions;
  @override
  List<InstructionsResponse> get analyzedInstructions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyzedInstructions);
  }

  @override
  String toString() {
    return 'RecipeResponse(id: $id, title: $title, servings: $servings, image: $image, readyInMinutes: $readyInMinutes, dishTypes: $dishTypes, vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, veryPopular: $veryPopular, veryHealthy: $veryHealthy, extendedIngredients: $extendedIngredients, nutrition: $nutrition, analyzedInstructions: $analyzedInstructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeResponse &&
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
            (identical(other.veryHealthy, veryHealthy) ||
                other.veryHealthy == veryHealthy) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            const DeepCollectionEquality()
                .equals(other._analyzedInstructions, _analyzedInstructions));
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
      veryHealthy,
      const DeepCollectionEquality().hash(_extendedIngredients),
      nutrition,
      const DeepCollectionEquality().hash(_analyzedInstructions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeResponseCopyWith<_$_RecipeResponse> get copyWith =>
      __$$_RecipeResponseCopyWithImpl<_$_RecipeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeResponseToJson(
      this,
    );
  }
}

abstract class _RecipeResponse implements RecipeResponse {
  const factory _RecipeResponse(
          {required final int id,
          required final String title,
          required final int servings,
          final String? image,
          required final int readyInMinutes,
          required final List<String> dishTypes,
          required final bool vegetarian,
          required final bool vegan,
          required final bool glutenFree,
          required final bool veryPopular,
          required final bool veryHealthy,
          required final List<IngredientResponse> extendedIngredients,
          required final NutritionResponse nutrition,
          required final List<InstructionsResponse> analyzedInstructions}) =
      _$_RecipeResponse;

  factory _RecipeResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeResponse.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get servings;
  @override
  String? get image;
  @override
  int get readyInMinutes;
  @override
  List<String> get dishTypes;
  @override
  bool get vegetarian;
  @override
  bool get vegan;
  @override
  bool get glutenFree;
  @override
  bool get veryPopular;
  @override
  bool get veryHealthy;
  @override
  List<IngredientResponse> get extendedIngredients;
  @override
  NutritionResponse get nutrition;
  @override
  List<InstructionsResponse> get analyzedInstructions;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeResponseCopyWith<_$_RecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
