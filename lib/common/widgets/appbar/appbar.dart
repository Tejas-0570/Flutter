import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/utils/device/device_utility.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {super.key,
      this.title,
      this.actions,
      this.leadingIcon,
      this.showBackArrow = false,
      this.leadingOnPressed
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Iconsax.arrow_left, color: dark ? MyColor.white : MyColor.dark))
              : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtility.getAppBarHeight());
}
