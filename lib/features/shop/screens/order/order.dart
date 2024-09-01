import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/features/shop/screens/order/widgets/order_list.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Order', style: Theme.of(context).textTheme.headlineMedium), showBackArrow: true),
      body: const Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),

        ///Orders
        child: MyOrderListItems(),
      ),
    );
  }
}
