
import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';

class ProductDescriptionTileWidget extends StatelessWidget {
  const ProductDescriptionTileWidget({
    super.key,
    required this.width, required this.title, required this.subTitle,
  });

  final double width;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CRoundedContainer(
        backgroundColor: CColors.whiteColor,
        radius: 12,
        padding: EdgeInsets.all(width * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
