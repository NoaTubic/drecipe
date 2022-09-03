// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipes_response.dart';

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
  List<RecipeResponse> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesResponseCopyWith<RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesResponseCopyWith<$Res> {
  factory $RecipesResponseCopyWith(
          RecipesResponse value, $Res Function(RecipesResponse) then) =
      _$RecipesResponseCopyWithImpl<$Res>;
  $Res call({List<RecipeResponse> recipes});
}

/// @nodoc
class _$RecipesResponseCopyWithImpl<$Res>
    implements $RecipesResponseCopyWith<$Res> {
  _$RecipesResponseCopyWithImpl(this._value, this._then);

  final RecipesResponse _value;
  // ignore: unused_field
  final $Res Function(RecipesResponse) _then;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecipesResponseCopyWith<$Res>
    implements $RecipesResponseCopyWith<$Res> {
  factory _$$_RecipesResponseCopyWith(
          _$_RecipesResponse value, $Res Function(_$_RecipesResponse) then) =
      __$$_RecipesResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<RecipeResponse> recipes});
}

/// @nodoc
class __$$_RecipesResponseCopyWithImpl<$Res>
    extends _$RecipesResponseCopyWithImpl<$Res>
    implements _$$_RecipesResponseCopyWith<$Res> {
  __$$_RecipesResponseCopyWithImpl(
      _$_RecipesResponse _value, $Res Function(_$_RecipesResponse) _then)
      : super(_value, (v) => _then(v as _$_RecipesResponse));

  @override
  _$_RecipesResponse get _value => super._value as _$_RecipesResponse;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_$_RecipesResponse(
      recipes: recipes == freezed
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipesResponse implements _RecipesResponse {
  const _$_RecipesResponse({required final List<RecipeResponse> recipes})
      : _recipes = recipes;

  factory _$_RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesResponseFromJson(json);

  final List<RecipeResponse> _recipes;
  @override
  List<RecipeResponse> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipesResponse(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipesResponse &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
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
      {required final List<RecipeResponse> recipes}) = _$_RecipesResponse;

  factory _RecipesResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipesResponse.fromJson;

  @override
  List<RecipeResponse> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesResponseCopyWith<_$_RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
