import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../common/widgets/loader/animation_loader.dart';
import '../constants/colors.dart';


class MyFullScreenLoader {
  ///Open a full-screen loading dialog
  ///This method doesn't return anything
  ///parameters:
  ///  -text: The text to be displayed in the loading dialog
  ///  -animation: The animation is shown


  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
          canPop: false,
          child: Container(
            color: MyHelperFunction.isDarkMode(Get.context!) ? MyColor.dark : MyColor.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250),
                MyAnimationLoaderWidget(text: text, animation: animation),
              ],
            ),

            ),
        )
    );
  }

  ///Stop the loading dialog
  ///This method doesn't return anything
  static stopLoading(){
    Navigator.of(Get.context!).pop();
  }



}