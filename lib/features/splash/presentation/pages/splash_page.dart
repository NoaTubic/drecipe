import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/auth/domain/notifiers/auth_notifier.dart';
import 'package:drecipe/features/auth/domain/state/auth_state.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_animated_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ConsumerState<SplashPage>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

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

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(authNotifierProvider);
    FlutterNativeSplash.remove();
    removeSplashPage(context, ref);
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
          const Padding(
            padding: EdgeInsets.only(bottom: Sizes.s180),
            child: DrecipeAnimatedLoadingIndicator(
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> removeSplashPage(BuildContext context, WidgetRef ref) async {
  Future.delayed(
    const Duration(
      seconds: DurationConstants.d2,
    ),
    () {
      ScreenRouter.replaceScreen(
        context,
        ref.watch<AuthState>(authNotifierProvider).when(
              authenticated: () => const DrecipeBottomNavBarRoute(),
              unauthenticated: () => const SignInPageRoute(),
            ),
      );
    },
  );
}
