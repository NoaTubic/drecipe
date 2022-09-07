// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instructions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstructionsResponse _$InstructionsResponseFromJson(Map<String, dynamic> json) {
  return _InstructionsResponse.fromJson(json);
}

/// @nodoc
mixin _$InstructionsResponse {
  String? get name => throw _privateConstructorUsedError;
  List<StepResponse> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionsResponseCopyWith<InstructionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsResponseCopyWith<$Res> {
  factory $InstructionsResponseCopyWith(InstructionsResponse value,
          $Res Function(InstructionsResponse) then) =
      _$InstructionsResponseCopyWithImpl<$Res>;
  $Res call({String? name, List<StepResponse> steps});
}

/// @nodoc
class _$InstructionsResponseCopyWithImpl<$Res>
    implements $InstructionsResponseCopyWith<$Res> {
  _$InstructionsResponseCopyWithImpl(this._value, this._then);

  final InstructionsResponse _value;
  // ignore: unused_field
  final $Res Function(InstructionsResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? steps = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepResponse>,
    ));
  }
}

/// @nodoc
abstract class _$$_InstructionsResponseCopyWith<$Res>
    implements $InstructionsResponseCopyWith<$Res> {
  factory _$$_InstructionsResponseCopyWith(_$_InstructionsResponse value,
          $Res Function(_$_InstructionsResponse) then) =
      __$$_InstructionsResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? name, List<StepResponse> steps});
}

/// @nodoc
class __$$_InstructionsResponseCopyWithImpl<$Res>
    extends _$InstructionsResponseCopyWithImpl<$Res>
    implements _$$_InstructionsResponseCopyWith<$Res> {
  __$$_InstructionsResponseCopyWithImpl(_$_InstructionsResponse _value,
      $Res Function(_$_InstructionsResponse) _then)
      : super(_value, (v) => _then(v as _$_InstructionsResponse));

  @override
  _$_InstructionsResponse get _value => super._value as _$_InstructionsResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? steps = freezed,
  }) {
    return _then(_$_InstructionsResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: steps == freezed
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstructionsResponse implements _InstructionsResponse {
  const _$_InstructionsResponse(
      {this.name, required final List<StepResponse> steps})
      : _steps = steps;

  factory _$_InstructionsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionsResponseFromJson(json);

  @override
  final String? name;
  final List<StepResponse> _steps;
  @override
  List<StepResponse> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'InstructionsResponse(name: $name, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionsResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  _$$_InstructionsResponseCopyWith<_$_InstructionsResponse> get copyWith =>
      __$$_InstructionsResponseCopyWithImpl<_$_InstructionsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionsResponseToJson(
      this,
    );
  }
}

abstract class _InstructionsResponse implements InstructionsResponse {
  const factory _InstructionsResponse(
      {final String? name,
      required final List<StepResponse> steps}) = _$_InstructionsResponse;

  factory _InstructionsResponse.fromJson(Map<String, dynamic> json) =
      _$_InstructionsResponse.fromJson;

  @override
  String? get name;
  @override
  List<StepResponse> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionsResponseCopyWith<_$_InstructionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StepResponse _$StepResponseFromJson(Map<String, dynamic> json) {
  return _StepResponse.fromJson(json);
}

/// @nodoc
mixin _$StepResponse {
  int get number => throw _privateConstructorUsedError;
  String get step => throw _privateConstructorUsedError;
  List<InstructionsEquipmentAndIngredientResponse>? get ingredients =>
      throw _privateConstructorUsedError;
  List<InstructionsEquipmentAndIngredientResponse>? get equipment =>
      throw _privateConstructorUsedError;
  LengthResponse? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepResponseCopyWith<StepResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepResponseCopyWith<$Res> {
  factory $StepResponseCopyWith(
          StepResponse value, $Res Function(StepResponse) then) =
      _$StepResponseCopyWithImpl<$Res>;
  $Res call(
      {int number,
      String step,
      List<InstructionsEquipmentAndIngredientResponse>? ingredients,
      List<InstructionsEquipmentAndIngredientResponse>? equipment,
      LengthResponse? length});

  $LengthResponseCopyWith<$Res>? get length;
}

/// @nodoc
class _$StepResponseCopyWithImpl<$Res> implements $StepResponseCopyWith<$Res> {
  _$StepResponseCopyWithImpl(this._value, this._then);

  final StepResponse _value;
  // ignore: unused_field
  final $Res Function(StepResponse) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? step = freezed,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<InstructionsEquipmentAndIngredientResponse>?,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<InstructionsEquipmentAndIngredientResponse>?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as LengthResponse?,
    ));
  }

  @override
  $LengthResponseCopyWith<$Res>? get length {
    if (_value.length == null) {
      return null;
    }

    return $LengthResponseCopyWith<$Res>(_value.length!, (value) {
      return _then(_value.copyWith(length: value));
    });
  }
}

/// @nodoc
abstract class _$$_StepResponseCopyWith<$Res>
    implements $StepResponseCopyWith<$Res> {
  factory _$$_StepResponseCopyWith(
          _$_StepResponse value, $Res Function(_$_StepResponse) then) =
      __$$_StepResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int number,
      String step,
      List<InstructionsEquipmentAndIngredientResponse>? ingredients,
      List<InstructionsEquipmentAndIngredientResponse>? equipment,
      LengthResponse? length});

  @override
  $LengthResponseCopyWith<$Res>? get length;
}

/// @nodoc
class __$$_StepResponseCopyWithImpl<$Res>
    extends _$StepResponseCopyWithImpl<$Res>
    implements _$$_StepResponseCopyWith<$Res> {
  __$$_StepResponseCopyWithImpl(
      _$_StepResponse _value, $Res Function(_$_StepResponse) _then)
      : super(_value, (v) => _then(v as _$_StepResponse));

  @override
  _$_StepResponse get _value => super._value as _$_StepResponse;

  @override
  $Res call({
    Object? number = freezed,
    Object? step = freezed,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? length = freezed,
  }) {
    return _then(_$_StepResponse(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<InstructionsEquipmentAndIngredientResponse>?,
      equipment: equipment == freezed
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<InstructionsEquipmentAndIngredientResponse>?,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as LengthResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepResponse implements _StepResponse {
  const _$_StepResponse(
      {required this.number,
      required this.step,
      final List<InstructionsEquipmentAndIngredientResponse>? ingredients,
      final List<InstructionsEquipmentAndIngredientResponse>? equipment,
      this.length})
      : _ingredients = ingredients,
        _equipment = equipment;

  factory _$_StepResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StepResponseFromJson(json);

  @override
  final int number;
  @override
  final String step;
  final List<InstructionsEquipmentAndIngredientResponse>? _ingredients;
  @override
  List<InstructionsEquipmentAndIngredientResponse>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InstructionsEquipmentAndIngredientResponse>? _equipment;
  @override
  List<InstructionsEquipmentAndIngredientResponse>? get equipment {
    final value = _equipment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LengthResponse? length;

  @override
  String toString() {
    return 'StepResponse(number: $number, step: $step, ingredients: $ingredients, equipment: $equipment, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepResponse &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.step, step) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(step),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_equipment),
      const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$$_StepResponseCopyWith<_$_StepResponse> get copyWith =>
      __$$_StepResponseCopyWithImpl<_$_StepResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepResponseToJson(
      this,
    );
  }
}

abstract class _StepResponse implements StepResponse {
  const factory _StepResponse(
      {required final int number,
      required final String step,
      final List<InstructionsEquipmentAndIngredientResponse>? ingredients,
      final List<InstructionsEquipmentAndIngredientResponse>? equipment,
      final LengthResponse? length}) = _$_StepResponse;

  factory _StepResponse.fromJson(Map<String, dynamic> json) =
      _$_StepResponse.fromJson;

  @override
  int get number;
  @override
  String get step;
  @override
  List<InstructionsEquipmentAndIngredientResponse>? get ingredients;
  @override
  List<InstructionsEquipmentAndIngredientResponse>? get equipment;
  @override
  LengthResponse? get length;
  @override
  @JsonKey(ignore: true)
  _$$_StepResponseCopyWith<_$_StepResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

InstructionsEquipmentAndIngredientResponse
    _$InstructionsEquipmentAndIngredientResponseFromJson(
        Map<String, dynamic> json) {
  return _InstructionsEquipmentAndIngredientResponse.fromJson(json);
}

/// @nodoc
mixin _$InstructionsEquipmentAndIngredientResponse {
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionsEquipmentAndIngredientResponseCopyWith<
          InstructionsEquipmentAndIngredientResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsEquipmentAndIngredientResponseCopyWith<$Res> {
  factory $InstructionsEquipmentAndIngredientResponseCopyWith(
          InstructionsEquipmentAndIngredientResponse value,
          $Res Function(InstructionsEquipmentAndIngredientResponse) then) =
      _$InstructionsEquipmentAndIngredientResponseCopyWithImpl<$Res>;
  $Res call({String name, String? image});
}

/// @nodoc
class _$InstructionsEquipmentAndIngredientResponseCopyWithImpl<$Res>
    implements $InstructionsEquipmentAndIngredientResponseCopyWith<$Res> {
  _$InstructionsEquipmentAndIngredientResponseCopyWithImpl(
      this._value, this._then);

  final InstructionsEquipmentAndIngredientResponse _value;
  // ignore: unused_field
  final $Res Function(InstructionsEquipmentAndIngredientResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InstructionsEquipmentAndIngredientResponseCopyWith<$Res>
    implements $InstructionsEquipmentAndIngredientResponseCopyWith<$Res> {
  factory _$$_InstructionsEquipmentAndIngredientResponseCopyWith(
          _$_InstructionsEquipmentAndIngredientResponse value,
          $Res Function(_$_InstructionsEquipmentAndIngredientResponse) then) =
      __$$_InstructionsEquipmentAndIngredientResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? image});
}

/// @nodoc
class __$$_InstructionsEquipmentAndIngredientResponseCopyWithImpl<$Res>
    extends _$InstructionsEquipmentAndIngredientResponseCopyWithImpl<$Res>
    implements _$$_InstructionsEquipmentAndIngredientResponseCopyWith<$Res> {
  __$$_InstructionsEquipmentAndIngredientResponseCopyWithImpl(
      _$_InstructionsEquipmentAndIngredientResponse _value,
      $Res Function(_$_InstructionsEquipmentAndIngredientResponse) _then)
      : super(_value,
            (v) => _then(v as _$_InstructionsEquipmentAndIngredientResponse));

  @override
  _$_InstructionsEquipmentAndIngredientResponse get _value =>
      super._value as _$_InstructionsEquipmentAndIngredientResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_InstructionsEquipmentAndIngredientResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstructionsEquipmentAndIngredientResponse
    implements _InstructionsEquipmentAndIngredientResponse {
  const _$_InstructionsEquipmentAndIngredientResponse(
      {required this.name, this.image});

  factory _$_InstructionsEquipmentAndIngredientResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_InstructionsEquipmentAndIngredientResponseFromJson(json);

  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'InstructionsEquipmentAndIngredientResponse(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionsEquipmentAndIngredientResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_InstructionsEquipmentAndIngredientResponseCopyWith<
          _$_InstructionsEquipmentAndIngredientResponse>
      get copyWith =>
          __$$_InstructionsEquipmentAndIngredientResponseCopyWithImpl<
              _$_InstructionsEquipmentAndIngredientResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionsEquipmentAndIngredientResponseToJson(
      this,
    );
  }
}

abstract class _InstructionsEquipmentAndIngredientResponse
    implements InstructionsEquipmentAndIngredientResponse {
  const factory _InstructionsEquipmentAndIngredientResponse(
      {required final String name,
      final String? image}) = _$_InstructionsEquipmentAndIngredientResponse;

  factory _InstructionsEquipmentAndIngredientResponse.fromJson(
          Map<String, dynamic> json) =
      _$_InstructionsEquipmentAndIngredientResponse.fromJson;

  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionsEquipmentAndIngredientResponseCopyWith<
          _$_InstructionsEquipmentAndIngredientResponse>
      get copyWith => throw _privateConstructorUsedError;
}

LengthResponse _$LengthResponseFromJson(Map<String, dynamic> json) {
  return _LengthResponse.fromJson(json);
}

/// @nodoc
mixin _$LengthResponse {
  int get number => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LengthResponseCopyWith<LengthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LengthResponseCopyWith<$Res> {
  factory $LengthResponseCopyWith(
          LengthResponse value, $Res Function(LengthResponse) then) =
      _$LengthResponseCopyWithImpl<$Res>;
  $Res call({int number, String unit});
}

/// @nodoc
class _$LengthResponseCopyWithImpl<$Res>
    implements $LengthResponseCopyWith<$Res> {
  _$LengthResponseCopyWithImpl(this._value, this._then);

  final LengthResponse _value;
  // ignore: unused_field
  final $Res Function(LengthResponse) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LengthResponseCopyWith<$Res>
    implements $LengthResponseCopyWith<$Res> {
  factory _$$_LengthResponseCopyWith(
          _$_LengthResponse value, $Res Function(_$_LengthResponse) then) =
      __$$_LengthResponseCopyWithImpl<$Res>;
  @override
  $Res call({int number, String unit});
}

/// @nodoc
class __$$_LengthResponseCopyWithImpl<$Res>
    extends _$LengthResponseCopyWithImpl<$Res>
    implements _$$_LengthResponseCopyWith<$Res> {
  __$$_LengthResponseCopyWithImpl(
      _$_LengthResponse _value, $Res Function(_$_LengthResponse) _then)
      : super(_value, (v) => _then(v as _$_LengthResponse));

  @override
  _$_LengthResponse get _value => super._value as _$_LengthResponse;

  @override
  $Res call({
    Object? number = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_LengthResponse(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LengthResponse implements _LengthResponse {
  const _$_LengthResponse({required this.number, required this.unit});

  factory _$_LengthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LengthResponseFromJson(json);

  @override
  final int number;
  @override
  final String unit;

  @override
  String toString() {
    return 'LengthResponse(number: $number, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LengthResponse &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_LengthResponseCopyWith<_$_LengthResponse> get copyWith =>
      __$$_LengthResponseCopyWithImpl<_$_LengthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LengthResponseToJson(
      this,
    );
  }
}

abstract class _LengthResponse implements LengthResponse {
  const factory _LengthResponse(
      {required final int number,
      required final String unit}) = _$_LengthResponse;

  factory _LengthResponse.fromJson(Map<String, dynamic> json) =
      _$_LengthResponse.fromJson;

  @override
  int get number;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_LengthResponseCopyWith<_$_LengthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
