// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_recommended_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeRecommendedResponse _$RecipeRecommendedResponseFromJson(
    Map<String, dynamic> json) {
  return _RecipeRecommendedResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeRecommendedResponse {
  int get id => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeRecommendedResponseCopyWith<RecipeRecommendedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeRecommendedResponseCopyWith<$Res> {
  factory $RecipeRecommendedResponseCopyWith(RecipeRecommendedResponse value,
          $Res Function(RecipeRecommendedResponse) then) =
      _$RecipeRecommendedResponseCopyWithImpl<$Res, RecipeRecommendedResponse>;
  @useResult
  $Res call(
      {int id,
      String imageType,
      String title,
      int readyInMinutes,
      int servings});
}

/// @nodoc
class _$RecipeRecommendedResponseCopyWithImpl<$Res,
        $Val extends RecipeRecommendedResponse>
    implements $RecipeRecommendedResponseCopyWith<$Res> {
  _$RecipeRecommendedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeRecommendedResponseCopyWith<$Res>
    implements $RecipeRecommendedResponseCopyWith<$Res> {
  factory _$$_RecipeRecommendedResponseCopyWith(
          _$_RecipeRecommendedResponse value,
          $Res Function(_$_RecipeRecommendedResponse) then) =
      __$$_RecipeRecommendedResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imageType,
      String title,
      int readyInMinutes,
      int servings});
}

/// @nodoc
class __$$_RecipeRecommendedResponseCopyWithImpl<$Res>
    extends _$RecipeRecommendedResponseCopyWithImpl<$Res,
        _$_RecipeRecommendedResponse>
    implements _$$_RecipeRecommendedResponseCopyWith<$Res> {
  __$$_RecipeRecommendedResponseCopyWithImpl(
      _$_RecipeRecommendedResponse _value,
      $Res Function(_$_RecipeRecommendedResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
  }) {
    return _then(_$_RecipeRecommendedResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeRecommendedResponse implements _RecipeRecommendedResponse {
  const _$_RecipeRecommendedResponse(
      {required this.id,
      required this.imageType,
      required this.title,
      required this.readyInMinutes,
      required this.servings});

  factory _$_RecipeRecommendedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeRecommendedResponseFromJson(json);

  @override
  final int id;
  @override
  final String imageType;
  @override
  final String title;
  @override
  final int readyInMinutes;
  @override
  final int servings;

  @override
  String toString() {
    return 'RecipeRecommendedResponse(id: $id, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeRecommendedResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageType, title, readyInMinutes, servings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeRecommendedResponseCopyWith<_$_RecipeRecommendedResponse>
      get copyWith => __$$_RecipeRecommendedResponseCopyWithImpl<
          _$_RecipeRecommendedResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeRecommendedResponseToJson(
      this,
    );
  }
}

abstract class _RecipeRecommendedResponse implements RecipeRecommendedResponse {
  const factory _RecipeRecommendedResponse(
      {required final int id,
      required final String imageType,
      required final String title,
      required final int readyInMinutes,
      required final int servings}) = _$_RecipeRecommendedResponse;

  factory _RecipeRecommendedResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeRecommendedResponse.fromJson;

  @override
  int get id;
  @override
  String get imageType;
  @override
  String get title;
  @override
  int get readyInMinutes;
  @override
  int get servings;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeRecommendedResponseCopyWith<_$_RecipeRecommendedResponse>
      get copyWith => throw _privateConstructorUsedError;
}
