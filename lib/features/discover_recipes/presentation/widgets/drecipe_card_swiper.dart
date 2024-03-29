import 'package:drecipe/features/auth/domain/notifiers/auth/auth_notifier.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/recipe_recommended_card.dart';
import 'package:drecipe/features/favorite_recipes/presentation/pages/favorite_recipes_page.dart';
import 'package:drecipe/features/favorite_recipes/presentation/widgets/add_to_favorite_graphic.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/drecipe_custom_scroll_physics.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/recipe_image_card.dart';

class DrecipeCardSwiper extends ConsumerWidget {
  const DrecipeCardSwiper({
    Key? key,
    required this.title,
    required this.recipes,
    this.recommendedRecipes = false,
  }) : super(key: key);

  final String title;
  final List<Object> recipes;
  final bool recommendedRecipes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          SizedBox(
            height: Sizes.s4.h,
          ),
          ref.watch(isUserAnonymous) && recommendedRecipes
              ? const AnonymousFavoritesInfo()
              : recommendedRecipes && recipes.isEmpty
                  ? const NotRecommendedRecipesContent()
                  : DrecipeCarousel(
                      itemCount: recipes.length,
                      items: recipes,
                      height: recommendedRecipes ? Sizes.s146.h : null,
                      builder: (context, recipe) {
                        return recommendedRecipes
                            ? RecipeRecommendedCard(
                                recipe: recipe,
                              )
                            : RecipeImageCard(
                                recipe: recipe,
                              );
                      },
                    ),
        ],
      ),
    );
  }
}

class NotRecommendedRecipesContent extends StatelessWidget {
  const NotRecommendedRecipesContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
      child: Row(
        children: [
          SizedBox(
            width: Sizes.s200.w,
            child: Text(S.current.favorite_recipes_add_for_recommendations),
          ),
          SizedBox(
            width: Sizes.s28.w,
          ),
          const AddToFavoritesGraphic(),
        ],
      ),
    );
  }
}

class DrecipeCarousel extends StatefulWidget {
  const DrecipeCarousel({
    Key? key,
    required this.items,
    required this.itemCount,
    required this.builder,
    this.isScrollable = true,
    this.height,
    this.separatorWidth,
  }) : super(key: key);

  final List<Object> items;
  final int itemCount;
  final Function(BuildContext context, dynamic item) builder;
  final bool isScrollable;
  final double? height;
  final double? separatorWidth;

  @override
  State<DrecipeCarousel> createState() => _DrecipeCarouselState();
}

class _DrecipeCarouselState extends State<DrecipeCarousel> {
  late List<int> pages;
  final _controller = ScrollController();
  // ignore: unused_field
  late ScrollPhysics? _scrollPhysics =
      const CustomScrollPhysics(itemDimension: 1);

  @override
  void initState() {
    pages = List.generate(widget.itemCount, (index) => index);
    _controller.addListener(() {
      if (_controller.position.haveDimensions) {
        setState(() {
          var dimension =
              _controller.position.maxScrollExtent / (pages.length - 1);
          _scrollPhysics = CustomScrollPhysics(itemDimension: dimension);
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ??
          (MediaQuery.of(context).size.height > Sizes.smallScreenHeight
              ? Sizes.s160.h
              : Sizes.s180.h),
      child: ListView.separated(
        clipBehavior: Clip.none,
        controller: _controller,
        physics: widget.isScrollable
            ? const BouncingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => Divider(
          indent: widget.separatorWidth ?? Sizes.s24.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: widget.itemCount,
        itemBuilder: (context, index) {
          Widget item = widget.builder(context, widget.items[index]);
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: Sizes.bodyHorizontalPadding),
              child: item,
            );
          } else if (index == widget.itemCount - 1) {
            return Padding(
              padding:
                  const EdgeInsets.only(right: Sizes.bodyHorizontalPadding),
              child: item,
            );
          }
          return item;
        },
      ),
    );
  }
}
