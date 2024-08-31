import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets.login_signup/success_screen/success_screen.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/features/shop/screens/cart/widget/cart_items.dart';
import 'package:mad_project/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:mad_project/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:mad_project/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:mad_project/navigation_menu.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product_cart/coupon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              ///Items in cart
              const MyCartItems(showAddRemoveButton: false),
              const SizedBox(height: MySizes.spaceBtwSection),

              ///Coupon TextField
              const MyCouponCode(),
              const SizedBox(height: MySizes.spaceBtwSection),

              ///Billing Section
              MyCircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColor.black : MyColor.white,
                child: const Column(
                  children: [
                    ///Pricing
                    MyBillingAmountSection(),
                    SizedBox(height: MySizes.spaceBtwItem),

                    ///Divider
                    Divider(),
                    SizedBox(height: MySizes.spaceBtwItem),

                    ///Payment Method
                    MyBillingPaymentSection(),
                    SizedBox(height: MySizes.spaceBtwItem),

                    ///Address
                    MyBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: MyImages.paymentSuccess,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon!',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )),
          child: const Text('Checkout ₹1499'),
        ),
      ),
    );
  }
}
