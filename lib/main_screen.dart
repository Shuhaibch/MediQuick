import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/feature/cart/cart_screen.dart';
import 'package:medi_cart/feature/category/presentation/screens/category_screen.dart';
import 'package:medi_cart/feature/home/presentation/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screenList = [
    const HomeScreen(),
    const CategoryScreen(),
    const CartScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CColors.whiteColor,
        showSelectedLabels: true,
        selectedItemColor: CColors.primaryColor,
        unselectedItemColor: CColors.darkGreyColor,
        showUnselectedLabels: true,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedLabelStyle: Theme.of(
          context,
        ).textTheme.labelLarge!.copyWith(color: CColors.primaryColor),
        unselectedLabelStyle: Theme.of(
          context,
        ).textTheme.labelLarge!.copyWith(color: CColors.primaryColor),
        currentIndex: index,
        selectedIconTheme: const IconThemeData(color: CColors.primaryColor),
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2_copy, size: 25),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.category, size: 25),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag, size: 25),
            label: 'Cart',
          ),
        ],
      ),
      body: screenList[index],
    );
  }
}
