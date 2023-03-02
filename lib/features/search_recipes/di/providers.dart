import 'package:drecipe/core/api/providers.dart';
import 'package:drecipe/features/search_recipes/data/repositories/search_recipes_repository.dart';
import 'package:drecipe/features/filter/ui/state/filters/filter_recipes_notifier.dart';
import 'package:drecipe/features/filter/ui/state/filters/filter_recipes_state.dart';
import 'package:drecipe/features/search_recipes/ui/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/ui/state/search/search_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRepositoryProvider = Provider<ISearchRecipesRepository>(
  (ref) => SearchRecipesRepository(
    ref.read(apiClientProvider),
  ),
);

final searchRecipesNotifierProvider =
    StateNotifierProvider<SearchRecipesNotifier, SearchRecipesState>(
  (ref) => SearchRecipesNotifier(
    ref.read(searchRepositoryProvider),
    ref,
  ),
);

final filterRecipesNotifierProvider =
    StateNotifierProvider<FilterRecipesNotifier, FilterRecipesState>(
  (ref) => FilterRecipesNotifier(),
);
