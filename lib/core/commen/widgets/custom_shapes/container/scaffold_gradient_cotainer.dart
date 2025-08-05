import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CScaffoldGradientContainer extends StatelessWidget {
  const CScaffoldGradientContainer({
    super.key,
    this.width,
    this.height,
    this.radius = CSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = CColors.borderPrimaryColor,
    this.backgroundColor = CColors.whiteColor,
    this.padding,
    this.margin,
  });
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [CColors.primaryColor, CColors.secondaryColor],
              begin: Alignment.centerLeft, // Gradient start point
              end: Alignment.centerRight, // Gradient end point
            ),
            color: backgroundColor,
            borderRadius: BorderRadius.circular(0),
            border: showBorder ? Border.all(color: borderColor) : null,
          ),
          child: child,
        ),
      ],
    );
  }
}
