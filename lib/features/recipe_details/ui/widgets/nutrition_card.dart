import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:drecipe/features/recipe_details/domain/entities/nutrition_data.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class NutritionCard extends StatelessWidget {
  const NutritionCard({
    Key? key,
    required this.nutritionData,
  }) : super(key: key);

  final NutritionData nutritionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s88,
      padding:
          const EdgeInsets.symmetric(vertical: Sizes.s6, horizontal: Sizes.s12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Sizes.s12),
        border: Border.all(
          color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
        ),
        boxShadow: shadows,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textBaseline: TextBaseline.alphabetic,
        children: [
          NutrientData(
            nutrient: nutritionData.nutrients[0].name,
            amount: nutritionData.nutrients[0].amount,
          ),
          NutrientCircularChart(
            color: Colors.purple,
            nutrient: nutritionData.nutrients[8],
            nutrientPercentage: nutritionData.percentProtein,
          ),
          NutrientCircularChart(
            color: Colors.yellow,
            nutrient: nutritionData.nutrients[1],
            nutrientPercentage: nutritionData.percentFat,
          ),
          NutrientCircularChart(
            color: Colors.blue,
            nutrient: nutritionData.nutrients[3],
            nutrientPercentage: nutritionData.percentCarbs,
          ),
        ],
      ),
    );
  }
}

class NutrientCircularChart extends StatelessWidget {
  const NutrientCircularChart({
    Key? key,
    required this.nutrient,
    required this.nutrientPercentage,
    required this.color,
  }) : super(key: key);

  final Nutrient nutrient;
  final double nutrientPercentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> chartKey =
        GlobalKey<AnimatedCircularChartState>();
    return Column(
      children: [
        AnimatedCircularChart(
          key: chartKey,
          size: const Size(Sizes.s50, Sizes.s50),
          initialChartData: <CircularStackEntry>[
            CircularStackEntry(
              <CircularSegmentEntry>[
                CircularSegmentEntry(
                  nutrientPercentage,
                  color,
                  rankKey: 'completed',
                ),
                CircularSegmentEntry(
                  100,
                  AppColors.lightGrey1,
                  rankKey: 'remaining',
                ),
              ],
            ),
          ],
          holeLabel: '${nutrientPercentage.round().toString()}%',
          chartType: CircularChartType.Radial,
          edgeStyle: SegmentEdgeStyle.round,
          percentageValues: true,
        ),
        Text(nutrient.name.startsWith('Car') ? 'Carbs' : nutrient.name)
      ],
    );
  }
}

class NutrientData extends StatelessWidget {
  const NutrientData({
    Key? key,
    required this.amount,
    required this.nutrient,
  }) : super(key: key);

  final String amount;
  final String nutrient;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          amount,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          nutrient,
        ),
      ],
    );
  }
}
