// import 'package:medi_cart/commen/widgets/images/c_svg_image.dart';
// import 'package:medi_cart/core/utils/constants/sizes.dart';
// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextFieldWidget extends StatefulWidget {
//   final String? hintText;
//   final TextEditingController? controller;
//   final FocusNode? focusNode;
//   final FocusNode? nextFocus;
//   final TextInputType inputType;
//   final TextInputAction inputAction;
//   final Color? fillColor;
//   final int maxLines;
//   final bool isPassword;
//   final bool isCountryPicker;
//   final bool isShowBorder;
//   final bool isIcon;
//   final bool isShowSuffixIcon;
//   final bool isShowPrefixIcon;
//   final Function? onTap;
//   final Function? onChanged;
//   final Function? onSuffixTap;
//   final String? suffixIconUrl;
//   final String? prefixIconUrl;
//   final bool isSearch;
//   final Function? onSubmit;
//   final bool isEnabled;
//   final TextCapitalization capitalization;
//   final InputDecoration? inputDecoration;
//   final String? Function(String?)? onValidate;
//   final double? radius;
//   final Color? suffixIconColor;
//   final Color? prefixIconColor;
//   final Color? borderColor;
//   final String? label;
//   final bool isRequired;

//   final String? countryDialCode;
//   final Function(CountryCode countryCode)? onCountryChanged;

//   const CustomTextFieldWidget({
//     super.key,
//     this.hintText,
//     this.controller,
//     this.focusNode,
//     this.nextFocus,
//     this.isEnabled = true,
//     this.inputType = TextInputType.text,
//     this.inputAction = TextInputAction.next,
//     this.maxLines = 1,
//     this.onSuffixTap,
//     this.fillColor,
//     this.onSubmit,
//     this.onChanged,
//     this.capitalization = TextCapitalization.none,
//     this.isCountryPicker = false,
//     this.isShowBorder = false,
//     this.isShowSuffixIcon = false,
//     this.isShowPrefixIcon = false,
//     this.onTap,
//     this.isIcon = false,
//     this.isPassword = false,
//     this.suffixIconUrl,
//     this.prefixIconUrl,
//     this.isSearch = false,
//     this.inputDecoration,
//     this.onValidate,
//     this.radius,
//     this.suffixIconColor,
//     this.prefixIconColor,
//     this.borderColor,
//     this.onCountryChanged,
//     this.countryDialCode,
//     this.label,
//     this.isRequired = false,
//   });

//   @override
//   State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
// }

// class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     // Size size = MediaQuery.of(context).size;

//     return TextFormField(
//       maxLines: widget.maxLines,
//       controller: widget.controller,
//       focusNode: widget.focusNode,
//       style: Theme.of(context).textTheme.displayMedium!.copyWith(
//             color: Theme.of(context).textTheme.bodyLarge!.color,
//           ),
//       textInputAction: widget.inputAction,
//       keyboardType: widget.inputType,
//       cursorColor: Theme.of(context).primaryColor,
//       textCapitalization: widget.capitalization,
//       enabled: widget.isEnabled,
//       autofocus: false,
//       //onChanged: widget.isSearch ? widget.languageProvider.searchLanguage : null,
//       obscureText: widget.isPassword ? _obscureText : false,
//       inputFormatters: widget.inputType == TextInputType.phone
//           ? <TextInputFormatter>[
//               FilteringTextInputFormatter.allow(RegExp('[0-9+]'))
//             ]
//           : null,
//       decoration: widget.inputDecoration ??
//           InputDecoration(
//             focusedBorder: getBorder(widget.radius ?? CSizes.cardRadiusLg),
//             disabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               borderSide: BorderSide(
//                 width: 0.2,
//                 color: Theme.of(context).primaryColor.withValues(),
//               ),
//             ),
//             label: widget.label != null
//                 ? Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(widget.label!),
//                       const SizedBox(width: CSizes.sm),
//                       widget.isRequired
//                           ? Text(
//                               "*",
//                             )
//                           : const SizedBox.shrink(),
//                     ],
//                   )
//                 : null,
//             // labelStyle: robotoRegular.copyWith(
//             //   color: Theme.of(context).textTheme.bodyMedium?.color,
//             // ),
//             // enabledBorder: getBorder(widget.radius ?? Dimensions.radiusDefault),
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
//             // border: getBorder(widget.radius ?? Dimensions.radiusDefault),
//             isDense: true,
//             // hintText:
//             //     widget.hintText ?? getTranslated('write_something', context),
//             fillColor: widget.fillColor ?? Theme.of(context).cardColor,
//             // hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
//             //     fontSize: Dimensions.fontSizeSmall,
//             //     color: Theme.of(context).hintColor.withValues(0.7)),
//             filled: true,
//             prefixIcon: widget.isShowPrefixIcon
//                 ? Padding(
//                     padding: const EdgeInsets.only(
//                         left: CSizes.sm, right: CSizes.sm),
//                     child: CustomAssetImageWidget(widget.prefixIconUrl!,
//                         color: widget.prefixIconColor ??
//                             Theme.of(context).textTheme.bodyLarge?.color),
//                   )
//                 : widget.countryDialCode != null
//                     ? Padding(
//                         padding: EdgeInsets.only(
//                             left: widget.isShowBorder == true ? 10 : 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             // CodePickerWidget(
//                             //   onChanged: widget.onCountryChanged,
//                             //   initialSelection: widget.countryDialCode,
//                             //   favorite: [widget.countryDialCode ?? ""],
//                             //   showDropDownButton: true,
//                             //   padding: EdgeInsets.zero,
//                             //   showFlagMain: true,
//                             //   showFlagDialog: true,
//                             //   dialogSize: Size(Dimensions.webMaxWidth / 2,
//                             //       size.height * 0.6),
//                             //   dialogBackgroundColor:
//                             //       Theme.of(context).cardColor,
//                             //   //barrierColor: Get.isDarkMode?Colors.black.withValues(0.4):null,
//                             //   textStyle: rubikRegular.copyWith(
//                             //     fontSize: Dimensions.fontSizeSmall,
//                             //     color: Theme.of(context)
//                             //         .textTheme
//                             //         .bodyLarge!
//                             //         .color,
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       )
//                     : null,
//             prefixIconConstraints: widget.countryDialCode != null
//                 ? null
//                 : const BoxConstraints(minWidth: 23, maxHeight: 20),
//             suffixIcon: widget.isShowSuffixIcon
//                 ? widget.isPassword
//                     ? IconButton(
//                         icon: Icon(
//                             _obscureText
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color: Theme.of(context).hintColor.withValues()),
//                         onPressed: _toggle)
//                     : widget.isIcon
//                         ? IconButton(
//                             hoverColor: Colors.transparent,
//                             onPressed: widget.onSuffixTap as void Function()?,
//                             icon: CustomAssetImageWidget(widget.suffixIconUrl!,
//                                 width: 15,
//                                 height: 15,
//                                 color: widget.suffixIconColor),
//                           )
//                         : null
//                 : null,
//           ),
//       onTap: widget.onTap as void Function()?,
//       onFieldSubmitted: (text) => widget.nextFocus != null
//           ? FocusScope.of(context).requestFocus(widget.nextFocus)
//           : widget.onSubmit != null
//               ? widget.onSubmit!(text)
//               : null,
//       onChanged: widget.onChanged as void Function(String)?,
//       validator: widget.onValidate,
//     );
//   }

//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   OutlineInputBorder getBorder(double radius) => OutlineInputBorder(
//         borderRadius: BorderRadius.circular(radius),
//         borderSide: BorderSide(
//           style: widget.isShowBorder ? BorderStyle.solid : BorderStyle.none,
//           width: widget.isShowBorder ? 1 : 0,
//           color:
//               widget.borderColor ?? Theme.of(context).primaryColor.withValues(),
//         ),
//       );
// }
