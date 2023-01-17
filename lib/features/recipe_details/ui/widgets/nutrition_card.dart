import 'package:awesome_circular_chart/awesome_circular_chart.dart';
import 'package:drecipe/features/recipe_details/domain/entities/nutrition_data.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NutritionCard extends StatelessWidget {
  const NutritionCard({
    Key? key,
    required this.nutritionData,
  }) : super(key: key);

  final NutritionData nutritionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height > Sizes.smallScreenHeight
          ? Sizes.s100.h
          : Sizes.s108.h,
      padding:
          EdgeInsets.symmetric(vertical: Sizes.s6.h, horizontal: Sizes.s12.w),
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
          Padding(
            padding: EdgeInsets.only(top: Sizes.s20.h),
            child: NutrientData(
              amount: nutritionData.nutrients[0].amount,
            ),
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
          size: Size(Sizes.s50.w, Sizes.s50.h),
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
        Text(nutrient.name.startsWith('Car') ? 'Carbs' : nutrient.name),
        Text(
          nutrient.amount,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}

class NutrientData extends StatelessWidget {
  const NutrientData({
    Key? key,
    required this.amount,
    this.nutrient,
  }) : super(key: key);

  final String amount;
  final String? nutrient;

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
          nutrient ?? '',
        ),
      ],
    );
  }
}
