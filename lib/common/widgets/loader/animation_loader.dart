import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mad_project/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';

class MyAnimationLoaderWidget extends StatelessWidget {
  ///default constructor for the MyAnimationLoaderWidget
  ///
  /// Parameter:
  ///   -text:The text to be displayed below the animation
  ///   -animation: The path to the animation file
  ///   -showAction: Whether to show an action button below the text
  ///   -actionText: The text to bo displayed on the action button
  ///   -onActionPressed: callback function to be executed when action button is used
  const MyAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: MySizes.defaultSpace),
          Text(text, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center),
          const SizedBox(height: MySizes.defaultSpace),
          showAction ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPressed,
              style: OutlinedButton.styleFrom(backgroundColor: MyColor.dark),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColor.light),
              ),
            ),

          ): const SizedBox(),
        ],
      ),
    );
  }
}
