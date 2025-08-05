import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';

class CustomerTextFormFeild extends StatefulWidget {
  const CustomerTextFormFeild({
    super.key,
    this.isCustomer = false,
    this.hintText,
    this.onTap,
    this.controller,
    this.suffix,
    this.onChanged,
    this.keyboardType,
    this.validator,
  });
  final bool isCustomer;
  final String? hintText;
  final void Function()? onTap;
  final TextEditingController? controller;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  State<CustomerTextFormFeild> createState() => _CustomerTextFormFeildState();
}

class _CustomerTextFormFeildState extends State<CustomerTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.isCustomer ? true : false,
      validator: widget.validator,
      cursorColor: CColors.blackColor,
      onTap: widget.onTap,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      autocorrect: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CColors.darkGreyColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: CColors.darkGreyColor),
        ),
        isDense: true,
        hintText: widget.hintText ?? "Write Something",
        suffix: widget.suffix,
        suffixIconConstraints: const BoxConstraints(minWidth: 2, minHeight: 2),
        hintStyle: Theme.of(
          context,
        ).textTheme.labelLarge!.copyWith(fontSize: 15),
      ),
    );
  }
}
