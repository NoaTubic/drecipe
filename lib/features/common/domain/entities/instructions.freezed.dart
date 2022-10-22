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

Instructions _$InstructionsFromJson(Map<String, dynamic> json) {
  return _Instructions.fromJson(json);
}

/// @nodoc
mixin _$Instructions {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<InstructionStep> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionsCopyWith<Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsCopyWith<$Res> {
  factory $InstructionsCopyWith(
          Instructions value, $Res Function(Instructions) then) =
      _$InstructionsCopyWithImpl<$Res, Instructions>;
  @useResult
  $Res call(
      {@HiveField(0) String? name, @HiveField(1) List<InstructionStep> steps});
}

/// @nodoc
class _$InstructionsCopyWithImpl<$Res, $Val extends Instructions>
    implements $InstructionsCopyWith<$Res> {
  _$InstructionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<InstructionStep>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstructionsCopyWith<$Res>
    implements $InstructionsCopyWith<$Res> {
  factory _$$_InstructionsCopyWith(
          _$_Instructions value, $Res Function(_$_Instructions) then) =
      __$$_InstructionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? name, @HiveField(1) List<InstructionStep> steps});
}

/// @nodoc
class __$$_InstructionsCopyWithImpl<$Res>
    extends _$InstructionsCopyWithImpl<$Res, _$_Instructions>
    implements _$$_InstructionsCopyWith<$Res> {
  __$$_InstructionsCopyWithImpl(
      _$_Instructions _value, $Res Function(_$_Instructions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? steps = null,
  }) {
    return _then(_$_Instructions(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<InstructionStep>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Instructions implements _Instructions {
  const _$_Instructions(
      {@HiveField(0) this.name,
      @HiveField(1) required final List<InstructionStep> steps})
      : _steps = steps;

  factory _$_Instructions.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionsFromJson(json);

  @override
  @HiveField(0)
  final String? name;
  final List<InstructionStep> _steps;
  @override
  @HiveField(1)
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      __$$_InstructionsCopyWithImpl<_$_Instructions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionsToJson(
      this,
    );
  }
}

abstract class _Instructions implements Instructions {
  const factory _Instructions(
          {@HiveField(0) final String? name,
          @HiveField(1) required final List<InstructionStep> steps}) =
      _$_Instructions;

  factory _Instructions.fromJson(Map<String, dynamic> json) =
      _$_Instructions.fromJson;

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  List<InstructionStep> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionsCopyWith<_$_Instructions> get copyWith =>
      throw _privateConstructorUsedError;
}

InstructionStep _$InstructionStepFromJson(Map<String, dynamic> json) {
  return _Step.fromJson(json);
}

/// @nodoc
mixin _$InstructionStep {
  @HiveField(0)
  String get number => throw _privateConstructorUsedError;
  @HiveField(1)
  String get instruction => throw _privateConstructorUsedError;
  @HiveField(2)
  List<EquipmentAndIngredients>? get ingredients =>
      throw _privateConstructorUsedError;
  @HiveField(3)
  List<EquipmentAndIngredients>? get equipment =>
      throw _privateConstructorUsedError;
  String? get stepDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionStepCopyWith<InstructionStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionStepCopyWith<$Res> {
  factory $InstructionStepCopyWith(
          InstructionStep value, $Res Function(InstructionStep) then) =
      _$InstructionStepCopyWithImpl<$Res, InstructionStep>;
  @useResult
  $Res call(
      {@HiveField(0) String number,
      @HiveField(1) String instruction,
      @HiveField(2) List<EquipmentAndIngredients>? ingredients,
      @HiveField(3) List<EquipmentAndIngredients>? equipment,
      String? stepDuration});
}

/// @nodoc
class _$InstructionStepCopyWithImpl<$Res, $Val extends InstructionStep>
    implements $InstructionStepCopyWith<$Res> {
  _$InstructionStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? instruction = null,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? stepDuration = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      stepDuration: freezed == stepDuration
          ? _value.stepDuration
          : stepDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepCopyWith<$Res>
    implements $InstructionStepCopyWith<$Res> {
  factory _$$_StepCopyWith(_$_Step value, $Res Function(_$_Step) then) =
      __$$_StepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String number,
      @HiveField(1) String instruction,
      @HiveField(2) List<EquipmentAndIngredients>? ingredients,
      @HiveField(3) List<EquipmentAndIngredients>? equipment,
      String? stepDuration});
}

/// @nodoc
class __$$_StepCopyWithImpl<$Res>
    extends _$InstructionStepCopyWithImpl<$Res, _$_Step>
    implements _$$_StepCopyWith<$Res> {
  __$$_StepCopyWithImpl(_$_Step _value, $Res Function(_$_Step) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? instruction = null,
    Object? ingredients = freezed,
    Object? equipment = freezed,
    Object? stepDuration = freezed,
  }) {
    return _then(_$_Step(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      equipment: freezed == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentAndIngredients>?,
      stepDuration: freezed == stepDuration
          ? _value.stepDuration
          : stepDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Step implements _Step {
  const _$_Step(
      {@HiveField(0) required this.number,
      @HiveField(1) required this.instruction,
      @HiveField(2) final List<EquipmentAndIngredients>? ingredients,
      @HiveField(3) final List<EquipmentAndIngredients>? equipment,
      this.stepDuration})
      : _ingredients = ingredients,
        _equipment = equipment;

  factory _$_Step.fromJson(Map<String, dynamic> json) => _$$_StepFromJson(json);

  @override
  @HiveField(0)
  final String number;
  @override
  @HiveField(1)
  final String instruction;
  final List<EquipmentAndIngredients>? _ingredients;
  @override
  @HiveField(2)
  List<EquipmentAndIngredients>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentAndIngredients>? _equipment;
  @override
  @HiveField(3)
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
            (identical(other.number, number) || other.number == number) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            (identical(other.stepDuration, stepDuration) ||
                other.stepDuration == stepDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      instruction,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_equipment),
      stepDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepCopyWith<_$_Step> get copyWith =>
      __$$_StepCopyWithImpl<_$_Step>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepToJson(
      this,
    );
  }
}

abstract class _Step implements InstructionStep {
  const factory _Step(
      {@HiveField(0) required final String number,
      @HiveField(1) required final String instruction,
      @HiveField(2) final List<EquipmentAndIngredients>? ingredients,
      @HiveField(3) final List<EquipmentAndIngredients>? equipment,
      final String? stepDuration}) = _$_Step;

  factory _Step.fromJson(Map<String, dynamic> json) = _$_Step.fromJson;

  @override
  @HiveField(0)
  String get number;
  @override
  @HiveField(1)
  String get instruction;
  @override
  @HiveField(2)
  List<EquipmentAndIngredients>? get ingredients;
  @override
  @HiveField(3)
  List<EquipmentAndIngredients>? get equipment;
  @override
  String? get stepDuration;
  @override
  @JsonKey(ignore: true)
  _$$_StepCopyWith<_$_Step> get copyWith => throw _privateConstructorUsedError;
}

EquipmentAndIngredients _$EquipmentAndIngredientsFromJson(
    Map<String, dynamic> json) {
  return _EquipmentAndIngredients.fromJson(json);
}

/// @nodoc
mixin _$EquipmentAndIngredients {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentAndIngredientsCopyWith<EquipmentAndIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentAndIngredientsCopyWith<$Res> {
  factory $EquipmentAndIngredientsCopyWith(EquipmentAndIngredients value,
          $Res Function(EquipmentAndIngredients) then) =
      _$EquipmentAndIngredientsCopyWithImpl<$Res, EquipmentAndIngredients>;
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String? image});
}

/// @nodoc
class _$EquipmentAndIngredientsCopyWithImpl<$Res,
        $Val extends EquipmentAndIngredients>
    implements $EquipmentAndIngredientsCopyWith<$Res> {
  _$EquipmentAndIngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentAndIngredientsCopyWith<$Res>
    implements $EquipmentAndIngredientsCopyWith<$Res> {
  factory _$$_EquipmentAndIngredientsCopyWith(_$_EquipmentAndIngredients value,
          $Res Function(_$_EquipmentAndIngredients) then) =
      __$$_EquipmentAndIngredientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String name, @HiveField(1) String? image});
}

/// @nodoc
class __$$_EquipmentAndIngredientsCopyWithImpl<$Res>
    extends _$EquipmentAndIngredientsCopyWithImpl<$Res,
        _$_EquipmentAndIngredients>
    implements _$$_EquipmentAndIngredientsCopyWith<$Res> {
  __$$_EquipmentAndIngredientsCopyWithImpl(_$_EquipmentAndIngredients _value,
      $Res Function(_$_EquipmentAndIngredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$_EquipmentAndIngredients(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EquipmentAndIngredients implements _EquipmentAndIngredients {
  const _$_EquipmentAndIngredients(
      {@HiveField(0) required this.name, @HiveField(1) this.image});

  factory _$_EquipmentAndIngredients.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentAndIngredientsFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentAndIngredientsCopyWith<_$_EquipmentAndIngredients>
      get copyWith =>
          __$$_EquipmentAndIngredientsCopyWithImpl<_$_EquipmentAndIngredients>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentAndIngredientsToJson(
      this,
    );
  }
}

abstract class _EquipmentAndIngredients implements EquipmentAndIngredients {
  const factory _EquipmentAndIngredients(
      {@HiveField(0) required final String name,
      @HiveField(1) final String? image}) = _$_EquipmentAndIngredients;

  factory _EquipmentAndIngredients.fromJson(Map<String, dynamic> json) =
      _$_EquipmentAndIngredients.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentAndIngredientsCopyWith<_$_EquipmentAndIngredients>
      get copyWith => throw _privateConstructorUsedError;
}
