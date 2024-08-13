import 'package:flutter/material.dart';
import 'package:mad_project/utils/theme/custom_theme/text_theme.dart';
import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkbox_theme.dart';
import 'custom_theme/chip_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

 class MyAppTheme{
   MyAppTheme._();

   static ThemeData lightTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'poppins',
     brightness: Brightness.light,
     primaryColor: Colors.blue,
     scaffoldBackgroundColor: Colors.white,
     textTheme: MyTextTheme.lightTextTheme,
     chipTheme: MyChipTheme.lightChipTheme,
     appBarTheme: MyAppBarTheme.lightAppBarTheme,
     checkboxTheme: MyCheckboxTheme.lightCheckBoxTheme,
     bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
     elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
     outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
     inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,


   );
   static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
     fontFamily: 'poppins',
     brightness: Brightness.dark,
     primaryColor: Colors.blue,
     scaffoldBackgroundColor: Colors.black,
     textTheme: MyTextTheme.darkTextTheme,
     chipTheme: MyChipTheme.darkChipTheme,
     appBarTheme: MyAppBarTheme.darkAppBarTheme,
     checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
     bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
     elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
     outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
     inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
   );
 }