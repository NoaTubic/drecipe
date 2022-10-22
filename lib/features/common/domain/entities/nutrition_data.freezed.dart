// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionData _$NutritionDataFromJson(Map<String, dynamic> json) {
  return _NutritionData.fromJson(json);
}

/// @nodoc
mixin _$NutritionData {
  @HiveField(0)
  List<Nutrient> get nutrients => throw _privateConstructorUsedError;
  @HiveField(1)
  double get percentProtein => throw _privateConstructorUsedError;
  @HiveField(2)
  double get percentFat => throw _privateConstructorUsedError;
  @HiveField(3)
  double get percentCarbs => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get weightPerServing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionDataCopyWith<NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataCopyWith<$Res> {
  factory $NutritionDataCopyWith(
          NutritionData value, $Res Function(NutritionData) then) =
      _$NutritionDataCopyWithImpl<$Res, NutritionData>;
  @useResult
  $Res call(
      {@HiveField(0) List<Nutrient> nutrients,
      @HiveField(1) double percentProtein,
      @HiveField(2) double percentFat,
      @HiveField(3) double percentCarbs,
      @HiveField(4) String? weightPerServing});
}

/// @nodoc
class _$NutritionDataCopyWithImpl<$Res, $Val extends NutritionData>
    implements $NutritionDataCopyWith<$Res> {
  _$NutritionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrients = null,
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
    Object? weightPerServing = freezed,
  }) {
    return _then(_value.copyWith(
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
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
      weightPerServing: freezed == weightPerServing
          ? _value.weightPerServing
          : weightPerServing // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutritionDataCopyWith<$Res>
    implements $NutritionDataCopyWith<$Res> {
  factory _$$_NutritionDataCopyWith(
          _$_NutritionData value, $Res Function(_$_NutritionData) then) =
      __$$_NutritionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<Nutrient> nutrients,
      @HiveField(1) double percentProtein,
      @HiveField(2) double percentFat,
      @HiveField(3) double percentCarbs,
      @HiveField(4) String? weightPerServing});
}

/// @nodoc
class __$$_NutritionDataCopyWithImpl<$Res>
    extends _$NutritionDataCopyWithImpl<$Res, _$_NutritionData>
    implements _$$_NutritionDataCopyWith<$Res> {
  __$$_NutritionDataCopyWithImpl(
      _$_NutritionData _value, $Res Function(_$_NutritionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrients = null,
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
    Object? weightPerServing = freezed,
  }) {
    return _then(_$_NutritionData(
      nutrients: null == nutrients
          ? _value._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
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
      weightPerServing: freezed == weightPerServing
          ? _value.weightPerServing
          : weightPerServing // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_NutritionData implements _NutritionData {
  const _$_NutritionData(
      {@HiveField(0) required final List<Nutrient> nutrients,
      @HiveField(1) required this.percentProtein,
      @HiveField(2) required this.percentFat,
      @HiveField(3) required this.percentCarbs,
      @HiveField(4) this.weightPerServing})
      : _nutrients = nutrients;

  factory _$_NutritionData.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionDataFromJson(json);

  final List<Nutrient> _nutrients;
  @override
  @HiveField(0)
  List<Nutrient> get nutrients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrients);
  }

  @override
  @HiveField(1)
  final double percentProtein;
  @override
  @HiveField(2)
  final double percentFat;
  @override
  @HiveField(3)
  final double percentCarbs;
  @override
  @HiveField(4)
  final String? weightPerServing;

  @override
  String toString() {
    return 'NutritionData(nutrients: $nutrients, percentProtein: $percentProtein, percentFat: $percentFat, percentCarbs: $percentCarbs, weightPerServing: $weightPerServing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionData &&
            const DeepCollectionEquality()
                .equals(other._nutrients, _nutrients) &&
            (identical(other.percentProtein, percentProtein) ||
                other.percentProtein == percentProtein) &&
            (identical(other.percentFat, percentFat) ||
                other.percentFat == percentFat) &&
            (identical(other.percentCarbs, percentCarbs) ||
                other.percentCarbs == percentCarbs) &&
            (identical(other.weightPerServing, weightPerServing) ||
                other.weightPerServing == weightPerServing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nutrients),
      percentProtein,
      percentFat,
      percentCarbs,
      weightPerServing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutritionDataCopyWith<_$_NutritionData> get copyWith =>
      __$$_NutritionDataCopyWithImpl<_$_NutritionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionDataToJson(
      this,
    );
  }
}

abstract class _NutritionData implements NutritionData {
  const factory _NutritionData(
      {@HiveField(0) required final List<Nutrient> nutrients,
      @HiveField(1) required final double percentProtein,
      @HiveField(2) required final double percentFat,
      @HiveField(3) required final double percentCarbs,
      @HiveField(4) final String? weightPerServing}) = _$_NutritionData;

  factory _NutritionData.fromJson(Map<String, dynamic> json) =
      _$_NutritionData.fromJson;

  @override
  @HiveField(0)
  List<Nutrient> get nutrients;
  @override
  @HiveField(1)
  double get percentProtein;
  @override
  @HiveField(2)
  double get percentFat;
  @override
  @HiveField(3)
  double get percentCarbs;
  @override
  @HiveField(4)
  String? get weightPerServing;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionDataCopyWith<_$_NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

Nutrient _$NutrientFromJson(Map<String, dynamic> json) {
  return _Nutrient.fromJson(json);
}

/// @nodoc
mixin _$Nutrient {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientCopyWith<Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientCopyWith<$Res> {
  factory $NutrientCopyWith(Nutrient value, $Res Function(Nutrient) then) =
      _$NutrientCopyWithImpl<$Res, Nutrient>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String amount});
}

/// @nodoc
class _$NutrientCopyWithImpl<$Res, $Val extends Nutrient>
    implements $NutrientCopyWith<$Res> {
  _$NutrientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientCopyWith<$Res> implements $NutrientCopyWith<$Res> {
  factory _$$_NutrientCopyWith(
          _$_Nutrient value, $Res Function(_$_Nutrient) then) =
      __$$_NutrientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String amount});
}

/// @nodoc
class __$$_NutrientCopyWithImpl<$Res>
    extends _$NutrientCopyWithImpl<$Res, _$_Nutrient>
    implements _$$_NutrientCopyWith<$Res> {
  __$$_NutrientCopyWithImpl(
      _$_Nutrient _value, $Res Function(_$_Nutrient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_$_Nutrient(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Nutrient implements _Nutrient {
  const _$_Nutrient(
      {@HiveField(0) required this.name, @HiveField(1) required this.amount});

  factory _$_Nutrient.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String amount;

  @override
  String toString() {
    return 'Nutrient(name: $name, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrient &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      __$$_NutrientCopyWithImpl<_$_Nutrient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientToJson(
      this,
    );
  }
}

abstract class _Nutrient implements Nutrient {
  const factory _Nutrient(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String amount}) = _$_Nutrient;

  factory _Nutrient.fromJson(Map<String, dynamic> json) = _$_Nutrient.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}
