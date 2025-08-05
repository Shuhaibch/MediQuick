
import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';


class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key, this.color = CColors.whiteColor});

  final Color? color;
  @override
  Widget build(BuildContext context) {
    // final width = CDeviceUtils.getScreenWidth(cont∏ntext);
    return ListView(
      children: [
        SizedBox(height: CSizes.sm),
        // ConstrainedBox(
        //   constraints: BoxConstraints(
        //     maxHeight: height * .25,
        //     maxWidth: width * .5,
        //   ),
        //   child: CustomAssetImageWidget(CIMages.nodataImg, fit: BoxFit.contain),
        // ),
        Text(
          "List is Empty",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: color),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
