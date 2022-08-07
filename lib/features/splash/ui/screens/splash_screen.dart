import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
// ignore: depend_on_referenced_packages
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    Future.delayed(
      const Duration(
        seconds: DurationConstants.d2,
      ),
      () {
        animationController.dispose();
        ScreenRouter.replaceScreen(
          context,
          const ExploreRecipesScreenRoute(),
        );
      },
    );
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: HeroConstants.logo,
              child: ScaleTransition(
                scale: animation,
                child: Image.asset(ImageAssets.drecipeLogo),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: Sizes.s180),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: LoadingAnimationWidget.flickr(
                leftDotColor:
                    AppColors.black.withOpacity(OpacityConstants.op08),
                rightDotColor: AppColors.secondaryLightRed1,
                size: Sizes.s38,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: DurationConstants.d093),
    );

    animation = Tween<double>(begin: 1, end: 0.97).animate(animationController);
    animationController.forward();

    animation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      },
    );
  }
}
