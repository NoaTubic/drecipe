import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsSection extends ConsumerWidget {
  const IngredientsSection({
    super.key,
    required this.title,
    required this.ingredients,
    required this.icon,
  });

  final String title;
  final List<String> ingredients;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.s16.w,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.primaryRed,
              ),
              SizedBox(
                width: Sizes.s8.w,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
        DrecipeCarousel(
          height: Sizes.s48.h,
          items: ingredients,
          itemCount: ingredients.length,
          separatorWidth: Sizes.s12.w,
          builder: (context, index) => Chip(
            label: Text(index),
          ),
        ),
      ],
    );
  }
}
