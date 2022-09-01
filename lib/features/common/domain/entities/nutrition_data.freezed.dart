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

/// @nodoc
mixin _$NutritionData {
  List<Nutrient> get nutrients => throw _privateConstructorUsedError;
  double get percentProtein => throw _privateConstructorUsedError;
  double get percentFat => throw _privateConstructorUsedError;
  double get percentCarbs => throw _privateConstructorUsedError;
  String get weightPerServing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NutritionDataCopyWith<NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDataCopyWith<$Res> {
  factory $NutritionDataCopyWith(
          NutritionData value, $Res Function(NutritionData) then) =
      _$NutritionDataCopyWithImpl<$Res>;
  $Res call(
      {List<Nutrient> nutrients,
      double percentProtein,
      double percentFat,
      double percentCarbs,
      String weightPerServing});
}

/// @nodoc
class _$NutritionDataCopyWithImpl<$Res>
    implements $NutritionDataCopyWith<$Res> {
  _$NutritionDataCopyWithImpl(this._value, this._then);

  final NutritionData _value;
  // ignore: unused_field
  final $Res Function(NutritionData) _then;

  @override
  $Res call({
    Object? nutrients = freezed,
    Object? percentProtein = freezed,
    Object? percentFat = freezed,
    Object? percentCarbs = freezed,
    Object? weightPerServing = freezed,
  }) {
    return _then(_value.copyWith(
      nutrients: nutrients == freezed
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
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
      weightPerServing: weightPerServing == freezed
          ? _value.weightPerServing
          : weightPerServing // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NutritionDataCopyWith<$Res>
    implements $NutritionDataCopyWith<$Res> {
  factory _$$_NutritionDataCopyWith(
          _$_NutritionData value, $Res Function(_$_NutritionData) then) =
      __$$_NutritionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Nutrient> nutrients,
      double percentProtein,
      double percentFat,
      double percentCarbs,
      String weightPerServing});
}

/// @nodoc
class __$$_NutritionDataCopyWithImpl<$Res>
    extends _$NutritionDataCopyWithImpl<$Res>
    implements _$$_NutritionDataCopyWith<$Res> {
  __$$_NutritionDataCopyWithImpl(
      _$_NutritionData _value, $Res Function(_$_NutritionData) _then)
      : super(_value, (v) => _then(v as _$_NutritionData));

  @override
  _$_NutritionData get _value => super._value as _$_NutritionData;

  @override
  $Res call({
    Object? nutrients = freezed,
    Object? percentProtein = freezed,
    Object? percentFat = freezed,
    Object? percentCarbs = freezed,
    Object? weightPerServing = freezed,
  }) {
    return _then(_$_NutritionData(
      nutrients: nutrients == freezed
          ? _value._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
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
      weightPerServing: weightPerServing == freezed
          ? _value.weightPerServing
          : weightPerServing // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NutritionData implements _NutritionData {
  const _$_NutritionData(
      {required final List<Nutrient> nutrients,
      required this.percentProtein,
      required this.percentFat,
      required this.percentCarbs,
      required this.weightPerServing})
      : _nutrients = nutrients;

  final List<Nutrient> _nutrients;
  @override
  List<Nutrient> get nutrients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrients);
  }

  @override
  final double percentProtein;
  @override
  final double percentFat;
  @override
  final double percentCarbs;
  @override
  final String weightPerServing;

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
            const DeepCollectionEquality()
                .equals(other.percentProtein, percentProtein) &&
            const DeepCollectionEquality()
                .equals(other.percentFat, percentFat) &&
            const DeepCollectionEquality()
                .equals(other.percentCarbs, percentCarbs) &&
            const DeepCollectionEquality()
                .equals(other.weightPerServing, weightPerServing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nutrients),
      const DeepCollectionEquality().hash(percentProtein),
      const DeepCollectionEquality().hash(percentFat),
      const DeepCollectionEquality().hash(percentCarbs),
      const DeepCollectionEquality().hash(weightPerServing));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionDataCopyWith<_$_NutritionData> get copyWith =>
      __$$_NutritionDataCopyWithImpl<_$_NutritionData>(this, _$identity);
}

abstract class _NutritionData implements NutritionData {
  const factory _NutritionData(
      {required final List<Nutrient> nutrients,
      required final double percentProtein,
      required final double percentFat,
      required final double percentCarbs,
      required final String weightPerServing}) = _$_NutritionData;

  @override
  List<Nutrient> get nutrients;
  @override
  double get percentProtein;
  @override
  double get percentFat;
  @override
  double get percentCarbs;
  @override
  String get weightPerServing;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionDataCopyWith<_$_NutritionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Nutrient {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NutrientCopyWith<Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientCopyWith<$Res> {
  factory $NutrientCopyWith(Nutrient value, $Res Function(Nutrient) then) =
      _$NutrientCopyWithImpl<$Res>;
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class _$NutrientCopyWithImpl<$Res> implements $NutrientCopyWith<$Res> {
  _$NutrientCopyWithImpl(this._value, this._then);

  final Nutrient _value;
  // ignore: unused_field
  final $Res Function(Nutrient) _then;

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
abstract class _$$_NutrientCopyWith<$Res> implements $NutrientCopyWith<$Res> {
  factory _$$_NutrientCopyWith(
          _$_Nutrient value, $Res Function(_$_Nutrient) then) =
      __$$_NutrientCopyWithImpl<$Res>;
  @override
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class __$$_NutrientCopyWithImpl<$Res> extends _$NutrientCopyWithImpl<$Res>
    implements _$$_NutrientCopyWith<$Res> {
  __$$_NutrientCopyWithImpl(
      _$_Nutrient _value, $Res Function(_$_Nutrient) _then)
      : super(_value, (v) => _then(v as _$_Nutrient));

  @override
  _$_Nutrient get _value => super._value as _$_Nutrient;

  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_Nutrient(
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

class _$_Nutrient implements _Nutrient {
  const _$_Nutrient(
      {required this.name, required this.amount, required this.unit});

  @override
  final String name;
  @override
  final double amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'Nutrient(name: $name, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrient &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      __$$_NutrientCopyWithImpl<_$_Nutrient>(this, _$identity);
}

abstract class _Nutrient implements Nutrient {
  const factory _Nutrient(
      {required final String name,
      required final double amount,
      required final String unit}) = _$_Nutrient;

  @override
  String get name;
  @override
  double get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}
