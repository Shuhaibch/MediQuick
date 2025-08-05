import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_cart/core/commen/widgets/icons/c_curcular_icon.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:medi_cart/core/utils/helpers/helper_functions.dart';

class CProductQuantityWithAddOrRemoveButton extends StatelessWidget {
  const CProductQuantityWithAddOrRemoveButton({
    super.key,
    required this.quantity,
    this.add,
    this.remove,
  });
  final int quantity;
  final VoidCallback? add, remove;
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    return Row(
      children: [
        CCircularIcon(
          onPressed: quantity > 0 ? remove : null,
          icon: Iconsax.minus,
          width: width * 0.03,
          height: width * 0.03,
          size: width * 0.01,
          color: CHelperFuntions.isDarkMode(context)
              ? CColors.whiteColor
              : CColors.blackColor,
          backgroundColor: CHelperFuntions.isDarkMode(context)
              ? CColors.darkerGreyColor
              : CColors.lightColor,
        ),
        const SizedBox(width: CSizes.spaceBtwItem),
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: CSizes.spaceBtwItem),
        CCircularIcon(
          icon: Iconsax.add,
          width: width * 0.03,
          height: width * 0.03,
          size: width * 0.01,
          color: CColors.whiteColor,
          backgroundColor: CColors.primaryColor,
          onPressed: add,
        ),
      ],
    );
  }
}
