import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/circular_container.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return MyCircularContainer(
      showBorder: true,
      backgroundColor: dark ? MyColor.dark : MyColor.white,
      padding: const EdgeInsets.only(
          top: MySizes.sm,
          bottom: MySizes.sm,
          right: MySizes.sm,
          left: MySizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          ///Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? MyColor.white.withOpacity(0.5)
                          : MyColor.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(
                          color: Colors.grey.withOpacity(0.1))),
                  child: const Text('Apply')))
        ],
      ),
    );
  }
}
