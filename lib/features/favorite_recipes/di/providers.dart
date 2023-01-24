import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipe/favorite_recipe_notifier.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipe/favorite_recipe_state.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipes_list/favorite_recipes_list_notifier.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipes_list/favorite_recipes_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRecipesRemoteDataSourceProvider =
    Provider<IFavoriteRecipesRemoteDataSource>(
  (ref) => FavoriteRecipesRemoteDataSource(
      // ref.read(firebaseAuthProvider),
      // ref.read(firestoreProvider),
      ),
);

final favoriteRecipesLocalDataSourceProvider =
    Provider<IFavoriteRecipesLocalDataSource>(
  (ref) => FavoriteRecipesLocalDataSource(),
);

final favoriteRecipesRepositoryProvider = Provider<IFavoriteRecipesRepository>(
  (ref) => FavoriteRecipesRepository(
    ref.read(favoriteRecipesRemoteDataSourceProvider),
    ref.read(favoriteRecipesLocalDataSourceProvider),
  ),
);

final favoriteRecipeNotifierProvider = StateNotifierProvider.autoDispose<
    FavoriteRecipeNotifier, FavoriteRecipeState>(
  (ref) {
    ref.maintainState = true;
    return FavoriteRecipeNotifier(
      ref.read(favoriteRecipesRepositoryProvider),
      ref,
    );
  },
);

final favoriteRecipesListNotifierProvider = StateNotifierProvider.autoDispose<
    FavoriteRecipesListNotifier, FavoriteRecipesListState>(
  (ref) => FavoriteRecipesListNotifier(
    ref.read(favoriteRecipesRepositoryProvider),
  )..getFavoriteRecipes(),
);

// final recipesListProvider =
//     StateNotifierProvider<RecipesListNotifier, List<Recipe>>((ref) {
//   return RecipesListNotifier(ref.read(favoriteRecipesRepositoryProvider));
// });
