import 'package:flutter/material.dart';

class CRoundedContainer extends StatelessWidget {
  const CRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 5,
    this.borderWidth = 1,
    this.child,
    this.showBorder = false,
    this.showShadow = false,
    this.borderColor = Colors.white10,
    this.backgroundColor = Colors.white,
    this.padding,
    this.margin,
  });
  final double? width, height;
  final double radius, borderWidth;
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
                  offset: const Offset(0, 2))
              : BoxShadow(
                  spreadRadius: 0, blurRadius: 0, color: Colors.transparent)
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
      ),
      child: child,
    );
  }
}
