import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CColorHelperFunction {
  CColorHelperFunction._();

  static Color paidTextColor(double dueAmount) {
    return dueAmount > 0 ? CColors.errorColor : CColors.darkGreenColor;
  }

  static Color paidContainerColor(double dueAmount) {
    return dueAmount > 0 ? CColors.redWhiteColor : CColors.greenWhiteColor;
  }
}
