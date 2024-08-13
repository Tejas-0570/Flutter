import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/styles/spacing_styles.dart';
import 'package:mad_project/common/widgets.login_signup/form_divider.dart';
import 'package:mad_project/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mad_project/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mad_project/common/widgets.login_signup/social_button.dart';
// import 'package:mad_project/utils/constants/colors.dart';
// import 'package:mad_project/utils/constants/image_strings.dart';
import 'package:mad_project/utils/constants/sizes.dart';
import 'package:mad_project/utils/constants/text_strings.dart';
// import 'package:mad_project/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          // we created paddingWithAppBarHeight key word in which we store the padding property
          child: Column(
            //Logo, title & sub-title
            children: [
              MyLoginHeader(),

              //Form

             MyLoginForm(),

              //Divider
              MyFormDivider(dividerText: MyText.orSignInWith),
              SizedBox(height: MySizes.spaceBtwItem),

              // Footer
              MySocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
