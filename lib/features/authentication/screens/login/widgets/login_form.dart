import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/screens/password_configuration/forget_password.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup_widgets/signup.dart';


class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MySizes.spaceBtwSection),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyText.email,
              ),
            ),

            // space btw email and password field
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MyText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

            // Remember & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyText.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(MyText.forgetPassword)),
              ],
            ),

            const SizedBox(height: MySizes.spaceBtwSection),

            //Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(MyText.signIn))),
            const SizedBox(height: MySizes.spaceBtwItem),

            //Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(MyText.createAccount))),
          ],
        ),
      ),
    );
  }
}