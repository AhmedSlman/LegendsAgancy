import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'basic_service_item.dart';

// class BasicServicesGrid extends StatelessWidget {
//   const BasicServicesGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: GridView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: _getCrossAxisCount(context.width),
//             crossAxisSpacing: 16,
//             childAspectRatio: _getAspectRatio(context.width),
//             mainAxisSpacing: 16,
//           ),
//           itemBuilder: (context, index) {
//             return BasicServiceItem(
//               service: AppConstants.imageservices[index],
//             );
//           },
//           itemCount: AppConstants.imageservices.length,
//         ),
//       ),
//     );
//   }

//   int _getCrossAxisCount(double deviceWidth) {
//     int numOfServices = AppConstants.services.length;
//     if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
//       return 1;
//     } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
//       return 2;
//     } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
//       return 3;
//     } else {
//       return numOfServices > 1 ? 1 : numOfServices;
//     }
//   }

//   double _getAspectRatio(double deviceWidth) {
//     if (deviceWidth < DeviceType.mobile.getMinWidth()) {
//       return 0.4;
//     } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
//       return 0.5;
//     } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
//       return .7;
//       // } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
//       //   return 1;
//     } else {
//       return .6;
//     }
//   }
// }
