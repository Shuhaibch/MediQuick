
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FilterTextContainerWidget extends StatelessWidget {
  const FilterTextContainerWidget({
    super.key,
    required this.title,
    this.isSelected = false,
  });
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      radius: 50,
      margin: EdgeInsets.all(2),
      showBorder: true,
      padding: EdgeInsets.symmetric(vertical: CSizes.xs, horizontal: CSizes.md),
      borderColor: isSelected ? CColors.primaryColor : CColors.secondaryColor,
      borderWidth: 2,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: isSelected ? CColors.primaryColor : CColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
