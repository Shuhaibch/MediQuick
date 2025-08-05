import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductTaxTextFormFeildWidget extends StatelessWidget {
  final String amount;

  const ProductTaxTextFormFeildWidget({
    super.key,
    this.amount = '0.00',
    this.readOnly = false,
    required this.controller,
    this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    return Container(
      decoration: BoxDecoration(
        color: CColors.whiteColor.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: CColors.whiteColor.withValues(alpha: .1)),
      ),
      child: Row(
        children: [
          Container(
            width: width * 0.04,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
            decoration: BoxDecoration(
              color: CColors.blackColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                '₹', // Rupee symbol
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: CColors.whiteColor),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                readOnly: readOnly,
                // initialValue: amount,
                controller: controller,
                onChanged: onChanged,
                keyboardType: TextInputType.number,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: CColors.whiteColor),
                decoration: InputDecoration(
                  hintText: '0.00',
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: CColors.whiteColor),
                  // filled: true,
                  // fillColor: CColors.whiteColor.withValues(alpha: .1),
                  labelStyle: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: CColors.lightColor),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDiscPercentageTextFormFeildWidget extends StatelessWidget {
  final String amount;

  const ProductDiscPercentageTextFormFeildWidget({
    super.key,
    this.amount = '0.00',
    required this.controller,
    this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: CColors.primaryColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                // initialValue: amount,
                controller: controller,

                keyboardType: TextInputType.number,

                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: '0.00',
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: CColors.darkGreyColor),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            width: width * 0.04,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
            decoration: BoxDecoration(
              color: CColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(7.0),
                topRight: Radius.circular(7.0),
              ),
            ),
            child: Center(
              child: Text(
                '%',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: CColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
