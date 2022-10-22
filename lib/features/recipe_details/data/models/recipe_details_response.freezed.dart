// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDetailsResponse _$RecipeDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _RecipeDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailsResponse {
  NutritionResponse get nutrition => throw _privateConstructorUsedError;
  List<InstructionsResponse> get analyzedInstructions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailsResponseCopyWith<RecipeDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsResponseCopyWith<$Res> {
  factory $RecipeDetailsResponseCopyWith(RecipeDetailsResponse value,
          $Res Function(RecipeDetailsResponse) then) =
      _$RecipeDetailsResponseCopyWithImpl<$Res, RecipeDetailsResponse>;
  @useResult
  $Res call(
      {NutritionResponse nutrition,
      List<InstructionsResponse> analyzedInstructions});

  $NutritionResponseCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$RecipeDetailsResponseCopyWithImpl<$Res,
        $Val extends RecipeDetailsResponse>
    implements $RecipeDetailsResponseCopyWith<$Res> {
  _$RecipeDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrition = null,
    Object? analyzedInstructions = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_RecipeDetailsResponseCopyWith<$Res>
    implements $RecipeDetailsResponseCopyWith<$Res> {
  factory _$$_RecipeDetailsResponseCopyWith(_$_RecipeDetailsResponse value,
          $Res Function(_$_RecipeDetailsResponse) then) =
      __$$_RecipeDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NutritionResponse nutrition,
      List<InstructionsResponse> analyzedInstructions});

  @override
  $NutritionResponseCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_RecipeDetailsResponseCopyWithImpl<$Res>
    extends _$RecipeDetailsResponseCopyWithImpl<$Res, _$_RecipeDetailsResponse>
    implements _$$_RecipeDetailsResponseCopyWith<$Res> {
  __$$_RecipeDetailsResponseCopyWithImpl(_$_RecipeDetailsResponse _value,
      $Res Function(_$_RecipeDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrition = null,
    Object? analyzedInstructions = null,
  }) {
    return _then(_$_RecipeDetailsResponse(
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
class _$_RecipeDetailsResponse implements _RecipeDetailsResponse {
  const _$_RecipeDetailsResponse(
      {required this.nutrition,
      required final List<InstructionsResponse> analyzedInstructions})
      : _analyzedInstructions = analyzedInstructions;

  factory _$_RecipeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDetailsResponseFromJson(json);

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
    return 'RecipeDetailsResponse(nutrition: $nutrition, analyzedInstructions: $analyzedInstructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetailsResponse &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            const DeepCollectionEquality()
                .equals(other._analyzedInstructions, _analyzedInstructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nutrition,
      const DeepCollectionEquality().hash(_analyzedInstructions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDetailsResponseCopyWith<_$_RecipeDetailsResponse> get copyWith =>
      __$$_RecipeDetailsResponseCopyWithImpl<_$_RecipeDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDetailsResponseToJson(
      this,
    );
  }
}

abstract class _RecipeDetailsResponse implements RecipeDetailsResponse {
  const factory _RecipeDetailsResponse(
          {required final NutritionResponse nutrition,
          required final List<InstructionsResponse> analyzedInstructions}) =
      _$_RecipeDetailsResponse;

  factory _RecipeDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeDetailsResponse.fromJson;

  @override
  NutritionResponse get nutrition;
  @override
  List<InstructionsResponse> get analyzedInstructions;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDetailsResponseCopyWith<_$_RecipeDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
