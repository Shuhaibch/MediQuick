import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/shimmer/shimmer_loader.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBoxesShimmer extends StatelessWidget {
  const CBoxesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CShimmerEffect(width: 150, height: 110)),
            SizedBox(width: CSizes.spaceBtwItem),
            Expanded(child: CShimmerEffect(width: 150, height: 110)),
            SizedBox(width: CSizes.spaceBtwItem),
            Expanded(child: CShimmerEffect(width: 150, height: 110)),
          ],
        ),
      ],
    );
  }
}
