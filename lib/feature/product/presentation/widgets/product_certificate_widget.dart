import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/images/c_svg_image.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/image_string.dart';
import 'package:medi_cart/feature/home/data/dummy_category.dart';

class ProductCertificateWidget extends StatelessWidget {
  const ProductCertificateWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      borderColor: CColors.primaryColor,
      showBorder: true,

      // height: width * 0.1,
      height: height * 0.1,
      width: width * 0.1,
      radius: 12,
      backgroundColor: CColors.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CRoundedContainer(
              radius: 50,
              backgroundColor: CColors.accentColor,
              padding: const EdgeInsets.all(8),
              child: CustomAssetImageWidget(
                CIMages.certificateSVGIcon,
                width: width * 0.03,
                height: width * 0.03,
                fit: BoxFit.contain,
                color: CColors.primaryColor,
              ),
            ),
          ),
          Text(
            categories[1].name,
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
