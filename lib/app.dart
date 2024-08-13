import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mad_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}