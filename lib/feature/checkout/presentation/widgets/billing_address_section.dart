import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/text/section_heading.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBillingAddressSection extends StatelessWidget {
  const CBillingAddressSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          // onPressed: () => controller.selectNewAddressPopup(context)
        ),
        // controller.selectedAddress.value.id.isNotEmpty
        //     ?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("User Name", style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: CSizes.spaceBtwItem / 2),
            Row(
              children: [
                const Icon(Icons.phone, color: Colors.grey, size: 16),
                const SizedBox(width: CSizes.spaceBtwItem),
                Text(
                  '+91 1234567890',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: CSizes.spaceBtwItem / 2),
            Row(
              children: [
                const Icon(
                  Icons.location_history,
                  color: Colors.grey,
                  size: 16,
                ),
                const SizedBox(width: CSizes.spaceBtwItem),
                Text(
                  'Address',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                ),
              ],
            ),
          ],
        ),
        // : Text('Select Address',
        //     style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
