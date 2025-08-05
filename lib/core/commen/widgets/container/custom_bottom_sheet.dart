import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetWidget extends StatelessWidget {
  const CustomBottomSheetWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: CSizes.defaultSpace,
            ),
            child: Column(
              children: [
                const SizedBox(height: CSizes.xl),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_support,
                      color: CColors.errorColor,
                      size: height * .08,
                    ),
                    const SizedBox(height: CSizes.md),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge!.copyWith(fontSize: 18),
                    ),
                    SizedBox(height: height * .05),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: onPressed,
                              style: const ButtonStyle(
                                side: WidgetStatePropertyAll(
                                  BorderSide(color: CColors.primaryColor),
                                ),
                                backgroundColor: WidgetStatePropertyAll(
                                  CColors.whiteColor,
                                ),
                                foregroundColor: WidgetStatePropertyAll(
                                  CColors.secondaryColor,
                                ),
                              ),
                              child: Text("Yes"),
                            ),
                          ),
                        ),
                        const SizedBox(width: CSizes.md),
                        Expanded(
                          child: SizedBox(
                            // width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                
                              },
                              child: Text("No"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * .05),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
