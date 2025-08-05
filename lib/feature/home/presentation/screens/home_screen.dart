import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:medi_cart/core/commen/widgets/images/c_rounded_images.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:medi_cart/feature/home/presentation/screens/search_screen.dart';
import 'package:medi_cart/feature/home/presentation/widgets/featured_medical_devices_list_card.dart';
import 'package:medi_cart/feature/home/presentation/widgets/home_categories_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        title: Text(
          'MediQuick',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: CColors.primaryColor),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: CColors.primaryColor),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (_) => const SearchScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Iconsax.search_normal_1_copy,
                color: CColors.primaryColor,
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Text(
                'Featured Medical Devices',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(height: height * 0.02),
            FeaturedMedicalDevicesListCard(height: height, width: width),
            SizedBox(height: height * 0.03),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(height: height * 0.02),
            HomeCategroriesTileWidget(height: height, width: width),
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Text(
                'Top Offers',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(height: height * 0.02),
            CRoundedImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiNLQM9zPShEk8QmJYfXsHu9CwFTqlFkXuzg&s',
              isNetworkImage: true,
              width: width,
              fit: BoxFit.cover,
              height: height * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
