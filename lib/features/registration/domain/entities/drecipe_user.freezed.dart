// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drecipe_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrecipeUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrecipeUserCopyWith<DrecipeUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrecipeUserCopyWith<$Res> {
  factory $DrecipeUserCopyWith(
          DrecipeUser value, $Res Function(DrecipeUser) then) =
      _$DrecipeUserCopyWithImpl<$Res, DrecipeUser>;
  @useResult
  $Res call({String id, String email, String username});
}

/// @nodoc
class _$DrecipeUserCopyWithImpl<$Res, $Val extends DrecipeUser>
    implements $DrecipeUserCopyWith<$Res> {
  _$DrecipeUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrecipeUserCopyWith<$Res>
    implements $DrecipeUserCopyWith<$Res> {
  factory _$$_DrecipeUserCopyWith(
          _$_DrecipeUser value, $Res Function(_$_DrecipeUser) then) =
      __$$_DrecipeUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String email, String username});
}

/// @nodoc
class __$$_DrecipeUserCopyWithImpl<$Res>
    extends _$DrecipeUserCopyWithImpl<$Res, _$_DrecipeUser>
    implements _$$_DrecipeUserCopyWith<$Res> {
  __$$_DrecipeUserCopyWithImpl(
      _$_DrecipeUser _value, $Res Function(_$_DrecipeUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_$_DrecipeUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DrecipeUser implements _DrecipeUser {
  const _$_DrecipeUser(
      {required this.id, required this.email, required this.username});

  @override
  final String id;
  @override
  final String email;
  @override
  final String username;

  @override
  String toString() {
    return 'DrecipeUser(id: $id, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrecipeUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrecipeUserCopyWith<_$_DrecipeUser> get copyWith =>
      __$$_DrecipeUserCopyWithImpl<_$_DrecipeUser>(this, _$identity);
}

abstract class _DrecipeUser implements DrecipeUser {
  const factory _DrecipeUser(
      {required final String id,
      required final String email,
      required final String username}) = _$_DrecipeUser;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_DrecipeUserCopyWith<_$_DrecipeUser> get copyWith =>
      throw _privateConstructorUsedError;
}
