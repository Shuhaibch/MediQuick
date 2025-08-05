import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/images/c_svg_image.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/feature/home/data/dummy_category.dart';

class HomeCategroriesTileWidget extends StatelessWidget {
  const HomeCategroriesTileWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.15,
      child: ListView.separated(
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        separatorBuilder: (context, index) => SizedBox(width: width * 0.02),
        itemBuilder: (context, index) {
          return SizedBox(
            width: width * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CRoundedContainer(
                  // height: width * 0.1,
                  height: height * 0.13,
                  width: width * 0.1,
                  radius: 12,
                  backgroundColor: CColors.accentColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: CRoundedContainer(
                          radius: 50,
                          padding: const EdgeInsets.all(8),
                          child: CustomAssetImageWidget(
                            categories[index].image,
                            width: width * 0.04,
                            height: width * 0.04,
                            fit: BoxFit.contain,
                            color: CColors.primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
