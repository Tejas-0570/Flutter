import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/screens/password_configuration/reset_password.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(MyText.forgetTitlePassword, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: MySizes.spaceBtwItem),
            Text(MyText.forgetSubTitlePassword, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: MySizes.spaceBtwItem * 2),
            


            //Text Field
            TextFormField(
              decoration: const InputDecoration(labelText: MyText.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),

            const SizedBox(height: MySizes.spaceBtwSection),


            //Submit Button
            SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: const Text(MyText.submit)))
          ],
        ),

      ),
    );
  }
}
