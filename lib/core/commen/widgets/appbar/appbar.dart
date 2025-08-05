import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';
import 'package:medi_cart/core/utils/helpers/helper_functions.dart';

class CAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CAppbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.bgColor = CColors.whiteColor,
    this.showDivider = false,
    this.isHome = false,
  });

  final Widget? title;
  final bool showBackArrow, showDivider, isHome;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: AppBar(
        surfaceTintColor: CColors.greyColor,
        backgroundColor: bgColor,
        flexibleSpace: isHome
            ? Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [CColors.primaryColor, CColors.secondaryColor],
                    begin: Alignment.centerLeft, // Gradient start point
                    end: Alignment.centerRight, // Gradient end point
                  ),
                ),
              )
            : null,
        bottom: showDivider
            ? PreferredSize(
                preferredSize: preferredSize,
                child: Divider(color: CColors.greyColor),
              )
            : null,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark
                      ? CColors.whiteColor
                      : isHome
                      ? CColors.whiteColor
                      : CColors.blackColor,
                ),
              )
            : leadingIcon,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(CDeviceUtils.getAppBarHeight() + 10);
}
