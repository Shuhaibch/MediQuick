import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/brand/brand_card_widget.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/shimmer/shimmer_loader.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBrandShowCase extends StatelessWidget {
  const CBrandShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CRoundedContainer(
        showBorder: true,
        borderColor: CColors.darkGreyColor,
        padding: const EdgeInsets.all(CSizes.md),
        backgroundColor: Colors.transparent,
        margin: const EdgeInsets.only(bottom: CSizes.spaceBtwItem),
        child: Column(
          children: [
            //* Brand With Product Count
            CBrandCard(showBorder: false),
            const SizedBox(height: CSizes.spaceBtwItem),

            //* Brand Top 3 Product
            Row(
              children: ["images"]
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: CRoundedContainer(
        height: 100,
        backgroundColor: CColors.lightColor,
        margin: const EdgeInsets.only(right: CSizes.sm),
        padding: const EdgeInsets.all(CSizes.md),
        child: CachedNetworkImage(
          imageUrl: image,
          progressIndicatorBuilder: (context, url, progress) =>
              const CShimmerEffect(width: 100, height: 100),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
