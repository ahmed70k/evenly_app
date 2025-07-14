
import 'package:evently/ui/utils/app_colors.dart';
import 'package:evently/ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import 'language_bottom_sheet.dart';

class AppLanguageLocalization extends StatelessWidget {
  const AppLanguageLocalization({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppLocalizations.of(context)!.language,
          style: AppStyles.bold20Blake,
        ),
        SizedBox(height: height * 0.02),
        InkWell(
          onTap:() {
            showBottomSheetLanguage(context);
          },
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.primary, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: AppStyles.bold20primary,
                ),
                SizedBox(height: height * 0.02),
                Icon(Icons.arrow_drop_down, size: 30, color: AppColors.primary),
              ],
            ),
          ),
        ),
      ],
    );
  }
  void showBottomSheetLanguage(BuildContext context) {
    showModalBottomSheet(context: context, builder:(context) =>LanguageBottomSheet(),);
  }
}
