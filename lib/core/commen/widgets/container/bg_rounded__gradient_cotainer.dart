import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBGGradientContainer extends StatelessWidget {
  const CBGGradientContainer({
    super.key,
    this.width,
    this.height,
    this.radius = CSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.showShadow = false,
    this.borderColor = CColors.borderPrimaryColor,
    this.backgroundColor = CColors.whiteColor,
    this.padding,
    this.margin,
  });
  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder, showShadow;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: [
          showShadow
              ? BoxShadow(
                  color: Theme.of(context).shadowColor.withValues(alpha: 0.2),
                  blurRadius: 5,
                  spreadRadius: 0.2,
                  offset: const Offset(0, 2),
                )
              : BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 0,
                  color: Colors.transparent,
                ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFFFFF), Color(0xFFC2E2C1).withValues(alpha: 0.5)],
        ),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(0),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
