// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instructions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Instructions {
  String? get name => throw _privateConstructorUsedError;
  List<InstructionStep> get steps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstructionsCopyWith<Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsCopyWith<$Res> {
  factory $InstructionsCopyWith(
          Instructions value, $Res Function(Instructions) then) =
      _$InstructionsCopyWithImpl<$Res>;
  $Res call({String? name, List<InstructionStep> steps});
}

/// @nodoc
class _$InstructionsCopyWithImpl<$Res> implements $InstructionsCopyWith<$Res> {
  _$InstructionsCopyWithImpl(this._value, this._then);

  final Instructions _value;
  // ignore: unused_field
  final $Res Function(Instructions) _then;

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
              as List<InstructionStep>,
    ));
  }
}

/// @nodoc
abstract class _$$_InstructionsCopyWith<$Res>
    implements $InstructionsCopyWith<$Res> {
  factory _$$_InstructionsCopyWith(
          _$_Instructions value, $Res Function(_$_Instructions) then) =
      __$$_InstructionsCopyWithImpl<$Res>;
  @override
  $Res call({String? name, List<InstructionStep> steps});
}

/// @nodoc
class __$$_InstructionsCopyWithImpl<$Res>
    extends _$InstructionsCopyWithImpl<$Res>
    implements _$$_InstructionsCopyWith<$Res> {
  __$$_InstructionsCopyWithImpl(
      _$_Instructions _value, $Res Function(_$_Instructions) _then)
      : super(_value, (v) => _then(v as _$_Instructions));

  @override
  _$_Instructions get _value => super._value as _$_Instructions;

  @override
  $Res call({
    Object? name = freezed,
    Object? steps = freezed,
  }) {
    return _then(_$_Instructions(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: steps == freezed
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<InstructionStep>,
    ));
  }
}

/// @nodoc

class _$_Instructions implements _Instructions {
  const _$_Instructions({this.name, required final List<InstructionStep> steps})
      : _steps = steps;

  @override
  final String? name;
  final List<InstructionStep> _steps;
  @override
  List<InstructionStep> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'Instructions(name: $name, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Instructions &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      __$$_InstructionsCopyWithImpl<_$_Instructions>(this, _$identity);
}

abstract class _Instructions implements Instructions {
  const factory _Instructions(
      {final String? name,
      required final List<InstructionStep> steps}) = _$_Instructions;

  @override
  String? get name;
  @override
  List<InstructionStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InstructionStep {
  String get number => throw _privateConstructorUsedError;
  String get instruction => throw _privateConstructorUsedError;
  List<EquipmentAndIngredients>? get ingredients =>
      throw _privateConstructorUsedError;
  List<EquipmentAndIngredients>? get equipment =>
      throw _privateConstructorUsedError;
  String? get stepDuration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstructionStepCopyWith<InstructionStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionStepCopyWith<$Res> {
  factory $InstructionStepCopyWith(
          InstructionStep value, $Res Function(InstructionStep) then) =
      _$InstructionStepCopyWithImpl<$Res>;
  $Res call(
      {String number,
      String instruction,
      List<EquipmentAndIngredients>? ingredients,
      List<EquipmentAndIngredients>? equipment,
      String? stepDuration});
}

/// @nodoc
class _$InstructionStepCopyWithImpl<$Res>
    implements $InstructionStepCopyWith<$Res> {
  _$InstructionStepCopyWithImpl(this._value, this._then);

  final InstructionStep _value;
  // ignore: unused_field
  final $Res Function(InstructionStep) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? instruction = freezed,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? stepDuration = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: instruction == freezed
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      stepDuration: stepDuration == freezed
          ? _value.stepDuration
          : stepDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StepCopyWith<$Res>
    implements $InstructionStepCopyWith<$Res> {
  factory _$$_StepCopyWith(_$_Step value, $Res Function(_$_Step) then) =
      __$$_StepCopyWithImpl<$Res>;
  @override
  $Res call(
      {String number,
      String instruction,
      List<EquipmentAndIngredients>? ingredients,
      List<EquipmentAndIngredients>? equipment,
      String? stepDuration});
}

/// @nodoc
class __$$_StepCopyWithImpl<$Res> extends _$InstructionStepCopyWithImpl<$Res>
    implements _$$_StepCopyWith<$Res> {
  __$$_StepCopyWithImpl(_$_Step _value, $Res Function(_$_Step) _then)
      : super(_value, (v) => _then(v as _$_Step));

  @override
  _$_Step get _value => super._value as _$_Step;

  @override
  $Res call({
    Object? number = freezed,
    Object? instruction = freezed,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? stepDuration = freezed,
  }) {
    return _then(_$_Step(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: instruction == freezed
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      equipment: equipment == freezed
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      stepDuration: stepDuration == freezed
          ? _value.stepDuration
          : stepDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Step implements _Step {
  const _$_Step(
      {required this.number,
      required this.instruction,
      final List<EquipmentAndIngredients>? ingredients,
      final List<EquipmentAndIngredients>? equipment,
      this.stepDuration})
      : _ingredients = ingredients,
        _equipment = equipment;

  @override
  final String number;
  @override
  final String instruction;
  final List<EquipmentAndIngredients>? _ingredients;
  @override
  List<EquipmentAndIngredients>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentAndIngredients>? _equipment;
  @override
  List<EquipmentAndIngredients>? get equipment {
    final value = _equipment;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? stepDuration;

  @override
  String toString() {
    return 'InstructionStep(number: $number, instruction: $instruction, ingredients: $ingredients, equipment: $equipment, stepDuration: $stepDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Step &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.instruction, instruction) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality()
                .equals(other.stepDuration, stepDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(instruction),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_equipment),
      const DeepCollectionEquality().hash(stepDuration));

  @JsonKey(ignore: true)
  @override
  _$$_StepCopyWith<_$_Step> get copyWith =>
      __$$_StepCopyWithImpl<_$_Step>(this, _$identity);
}

abstract class _Step implements InstructionStep {
  const factory _Step(
      {required final String number,
      required final String instruction,
      final List<EquipmentAndIngredients>? ingredients,
      final List<EquipmentAndIngredients>? equipment,
      final String? stepDuration}) = _$_Step;

  @override
  String get number;
  @override
  String get instruction;
  @override
  List<EquipmentAndIngredients>? get ingredients;
  @override
  List<EquipmentAndIngredients>? get equipment;
  @override
  String? get stepDuration;
  @override
  @JsonKey(ignore: true)
  _$$_StepCopyWith<_$_Step> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EquipmentAndIngredients {
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentAndIngredientsCopyWith<EquipmentAndIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentAndIngredientsCopyWith<$Res> {
  factory $EquipmentAndIngredientsCopyWith(EquipmentAndIngredients value,
          $Res Function(EquipmentAndIngredients) then) =
      _$EquipmentAndIngredientsCopyWithImpl<$Res>;
  $Res call({String name, String? image});
}

/// @nodoc
class _$EquipmentAndIngredientsCopyWithImpl<$Res>
    implements $EquipmentAndIngredientsCopyWith<$Res> {
  _$EquipmentAndIngredientsCopyWithImpl(this._value, this._then);

  final EquipmentAndIngredients _value;
  // ignore: unused_field
  final $Res Function(EquipmentAndIngredients) _then;

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
abstract class _$$_EquipmentAndIngredientsCopyWith<$Res>
    implements $EquipmentAndIngredientsCopyWith<$Res> {
  factory _$$_EquipmentAndIngredientsCopyWith(_$_EquipmentAndIngredients value,
          $Res Function(_$_EquipmentAndIngredients) then) =
      __$$_EquipmentAndIngredientsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? image});
}

/// @nodoc
class __$$_EquipmentAndIngredientsCopyWithImpl<$Res>
    extends _$EquipmentAndIngredientsCopyWithImpl<$Res>
    implements _$$_EquipmentAndIngredientsCopyWith<$Res> {
  __$$_EquipmentAndIngredientsCopyWithImpl(_$_EquipmentAndIngredients _value,
      $Res Function(_$_EquipmentAndIngredients) _then)
      : super(_value, (v) => _then(v as _$_EquipmentAndIngredients));

  @override
  _$_EquipmentAndIngredients get _value =>
      super._value as _$_EquipmentAndIngredients;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_EquipmentAndIngredients(
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

class _$_EquipmentAndIngredients implements _EquipmentAndIngredients {
  const _$_EquipmentAndIngredients({required this.name, this.image});

  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'EquipmentAndIngredients(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentAndIngredients &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_EquipmentAndIngredientsCopyWith<_$_EquipmentAndIngredients>
      get copyWith =>
          __$$_EquipmentAndIngredientsCopyWithImpl<_$_EquipmentAndIngredients>(
              this, _$identity);
}

abstract class _EquipmentAndIngredients implements EquipmentAndIngredients {
  const factory _EquipmentAndIngredients(
      {required final String name,
      final String? image}) = _$_EquipmentAndIngredients;

  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentAndIngredientsCopyWith<_$_EquipmentAndIngredients>
      get copyWith => throw _privateConstructorUsedError;
}
