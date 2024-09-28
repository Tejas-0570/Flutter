import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/bindings/general_bindings.dart';
import 'package:mad_project/utils/constants/colors.dart';
import 'package:mad_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(backgroundColor: MyColor.primaryColor, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}