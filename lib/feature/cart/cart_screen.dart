import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/feature/cart/widgets/cart_items.dart';
import 'package:medi_cart/feature/checkout/presentation/screens/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: CCartItems(),
        ),
      ),

      // body: Obx(
      //   () {
      //     // Nothing found widget
      //     final emptyWidget = CAnimationLoaderWidget(
      //       text: 'Whoops! Cart is EMPTY.',
      //       animation: CIMages.emptyWhishlistLotties,
      //       showAction: true,
      //       actionText: 'Let\'s fill it',
      //       onActionPressed: () => Get.off(
      //         () => const NavigationMenu(),
      //       ),
      //     );
      //     if (controller.cartItem.isEmpty) {
      //       return emptyWidget;
      //     } else {
      //       return const SingleChildScrollView(
      //         child: Padding(
      //           padding: EdgeInsets.all(CSizes.defaultSpace),
      //           child: CCartItems(),
      //         ),
      //       );
      //     }
      //   },
      // ),

      //* Bottom Navigation Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (_) => const CheckoutScreen())),
          child: Text('Checkout \$${100}'),
        ),
        //  controller.cartItem.isEmpty
        //     ? const SizedBox()
        //     : ElevatedButton(
        //         onPressed: () => Get.to(() => const CheckoutScreen()),
        //         child: Obx(
        //           () => Text('Checkout \$${controller.totalCartPrice.value}'),
        //         ),
        //       ),
      ),
    );
  }
}
