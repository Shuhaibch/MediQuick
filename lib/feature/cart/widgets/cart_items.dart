import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/products/cart/add_or_remove_button.dart';
import 'package:medi_cart/core/commen/widgets/products/cart/cart_item.dart';
import 'package:medi_cart/core/commen/widgets/text/product_price_text.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';

class CCartItems extends StatelessWidget {
  const CCartItems({super.key, this.showAddRemoveButton = true});
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    final width = CDeviceUtils.getScreenWidth(context);
    final height = CDeviceUtils.getScreenheight(context);

    return ListView.separated(
      separatorBuilder: (_, __) => SizedBox(
        height: height * 0.01,

        child: Divider(thickness: 1, color: CColors.accentColor),
      ),

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CCartItem(),
            if (showAddRemoveButton) SizedBox(height: height * 0.01),
            if (showAddRemoveButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //* Extra space to align with picture
                      const SizedBox(width: 70),

                      //* Add Remove Button
                      CProductQuantityWithAddOrRemoveButton(
                        quantity: 10,
                        // add: () => cartController.addOneToCart(item),
                        // remove: () => cartController.removeOneFromCart(item),
                      ),
                    ],
                  ),

                  //* Product Total Price
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.01),
                    child: CProductPriceText(price: ('100')),
                  ),
                ],
              ),
            SizedBox(height: height * 0.01),
          ],
        );
      },
    );

    // Obx(
    //   () => ListView.separated(
    //     shrinkWrap: true,
    //     separatorBuilder: (_, __) =>
    //         const SizedBox(height: CSizes.spaceBtwSection),
    //     itemCount: cartController.cartItem.length,
    //     itemBuilder: (_, index) => Obx(() {
    //       final item = cartController.cartItem[index];
    //       return Column(
    //         children: [
    //           CCartItem(cartItem: item),
    //           if (showAddRemoveButton)
    //             const SizedBox(height: CSizes.spaceBtwItem),
    //           if (showAddRemoveButton)
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Row(
    //                   children: [
    //                     //* Extra space to align with picture
    //                     const SizedBox(width: 70),

    //                     //* Add Remove Button
    //                     CProductQuantityWithAddOrRemoveButton(
    //                       quantity: item.quantity,
    //                       add: () => cartController.addOneToCart(item),
    //                       remove: () => cartController.removeOneFromCart(item),
    //                     ),
    //                   ],
    //                 ),

    //                 //* Product Total Price
    //                 CProductPriceText(
    //                   price: (item.price * item.quantity).toStringAsFixed(1),
    //                 ),
    //               ],
    //             ),
    //         ],
    //       );
    //     }),
    //   ),
    // );
  }
}
