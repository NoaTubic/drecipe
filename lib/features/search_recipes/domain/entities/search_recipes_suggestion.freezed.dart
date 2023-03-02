// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_recipes_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchRecipesSuggestion {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchRecipesSuggestionCopyWith<SearchRecipesSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesSuggestionCopyWith<$Res> {
  factory $SearchRecipesSuggestionCopyWith(SearchRecipesSuggestion value,
          $Res Function(SearchRecipesSuggestion) then) =
      _$SearchRecipesSuggestionCopyWithImpl<$Res, SearchRecipesSuggestion>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$SearchRecipesSuggestionCopyWithImpl<$Res,
        $Val extends SearchRecipesSuggestion>
    implements $SearchRecipesSuggestionCopyWith<$Res> {
  _$SearchRecipesSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRecipesSuggestionCopyWith<$Res>
    implements $SearchRecipesSuggestionCopyWith<$Res> {
  factory _$$_SearchRecipesSuggestionCopyWith(_$_SearchRecipesSuggestion value,
          $Res Function(_$_SearchRecipesSuggestion) then) =
      __$$_SearchRecipesSuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$_SearchRecipesSuggestionCopyWithImpl<$Res>
    extends _$SearchRecipesSuggestionCopyWithImpl<$Res,
        _$_SearchRecipesSuggestion>
    implements _$$_SearchRecipesSuggestionCopyWith<$Res> {
  __$$_SearchRecipesSuggestionCopyWithImpl(_$_SearchRecipesSuggestion _value,
      $Res Function(_$_SearchRecipesSuggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$_SearchRecipesSuggestion(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchRecipesSuggestion implements _SearchRecipesSuggestion {
  const _$_SearchRecipesSuggestion({required this.title, required this.image});

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'SearchRecipesSuggestion(title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipesSuggestion &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipesSuggestionCopyWith<_$_SearchRecipesSuggestion>
      get copyWith =>
          __$$_SearchRecipesSuggestionCopyWithImpl<_$_SearchRecipesSuggestion>(
              this, _$identity);
}

abstract class _SearchRecipesSuggestion implements SearchRecipesSuggestion {
  const factory _SearchRecipesSuggestion(
      {required final String title,
      required final String image}) = _$_SearchRecipesSuggestion;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipesSuggestionCopyWith<_$_SearchRecipesSuggestion>
      get copyWith => throw _privateConstructorUsedError;
}
