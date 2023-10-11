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
  WeightPerServingResponse? get weightPerServingResponse =>
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
      _$NutritionResponseCopyWithImpl<$Res, NutritionResponse>;
  @useResult
  $Res call(
      {List<NutrientResponse> nutrients,
      CaloricBreakdownResponse caloricBreakdown,
      WeightPerServingResponse? weightPerServingResponse});

  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown;
  $WeightPerServingResponseCopyWith<$Res>? get weightPerServingResponse;
}

/// @nodoc
class _$NutritionResponseCopyWithImpl<$Res, $Val extends NutritionResponse>
    implements $NutritionResponseCopyWith<$Res> {
  _$NutritionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrients = null,
    Object? caloricBreakdown = null,
    Object? weightPerServingResponse = freezed,
  }) {
    return _then(_value.copyWith(
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutrientResponse>,
      caloricBreakdown: null == caloricBreakdown
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakdownResponse,
      weightPerServingResponse: freezed == weightPerServingResponse
          ? _value.weightPerServingResponse
          : weightPerServingResponse // ignore: cast_nullable_to_non_nullable
              as WeightPerServingResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown {
    return $CaloricBreakdownResponseCopyWith<$Res>(_value.caloricBreakdown,
        (value) {
      return _then(_value.copyWith(caloricBreakdown: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightPerServingResponseCopyWith<$Res>? get weightPerServingResponse {
    if (_value.weightPerServingResponse == null) {
      return null;
    }

    return $WeightPerServingResponseCopyWith<$Res>(
        _value.weightPerServingResponse!, (value) {
      return _then(_value.copyWith(weightPerServingResponse: value) as $Val);
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
  @useResult
  $Res call(
      {List<NutrientResponse> nutrients,
      CaloricBreakdownResponse caloricBreakdown,
      WeightPerServingResponse? weightPerServingResponse});

  @override
  $CaloricBreakdownResponseCopyWith<$Res> get caloricBreakdown;
  @override
  $WeightPerServingResponseCopyWith<$Res>? get weightPerServingResponse;
}

/// @nodoc
class __$$_NutritionResponseCopyWithImpl<$Res>
    extends _$NutritionResponseCopyWithImpl<$Res, _$_NutritionResponse>
    implements _$$_NutritionResponseCopyWith<$Res> {
  __$$_NutritionResponseCopyWithImpl(
      _$_NutritionResponse _value, $Res Function(_$_NutritionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrients = null,
    Object? caloricBreakdown = null,
    Object? weightPerServingResponse = freezed,
  }) {
    return _then(_$_NutritionResponse(
      nutrients: null == nutrients
          ? _value._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutrientResponse>,
      caloricBreakdown: null == caloricBreakdown
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakdownResponse,
      weightPerServingResponse: freezed == weightPerServingResponse
          ? _value.weightPerServingResponse
          : weightPerServingResponse // ignore: cast_nullable_to_non_nullable
              as WeightPerServingResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionResponse implements _NutritionResponse {
  const _$_NutritionResponse(
      {required final List<NutrientResponse> nutrients,
      required this.caloricBreakdown,
      this.weightPerServingResponse})
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
  final WeightPerServingResponse? weightPerServingResponse;

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
            (identical(other.caloricBreakdown, caloricBreakdown) ||
                other.caloricBreakdown == caloricBreakdown) &&
            (identical(
                    other.weightPerServingResponse, weightPerServingResponse) ||
                other.weightPerServingResponse == weightPerServingResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nutrients),
      caloricBreakdown,
      weightPerServingResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
          final WeightPerServingResponse? weightPerServingResponse}) =
      _$_NutritionResponse;

  factory _NutritionResponse.fromJson(Map<String, dynamic> json) =
      _$_NutritionResponse.fromJson;

  @override
  List<NutrientResponse> get nutrients;
  @override
  CaloricBreakdownResponse get caloricBreakdown;
  @override
  WeightPerServingResponse? get weightPerServingResponse;
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
      _$NutrientResponseCopyWithImpl<$Res, NutrientResponse>;
  @useResult
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class _$NutrientResponseCopyWithImpl<$Res, $Val extends NutrientResponse>
    implements $NutrientResponseCopyWith<$Res> {
  _$NutrientResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientResponseCopyWith<$Res>
    implements $NutrientResponseCopyWith<$Res> {
  factory _$$_NutrientResponseCopyWith(
          _$_NutrientResponse value, $Res Function(_$_NutrientResponse) then) =
      __$$_NutrientResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class __$$_NutrientResponseCopyWithImpl<$Res>
    extends _$NutrientResponseCopyWithImpl<$Res, _$_NutrientResponse>
    implements _$$_NutrientResponseCopyWith<$Res> {
  __$$_NutrientResponseCopyWithImpl(
      _$_NutrientResponse _value, $Res Function(_$_NutrientResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_NutrientResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      _$CaloricBreakdownResponseCopyWithImpl<$Res, CaloricBreakdownResponse>;
  @useResult
  $Res call({double percentProtein, double percentFat, double percentCarbs});
}

/// @nodoc
class _$CaloricBreakdownResponseCopyWithImpl<$Res,
        $Val extends CaloricBreakdownResponse>
    implements $CaloricBreakdownResponseCopyWith<$Res> {
  _$CaloricBreakdownResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
  }) {
    return _then(_value.copyWith(
      percentProtein: null == percentProtein
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: null == percentFat
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: null == percentCarbs
          ? _value.percentCarbs
          : percentCarbs // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
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
  @useResult
  $Res call({double percentProtein, double percentFat, double percentCarbs});
}

/// @nodoc
class __$$_CaloricBreakdownResponseCopyWithImpl<$Res>
    extends _$CaloricBreakdownResponseCopyWithImpl<$Res,
        _$_CaloricBreakdownResponse>
    implements _$$_CaloricBreakdownResponseCopyWith<$Res> {
  __$$_CaloricBreakdownResponseCopyWithImpl(_$_CaloricBreakdownResponse _value,
      $Res Function(_$_CaloricBreakdownResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
  }) {
    return _then(_$_CaloricBreakdownResponse(
      percentProtein: null == percentProtein
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: null == percentFat
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: null == percentCarbs
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
            (identical(other.percentProtein, percentProtein) ||
                other.percentProtein == percentProtein) &&
            (identical(other.percentFat, percentFat) ||
                other.percentFat == percentFat) &&
            (identical(other.percentCarbs, percentCarbs) ||
                other.percentCarbs == percentCarbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percentProtein, percentFat, percentCarbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      _$WeightPerServingResponseCopyWithImpl<$Res, WeightPerServingResponse>;
  @useResult
  $Res call({double amount, String unit});
}

/// @nodoc
class _$WeightPerServingResponseCopyWithImpl<$Res,
        $Val extends WeightPerServingResponse>
    implements $WeightPerServingResponseCopyWith<$Res> {
  _$WeightPerServingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  @useResult
  $Res call({double amount, String unit});
}

/// @nodoc
class __$$_WeightPerServingResponseCopyWithImpl<$Res>
    extends _$WeightPerServingResponseCopyWithImpl<$Res,
        _$_WeightPerServingResponse>
    implements _$$_WeightPerServingResponseCopyWith<$Res> {
  __$$_WeightPerServingResponseCopyWithImpl(_$_WeightPerServingResponse _value,
      $Res Function(_$_WeightPerServingResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$_WeightPerServingResponse(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
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
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
