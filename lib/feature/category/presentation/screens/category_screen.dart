import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);
    return Scaffold(
      drawer: Drawer(backgroundColor: CColors.accentColor),
      appBar: AppBar(
        backgroundColor: CColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: CColors.primaryColor),
        ),
        title: Text(
          'Categories',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: CColors.primaryColor),
        ),
      ),
      body: Column(
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
          Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              children: [
                CategoryTileWidget(title: 'Medical Devices'),
                SizedBox(height: height * 0.005),
                CategoryTileWidget(title: 'Medical Consumables'),
                SizedBox(height: height * 0.005),
                CategoryTileWidget(title: 'Surgical Instruments'),
                SizedBox(height: height * 0.005),
                CategoryTileWidget(title: 'General Consumables'),
                SizedBox(height: height * 0.005),
                CategoryTileWidget(title: 'Therapeutic'),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: SizedBox(
              width: width * 0.9,
              child: ElevatedButton(onPressed: () {}, child: Text('Filter')),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTileWidget extends StatelessWidget {
  const CategoryTileWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_right_sharp),
        ),
      ],
    );
  }
}
