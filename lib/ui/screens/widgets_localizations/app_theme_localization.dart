
import 'package:evently/ui/screens/widgets_localizations/theme_mode_bottom_sheet.dart';
import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_style.dart';


class AppThemeLocalization extends StatelessWidget {
  const AppThemeLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(AppLocalizations.of(context)!.theme, style: AppStyles.bold20Blake),
        SizedBox(height: height * 0.02),
        InkWell(
          onTap: () {
            showBottomSheetTheme(context);
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
                  AppLocalizations.of(context)!.dark,
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
  void showBottomSheetTheme(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeModeBottomSheet(),
    );
  }
}
