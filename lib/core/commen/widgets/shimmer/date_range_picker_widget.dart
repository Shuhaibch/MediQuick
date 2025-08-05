
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DateRangePickerWidget extends StatelessWidget {
  const DateRangePickerWidget({
    super.key,
    required this.startDate,
    required this.endDate,
  });

  final DateTime startDate, endDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: CSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 6,
            child: CRoundedContainer(
              radius: 8,
              // backgroundColor: CColors.w,
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  CHelperFuntions.getFormattedDate(startDate),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "To",
              style: Theme.of(
                context,
              ).textTheme.labelLarge!.copyWith(color: CColors.primaryColor),
            ),
          ),
          Expanded(
            flex: 6,
            child: CRoundedContainer(
              radius: 8,
              // backgroundColor: CColors.accentColor,
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  CHelperFuntions.getFormattedDate(endDate),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
