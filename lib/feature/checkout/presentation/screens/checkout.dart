import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_cart/core/commen/widgets/appbar/appbar.dart';
import 'package:medi_cart/core/commen/widgets/container/rounded_cotainer.dart';
import 'package:medi_cart/core/route/route_name.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/feature/cart/widgets/cart_items.dart';
import 'package:medi_cart/feature/checkout/presentation/widgets/billing_address_section.dart';
import 'package:medi_cart/feature/checkout/presentation/widgets/billing_amount_section.dart';
import 'package:medi_cart/feature/checkout/presentation/widgets/billing_payment_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              //* Items in Cart
              const CCartItems(showAddRemoveButton: false),
              const SizedBox(height: CSizes.spaceBtwSection),

              //* Coupon TextFeild
              // const CCuponCode(),
              const SizedBox(height: CSizes.spaceBtwSection),

              //* Billing Section
              CRoundedContainer(
                padding: const EdgeInsets.all(CSizes.md),
                showBorder: true,
                backgroundColor: CColors.whiteColor,
                child: const Column(
                  children: [
                    //* Pricing
                    CBillingAmountSection(),
                    SizedBox(height: CSizes.spaceBtwItem),

                    //* Devider
                    Divider(),
                    SizedBox(height: CSizes.spaceBtwItem),

                    //* Payment Methords
                    CBillingPaymentSection(),
                    SizedBox(height: CSizes.spaceBtwItem),

                    //* Shipping Address
                    CBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //* Bottom Navigation
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(CRouteName.mainRoute);
          },
          //  subTotal > 0
          //     ? () => orderController.processOrder(totalAmount)
          //     : () => CLoaders.warnigSnackBar(
          //         title: 'Empty Cart', message: 'Add item in cart'),
          child: Text('Checkout \$${100}'),
        ),
      ),
    );
  }
}
