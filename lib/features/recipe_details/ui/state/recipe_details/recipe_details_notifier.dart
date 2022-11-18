import 'package:drecipe/features/recipe_details/data/repositories/recipe_details_repository.dart';
import 'package:drecipe/features/recipe_details/ui/state/recipe_details/recipe_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeDetailsNotifier extends StateNotifier<RecipeDetailsState> {
  final IRecipeDetailsRepository _recipeDetailsRepository;
  RecipeDetailsNotifier(this._recipeDetailsRepository)
      : super(const RecipeDetailsState.initial());

  Future<void> getRecipeDetails({required int id}) async {
    state = const RecipeDetailsState.loading();

    final recipeDetails =
        await _recipeDetailsRepository.getRecipeDetails(id: id);

    recipeDetails.fold(
      (failure) => state = RecipeDetailsState.error(failure: failure),
      (recipe) => state = RecipeDetailsState.loaded(recipe: recipe),
    );
  }
}
