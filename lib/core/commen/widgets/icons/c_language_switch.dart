import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';

class LanguageSwitchButtonWidget extends StatelessWidget {
  const LanguageSwitchButtonWidget({
    super.key,
    required this.onOff,
    this.onChanged,
  });
  final bool onOff;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: CColors.primaryColor,
      inactiveTrackColor: CColors.accentColor,
      inactiveThumbColor: CColors.primaryColor,
      value: onOff,
      onChanged: onChanged,
    );
  }
}
