// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_recommended.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeRecommended {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeRecommendedCopyWith<RecipeRecommended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeRecommendedCopyWith<$Res> {
  factory $RecipeRecommendedCopyWith(
          RecipeRecommended value, $Res Function(RecipeRecommended) then) =
      _$RecipeRecommendedCopyWithImpl<$Res, RecipeRecommended>;
  @useResult
  $Res call(
      {int id, String title, int servings, String? image, int readyInMinutes});
}

/// @nodoc
class _$RecipeRecommendedCopyWithImpl<$Res, $Val extends RecipeRecommended>
    implements $RecipeRecommendedCopyWith<$Res> {
  _$RecipeRecommendedCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeRecommendedCopyWith<$Res>
    implements $RecipeRecommendedCopyWith<$Res> {
  factory _$$_RecipeRecommendedCopyWith(_$_RecipeRecommended value,
          $Res Function(_$_RecipeRecommended) then) =
      __$$_RecipeRecommendedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, int servings, String? image, int readyInMinutes});
}

/// @nodoc
class __$$_RecipeRecommendedCopyWithImpl<$Res>
    extends _$RecipeRecommendedCopyWithImpl<$Res, _$_RecipeRecommended>
    implements _$$_RecipeRecommendedCopyWith<$Res> {
  __$$_RecipeRecommendedCopyWithImpl(
      _$_RecipeRecommended _value, $Res Function(_$_RecipeRecommended) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? servings = null,
    Object? image = freezed,
    Object? readyInMinutes = null,
  }) {
    return _then(_$_RecipeRecommended(
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
    ));
  }
}

/// @nodoc

class _$_RecipeRecommended implements _RecipeRecommended {
  const _$_RecipeRecommended(
      {required this.id,
      required this.title,
      required this.servings,
      this.image,
      required this.readyInMinutes});

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

  @override
  String toString() {
    return 'RecipeRecommended(id: $id, title: $title, servings: $servings, image: $image, readyInMinutes: $readyInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeRecommended &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, servings, image, readyInMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeRecommendedCopyWith<_$_RecipeRecommended> get copyWith =>
      __$$_RecipeRecommendedCopyWithImpl<_$_RecipeRecommended>(
          this, _$identity);
}

abstract class _RecipeRecommended implements RecipeRecommended {
  const factory _RecipeRecommended(
      {required final int id,
      required final String title,
      required final int servings,
      final String? image,
      required final int readyInMinutes}) = _$_RecipeRecommended;

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
  @JsonKey(ignore: true)
  _$$_RecipeRecommendedCopyWith<_$_RecipeRecommended> get copyWith =>
      throw _privateConstructorUsedError;
}
