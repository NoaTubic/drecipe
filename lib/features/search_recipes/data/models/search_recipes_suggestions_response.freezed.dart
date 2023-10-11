// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_recipes_suggestions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRecipesSuggestionsResponse _$SearchRecipesSuggestionsResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRecipesSuggestionsResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipesSuggestionsResponse {
  List<SearchRecipesSuggestionResponse> get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipesSuggestionsResponseCopyWith<SearchRecipesSuggestionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesSuggestionsResponseCopyWith<$Res> {
  factory $SearchRecipesSuggestionsResponseCopyWith(
          SearchRecipesSuggestionsResponse value,
          $Res Function(SearchRecipesSuggestionsResponse) then) =
      _$SearchRecipesSuggestionsResponseCopyWithImpl<$Res,
          SearchRecipesSuggestionsResponse>;
  @useResult
  $Res call({List<SearchRecipesSuggestionResponse> suggestions});
}

/// @nodoc
class _$SearchRecipesSuggestionsResponseCopyWithImpl<$Res,
        $Val extends SearchRecipesSuggestionsResponse>
    implements $SearchRecipesSuggestionsResponseCopyWith<$Res> {
  _$SearchRecipesSuggestionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SearchRecipesSuggestionResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRecipesSuggestionsResponseCopyWith<$Res>
    implements $SearchRecipesSuggestionsResponseCopyWith<$Res> {
  factory _$$_SearchRecipesSuggestionsResponseCopyWith(
          _$_SearchRecipesSuggestionsResponse value,
          $Res Function(_$_SearchRecipesSuggestionsResponse) then) =
      __$$_SearchRecipesSuggestionsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchRecipesSuggestionResponse> suggestions});
}

/// @nodoc
class __$$_SearchRecipesSuggestionsResponseCopyWithImpl<$Res>
    extends _$SearchRecipesSuggestionsResponseCopyWithImpl<$Res,
        _$_SearchRecipesSuggestionsResponse>
    implements _$$_SearchRecipesSuggestionsResponseCopyWith<$Res> {
  __$$_SearchRecipesSuggestionsResponseCopyWithImpl(
      _$_SearchRecipesSuggestionsResponse _value,
      $Res Function(_$_SearchRecipesSuggestionsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_SearchRecipesSuggestionsResponse(
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SearchRecipesSuggestionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRecipesSuggestionsResponse
    implements _SearchRecipesSuggestionsResponse {
  const _$_SearchRecipesSuggestionsResponse(
      {required final List<SearchRecipesSuggestionResponse> suggestions})
      : _suggestions = suggestions;

  factory _$_SearchRecipesSuggestionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchRecipesSuggestionsResponseFromJson(json);

  final List<SearchRecipesSuggestionResponse> _suggestions;
  @override
  List<SearchRecipesSuggestionResponse> get suggestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'SearchRecipesSuggestionsResponse(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipesSuggestionsResponse &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipesSuggestionsResponseCopyWith<
          _$_SearchRecipesSuggestionsResponse>
      get copyWith => __$$_SearchRecipesSuggestionsResponseCopyWithImpl<
          _$_SearchRecipesSuggestionsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRecipesSuggestionsResponseToJson(
      this,
    );
  }
}

abstract class _SearchRecipesSuggestionsResponse
    implements SearchRecipesSuggestionsResponse {
  const factory _SearchRecipesSuggestionsResponse(
          {required final List<SearchRecipesSuggestionResponse> suggestions}) =
      _$_SearchRecipesSuggestionsResponse;

  factory _SearchRecipesSuggestionsResponse.fromJson(
      Map<String, dynamic> json) = _$_SearchRecipesSuggestionsResponse.fromJson;

  @override
  List<SearchRecipesSuggestionResponse> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipesSuggestionsResponseCopyWith<
          _$_SearchRecipesSuggestionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SearchRecipesSuggestionResponse _$SearchRecipesSuggestionResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRecipesSuggestionResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipesSuggestionResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipesSuggestionResponseCopyWith<SearchRecipesSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesSuggestionResponseCopyWith<$Res> {
  factory $SearchRecipesSuggestionResponseCopyWith(
          SearchRecipesSuggestionResponse value,
          $Res Function(SearchRecipesSuggestionResponse) then) =
      _$SearchRecipesSuggestionResponseCopyWithImpl<$Res,
          SearchRecipesSuggestionResponse>;
  @useResult
  $Res call({int id, String title, String imageType});
}

/// @nodoc
class _$SearchRecipesSuggestionResponseCopyWithImpl<$Res,
        $Val extends SearchRecipesSuggestionResponse>
    implements $SearchRecipesSuggestionResponseCopyWith<$Res> {
  _$SearchRecipesSuggestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageType = null,
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
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRecipesSuggestionResponseCopyWith<$Res>
    implements $SearchRecipesSuggestionResponseCopyWith<$Res> {
  factory _$$_SearchRecipesSuggestionResponseCopyWith(
          _$_SearchRecipesSuggestionResponse value,
          $Res Function(_$_SearchRecipesSuggestionResponse) then) =
      __$$_SearchRecipesSuggestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String imageType});
}

/// @nodoc
class __$$_SearchRecipesSuggestionResponseCopyWithImpl<$Res>
    extends _$SearchRecipesSuggestionResponseCopyWithImpl<$Res,
        _$_SearchRecipesSuggestionResponse>
    implements _$$_SearchRecipesSuggestionResponseCopyWith<$Res> {
  __$$_SearchRecipesSuggestionResponseCopyWithImpl(
      _$_SearchRecipesSuggestionResponse _value,
      $Res Function(_$_SearchRecipesSuggestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageType = null,
  }) {
    return _then(_$_SearchRecipesSuggestionResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRecipesSuggestionResponse
    implements _SearchRecipesSuggestionResponse {
  const _$_SearchRecipesSuggestionResponse(
      {required this.id, required this.title, required this.imageType});

  factory _$_SearchRecipesSuggestionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_SearchRecipesSuggestionResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String imageType;

  @override
  String toString() {
    return 'SearchRecipesSuggestionResponse(id: $id, title: $title, imageType: $imageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipesSuggestionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipesSuggestionResponseCopyWith<
          _$_SearchRecipesSuggestionResponse>
      get copyWith => __$$_SearchRecipesSuggestionResponseCopyWithImpl<
          _$_SearchRecipesSuggestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRecipesSuggestionResponseToJson(
      this,
    );
  }
}

abstract class _SearchRecipesSuggestionResponse
    implements SearchRecipesSuggestionResponse {
  const factory _SearchRecipesSuggestionResponse(
      {required final int id,
      required final String title,
      required final String imageType}) = _$_SearchRecipesSuggestionResponse;

  factory _SearchRecipesSuggestionResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRecipesSuggestionResponse.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageType;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipesSuggestionResponseCopyWith<
          _$_SearchRecipesSuggestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
