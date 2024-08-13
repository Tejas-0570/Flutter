import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';


class MyFormDivider extends StatelessWidget {
  const MyFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? MyColor.darkGrey : MyColor.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? MyColor.darkGrey : MyColor.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
