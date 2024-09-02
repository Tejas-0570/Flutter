import 'package:flutter/material.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class MyCircularIcon extends StatelessWidget {
  // A custom circular icon widget with a background color

  //properties are

  ///Container [width], [color], [background]
  ///
  ///
  /// Icons [size], [color], [onPressed]
  const MyCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = MySizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor !=null
            ? backgroundColor!
            : MyHelperFunction.isDarkMode(context)
          ? MyColor.black.withOpacity(0.2)
            : MyColor.white.withOpacity(0.2),

      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon , color: color, size: size)),
    );
  }
}
