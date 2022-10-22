// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientResponse _$IngredientResponseFromJson(Map<String, dynamic> json) {
  return _IngredientResponse.fromJson(json);
}

/// @nodoc
mixin _$IngredientResponse {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientResponseCopyWith<IngredientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientResponseCopyWith<$Res> {
  factory $IngredientResponseCopyWith(
          IngredientResponse value, $Res Function(IngredientResponse) then) =
      _$IngredientResponseCopyWithImpl<$Res, IngredientResponse>;
  @useResult
  $Res call({int id, String? image, String original});
}

/// @nodoc
class _$IngredientResponseCopyWithImpl<$Res, $Val extends IngredientResponse>
    implements $IngredientResponseCopyWith<$Res> {
  _$IngredientResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? original = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientResponseCopyWith<$Res>
    implements $IngredientResponseCopyWith<$Res> {
  factory _$$_IngredientResponseCopyWith(_$_IngredientResponse value,
          $Res Function(_$_IngredientResponse) then) =
      __$$_IngredientResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? image, String original});
}

/// @nodoc
class __$$_IngredientResponseCopyWithImpl<$Res>
    extends _$IngredientResponseCopyWithImpl<$Res, _$_IngredientResponse>
    implements _$$_IngredientResponseCopyWith<$Res> {
  __$$_IngredientResponseCopyWithImpl(
      _$_IngredientResponse _value, $Res Function(_$_IngredientResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? original = null,
  }) {
    return _then(_$_IngredientResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientResponse implements _IngredientResponse {
  const _$_IngredientResponse(
      {required this.id, this.image, required this.original});

  factory _$_IngredientResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientResponseFromJson(json);

  @override
  final int id;
  @override
  final String? image;
  @override
  final String original;

  @override
  String toString() {
    return 'IngredientResponse(id: $id, image: $image, original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientResponseCopyWith<_$_IngredientResponse> get copyWith =>
      __$$_IngredientResponseCopyWithImpl<_$_IngredientResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientResponseToJson(
      this,
    );
  }
}

abstract class _IngredientResponse implements IngredientResponse {
  const factory _IngredientResponse(
      {required final int id,
      final String? image,
      required final String original}) = _$_IngredientResponse;

  factory _IngredientResponse.fromJson(Map<String, dynamic> json) =
      _$_IngredientResponse.fromJson;

  @override
  int get id;
  @override
  String? get image;
  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientResponseCopyWith<_$_IngredientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
