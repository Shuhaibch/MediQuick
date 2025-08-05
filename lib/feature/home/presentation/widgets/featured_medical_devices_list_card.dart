import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/route/route_name.dart';

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
        itemCount: 10,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            context.pushNamed(CRouteName.productRoute);
          },
          child: CRoundedImage(
            showBorder: true,
            imageUrl: index % 2 == 0
                ? "https://cdn10.bigcommerce.com/s-p10g1rn/product_images/uploaded_images/shutterstock-414452563-ecg2.jpg?t=1531231548"
                : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNLQM9zPShEk8QmJYfXsHu9CwFTqlFkXuzg&s',
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
