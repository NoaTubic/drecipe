// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_recipes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomRecipesResponse _$RandomRecipesResponseFromJson(
    Map<String, dynamic> json) {
  return _RandomRecipesResponse.fromJson(json);
}

/// @nodoc
mixin _$RandomRecipesResponse {
  List<RecipeDetailsResponse> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomRecipesResponseCopyWith<RandomRecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomRecipesResponseCopyWith<$Res> {
  factory $RandomRecipesResponseCopyWith(RandomRecipesResponse value,
          $Res Function(RandomRecipesResponse) then) =
      _$RandomRecipesResponseCopyWithImpl<$Res>;
  $Res call({List<RecipeDetailsResponse> recipes});
}

/// @nodoc
class _$RandomRecipesResponseCopyWithImpl<$Res>
    implements $RandomRecipesResponseCopyWith<$Res> {
  _$RandomRecipesResponseCopyWithImpl(this._value, this._then);

  final RandomRecipesResponse _value;
  // ignore: unused_field
  final $Res Function(RandomRecipesResponse) _then;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDetailsResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_RandomRecipesResponseCopyWith<$Res>
    implements $RandomRecipesResponseCopyWith<$Res> {
  factory _$$_RandomRecipesResponseCopyWith(_$_RandomRecipesResponse value,
          $Res Function(_$_RandomRecipesResponse) then) =
      __$$_RandomRecipesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<RecipeDetailsResponse> recipes});
}

/// @nodoc
class __$$_RandomRecipesResponseCopyWithImpl<$Res>
    extends _$RandomRecipesResponseCopyWithImpl<$Res>
    implements _$$_RandomRecipesResponseCopyWith<$Res> {
  __$$_RandomRecipesResponseCopyWithImpl(_$_RandomRecipesResponse _value,
      $Res Function(_$_RandomRecipesResponse) _then)
      : super(_value, (v) => _then(v as _$_RandomRecipesResponse));

  @override
  _$_RandomRecipesResponse get _value =>
      super._value as _$_RandomRecipesResponse;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_$_RandomRecipesResponse(
      recipes: recipes == freezed
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDetailsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomRecipesResponse implements _RandomRecipesResponse {
  const _$_RandomRecipesResponse(
      {required final List<RecipeDetailsResponse> recipes})
      : _recipes = recipes;

  factory _$_RandomRecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RandomRecipesResponseFromJson(json);

  final List<RecipeDetailsResponse> _recipes;
  @override
  List<RecipeDetailsResponse> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RandomRecipesResponse(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomRecipesResponse &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  _$$_RandomRecipesResponseCopyWith<_$_RandomRecipesResponse> get copyWith =>
      __$$_RandomRecipesResponseCopyWithImpl<_$_RandomRecipesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomRecipesResponseToJson(
      this,
    );
  }
}

abstract class _RandomRecipesResponse implements RandomRecipesResponse {
  const factory _RandomRecipesResponse(
          {required final List<RecipeDetailsResponse> recipes}) =
      _$_RandomRecipesResponse;

  factory _RandomRecipesResponse.fromJson(Map<String, dynamic> json) =
      _$_RandomRecipesResponse.fromJson;

  @override
  List<RecipeDetailsResponse> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_RandomRecipesResponseCopyWith<_$_RandomRecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
