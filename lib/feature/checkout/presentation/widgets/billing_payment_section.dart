import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/text/section_heading.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBillingPaymentSection extends StatelessWidget {
  const CBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CSectionHeading(
          title: 'Payment Methord',
          buttonTitle: 'Change',
          // onPressed: () => controller.selectPaymentMethord(context)
        ),
        const SizedBox(height: CSizes.spaceBtwItem / 2),
        Row(
          children: [
            CRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: CColors.whiteColor,
              padding: const EdgeInsets.all(CSizes.sm),
              child: Icon(Icons.card_giftcard),
              // Image(
              //   image: AssetImage(
              //     "controller.selectedPaymentMethord.value.image",
              //   ),
              //   fit: BoxFit.contain,
              // ),
            ),
            const SizedBox(width: CSizes.spaceBtwItem / 2),
            Text("Name", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
