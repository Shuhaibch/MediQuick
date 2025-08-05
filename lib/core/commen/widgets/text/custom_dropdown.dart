import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';

class CustomDropDownFeild extends StatelessWidget {
  const CustomDropDownFeild({
    super.key,
    required this.items,
    this.onChanged,
    required this.label,
    this.prefixIcon,
    this.validator,
  });
  final List<String> items;
  final void Function(String?)? onChanged;
  final String label;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: items[0],
      items: items.map((String role) {
        return DropdownMenuItem<String>(value: role, child: Text(role));
      }).toList(),
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
        label: Text(label),
        floatingLabelStyle: const TextStyle().copyWith(
          color: Colors.black.withValues(alpha: .8),
        ),
        focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(width: 1, color: Colors.black12),
        ),
        disabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(width: 1, color: CColors.greyColor),
        ),
        enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(width: 1, color: CColors.greyColor),
        ),
        border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(width: 1, color: CColors.greyColor),
        ),
        isDense: true,
        hintText: label,
        fillColor: CColors.whiteColor,
        hintStyle: const TextStyle().copyWith(
          fontSize: 14,
          color: CColors.greyColor,
        ),
        prefixIcon: prefixIcon,
        labelStyle: const TextStyle().copyWith(
          fontSize: 14,
          color: CColors.greyColor,
        ),
      ),
    );
  }
}
