
import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBillingAmountSection extends StatelessWidget {
  const CBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* SubTotol
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItem / 2),

        //* Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text(
                '\$${100}',
                style: Theme.of(context).textTheme.labelLarge),
          ],
        ),

        //* Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text(
                '\$${100}',
                style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: CSizes.spaceBtwItem / 2),

        //* Total Order
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Oder', style: Theme.of(context).textTheme.bodyMedium),
            Text(
                '\$100}',
                style: Theme.of(context).textTheme.labelLarge),
          ],
        )
      ],
    );
  }
}
