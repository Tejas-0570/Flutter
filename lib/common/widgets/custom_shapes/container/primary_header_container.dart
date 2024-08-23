import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curve_edge_widget.dart';
import 'circular_container.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [MyColor.primaryColor, MyColor.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              left: -100,
              child: MyCircularContainer(
                width: 500,
                height: 500,
                radius: 250,
                backgroundColor: MyColor.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: -50,
              left: 230,
              child: MyCircularContainer(
                width: 300,
                height: 300,
                radius: 150,
                backgroundColor: MyColor.textWhite.withOpacity(0.2),
              ),
            ),
            Positioned(
              bottom: -170,
              right: -190,
              child: MyCircularContainer(
                width: 400,
                height: 400,
                radius: 200,
                backgroundColor: MyColor.textWhite.withOpacity(0.15),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
