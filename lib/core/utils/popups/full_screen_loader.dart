// import 'package:medi_cart/commen/widgets/images/c_svg_image.dart';
// import 'package:medi_cart/core/commen/widgets/images/c_svg_image.dart';
// import 'package:medi_cart/core/utils/constants/colors.dart';
// import 'package:medi_cart/core/utils/constants/sizes.dart';
// import 'package:medi_cart/core/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CFullScreenLoader {
//   static void openLoadingDialog(String text, String animation, ) {
//     showDialog(
//       context: Get.overlayContext!,
//       builder: (context) => PopScope(
//         canPop: false,
//         child: Container(
//           color: CHelperFuntions.isDarkMode(Get.context!)
//               ? CColors.darkColor
//               : CColors.whiteColor,
//           width: double.infinity,
//           height: double.infinity,
//           child: Column(
//             children: [
//               const SizedBox(height: 300),
//               CustomAssetImageWidget(animation, width: 150),
//               SizedBox(height: CSizes.md),
//               Text(
//                 text,
//                 style: Theme.of(context).textTheme.bodyMedium,
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   static stopLoading() {
//     Navigator.of(Get.overlayContext!).pop();
//   }
// }
