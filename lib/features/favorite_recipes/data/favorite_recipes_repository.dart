import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';

abstract class IFavoriteRecipesRepository {}

class FavoriteRecipesRepository implements IFavoriteRecipesRepository {
  final IFavoriteRecipesRemoteDataSource _remoteDataSource;
  final IFavoriteRecipesLocalDataSource _localDataSource;

  FavoriteRecipesRepository(this._remoteDataSource, this._localDataSource);
}
