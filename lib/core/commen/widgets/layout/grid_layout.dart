import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    this.mainAxisSpacing = CSizes.gridViewSpacing,
    this.crossAxisSpacing = CSizes.gridViewSpacing,
    this.crossAxisCount = 2,
    required this.itemBuilder,
  });
  final int itemCount, crossAxisCount;
  final double? mainAxisExtent, mainAxisSpacing, crossAxisSpacing;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing!,
        crossAxisSpacing: crossAxisSpacing!,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
