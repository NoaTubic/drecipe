import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.imageUrl,
    required this.recipeName,
    required this.readyInMinutes,
  }) : super(key: key);

  final String imageUrl;
  final String recipeName;
  final int readyInMinutes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.s260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        backgroundBlendMode: BlendMode.dstATop,
        gradient: recipeCardGradient(),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(OpacityConstants.op04),
              BlendMode.dstATop),
          image: NetworkImage(imageUrl),
        ),
      ),
      child: RecipeCardText(
        recipeName: recipeName,
        readyInMinutes: readyInMinutes,
      ),
    );
  }
}

LinearGradient recipeCardGradient() {
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.7),
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.5),
        Colors.black.withOpacity(0.4),
        Colors.black.withOpacity(0.3),
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0.1),
        Colors.black.withOpacity(0.1),
        Colors.transparent
      ]);
}

class RecipeCardText extends StatelessWidget {
  const RecipeCardText({
    Key? key,
    required this.recipeName,
    required this.readyInMinutes,
  }) : super(key: key);

  final String recipeName;
  final int readyInMinutes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.s12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recipeName,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.timer,
                size: Sizes.s16,
                color: AppColors.white,
              ),
              const SizedBox(
                width: Sizes.s2,
              ),
              Text(
                '$readyInMinutes min',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
