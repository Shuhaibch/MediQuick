import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/commen/widgets/text/brand_title_with_verification_icon.dart';
import 'package:medi_cart/core/commen/widgets/text/product_title_text.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CCartItem extends StatelessWidget {
  const CCartItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //* Image
        CRoundedImage(
          // fit: BoxFit.fill,
          isNetworkImage: true,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNLQM9zPShEk8QmJYfXsHu9CwFTqlFkXuzg&s',
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(CSizes.md),
          backgroundColor: CColors.lightColor,
        ),
        const SizedBox(width: CSizes.spaceBtwItem),

        //* Title, Price, Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CBrandTitleWithVerificationIcon(title: 'Philips'),
              Flexible(child: CProductTitleText(title: 'Philips', maxLine: 1)),

              //* Attributes
              // Text.rich(
              //   TextSpan(
              //     children: (cartItem.selectedVariation ?? {})
              //         .entries
              //         .map(
              //           (e) => TextSpan(
              //             children: [
              //               TextSpan(
              //                   text: ' ${e.key} ',
              //                   style: Theme.of(context).textTheme.bodySmall),
              //               TextSpan(
              //                   text: '${e.value} ',
              //                   style: Theme.of(context).textTheme.bodyLarge),
              //             ],
              //           ),
              //         )
              //         .toList(),
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
