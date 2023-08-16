import 'package:drecipe/core/language/data/locale_constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/profile/di/providers.dart';
import 'package:drecipe/features/profile/ui/widgets/profile_tile.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLanguageDropdownButton extends ConsumerStatefulWidget {
  const ChangeLanguageDropdownButton({super.key});

  @override
  ConsumerState<ChangeLanguageDropdownButton> createState() =>
      _ChangeLanguageDropdownButtonState();
}

class _ChangeLanguageDropdownButtonState
    extends ConsumerState<ChangeLanguageDropdownButton> {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final localeNotifier = ref.read(localeNotifierProvider.notifier);
    List<LanguageItem> languages = [
      LanguageItem(
        locale: const Locale(LocaleConstants.englishLanguage),
        language: s.english_language,
      ),
      LanguageItem(
        locale: const Locale(LocaleConstants.croatianLanguage),
        language: s.croatian_language,
      ),
    ];
    String getCurrentLanguage() {
      final language = languages
          .where((language) =>
              language.locale == ref.watch(localeNotifierProvider))
          .first;

      return language.language;
    }

    return ProfileTile(
      text: s.profile_screen_change_language,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          onChanged: (languageItem) {
            final selectedLanguage = languageItem as String;
            localeNotifier.changeLanguage(
              Locale(selectedLanguage),
            );
            localeNotifier.loadLanguage();
          },
          hint: Text(
            getCurrentLanguage(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.black),
          ),
          items: languages
              .map(
                (language) => DropdownMenuItem<String>(
                  value: language.locale.languageCode,
                  child: Text(language.language),
                ),
              )
              .toList(),
          icon: const Icon(
            Icons.expand_more_rounded,
          ),
          dropdownElevation: 1,
          buttonWidth: Sizes.s98.w,
          iconEnabledColor: AppColors.black,
        ),
      ),
    );
  }
}
