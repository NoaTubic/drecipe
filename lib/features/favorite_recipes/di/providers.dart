import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRecipesRemoteDataSourceProvider =
    Provider<IFavoriteRecipesRemoteDataSource>(
  (ref) => FavoriteRecipesRemoteDataSource(
    ref.read(firebaseAuthProvider),
    ref.read(firestoreProvider),
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
