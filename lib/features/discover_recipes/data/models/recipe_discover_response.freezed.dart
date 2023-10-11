// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_discover_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipesDiscoverResponse _$RecipesDiscoverResponseFromJson(
    Map<String, dynamic> json) {
  return _RecipesDiscoverResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipesDiscoverResponse {
  List<RecipeDiscoverResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesDiscoverResponseCopyWith<RecipesDiscoverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesDiscoverResponseCopyWith<$Res> {
  factory $RecipesDiscoverResponseCopyWith(RecipesDiscoverResponse value,
          $Res Function(RecipesDiscoverResponse) then) =
      _$RecipesDiscoverResponseCopyWithImpl<$Res, RecipesDiscoverResponse>;
  @useResult
  $Res call({List<RecipeDiscoverResponse> results});
}

/// @nodoc
class _$RecipesDiscoverResponseCopyWithImpl<$Res,
        $Val extends RecipesDiscoverResponse>
    implements $RecipesDiscoverResponseCopyWith<$Res> {
  _$RecipesDiscoverResponseCopyWithImpl(this._value, this._then);

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
              as List<RecipeDiscoverResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipesDiscoverResponseCopyWith<$Res>
    implements $RecipesDiscoverResponseCopyWith<$Res> {
  factory _$$_RecipesDiscoverResponseCopyWith(_$_RecipesDiscoverResponse value,
          $Res Function(_$_RecipesDiscoverResponse) then) =
      __$$_RecipesDiscoverResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeDiscoverResponse> results});
}

/// @nodoc
class __$$_RecipesDiscoverResponseCopyWithImpl<$Res>
    extends _$RecipesDiscoverResponseCopyWithImpl<$Res,
        _$_RecipesDiscoverResponse>
    implements _$$_RecipesDiscoverResponseCopyWith<$Res> {
  __$$_RecipesDiscoverResponseCopyWithImpl(_$_RecipesDiscoverResponse _value,
      $Res Function(_$_RecipesDiscoverResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_RecipesDiscoverResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<RecipeDiscoverResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipesDiscoverResponse implements _RecipesDiscoverResponse {
  const _$_RecipesDiscoverResponse(
      {required final List<RecipeDiscoverResponse> results})
      : _results = results;

  factory _$_RecipesDiscoverResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesDiscoverResponseFromJson(json);

  final List<RecipeDiscoverResponse> _results;
  @override
  List<RecipeDiscoverResponse> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'RecipesDiscoverResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipesDiscoverResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipesDiscoverResponseCopyWith<_$_RecipesDiscoverResponse>
      get copyWith =>
          __$$_RecipesDiscoverResponseCopyWithImpl<_$_RecipesDiscoverResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesDiscoverResponseToJson(
      this,
    );
  }
}

abstract class _RecipesDiscoverResponse implements RecipesDiscoverResponse {
  const factory _RecipesDiscoverResponse(
          {required final List<RecipeDiscoverResponse> results}) =
      _$_RecipesDiscoverResponse;

  factory _RecipesDiscoverResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipesDiscoverResponse.fromJson;

  @override
  List<RecipeDiscoverResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesDiscoverResponseCopyWith<_$_RecipesDiscoverResponse>
      get copyWith => throw _privateConstructorUsedError;
}

RecipeDiscoverResponse _$RecipeDiscoverResponseFromJson(
    Map<String, dynamic> json) {
  return _RecipeDiscoverResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeDiscoverResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;
  List<IngredientResponse>? get extendedIngredients =>
      throw _privateConstructorUsedError;
  bool get vegetarian => throw _privateConstructorUsedError;
  bool get vegan => throw _privateConstructorUsedError;
  bool get glutenFree => throw _privateConstructorUsedError;
  bool get veryPopular => throw _privateConstructorUsedError;
  bool get veryHealthy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDiscoverResponseCopyWith<RecipeDiscoverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDiscoverResponseCopyWith<$Res> {
  factory $RecipeDiscoverResponseCopyWith(RecipeDiscoverResponse value,
          $Res Function(RecipeDiscoverResponse) then) =
      _$RecipeDiscoverResponseCopyWithImpl<$Res, RecipeDiscoverResponse>;
  @useResult
  $Res call(
      {int id,
      String title,
      int servings,
      String? image,
      int readyInMinutes,
      List<IngredientResponse>? extendedIngredients,
      bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool veryPopular,
      bool veryHealthy});
}

/// @nodoc
class _$RecipeDiscoverResponseCopyWithImpl<$Res,
        $Val extends RecipeDiscoverResponse>
    implements $RecipeDiscoverResponseCopyWith<$Res> {
  _$RecipeDiscoverResponseCopyWithImpl(this._value, this._then);

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
    Object? extendedIngredients = freezed,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? veryHealthy = null,
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
      extendedIngredients: freezed == extendedIngredients
          ? _value.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeDiscoverResponseCopyWith<$Res>
    implements $RecipeDiscoverResponseCopyWith<$Res> {
  factory _$$_RecipeDiscoverResponseCopyWith(_$_RecipeDiscoverResponse value,
          $Res Function(_$_RecipeDiscoverResponse) then) =
      __$$_RecipeDiscoverResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      int servings,
      String? image,
      int readyInMinutes,
      List<IngredientResponse>? extendedIngredients,
      bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool veryPopular,
      bool veryHealthy});
}

/// @nodoc
class __$$_RecipeDiscoverResponseCopyWithImpl<$Res>
    extends _$RecipeDiscoverResponseCopyWithImpl<$Res,
        _$_RecipeDiscoverResponse>
    implements _$$_RecipeDiscoverResponseCopyWith<$Res> {
  __$$_RecipeDiscoverResponseCopyWithImpl(_$_RecipeDiscoverResponse _value,
      $Res Function(_$_RecipeDiscoverResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? servings = null,
    Object? image = freezed,
    Object? readyInMinutes = null,
    Object? extendedIngredients = freezed,
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? veryPopular = null,
    Object? veryHealthy = null,
  }) {
    return _then(_$_RecipeDiscoverResponse(
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
      extendedIngredients: freezed == extendedIngredients
          ? _value._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDiscoverResponse implements _RecipeDiscoverResponse {
  const _$_RecipeDiscoverResponse(
      {required this.id,
      required this.title,
      required this.servings,
      this.image,
      required this.readyInMinutes,
      final List<IngredientResponse>? extendedIngredients,
      required this.vegetarian,
      required this.vegan,
      required this.glutenFree,
      required this.veryPopular,
      required this.veryHealthy})
      : _extendedIngredients = extendedIngredients;

  factory _$_RecipeDiscoverResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDiscoverResponseFromJson(json);

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
  final List<IngredientResponse>? _extendedIngredients;
  @override
  List<IngredientResponse>? get extendedIngredients {
    final value = _extendedIngredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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

  @override
  String toString() {
    return 'RecipeDiscoverResponse(id: $id, title: $title, servings: $servings, image: $image, readyInMinutes: $readyInMinutes, extendedIngredients: $extendedIngredients, vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, veryPopular: $veryPopular, veryHealthy: $veryHealthy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDiscoverResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.veryPopular, veryPopular) ||
                other.veryPopular == veryPopular) &&
            (identical(other.veryHealthy, veryHealthy) ||
                other.veryHealthy == veryHealthy));
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
      const DeepCollectionEquality().hash(_extendedIngredients),
      vegetarian,
      vegan,
      glutenFree,
      veryPopular,
      veryHealthy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDiscoverResponseCopyWith<_$_RecipeDiscoverResponse> get copyWith =>
      __$$_RecipeDiscoverResponseCopyWithImpl<_$_RecipeDiscoverResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDiscoverResponseToJson(
      this,
    );
  }
}

abstract class _RecipeDiscoverResponse implements RecipeDiscoverResponse {
  const factory _RecipeDiscoverResponse(
      {required final int id,
      required final String title,
      required final int servings,
      final String? image,
      required final int readyInMinutes,
      final List<IngredientResponse>? extendedIngredients,
      required final bool vegetarian,
      required final bool vegan,
      required final bool glutenFree,
      required final bool veryPopular,
      required final bool veryHealthy}) = _$_RecipeDiscoverResponse;

  factory _RecipeDiscoverResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeDiscoverResponse.fromJson;

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
  List<IngredientResponse>? get extendedIngredients;
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
  @JsonKey(ignore: true)
  _$$_RecipeDiscoverResponseCopyWith<_$_RecipeDiscoverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
