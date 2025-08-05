// import 'package:medi_cart/core/utils/constants/colors.dart';
// import 'package:medi_cart/core/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class CLoaders {
//   static hideSnackBar() =>
//       ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

//   static customToast({required message}) {
//     ScaffoldMessenger.maybeOf(Get.context!)?.showSnackBar(
//       SnackBar(
//         elevation: 0,
//         duration: const Duration(seconds: 3),
//         backgroundColor: Colors.transparent,
//         content: Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.symmetric(horizontal: 30),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: CHelperFuntions.isDarkMode(Get.context!)
//                 ? CColors.darkerGreyColor.withValues(alpha: .9)
//                 : CColors.greyColor.withValues(alpha: .9),
//           ),
//           child: Center(
//             child: Text(
//               message,
//               style: Theme.of(Get.context!).textTheme.labelLarge,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   static successSnackBar({required title, message = '', duration = 3}) {
//     Get.snackbar(
//       title,
//       message,
//       isDismissible: true,
//       shouldIconPulse: true,
//       colorText: CColors.whiteColor,
//       backgroundColor: CColors.primaryColor,
//       snackPosition: SnackPosition.BOTTOM,
//       duration: Duration(seconds: duration),
//       margin: const EdgeInsets.all(10),
//       icon: const Icon(Iconsax.check, color: CColors.whiteColor),
//     );
//   }

//   static errorToastMsg({required String title}) {
//     Fluttertoast.showToast(
//       msg: title,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: CColors.errorColor,
//       textColor: Colors.white,
//       fontSize: 12.0,
//     );
//   }

//   static customToastMsg({required String title}) {
//     Fluttertoast.showToast(
//       msg: title,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: CColors.blackColor,
//       textColor: Colors.white,
//       fontSize: 12.0,
//     );
//   }

//   static warnigSnackBar({required title, message = ''}) {
//     Get.snackbar(
//       title,
//       message,
//       isDismissible: true,
//       shouldIconPulse: true,
//       colorText: CColors.whiteColor,
//       backgroundColor: Colors.orange,
//       snackPosition: SnackPosition.BOTTOM,
//       duration: const Duration(seconds: 3),
//       margin: const EdgeInsets.all(20),
//       icon: const Icon(Iconsax.warning_2, color: CColors.whiteColor),
//     );
//   }

//   static errorSnackBar({required title, message = '', seconds = 3}) {
//     Get.snackbar(
//       title,
//       message,
//       isDismissible: true,
//       shouldIconPulse: true,
//       colorText: CColors.whiteColor,
//       backgroundColor: Colors.red.shade600,
//       snackPosition: SnackPosition.BOTTOM,
//       duration: Duration(seconds: seconds),
//       margin: const EdgeInsets.all(20),
//       icon: const Icon(Iconsax.warning_2, color: CColors.whiteColor),
//     );
//   }
// }
