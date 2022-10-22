// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutritionDataAdapter extends TypeAdapter<NutritionData> {
  @override
  final int typeId = 3;

  @override
  NutritionData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionData(
      nutrients: (fields[0] as List).cast<Nutrient>(),
      percentProtein: fields[1] as double,
      percentFat: fields[2] as double,
      percentCarbs: fields[3] as double,
      weightPerServing: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NutritionData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nutrients)
      ..writeByte(1)
      ..write(obj.percentProtein)
      ..writeByte(2)
      ..write(obj.percentFat)
      ..writeByte(3)
      ..write(obj.percentCarbs)
      ..writeByte(4)
      ..write(obj.weightPerServing);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutritionDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NutrientAdapter extends TypeAdapter<Nutrient> {
  @override
  final int typeId = 4;

  @override
  Nutrient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Nutrient(
      name: fields[0] as String,
      amount: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Nutrient obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.amount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutrientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionData _$$_NutritionDataFromJson(Map<String, dynamic> json) =>
    _$_NutritionData(
      nutrients: (json['nutrients'] as List<dynamic>)
          .map((e) => Nutrient.fromJson(e as Map<String, dynamic>))
          .toList(),
      percentProtein: (json['percentProtein'] as num).toDouble(),
      percentFat: (json['percentFat'] as num).toDouble(),
      percentCarbs: (json['percentCarbs'] as num).toDouble(),
      weightPerServing: json['weightPerServing'] as String?,
    );

Map<String, dynamic> _$$_NutritionDataToJson(_$_NutritionData instance) =>
    <String, dynamic>{
      'nutrients': instance.nutrients.map((e) => e.toJson()).toList(),
      'percentProtein': instance.percentProtein,
      'percentFat': instance.percentFat,
      'percentCarbs': instance.percentCarbs,
      'weightPerServing': instance.weightPerServing,
    };

_$_Nutrient _$$_NutrientFromJson(Map<String, dynamic> json) => _$_Nutrient(
      name: json['name'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$_NutrientToJson(_$_Nutrient instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };
