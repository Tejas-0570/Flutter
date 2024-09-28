import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/controllers/signup/signup_controller.dart';
import 'package:mad_project/features/authentication/screens/signup_widgets/terms_condition_checkbox.dart';
import 'package:mad_project/utils/validators/validation.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        MyValidator.validateEmptyText('First name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MyText.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: MySizes.spaceBtwInputField),
                Expanded(
                  child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        MyValidator.validateEmptyText('Last name', value),
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
              controller: controller.userName,
              validator: (value) =>
                  MyValidator.validateEmptyText('Username', value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Email
            TextFormField(
              controller: controller.email,
              validator: (value) => MyValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Phone Number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => MyValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MyText.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) => MyValidator.validatePassword(value),
                decoration:  InputDecoration(
                  labelText: MyText.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)),
                ),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),

            //Terms & Conditions
            const MyTermsAndConditions(),

            const SizedBox(height: MySizes.spaceBtwSection),

            //Sign Up Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.signup(),
                    child: const Text(MyText.createAccount))),
          ],
        ));
  }
}
