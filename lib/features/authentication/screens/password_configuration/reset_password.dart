import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.to(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(image: const AssetImage(MyImages.passwordReset), width: MyHelperFunction.screenWidth() * 0.6),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Title & Subtitle
              Text(MyText.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwItem),


              Text(MyText.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){}, child:  const Text(MyText.done)),
              ),
              const SizedBox(height: MySizes.spaceBtwItem),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){}, child:  const Text(MyText.resendEmail)),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
