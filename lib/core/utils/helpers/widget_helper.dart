import 'package:flutter/material.dart';
import 'package:medi_cart/core/utils/constants/colors.dart';
import 'package:medi_cart/core/utils/constants/sizes.dart';


class CWidgetHelper {
  static Future<dynamic> bottomSheetWidget(
    BuildContext context,
    String title,
    List<Widget> children,
  ) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 10,
      showDragHandle: false,
      isDismissible: false,
      // useSafeArea: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      builder: (BuildContext context) {
        // UDE : SizedBox instead of Container for whitespaces
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Wrap(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: CSizes.sm),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: CColors.blackColor,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        InkWell(
                          // onTap: () => Get.back(),
                          child: Icon(
                            Icons.close,
                            color: CColors.darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }


}
