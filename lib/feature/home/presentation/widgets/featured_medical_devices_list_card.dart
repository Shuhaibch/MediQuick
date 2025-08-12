import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/route/route_name.dart';
import 'package:medi_cart/feature/home/data/dummy_category.dart';

class FeaturedMedicalDevicesListCard extends StatelessWidget {
  const FeaturedMedicalDevicesListCard({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.19,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(width: width * 0.01),
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            context.pushNamed(CRouteName.productRoute);
          },
          child: CRoundedImage(
            showBorder: true,
            imageUrl: imageList[index],
            isNetworkImage: true,
            width: width * 0.15,
            fit: BoxFit.cover,
            height: height * 0.15,
          ),
        ),
      ),
    );
  }
}
