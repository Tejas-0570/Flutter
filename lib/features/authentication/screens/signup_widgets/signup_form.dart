import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/screens/signup_widgets/terms_condition_checkbox.dart';
import 'package:mad_project/features/authentication/screens/signup_widgets/verify_email.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';



class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),

                const SizedBox(width: MySizes.spaceBtwInputField),

                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: MySizes.spaceBtwInputField),

            //Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Phone Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),


            //Password
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: MyText.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),


            //Terms & Conditions
            const MyTermsAndConditions(),

            const SizedBox(height: MySizes.spaceBtwSection),

            //Sign Up Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(MyText.createAccount))),
          ],
        ));
  }
}
