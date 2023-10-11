// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_recipes_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRecipesResultsResponse _$SearchRecipesResultsResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRecipesResultsResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipesResultsResponse {
  List<SearchRecipesResultResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipesResultsResponseCopyWith<SearchRecipesResultsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesResultsResponseCopyWith<$Res> {
  factory $SearchRecipesResultsResponseCopyWith(
          SearchRecipesResultsResponse value,
          $Res Function(SearchRecipesResultsResponse) then) =
      _$SearchRecipesResultsResponseCopyWithImpl<$Res,
          SearchRecipesResultsResponse>;
  @useResult
  $Res call({List<SearchRecipesResultResponse> results});
}

/// @nodoc
class _$SearchRecipesResultsResponseCopyWithImpl<$Res,
        $Val extends SearchRecipesResultsResponse>
    implements $SearchRecipesResultsResponseCopyWith<$Res> {
  _$SearchRecipesResultsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchRecipesResultResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRecipesResultsResponseCopyWith<$Res>
    implements $SearchRecipesResultsResponseCopyWith<$Res> {
  factory _$$_SearchRecipesResultsResponseCopyWith(
          _$_SearchRecipesResultsResponse value,
          $Res Function(_$_SearchRecipesResultsResponse) then) =
      __$$_SearchRecipesResultsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchRecipesResultResponse> results});
}

/// @nodoc
class __$$_SearchRecipesResultsResponseCopyWithImpl<$Res>
    extends _$SearchRecipesResultsResponseCopyWithImpl<$Res,
        _$_SearchRecipesResultsResponse>
    implements _$$_SearchRecipesResultsResponseCopyWith<$Res> {
  __$$_SearchRecipesResultsResponseCopyWithImpl(
      _$_SearchRecipesResultsResponse _value,
      $Res Function(_$_SearchRecipesResultsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_SearchRecipesResultsResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchRecipesResultResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRecipesResultsResponse implements _SearchRecipesResultsResponse {
  const _$_SearchRecipesResultsResponse(
      {required final List<SearchRecipesResultResponse> results})
      : _results = results;

  factory _$_SearchRecipesResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRecipesResultsResponseFromJson(json);

  final List<SearchRecipesResultResponse> _results;
  @override
  List<SearchRecipesResultResponse> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchRecipesResultsResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipesResultsResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipesResultsResponseCopyWith<_$_SearchRecipesResultsResponse>
      get copyWith => __$$_SearchRecipesResultsResponseCopyWithImpl<
          _$_SearchRecipesResultsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRecipesResultsResponseToJson(
      this,
    );
  }
}

abstract class _SearchRecipesResultsResponse
    implements SearchRecipesResultsResponse {
  const factory _SearchRecipesResultsResponse(
          {required final List<SearchRecipesResultResponse> results}) =
      _$_SearchRecipesResultsResponse;

  factory _SearchRecipesResultsResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRecipesResultsResponse.fromJson;

  @override
  List<SearchRecipesResultResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipesResultsResponseCopyWith<_$_SearchRecipesResultsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

SearchRecipesResultResponse _$SearchRecipesResultResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRecipesResultResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipesResultResponse {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRecipesResultResponseCopyWith<SearchRecipesResultResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesResultResponseCopyWith<$Res> {
  factory $SearchRecipesResultResponseCopyWith(
          SearchRecipesResultResponse value,
          $Res Function(SearchRecipesResultResponse) then) =
      _$SearchRecipesResultResponseCopyWithImpl<$Res,
          SearchRecipesResultResponse>;
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class _$SearchRecipesResultResponseCopyWithImpl<$Res,
        $Val extends SearchRecipesResultResponse>
    implements $SearchRecipesResultResponseCopyWith<$Res> {
  _$SearchRecipesResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRecipesResultResponseCopyWith<$Res>
    implements $SearchRecipesResultResponseCopyWith<$Res> {
  factory _$$_SearchRecipesResultResponseCopyWith(
          _$_SearchRecipesResultResponse value,
          $Res Function(_$_SearchRecipesResultResponse) then) =
      __$$_SearchRecipesResultResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class __$$_SearchRecipesResultResponseCopyWithImpl<$Res>
    extends _$SearchRecipesResultResponseCopyWithImpl<$Res,
        _$_SearchRecipesResultResponse>
    implements _$$_SearchRecipesResultResponseCopyWith<$Res> {
  __$$_SearchRecipesResultResponseCopyWithImpl(
      _$_SearchRecipesResultResponse _value,
      $Res Function(_$_SearchRecipesResultResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$_SearchRecipesResultResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_SearchRecipesResultResponse implements _SearchRecipesResultResponse {
  const _$_SearchRecipesResultResponse(
      {required this.id, required this.title, required this.image});

  factory _$_SearchRecipesResultResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRecipesResultResponseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'SearchRecipesResultResponse(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRecipesResultResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRecipesResultResponseCopyWith<_$_SearchRecipesResultResponse>
      get copyWith => __$$_SearchRecipesResultResponseCopyWithImpl<
          _$_SearchRecipesResultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRecipesResultResponseToJson(
      this,
    );
  }
}

abstract class _SearchRecipesResultResponse
    implements SearchRecipesResultResponse {
  const factory _SearchRecipesResultResponse(
      {required final int id,
      required final String title,
      required final String image}) = _$_SearchRecipesResultResponse;

  factory _SearchRecipesResultResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRecipesResultResponse.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRecipesResultResponseCopyWith<_$_SearchRecipesResultResponse>
      get copyWith => throw _privateConstructorUsedError;
}
