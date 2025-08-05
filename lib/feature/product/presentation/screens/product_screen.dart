import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:medi_cart/feature/home/data/dummy_category.dart';
import 'package:medi_cart/feature/product/presentation/widgets/product_certificate_widget.dart';
import 'package:medi_cart/feature/product/presentation/widgets/product_description_tile_widget.dart';
import 'package:readmore/readmore.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);
    return Scaffold(
      backgroundColor: CColors.accentColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CColors.accentColor,
        elevation: 0,
        centerTitle: true,
        title: Text('Product', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CRoundedImage(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNLQM9zPShEk8QmJYfXsHu9CwFTqlFkXuzg&s',
                  isNetworkImage: true,
                  width: width,
                  fit: BoxFit.cover,
                  height: height * 0.25,
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$800',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'Product',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '\$100',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),

                        Text(
                          ' | ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'EMI',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                ReadMoreText(
                  'Declaration of Importer: Direct import by the individual customerMarketed by: Nike Global Trading B.V. Singapore Branch, 30 Pasir Panjang Road, #10-31/32, Mapletree Business City, Singapore 117 440 Net Quantity: 1 Pair',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' Less',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: CColors.primaryColor,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'Products Certification',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: height * 0.01),
                SizedBox(
                  height: height * 0.1,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: width * 0.02),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return ProductCertificateWidget(
                        height: height,
                        width: width,
                      );
                    },
                  ),
                ),

                SizedBox(height: height * 0.03),
                Text(
                  'Products Description',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Dimension',
                      subTitle: '20 x 20 x 20 cm',
                    ),
                    SizedBox(width: width * 0.02),
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Capacity',
                      subTitle: '500 ml',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Weight',
                      subTitle: '10 kg',
                    ),
                    SizedBox(width: width * 0.02),
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Capacity',
                      subTitle: '500 ml',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Weight',
                      subTitle: '10 kg',
                    ),
                    SizedBox(width: width * 0.02),
                    ProductDescriptionTileWidget(
                      width: width,
                      title: 'Capacity',
                      subTitle: '500 ml',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: height * 0.09,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: width * 0.02,
            left: width * 0.02,
            right: width * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CRoundedContainer(
                  radius: 50,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                  child: Row(
                    children: [
                      CRoundedContainer(
                        radius: 50,
                        backgroundColor: CColors.accentColor,
                        child: SizedBox(
                          width: height * 0.03,
                          height: height * 0.03,
                          child: Icon(
                            Icons.remove,
                            color: CColors.primaryColor,
                            size: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      const Center(
                        child: Text(
                          '1',
                          style: TextStyle(color: CColors.primaryColor),
                        ),
                      ),
                      SizedBox(width: width * 0.01),

                      CRoundedContainer(
                        radius: 50,
                        backgroundColor: CColors.primaryColor,
                        child: SizedBox(
                          width: height * 0.03,
                          height: height * 0.03,
                          child: Icon(
                            Icons.add,
                            color: CColors.whiteColor,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CRoundedContainer(
                    radius: 50,
                    backgroundColor: CColors.primaryColor,
                    child: const Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(color: CColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
