import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/brand_show_case_widget.dart';

class CategoryBrand extends StatelessWidget {
  const CategoryBrand({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (_, index) {
        return CBrandShowCase();
        // return FutureBuilder(
        //     future: controller.getBrandProducts(brandId: brand.id),
        //     builder: (context, snapshot) {
        //       //* handle error
        //       final widget = CCloudHelperFuntion.checkMultiRecordState(
        //           snapshot: snapshot, loader: loader);
        //       if (widget != null) return widget;

        //       //  record found
        //       final product = snapshot.data!;
        //       return CBrandShowCase(

        //       );
        //     });
      },
    );
    // final controller = BrandController.instance;
    // return FutureBuilder(
    //     future: controller.getBrandForCategory(category.id),
    //     builder: (context, snapshot) {
    //       //* error Handler
    //       const loader = Column(
    //         children: [
    //           CListTileShimmer(),
    //           SizedBox(height: CSizes.spaceBtwItem),
    //           CBoxesShimmer(),
    //           SizedBox(height: CSizes.spaceBtwItem),
    //         ],
    //       );

    //       final widget = CCloudHelperFuntion.checkMultiRecordState(
    //           snapshot: snapshot, loader: loader);
    //       if (widget != null) return widget;

    //       //* record found
    //       final brands = snapshot.data!;
    //       return ListView.builder(
    //         shrinkWrap: true,
    //         physics: const NeverScrollableScrollPhysics(),
    //         itemCount: brands.length,
    //         itemBuilder: (_, index) {
    //           final brand = brands[index];
    //           return FutureBuilder(
    //               future: controller.getBrandProducts(brandId: brand.id),
    //               builder: (context, snapshot) {
    //                 //* handle error
    //                 final widget = CCloudHelperFuntion.checkMultiRecordState(
    //                     snapshot: snapshot, loader: loader);
    //                 if (widget != null) return widget;

    //                 //  record found
    //                 final product = snapshot.data!;
    //                 return CBrandShowCase(
    //                   images: product.map((e) => e.thumbnail).toList(),
    //                   brand: brand,
    //                 );
    //               });
    //         },
    //       );
    //     });
  }
}
