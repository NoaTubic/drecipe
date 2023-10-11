import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filters.freezed.dart';

@freezed
class SearchFilters with _$SearchFilters {
  const factory SearchFilters({
    String? cuisine,
    String? mealType,
    String? diet,
    String? intolerances,
    String? minCalories,
    String? maxCalories,
    String? maxReadyTime,
    String? sort,
    String? sortDirection,
  }) = _SearchFilters;
}
