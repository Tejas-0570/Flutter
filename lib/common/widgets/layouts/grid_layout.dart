import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../product_cart/product_card_vertical.dart';

class MyGridLayout extends StatelessWidget {
  const MyGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        //Scrolling purpose, to scroll the screen when we touch and scroll while clicking on product
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: MySizes.gridViewSpacing,
            crossAxisSpacing: MySizes.gridViewSpacing,
        ),
        itemBuilder: itemBuilder);
  }
}
