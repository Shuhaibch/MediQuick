import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/commen/widgets/layout/grid_layout.dart';
import 'package:medi_cart/core/commen/widgets/text/section_heading.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';

class CCategoryTab extends StatelessWidget {
  const CCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //* Brand
              // CategoryBrand(category: category),

              //* Products
              // FutureBuilder(
              //   future: controller.getCategoryProducts(categoryId: category.id),
              //   builder: (context, snapshot) {
              //     //* error handling
              //     final response = CCloudHelperFuntion.checkMultiRecordState(
              //       snapshot: snapshot,
              //       loader: const CVerticalProductShimmer(),
              //     );
              //     if (response != null) return response;

              //     //* get data
              //     return Column(
              //       children: [
              //         CSectionHeading(title: 'You might like'),
              //         const SizedBox(height: CSizes.spaceBtwItem),

              //         //* like Product List
              //         CGridLayout(
              //           itemCount: 10,
              //           itemBuilder: (_, index) =>
              //               FeaturedMedicalDevicesListCard(height: height, width: width),
              //         ),
              //       ],
              //     );
              //   },
              // ),
              Container(
                color: CColors.whiteColor,
                child: Column(
                  children: [
                    CSectionHeading(title: 'You might like'),
                    const SizedBox(height: CSizes.spaceBtwItem),

                    //* like Product List
                    CGridLayout(
                      itemCount: 10,
                      mainAxisExtent: height * 0.2,
                      itemBuilder: (_, index) => CRoundedImage(
                        showBorder: true,
                        imageUrl: index % 2 == 0
                            ? "https://cdn10.bigcommerce.com/s-p10g1rn/product_images/uploaded_images/shutterstock-414452563-ecg2.jpg?t=1531231548"
                            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNLQM9zPShEk8QmJYfXsHu9CwFTqlFkXuzg&s',
                        isNetworkImage: true,
                        width: width * 0.15,
                        fit: BoxFit.cover,
                        height: height * 0.1,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: CSizes.spaceBtwSection),
            ],
          ),
        ),
      ],
    );
  }
}

// const CBrandShowCase(
//                 images: [
//                   CIMages.productShoes,
//                   CIMages.productShoes2,
//                   CIMages.productWatch2
//                 ],
//                 brand: ,
//               ),
