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
  String get instructions => throw _privateConstructorUsedError;
  List<IngredientResponse> get extendedIngredients =>
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
      _$RecipeResponseCopyWithImpl<$Res>;
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
      String instructions,
      List<IngredientResponse> extendedIngredients});
}

/// @nodoc
class _$RecipeResponseCopyWithImpl<$Res>
    implements $RecipeResponseCopyWith<$Res> {
  _$RecipeResponseCopyWithImpl(this._value, this._then);

  final RecipeResponse _value;
  // ignore: unused_field
  final $Res Function(RecipeResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? servings = freezed,
    Object? image = freezed,
    Object? readyInMinutes = freezed,
    Object? dishTypes = freezed,
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? glutenFree = freezed,
    Object? veryPopular = freezed,
    Object? veryHealthy = freezed,
    Object? instructions = freezed,
    Object? extendedIngredients = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: dishTypes == freezed
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: glutenFree == freezed
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: veryPopular == freezed
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: veryHealthy == freezed
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      extendedIngredients: extendedIngredients == freezed
          ? _value.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipeResponseCopyWith<$Res>
    implements $RecipeResponseCopyWith<$Res> {
  factory _$$_RecipeResponseCopyWith(
          _$_RecipeResponse value, $Res Function(_$_RecipeResponse) then) =
      __$$_RecipeResponseCopyWithImpl<$Res>;
  @override
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
      String instructions,
      List<IngredientResponse> extendedIngredients});
}

/// @nodoc
class __$$_RecipeResponseCopyWithImpl<$Res>
    extends _$RecipeResponseCopyWithImpl<$Res>
    implements _$$_RecipeResponseCopyWith<$Res> {
  __$$_RecipeResponseCopyWithImpl(
      _$_RecipeResponse _value, $Res Function(_$_RecipeResponse) _then)
      : super(_value, (v) => _then(v as _$_RecipeResponse));

  @override
  _$_RecipeResponse get _value => super._value as _$_RecipeResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? servings = freezed,
    Object? image = freezed,
    Object? readyInMinutes = freezed,
    Object? dishTypes = freezed,
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? glutenFree = freezed,
    Object? veryPopular = freezed,
    Object? veryHealthy = freezed,
    Object? instructions = freezed,
    Object? extendedIngredients = freezed,
  }) {
    return _then(_$_RecipeResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: dishTypes == freezed
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: glutenFree == freezed
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: veryPopular == freezed
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: veryHealthy == freezed
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      extendedIngredients: extendedIngredients == freezed
          ? _value._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientResponse>,
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
      required this.instructions,
      required final List<IngredientResponse> extendedIngredients})
      : _dishTypes = dishTypes,
        _extendedIngredients = extendedIngredients;

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
  @override
  final String instructions;
  final List<IngredientResponse> _extendedIngredients;
  @override
  List<IngredientResponse> get extendedIngredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  String toString() {
    return 'RecipeResponse(id: $id, title: $title, servings: $servings, image: $image, readyInMinutes: $readyInMinutes, dishTypes: $dishTypes, vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, veryPopular: $veryPopular, veryHealthy: $veryHealthy, instructions: $instructions, extendedIngredients: $extendedIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.servings, servings) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.readyInMinutes, readyInMinutes) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes) &&
            const DeepCollectionEquality()
                .equals(other.vegetarian, vegetarian) &&
            const DeepCollectionEquality().equals(other.vegan, vegan) &&
            const DeepCollectionEquality()
                .equals(other.glutenFree, glutenFree) &&
            const DeepCollectionEquality()
                .equals(other.veryPopular, veryPopular) &&
            const DeepCollectionEquality()
                .equals(other.veryHealthy, veryHealthy) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(servings),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(readyInMinutes),
      const DeepCollectionEquality().hash(_dishTypes),
      const DeepCollectionEquality().hash(vegetarian),
      const DeepCollectionEquality().hash(vegan),
      const DeepCollectionEquality().hash(glutenFree),
      const DeepCollectionEquality().hash(veryPopular),
      const DeepCollectionEquality().hash(veryHealthy),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(_extendedIngredients));

  @JsonKey(ignore: true)
  @override
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
          required final String instructions,
          required final List<IngredientResponse> extendedIngredients}) =
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
  String get instructions;
  @override
  List<IngredientResponse> get extendedIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeResponseCopyWith<_$_RecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
