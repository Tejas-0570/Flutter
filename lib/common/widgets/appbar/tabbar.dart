import 'package:flutter/material.dart';
import 'package:mad_project/utils/device/device_utility.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in material widget
  /// To do that we need [PreferredSized] widget and that's why created custom class. [PreferredSizeWidget]
  const MyTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Material(
        color: dark ? MyColor.black : MyColor.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: MyColor.primaryColor,
          labelColor: dark ? MyColor.white : MyColor.primaryColor,
          unselectedLabelColor: MyColor.primaryColor,

          // Minimize padding around tabs
          // labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          // indicatorPadding: EdgeInsets.zero,

        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyDeviceUtility.getAppBarHeight());
}
