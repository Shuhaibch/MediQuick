import 'package:flutter/material.dart';
import 'package:medi_cart/core/commen/widgets/appbar/tabbar.dart';
import 'package:medi_cart/core/commen/widgets/brand/brand_card_widget.dart';
import 'package:medi_cart/core/commen/widgets/container/seach_container.dart';
import 'package:medi_cart/core/commen/widgets/layout/grid_layout.dart';
import 'package:medi_cart/core/commen/widgets/text/section_heading.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';
import 'package:medi_cart/feature/home/presentation/widgets/search_bottom_sheet_widget.dart';
import 'package:medi_cart/feature/home/presentation/widgets/search_category_tab_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CColors.accentColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: CColors.accentColor,
          elevation: 0,
          centerTitle: true,
          title: Text('Search', style: Theme.of(context).textTheme.titleLarge),
          actions: [
            IconButton(
          onPressed: () {
            showModalBottomSheet( // replaced with modal version
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (context) {
                return SearchBottomSheetWidget();
              },
            );
          },
          icon: const Icon(Icons.sort, color: CColors.primaryColor),
        ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: CColors.accentColor,
                expandedHeight: height * 0.45,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(CSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //* Search bar
                      const CSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsetsDirectional.zero,
                      ),
                      //* Featured Brand
                      CSectionHeading(
                        title: "Featured Brands",
                        // onPressed: () => Get.to(() => const AllBrandScreen()),
                      ),
                      const SizedBox(height: CSizes.spaceBtwItem / 1.5),

                      //* featuredBrand Logo Details
                      CGridLayout(
                        mainAxisExtent: height * 0.08,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return CBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: CTabbar(
                  tabs: [
                    'Categories',
                    'Brands',
                  ].map((element) => Tab(child: Text(element))).toList(),
                ),
              ),
            ];
          },

          //* Tabbar Body
          body: TabBarView(
            children: [
              'category',
              'brand',
            ].map((element) => CCategoryTab()).toList(),
          ),
        ),
      ),
    );
  }
}
