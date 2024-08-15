import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';


class MyCircularContainer extends StatelessWidget {
  const MyCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = MyColor.white,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 400),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}