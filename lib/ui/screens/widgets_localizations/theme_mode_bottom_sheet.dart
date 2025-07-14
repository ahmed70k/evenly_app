import 'package:evently/ui/utils/app_colors.dart';
import 'package:evently/ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../providers/theme_provider.dart';

class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    var appTheme = Provider.of<ThemeProvide>(context);
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              appTheme.changeTheme(ThemeMode.light);
            },
            child:
                appTheme.appTheme == ThemeMode.light
                    ?  getSelectedBottomItemTheme(
                      context,
                      AppLocalizations.of(context)!.light,
                    )
                    : getUnSelectedBottomItemTheme(
                      context,
                      AppLocalizations.of(context)!.light,
                    ),
          ),
          SizedBox(height: height * 0.01),
          InkWell(
            onTap: () {
              appTheme.changeTheme(ThemeMode.dark);
            },
            child:
                appTheme.appTheme == ThemeMode.dark
                    ?  getSelectedBottomItemTheme(
                      context,
                      AppLocalizations.of(context)!.dark,
                    )
                    : getUnSelectedBottomItemTheme(
                      context,
                      AppLocalizations.of(context)!.dark,
                    ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedBottomItemTheme(BuildContext context, String textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textTheme, style: AppStyles.bold20primary),
        Icon(Icons.check, size: 30, color: AppColors.primary),
      ],
    );
  }

  Widget getUnSelectedBottomItemTheme(BuildContext context, String textTheme) {
    return Text(textTheme, style: AppStyles.bold20Blake);
  }
}
