import 'package:evently/providers/language_provide.dart';
import 'package:evently/providers/theme_provider.dart';
import 'package:evently/ui/screens/home/home.dart';
import 'package:evently/ui/utils/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageProvide()),
        ChangeNotifierProvider(create: (context) => ThemeProvide()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var changeLanguage = Provider.of<LanguageProvide>(context);
    var changeTheme = Provider.of<ThemeProvide>(context);
    return MaterialApp(
      theme: AppThemeLight.appThemeLight,
      themeMode: changeTheme.appTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {Home.routeName: (_) => Home()},
      locale: Locale(changeLanguage.appLanguage),
    );
  }
}
