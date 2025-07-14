import 'package:evently/providers/language_provide.dart';
import 'package:evently/ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../l10n/app_localizations.dart';
import '../../utils/app_colors.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<LanguageProvide>(context);
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
        appLanguage.changeLanguage("en");// If The User Clicks The Language
            },
            child:
                appLanguage.appLanguage == "en"
                    ? getSelectedBottomItemLanguageRow(
                      context,
                      AppLocalizations.of(context)!.english,
                    )
                    : getUnSelectedBottomItemLanguage(
                      context,
                      AppLocalizations.of(context)!.english,
                    ),
          ),
          SizedBox(height: height * 0.01),
          InkWell(
            onTap: () {
              appLanguage.changeLanguage("ar");
            },
            child:
                appLanguage.appLanguage == "ar"
                    ? getSelectedBottomItemLanguageRow(
                      context,
                      AppLocalizations.of(context)!.arabic,
                    )
                    : getUnSelectedBottomItemLanguage(
                      context,
                      AppLocalizations.of(context)!.arabic,
                    ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedBottomItemLanguageRow(BuildContext context, String textLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textLanguage, style: AppStyles.bold20primary),
        Icon(Icons.check, size: 30, color: AppColors.primary),
      ],
    );
  }

  Widget getUnSelectedBottomItemLanguage(
    BuildContext context,
    String textLanguage,
  ) {
    return Text(textLanguage, style: AppStyles.bold20Blake);
  }
}
