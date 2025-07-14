import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/ui/commen/app_bar_home/app_bar_home.dart';
import 'package:evently/ui/utils/app_colors.dart';
import 'package:evently/ui/utils/app_style.dart';
import 'package:evently/ui/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import '../widgets_localizations/app_language_localization.dart';
import '../widgets_localizations/app_theme_localization.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static String routeName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppLanguageLocalization(),
            SizedBox(height: height * 0.02),
            AppThemeLocalization(),
          ],
        ),
      ),
    );
  }
}
