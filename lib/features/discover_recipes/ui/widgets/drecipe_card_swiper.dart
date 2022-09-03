import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_custom_scroll_physics.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class DrecipeCardSwiper extends StatelessWidget {
  const DrecipeCardSwiper({
    Key? key,
    required this.title,
    required this.recipes,
  }) : super(key: key);

  final String title;
  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.bodyHorizontalPadding),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(
            height: Sizes.s4,
          ),
          DrecipeCarousel(
            itemCount: recipes.length,
            items: recipes,
            builder: (context, item) {
              return RecipeCard(
                imageUrl: item.image,
                recipeName: item.title,
                readyInMinutes: item.readyInMinutes,
              );
            },
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
  }) : super(key: key);

  final List<Recipe> items;
  final int itemCount;
  final Function(BuildContext context, dynamic item) builder;
  final bool isScrollable;

  @override
  State<DrecipeCarousel> createState() => _DrecipeCarouselState();
}

class _DrecipeCarouselState extends State<DrecipeCarousel> {
  late List<int> pages;
  final _controller = ScrollController();
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
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.s160,
      child: ListView.separated(
        controller: _controller,
        physics: widget.isScrollable
            ? _scrollPhysics
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