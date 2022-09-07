// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeDetails {
  NutritionData get nutritionData => throw _privateConstructorUsedError;
  List<Instructions> get instructions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailsCopyWith<RecipeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsCopyWith<$Res> {
  factory $RecipeDetailsCopyWith(
          RecipeDetails value, $Res Function(RecipeDetails) then) =
      _$RecipeDetailsCopyWithImpl<$Res>;
  $Res call({NutritionData nutritionData, List<Instructions> instructions});

  $NutritionDataCopyWith<$Res> get nutritionData;
}

/// @nodoc
class _$RecipeDetailsCopyWithImpl<$Res>
    implements $RecipeDetailsCopyWith<$Res> {
  _$RecipeDetailsCopyWithImpl(this._value, this._then);

  final RecipeDetails _value;
  // ignore: unused_field
  final $Res Function(RecipeDetails) _then;

  @override
  $Res call({
    Object? nutritionData = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      nutritionData: nutritionData == freezed
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as NutritionData,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instructions>,
    ));
  }

  @override
  $NutritionDataCopyWith<$Res> get nutritionData {
    return $NutritionDataCopyWith<$Res>(_value.nutritionData, (value) {
      return _then(_value.copyWith(nutritionData: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecipeDetailsCopyWith<$Res>
    implements $RecipeDetailsCopyWith<$Res> {
  factory _$$_RecipeDetailsCopyWith(
          _$_RecipeDetails value, $Res Function(_$_RecipeDetails) then) =
      __$$_RecipeDetailsCopyWithImpl<$Res>;
  @override
  $Res call({NutritionData nutritionData, List<Instructions> instructions});

  @override
  $NutritionDataCopyWith<$Res> get nutritionData;
}

/// @nodoc
class __$$_RecipeDetailsCopyWithImpl<$Res>
    extends _$RecipeDetailsCopyWithImpl<$Res>
    implements _$$_RecipeDetailsCopyWith<$Res> {
  __$$_RecipeDetailsCopyWithImpl(
      _$_RecipeDetails _value, $Res Function(_$_RecipeDetails) _then)
      : super(_value, (v) => _then(v as _$_RecipeDetails));

  @override
  _$_RecipeDetails get _value => super._value as _$_RecipeDetails;

  @override
  $Res call({
    Object? nutritionData = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$_RecipeDetails(
      nutritionData: nutritionData == freezed
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as NutritionData,
      instructions: instructions == freezed
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<Instructions>,
    ));
  }
}

/// @nodoc

class _$_RecipeDetails implements _RecipeDetails {
  const _$_RecipeDetails(
      {required this.nutritionData,
      required final List<Instructions> instructions})
      : _instructions = instructions;

  @override
  final NutritionData nutritionData;
  final List<Instructions> _instructions;
  @override
  List<Instructions> get instructions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  String toString() {
    return 'RecipeDetails(nutritionData: $nutritionData, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetails &&
            const DeepCollectionEquality()
                .equals(other.nutritionData, nutritionData) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nutritionData),
      const DeepCollectionEquality().hash(_instructions));

  @JsonKey(ignore: true)
  @override
  _$$_RecipeDetailsCopyWith<_$_RecipeDetails> get copyWith =>
      __$$_RecipeDetailsCopyWithImpl<_$_RecipeDetails>(this, _$identity);
}

abstract class _RecipeDetails implements RecipeDetails {
  const factory _RecipeDetails(
      {required final NutritionData nutritionData,
      required final List<Instructions> instructions}) = _$_RecipeDetails;

  @override
  NutritionData get nutritionData;
  @override
  List<Instructions> get instructions;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDetailsCopyWith<_$_RecipeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
