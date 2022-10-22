// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeAdapter extends TypeAdapter<Recipe> {
  @override
  final int typeId = 1;

  @override
  Recipe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Recipe(
      id: fields[0] as int,
      title: fields[1] as String,
      servings: fields[2] as int,
      image: fields[3] as String?,
      readyInMinutes: fields[4] as int,
      dishTypes: (fields[5] as List?)?.cast<String>(),
      vegetarian: fields[6] as bool,
      vegan: fields[7] as bool,
      glutenFree: fields[8] as bool,
      veryPopular: fields[9] as bool,
      vertHealthy: fields[10] as bool,
      ingredients: (fields[11] as List?)?.cast<Ingredient>(),
      nutritionData: fields[12] as NutritionData?,
      instructionsDetailed: (fields[13] as List?)?.cast<Instructions>(),
    );
  }

  @override
  void write(BinaryWriter writer, Recipe obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.servings)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.readyInMinutes)
      ..writeByte(5)
      ..write(obj.dishTypes)
      ..writeByte(6)
      ..write(obj.vegetarian)
      ..writeByte(7)
      ..write(obj.vegan)
      ..writeByte(8)
      ..write(obj.glutenFree)
      ..writeByte(9)
      ..write(obj.veryPopular)
      ..writeByte(10)
      ..write(obj.vertHealthy)
      ..writeByte(11)
      ..write(obj.ingredients)
      ..writeByte(12)
      ..write(obj.nutritionData)
      ..writeByte(13)
      ..write(obj.instructionsDetailed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      id: json['id'] as int,
      title: json['title'] as String,
      servings: json['servings'] as int,
      image: json['image'] as String?,
      readyInMinutes: json['readyInMinutes'] as int,
      dishTypes: (json['dishTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      veryPopular: json['veryPopular'] as bool,
      vertHealthy: json['vertHealthy'] as bool,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutritionData: json['nutritionData'] == null
          ? null
          : NutritionData.fromJson(
              json['nutritionData'] as Map<String, dynamic>),
      instructionsDetailed: (json['instructionsDetailed'] as List<dynamic>?)
          ?.map((e) => Instructions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'servings': instance.servings,
      'image': instance.image,
      'readyInMinutes': instance.readyInMinutes,
      'dishTypes': instance.dishTypes,
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'veryPopular': instance.veryPopular,
      'vertHealthy': instance.vertHealthy,
      'ingredients': instance.ingredients?.map((e) => e.toJson()).toList(),
      'nutritionData': instance.nutritionData?.toJson(),
      'instructionsDetailed':
          instance.instructionsDetailed?.map((e) => e.toJson()).toList(),
    };
