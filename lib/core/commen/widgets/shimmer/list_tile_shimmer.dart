import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/shimmer/shimmer_loader.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CListTileShimmer extends StatelessWidget {
  const CListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CShimmerEffect(width: 50, height: 50, radius: 50),
            SizedBox(width: CSizes.spaceBtwItem),
            Column(
              children: [
                CShimmerEffect(width: 100, height: 15),
                SizedBox(width: CSizes.spaceBtwItem / 2),
                CShimmerEffect(width: 80, height: 12),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
