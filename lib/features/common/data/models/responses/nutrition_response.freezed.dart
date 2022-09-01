// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionResponse _$NutritionResponseFromJson(Map<String, dynamic> json) {
  return _NutritionResponse.fromJson(json);
}

/// @nodoc
mixin _$NutritionResponse {
  List<NutrientResponse> get nutrients => throw _privateConstructorUsedError;
  CaloricBreakdownResponse get caloricBreakdown =>
      throw _privateConstructorUsedError;
  WeightPerServingResponse get weightPerServingResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionResponseCopyWith<NutritionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionResponseCopyWith<$Res> {
  factory $NutritionResponseCopyWith(
          NutritionResponse value, $Res Function(NutritionResponse) then) =
      _$NutritionResponseCopyWithImpl<$Res>;
  $Res call(
      {List<NutrientResponse> nutrients,
      CaloricBreakdownResponse caloricBreakdown,
      WeightPerServingResponse weightPerServingResponse});

  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown;
  $WeightPerServingResponseCopyWith<$Res> get weightPerServingResponse;
}

/// @nodoc
class _$NutritionResponseCopyWithImpl<$Res>
    implements $NutritionResponseCopyWith<$Res> {
  _$NutritionResponseCopyWithImpl(this._value, this._then);

  final NutritionResponse _value;
  // ignore: unused_field
  final $Res Function(NutritionResponse) _then;

  @override
  $Res call({
    Object? nutrients = freezed,
    Object? caloricBreakdown = freezed,
    Object? weightPerServingResponse = freezed,
  }) {
    return _then(_value.copyWith(
      nutrients: nutrients == freezed
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutrientResponse>,
      caloricBreakdown: caloricBreakdown == freezed
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakdownResponse,
      weightPerServingResponse: weightPerServingResponse == freezed
          ? _value.weightPerServingResponse
          : weightPerServingResponse // ignore: cast_nullable_to_non_nullable
              as WeightPerServingResponse,
    ));
  }

  @override
  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown {
    return $CaloricBreakdownResponseCopyWith<$Res>(_value.caloricBreakdown,
        (value) {
      return _then(_value.copyWith(caloricBreakdown: value));
    });
  }

  @override
  $WeightPerServingResponseCopyWith<$Res> get weightPerServingResponse {
    return $WeightPerServingResponseCopyWith<$Res>(
        _value.weightPerServingResponse, (value) {
      return _then(_value.copyWith(weightPerServingResponse: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutritionResponseCopyWith<$Res>
    implements $NutritionResponseCopyWith<$Res> {
  factory _$$_NutritionResponseCopyWith(_$_NutritionResponse value,
          $Res Function(_$_NutritionResponse) then) =
      __$$_NutritionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<NutrientResponse> nutrients,
      CaloricBreakdownResponse caloricBreakdown,
      WeightPerServingResponse weightPerServingResponse});

  @override
  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown;
  @override
  $WeightPerServingResponseCopyWith<$Res> get weightPerServingResponse;
}

/// @nodoc
class __$$_NutritionResponseCopyWithImpl<$Res>
    extends _$NutritionResponseCopyWithImpl<$Res>
    implements _$$_NutritionResponseCopyWith<$Res> {
  __$$_NutritionResponseCopyWithImpl(
      _$_NutritionResponse _value, $Res Function(_$_NutritionResponse) _then)
      : super(_value, (v) => _then(v as _$_NutritionResponse));

  @override
  _$_NutritionResponse get _value => super._value as _$_NutritionResponse;

  @override
  $Res call({
    Object? nutrients = freezed,
    Object? caloricBreakdown = freezed,
    Object? weightPerServingResponse = freezed,
  }) {
    return _then(_$_NutritionResponse(
      nutrients: nutrients == freezed
          ? _value._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutrientResponse>,
      caloricBreakdown: caloricBreakdown == freezed
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakdownResponse,
      weightPerServingResponse: weightPerServingResponse == freezed
          ? _value.weightPerServingResponse
          : weightPerServingResponse // ignore: cast_nullable_to_non_nullable
              as WeightPerServingResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionResponse implements _NutritionResponse {
  const _$_NutritionResponse(
      {required final List<NutrientResponse> nutrients,
      required this.caloricBreakdown,
      required this.weightPerServingResponse})
      : _nutrients = nutrients;

  factory _$_NutritionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionResponseFromJson(json);

  final List<NutrientResponse> _nutrients;
  @override
  List<NutrientResponse> get nutrients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrients);
  }

  @override
  final CaloricBreakdownResponse caloricBreakdown;
  @override
  final WeightPerServingResponse weightPerServingResponse;

  @override
  String toString() {
    return 'NutritionResponse(nutrients: $nutrients, caloricBreakdown: $caloricBreakdown, weightPerServingResponse: $weightPerServingResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionResponse &&
            const DeepCollectionEquality()
                .equals(other._nutrients, _nutrients) &&
            const DeepCollectionEquality()
                .equals(other.caloricBreakdown, caloricBreakdown) &&
            const DeepCollectionEquality().equals(
                other.weightPerServingResponse, weightPerServingResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nutrients),
      const DeepCollectionEquality().hash(caloricBreakdown),
      const DeepCollectionEquality().hash(weightPerServingResponse));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionResponseCopyWith<_$_NutritionResponse> get copyWith =>
      __$$_NutritionResponseCopyWithImpl<_$_NutritionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionResponseToJson(
      this,
    );
  }
}

abstract class _NutritionResponse implements NutritionResponse {
  const factory _NutritionResponse(
          {required final List<NutrientResponse> nutrients,
          required final CaloricBreakdownResponse caloricBreakdown,
          required final WeightPerServingResponse weightPerServingResponse}) =
      _$_NutritionResponse;

  factory _NutritionResponse.fromJson(Map<String, dynamic> json) =
      _$_NutritionResponse.fromJson;

  @override
  List<NutrientResponse> get nutrients;
  @override
  CaloricBreakdownResponse get caloricBreakdown;
  @override
  WeightPerServingResponse get weightPerServingResponse;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionResponseCopyWith<_$_NutritionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NutrientResponse _$NutrientResponseFromJson(Map<String, dynamic> json) {
  return _NutrientResponse.fromJson(json);
}

/// @nodoc
mixin _$NutrientResponse {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientResponseCopyWith<NutrientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientResponseCopyWith<$Res> {
  factory $NutrientResponseCopyWith(
          NutrientResponse value, $Res Function(NutrientResponse) then) =
      _$NutrientResponseCopyWithImpl<$Res>;
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class _$NutrientResponseCopyWithImpl<$Res>
    implements $NutrientResponseCopyWith<$Res> {
  _$NutrientResponseCopyWithImpl(this._value, this._then);

  final NutrientResponse _value;
  // ignore: unused_field
  final $Res Function(NutrientResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NutrientResponseCopyWith<$Res>
    implements $NutrientResponseCopyWith<$Res> {
  factory _$$_NutrientResponseCopyWith(
          _$_NutrientResponse value, $Res Function(_$_NutrientResponse) then) =
      __$$_NutrientResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class __$$_NutrientResponseCopyWithImpl<$Res>
    extends _$NutrientResponseCopyWithImpl<$Res>
    implements _$$_NutrientResponseCopyWith<$Res> {
  __$$_NutrientResponseCopyWithImpl(
      _$_NutrientResponse _value, $Res Function(_$_NutrientResponse) _then)
      : super(_value, (v) => _then(v as _$_NutrientResponse));

  @override
  _$_NutrientResponse get _value => super._value as _$_NutrientResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_NutrientResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientResponse implements _NutrientResponse {
  const _$_NutrientResponse(
      {required this.name, required this.amount, required this.unit});

  factory _$_NutrientResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientResponseFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'NutrientResponse(name: $name, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutrientResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_NutrientResponseCopyWith<_$_NutrientResponse> get copyWith =>
      __$$_NutrientResponseCopyWithImpl<_$_NutrientResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientResponseToJson(
      this,
    );
  }
}

abstract class _NutrientResponse implements NutrientResponse {
  const factory _NutrientResponse(
      {required final String name,
      required final double amount,
      required final String unit}) = _$_NutrientResponse;

  factory _NutrientResponse.fromJson(Map<String, dynamic> json) =
      _$_NutrientResponse.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientResponseCopyWith<_$_NutrientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CaloricBreakdownResponse _$CaloricBreakdownResponseFromJson(
    Map<String, dynamic> json) {
  return _CaloricBreakdownResponse.fromJson(json);
}

/// @nodoc
mixin _$CaloricBreakdownResponse {
  double get percentProtein => throw _privateConstructorUsedError;
  double get percentFat => throw _privateConstructorUsedError;
  double get percentCarbs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaloricBreakdownResponseCopyWith<CaloricBreakdownResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloricBreakdownResponseCopyWith<$Res> {
  factory $CaloricBreakdownResponseCopyWith(CaloricBreakdownResponse value,
          $Res Function(CaloricBreakdownResponse) then) =
      _$CaloricBreakdownResponseCopyWithImpl<$Res>;
  $Res call({double percentProtein, double percentFat, double percentCarbs});
}

/// @nodoc
class _$CaloricBreakdownResponseCopyWithImpl<$Res>
    implements $CaloricBreakdownResponseCopyWith<$Res> {
  _$CaloricBreakdownResponseCopyWithImpl(this._value, this._then);

  final CaloricBreakdownResponse _value;
  // ignore: unused_field
  final $Res Function(CaloricBreakdownResponse) _then;

  @override
  $Res call({
    Object? percentProtein = freezed,
    Object? percentFat = freezed,
    Object? percentCarbs = freezed,
  }) {
    return _then(_value.copyWith(
      percentProtein: percentProtein == freezed
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: percentFat == freezed
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: percentCarbs == freezed
          ? _value.percentCarbs
          : percentCarbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CaloricBreakdownResponseCopyWith<$Res>
    implements $CaloricBreakdownResponseCopyWith<$Res> {
  factory _$$_CaloricBreakdownResponseCopyWith(
          _$_CaloricBreakdownResponse value,
          $Res Function(_$_CaloricBreakdownResponse) then) =
      __$$_CaloricBreakdownResponseCopyWithImpl<$Res>;
  @override
  $Res call({double percentProtein, double percentFat, double percentCarbs});
}

/// @nodoc
class __$$_CaloricBreakdownResponseCopyWithImpl<$Res>
    extends _$CaloricBreakdownResponseCopyWithImpl<$Res>
    implements _$$_CaloricBreakdownResponseCopyWith<$Res> {
  __$$_CaloricBreakdownResponseCopyWithImpl(_$_CaloricBreakdownResponse _value,
      $Res Function(_$_CaloricBreakdownResponse) _then)
      : super(_value, (v) => _then(v as _$_CaloricBreakdownResponse));

  @override
  _$_CaloricBreakdownResponse get _value =>
      super._value as _$_CaloricBreakdownResponse;

  @override
  $Res call({
    Object? percentProtein = freezed,
    Object? percentFat = freezed,
    Object? percentCarbs = freezed,
  }) {
    return _then(_$_CaloricBreakdownResponse(
      percentProtein: percentProtein == freezed
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: percentFat == freezed
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: percentCarbs == freezed
          ? _value.percentCarbs
          : percentCarbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaloricBreakdownResponse implements _CaloricBreakdownResponse {
  const _$_CaloricBreakdownResponse(
      {required this.percentProtein,
      required this.percentFat,
      required this.percentCarbs});

  factory _$_CaloricBreakdownResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CaloricBreakdownResponseFromJson(json);

  @override
  final double percentProtein;
  @override
  final double percentFat;
  @override
  final double percentCarbs;

  @override
  String toString() {
    return 'CaloricBreakdownResponse(percentProtein: $percentProtein, percentFat: $percentFat, percentCarbs: $percentCarbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaloricBreakdownResponse &&
            const DeepCollectionEquality()
                .equals(other.percentProtein, percentProtein) &&
            const DeepCollectionEquality()
                .equals(other.percentFat, percentFat) &&
            const DeepCollectionEquality()
                .equals(other.percentCarbs, percentCarbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(percentProtein),
      const DeepCollectionEquality().hash(percentFat),
      const DeepCollectionEquality().hash(percentCarbs));

  @JsonKey(ignore: true)
  @override
  _$$_CaloricBreakdownResponseCopyWith<_$_CaloricBreakdownResponse>
      get copyWith => __$$_CaloricBreakdownResponseCopyWithImpl<
          _$_CaloricBreakdownResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaloricBreakdownResponseToJson(
      this,
    );
  }
}

abstract class _CaloricBreakdownResponse implements CaloricBreakdownResponse {
  const factory _CaloricBreakdownResponse(
      {required final double percentProtein,
      required final double percentFat,
      required final double percentCarbs}) = _$_CaloricBreakdownResponse;

  factory _CaloricBreakdownResponse.fromJson(Map<String, dynamic> json) =
      _$_CaloricBreakdownResponse.fromJson;

  @override
  double get percentProtein;
  @override
  double get percentFat;
  @override
  double get percentCarbs;
  @override
  @JsonKey(ignore: true)
  _$$_CaloricBreakdownResponseCopyWith<_$_CaloricBreakdownResponse>
      get copyWith => throw _privateConstructorUsedError;
}

WeightPerServingResponse _$WeightPerServingResponseFromJson(
    Map<String, dynamic> json) {
  return _WeightPerServingResponse.fromJson(json);
}

/// @nodoc
mixin _$WeightPerServingResponse {
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightPerServingResponseCopyWith<WeightPerServingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightPerServingResponseCopyWith<$Res> {
  factory $WeightPerServingResponseCopyWith(WeightPerServingResponse value,
          $Res Function(WeightPerServingResponse) then) =
      _$WeightPerServingResponseCopyWithImpl<$Res>;
  $Res call({double amount, String unit});
}

/// @nodoc
class _$WeightPerServingResponseCopyWithImpl<$Res>
    implements $WeightPerServingResponseCopyWith<$Res> {
  _$WeightPerServingResponseCopyWithImpl(this._value, this._then);

  final WeightPerServingResponse _value;
  // ignore: unused_field
  final $Res Function(WeightPerServingResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeightPerServingResponseCopyWith<$Res>
    implements $WeightPerServingResponseCopyWith<$Res> {
  factory _$$_WeightPerServingResponseCopyWith(
          _$_WeightPerServingResponse value,
          $Res Function(_$_WeightPerServingResponse) then) =
      __$$_WeightPerServingResponseCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String unit});
}

/// @nodoc
class __$$_WeightPerServingResponseCopyWithImpl<$Res>
    extends _$WeightPerServingResponseCopyWithImpl<$Res>
    implements _$$_WeightPerServingResponseCopyWith<$Res> {
  __$$_WeightPerServingResponseCopyWithImpl(_$_WeightPerServingResponse _value,
      $Res Function(_$_WeightPerServingResponse) _then)
      : super(_value, (v) => _then(v as _$_WeightPerServingResponse));

  @override
  _$_WeightPerServingResponse get _value =>
      super._value as _$_WeightPerServingResponse;

  @override
  $Res call({
    Object? amount = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_WeightPerServingResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeightPerServingResponse implements _WeightPerServingResponse {
  const _$_WeightPerServingResponse({required this.amount, required this.unit});

  factory _$_WeightPerServingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeightPerServingResponseFromJson(json);

  @override
  final double amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'WeightPerServingResponse(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeightPerServingResponse &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_WeightPerServingResponseCopyWith<_$_WeightPerServingResponse>
      get copyWith => __$$_WeightPerServingResponseCopyWithImpl<
          _$_WeightPerServingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightPerServingResponseToJson(
      this,
    );
  }
}

abstract class _WeightPerServingResponse implements WeightPerServingResponse {
  const factory _WeightPerServingResponse(
      {required final double amount,
      required final String unit}) = _$_WeightPerServingResponse;

  factory _WeightPerServingResponse.fromJson(Map<String, dynamic> json) =
      _$_WeightPerServingResponse.fromJson;

  @override
  double get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_WeightPerServingResponseCopyWith<_$_WeightPerServingResponse>
      get copyWith => throw _privateConstructorUsedError;
}
