

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:medi_cart/core/commen/widgets/appbar/appbar.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/validator/validator.dart';

class CChangeNameScreen extends StatelessWidget {
  const CChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Appbar
      appBar: CAppbar(
        showBackArrow: true,
        title: Text('Change Name',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * heading
            Text(
              'Use real name for easy vcerification. This name will appear on several pages.',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: CSizes.spaceBtwItem),

            //* Text feild and button
            Form(
              // key: controller.updateUserNameFormKey,
              child: Column(
                children: [
                  TextFormField(
                    // controller: controller.firstName,
                    validator: (value) =>
                        CValidator.validateEmptyText('First Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFeild),
                  TextFormField(
                    // controller: controller.lastName,
                    validator: (value) =>
                        CValidator.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: CSizes.spaceBtwSection),

            //* Save Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}
