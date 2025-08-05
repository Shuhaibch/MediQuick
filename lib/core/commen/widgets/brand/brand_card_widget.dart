import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/images/c_circular_image.dart';
import 'package:medi_cart/core/commen/widgets/text/brand_title_with_verification_icon.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/enum.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CBrandCard extends StatelessWidget {
  const CBrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CRoundedContainer(
        padding: const EdgeInsets.all(CSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //* icon
            Flexible(
              child: CCircularImage(
                image:
                    "https://imgs.search.brave.com/Vz_s4CCe5KKdVD-JrE8cah149HK7sjCdZ-fwsLpOgHI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9sb2dv/c2Rvd24uY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIzLzA4/L3BoaWxpcHMtbG9n/by0wLTIwNDh4MjA0/OC0xLnBuZw",
                isNetworkImage: true,
                backgroundColor: Colors.transparent,
                overlayColor: CColors.blackColor,
              ),
            ),
            const SizedBox(width: CSizes.spaceBtwItem / 2),

            //* Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CBrandTitleWithVerificationIcon(
                    title: "Philips",

                    brandTextSize: TextSizes.medium,
                  ),
                  Text(
                    '${10} products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
