import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/common/widgets.login_signup/form_divider.dart';
import 'package:mad_project/common/widgets.login_signup/social_button.dart';
import 'package:mad_project/features/authentication/screens/signup_widgets/signup_form.dart';
import 'package:mad_project/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
        ),
      ), // this function create arrow to go back
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //start title from left side not from center if we change start to center title goes to center
            children: [
              //title
              Text(MyText.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Form
              const MySignupForm(),

              const SizedBox(height: MySizes.spaceBtwSection),

              //Divider
              MyFormDivider(dividerText: MyText.orSignUpWith.capitalize!),

              const SizedBox(height: MySizes.spaceBtwSection),

              //Social Button
              const MySocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

