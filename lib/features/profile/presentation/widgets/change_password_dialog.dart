import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_dialog.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/profile/domain/providers/providers.dart';
import 'package:drecipe/features/profile/domain/notifiers/change_passcode/change_password_state.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';

class ChangePasswordDialog extends ConsumerWidget {
  const ChangePasswordDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changePasswordNotifier =
        ref.read(changePasswordNotifierProvider.notifier);
    final state = ref.watch(changePasswordNotifierProvider);
    final s = S.of(context);
    ref.listen<ChangePasswordState>(
      changePasswordNotifierProvider,
      (_, state) {
        state.changePasswordSuccessOrFailure.fold(
          () => null,
          (either) => either.fold(
            (failure) => showDrecipeSnackBar(
              context: context,
              text: failure.title,
              isError: true,
            ),
            (success) => AutoRouter.of(context).pop().whenComplete(
                  () => showDrecipeSnackBar(
                    context: context,
                    text: S.current.profile_screen_change_password_success,
                  ),
                ),
          ),
        );
      },
    );

    return DrecipeDialog(
      insetPadding: EdgeInsets.symmetric(
          vertical: state.showErrorMessages ? 76.h : Sizes.s100.h,
          horizontal: Sizes.bodyHorizontalPadding.w),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Sizes.bodyHorizontalPadding.w, vertical: Sizes.s8.h),
        child: Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                s.profile_screen_change_password,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Image.asset(
                ImageAssets.accountRecovery,
                height: Sizes.s200.h,
                width: Sizes.s172.w,
              ),
              DrecipePasswordTextFormField(
                onChanged: (currentPassword) => changePasswordNotifier
                    .onCurrentPasswordChanged(currentPassword),
                validator: (password) => state.currentPassword.value.fold(
                  (failure) => failure.getValueFailureMessage(),
                  (_) => null,
                ),
                hintText: S.current.profile_screen_change_password,
              ),
              DrecipePasswordTextFormField(
                onChanged: (newPassword) =>
                    changePasswordNotifier.onNewPasswordChanged(newPassword),
                validator: (password) => state.newPassword.value.fold(
                  (failure) => failure.getValueFailureMessage(),
                  (_) => null,
                ),
                hintText: S.current.profile_screen_change_password_new,
              ),
              const Spacer(),
              DrecipeButton(
                onPressed: () => changePasswordNotifier.changePassword(),
                text: s.profile_screen_change_password,
                isLoading: state.isSubmitting,
              ),
              SizedBox(
                height: Sizes.s20.h,
              ),
              DrecipeTextButtonPrimary(
                text: S.current.label_cancel,
                onPressed: () => AutoRouter.of(context).pop(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
