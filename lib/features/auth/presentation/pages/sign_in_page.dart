import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/auth/domain/notifiers/sign_in/sign_in_notifier.dart';
import 'package:drecipe/features/auth/presentation/widgets/sign_in_form.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:drecipe/features/auth/domain/notifiers/sign_in/sign_in_state.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(signInNotifierProvider, (_, state) {
      state.signInFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showDrecipeSnackBar(
            context: context,
            text: failure.title,
          ),
          (success) => ScreenRouter.pushScreen(
            context,
            const DrecipeBottomNavBarRoute(),
          ),
        ),
      );
    });
    final s = S.of(context);
    final signInNotifier = ref.read(signInNotifierProvider.notifier);
    return DrecipeScaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Sizes.s46.h,
            ),
            Stack(
              children: [
                Center(
                  child: Hero(
                    tag: HeroConstants.logo,
                    child: Image.asset(
                      ImageAssets.drecipeLogo,
                      width: Sizes.s200.w,
                      height: Sizes.s200.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Sizes.s8.h,
            ),
            Text(s.sign_in_helper),
            SizedBox(
              height: Sizes.s32.h,
            ),
            const SignInForm(),
            SizedBox(
              height: Sizes.s12.h,
            ),
            DrecipeTextButtonPrimary(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                signInNotifier.signInAnonymously();
              },
              text: s.sign_in_anonymous,
              textColor: AppColors.black,
            ),
            SizedBox(
              height: Sizes.s24.h,
            ),
            TextButtonRow(
              text: s.sign_in_register,
              buttonText: s.registration_sign_up_label,
              onPressed: () => ScreenRouter.pushScreen(
                context,
                const RegistrationPageRoute(),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom + Sizes.s20.h),
          ],
        ),
      ),
    );
  }
}
