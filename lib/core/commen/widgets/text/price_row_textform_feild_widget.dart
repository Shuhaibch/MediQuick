import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PriceRowTextFormFeildWidget extends StatelessWidget {
  const PriceRowTextFormFeildWidget({
    super.key,
    required this.height,
    this.textColor = CColors.whiteColor,
    required this.title,
    this.isReadOnly = false,
    this.controller,
    this.onChanged,
    this.isProduct = false,
  });

  final double height;
  final Color textColor;
  final TextEditingController? controller;
  final bool isReadOnly, isProduct;
  final void Function(String)? onChanged;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: isProduct
                ? Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: isReadOnly ? CColors.limeGreenColor : textColor,
                  )
                : Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: isReadOnly ? CColors.limeGreenColor : textColor,
                  ),
          ),
        ),
        Expanded(
          flex: 2,
          child: TextFormField(
            controller: controller,
            readOnly: isProduct ? true : isReadOnly,
            onChanged: onChanged,
            keyboardType: TextInputType.number,
            cursorColor: CColors.whiteColor,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: CColors.whiteColor),
            decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(minHeight: 0),
              enabledBorder: isReadOnly
                  ? InputBorder.none
                  : isProduct
                  ? InputBorder.none
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CColors.lightColor.withValues(alpha: .5),
                      ),
                    ),
              focusedBorder: isReadOnly
                  ? InputBorder.none
                  : isProduct
                  ? InputBorder.none
                  : UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CColors.lightColor.withValues(alpha: .5),
                      ),
                    ),
              prefixIcon: Icon(
                Icons.currency_rupee,
                size: isProduct ? height * .018 : height * .022,
                color: isReadOnly ? CColors.limeGreenColor : textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
