import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? MyColor.white : null),
        avatar: isColor ? MyCircularContainer(width: 50, height: 50, backgroundColor: MyHelperFunction.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? MyHelperFunction.getColor(text)! : null,
      ),
    );
  }
}
