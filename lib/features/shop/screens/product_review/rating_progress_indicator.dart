import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';

class MyRatingProgressIndicator extends StatelessWidget {
  const MyRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 10,
          child: SizedBox(
            width: MyDeviceUtility.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: MyColor.lightGrey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(MyColor.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}