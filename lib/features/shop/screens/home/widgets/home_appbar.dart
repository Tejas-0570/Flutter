import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';


class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(MyText.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: MyColor.grey)),
          Text(MyText.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: MyColor.white)),
        ],
      ),
      actions: [
        MyCartCounterIcon(
          onPressed: () {},
          iconColor: MyColor.white,
        ),
      ],
    );
  }
}
