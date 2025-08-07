import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_cart/core/commen/widgets/images/c_circular_image.dart';
import 'package:medi_cart/core/commen/widgets/text/section_heading.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/image_string.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:medi_cart/feature/profile/widgets/change_name.dart';
import 'package:medi_cart/feature/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);

    return Scaffold(
      //* appbar
      appBar: AppBar(
        backgroundColor: CColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cart',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: CColors.primaryColor),
        ),
      ),
      //* body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(width * 0.02),
          child: Column(
            children: [
              //* Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CCircularImage(
                      image: CIMages.productIMG,
                      width: 80,
                      height: 80,
                      isNetworkImage: true,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              //* Details
              const SizedBox(height: CSizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItem),

              //* Heading Profile Info
              const CSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: CSizes.spaceBtwItem),

              CProfileMenu(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CChangeNameScreen()),
                ),
                title: "Name",
                value: "User Name",
              ),
              CProfileMenu(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CChangeNameScreen()),
                ),
                title: "Name",
                value: "User Name",
              ),

              // CProfileMenu(
              //     onPressed: () => Get.to(() => const CChangeNameScreen()),
              //     title: "UserName",
              //     value: controller.user.value.username),
              const SizedBox(height: CSizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItem),

              //* Heading Personal Info
              const CSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: CSizes.spaceBtwItem),

              //*
              CProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: "123",
                icon: Iconsax.copy,
              ),
              CProfileMenu(
                onPressed: () {},
                title: "E-mail",
                value: 'User@mail',
              ),
              CProfileMenu(
                onPressed: () {},
                title: "Phone Number",
                value: '1234567890',
              ),
              CProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),
              CProfileMenu(
                onPressed: () {},
                title: "Data of Birth",
                value: "12 Oct 1999",
              ),
              const Divider(),
              const SizedBox(height: CSizes.spaceBtwItem),

              //* Close Account
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
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
