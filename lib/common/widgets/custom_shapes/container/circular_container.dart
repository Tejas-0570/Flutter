import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = MySizes.cardRadiusLg,
    this.padding,
    this.backgroundColor = MyColor.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = MyColor.primaryBorder,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final Color borderColor;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor, width: 2) : null,
      ),
      child: child,
    );
  }
}
