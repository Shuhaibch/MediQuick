
import 'package:medi_cart/core/commen/widgets/images/c_svg_image.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CTextFormFeildWidget extends StatefulWidget {
  const CTextFormFeildWidget({
    super.key,
    required this.hintText,
    this.label,
    this.isRequired = false,
    this.suffixIconColor,
    this.maxLine = 1,
    this.prefixIconColor,
    this.suffixIconUrl,
    this.isPassword = false,
    this.isShowSuffixIcon = false,
    this.isShowPrefixIcon = false,
    this.onSuffixTap,
    this.isIcon = false,
    this.readOnly = false,
    this.icon,
    this.onTap,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.validator,
    this.onChanged,
  });
  final String? hintText, label;
  final bool isRequired;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final String? suffixIconUrl;
  final bool isPassword;
  final bool isShowSuffixIcon;
  final bool isShowPrefixIcon;
  final void Function(String)? onChanged;
  final int maxLine;
  final Function? onSuffixTap;
  final bool isIcon, readOnly;
  final IconData? icon;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  State<CTextFormFeildWidget> createState() => _CTextFormFeildWidgetState();
}

class _CTextFormFeildWidgetState extends State<CTextFormFeildWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final height = CDeviceUtils.getScreenheight(context);
    final width = CDeviceUtils.getScreenWidth(context);
    return TextFormField(
      controller: widget.controller,
      readOnly: widget.readOnly,
      onChanged: widget.onChanged,
      maxLines: widget.maxLine,
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      validator: widget.validator,
      // maxLength: 1,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(color: CColors.darkGreyColor),
        labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: CColors.darkGreyColor,
          overflow: TextOverflow.ellipsis,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: CColors.primaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: CColors.darkGreyColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: CColors.darkGreyColor),
        ),
        label: widget.label != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      widget.label!,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(width: CSizes.sm),
                  widget.isRequired
                      ? Text("*", style: Theme.of(context).textTheme.labelLarge)
                      : const SizedBox.shrink(),
                ],
              )
            : null,
        suffixIcon: widget.isShowSuffixIcon
            ? widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).hintColor.withOpacity(0.3),
                      ),
                      onPressed: _toggle,
                    )
                  : widget.isIcon
                  ? IconButton(
                      hoverColor: Colors.transparent,
                      onPressed: widget.onSuffixTap as void Function()?,
                      icon: widget.icon != null
                          ? Icon(
                              widget.icon,
                              size: height * .025,
                              color: widget.suffixIconColor,
                            )
                          : CustomAssetImageWidget(
                              widget.suffixIconUrl!,
                              width: width * .025,
                              height: height * .025,
                              color: widget.suffixIconColor,
                            ),
                    )
                  : widget.suffixIcon
            : null,
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
