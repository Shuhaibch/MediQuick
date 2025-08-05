import 'package:medi_cart/core/utils/helpers/helper_functions.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/device/device_utility.dart';

class CTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? CColors.blackColor : CColors.whiteColor,
      child: TabBar(
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          color: CColors.accentColor,
          border: Border.all(color: CColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(50),
        ),
        isScrollable: false,
        indicatorPadding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        indicatorColor: CColors.accentColor,
        unselectedLabelColor: CColors.darkGreyColor,
        labelColor: CHelperFuntions.isDarkMode(context)
            ? CColors.whiteColor
            : CColors.primaryColor,
        labelPadding: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        physics: NeverScrollableScrollPhysics(),
        tabAlignment: TabAlignment.fill,
        // indicatorWeight: CSizes.md,
        dividerHeight: 0,
        labelStyle: Theme.of(context).textTheme.bodyLarge,

        indicatorSize: TabBarIndicatorSize.tab,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

class CPartyTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CPartyTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? CColors.blackColor : CColors.whiteColor,
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: CColors.primaryDarkColor,
        indicatorWeight: 3,
        isScrollable: false,
        physics: NeverScrollableScrollPhysics(),
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: CColors.primaryDarkColor,
        unselectedLabelColor: CColors.darkerGreyColor,
        padding: EdgeInsets.only(bottom: CSizes.md),
        automaticIndicatorColorAdjustment: false,
        indicatorPadding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

class CItemTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CItemTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: CColors.whiteColor,
        indicatorWeight: 3,
        isScrollable: false,
        physics: NeverScrollableScrollPhysics(),
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: CColors.whiteColor,
        unselectedLabelColor: CColors.greyColor,
        padding: EdgeInsets.only(bottom: CSizes.md),
        automaticIndicatorColorAdjustment: false,
        indicatorPadding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

class CProfileTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CProfileTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? CColors.blackColor : CColors.whiteColor,
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: CColors.primaryDarkColor,
        indicatorWeight: 3,
        isScrollable: false,
        physics: NeverScrollableScrollPhysics(),
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: CColors.primaryDarkColor,
        unselectedLabelColor: CColors.darkGreyColor,
        // padding: EdgeInsets.only(bottom: CSizes.md),
        automaticIndicatorColorAdjustment: false,
        // indicatorPadding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

class CCashFlowTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CCashFlowTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? CColors.blackColor : CColors.whiteColor,
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: CColors.primaryDarkColor,
        indicatorWeight: 3,
        isScrollable: false,
        physics: NeverScrollableScrollPhysics(),
        tabAlignment: TabAlignment.fill,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: CColors.primaryDarkColor,
        unselectedLabelColor: CColors.darkGreyColor,
        // padding: EdgeInsets.only(bottom: CSizes.md),
        automaticIndicatorColorAdjustment: false,
        // indicatorPadding: EdgeInsets.symmetric(horizontal: CSizes.sm),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}

class CHomeTabbar extends StatelessWidget implements PreferredSizeWidget {
  const CHomeTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = CHelperFuntions.isDarkMode(context);
    return Material(
      color: dark ? CColors.blackColor : CColors.whiteColor,
      child: Container(
        color: CColors.primaryColor,
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorColor: CColors.blackColor,
          isScrollable: false,
          physics: ClampingScrollPhysics(),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: CColors.whiteColor,
          unselectedLabelColor: CColors.whiteColor,
          padding: EdgeInsets.all(10),
          automaticIndicatorColorAdjustment: false,
          indicator: BoxDecoration(
            color: CColors.secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          tabs: tabs,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CDeviceUtils.getAppBarHeight());
}
