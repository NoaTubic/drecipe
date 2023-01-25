import 'package:drecipe/features/discover_recipes/ui/widgets/recipe_recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_custom_scroll_physics.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/recipe_image_card.dart';

class DrecipeCardSwiper extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: Sizes.s4.h,
          ),
          recommendedRecipes && recipes.isEmpty
              ? const NoRecommendedRecipesContent()
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

class NoRecommendedRecipesContent extends StatelessWidget {
  const NoRecommendedRecipesContent({
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
            child:
                const Text('Add recipes to favorites to get recommendations.'),
          ),
          SizedBox(
            width: Sizes.s28.w,
          ),
          Icon(
            Icons.favorite_rounded,
            size: Sizes.iconSize.w,
            color: AppColors.lightGrey1,
          ),
          SizedBox(
            width: Sizes.s4.w,
          ),
          Icon(
            Icons.arrow_forward_rounded,
            size: Sizes.iconSizeSmall.w,
          ),
          SizedBox(
            width: Sizes.s4.w,
          ),
          Icon(
            Icons.favorite_rounded,
            size: Sizes.iconSize.w,
            color: AppColors.primaryRed,
          ),
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
  }) : super(key: key);

  final List<Object> items;
  final int itemCount;
  final Function(BuildContext context, dynamic item) builder;
  final bool isScrollable;
  final double? height;

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
        separatorBuilder: (context, index) => const Divider(
          indent: Sizes.s24,
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
