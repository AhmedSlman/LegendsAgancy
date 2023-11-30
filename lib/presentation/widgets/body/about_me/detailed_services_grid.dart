import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'detailed_service_item.dart';

class DetailedServicesGrid extends StatelessWidget {
  const DetailedServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        childAspectRatio: _getAspectRatio(context.width),
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return DetailedServiceItem(
          service: AppConstants.services[index],
        );
      },
      itemCount: AppConstants.services.length,
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.services.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 2;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }

  double _getAspectRatio(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMinWidth()) {
      return .4;
    } else if (deviceWidth < DeviceType.ipad.getMinWidth()) {
      return .7;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return .6;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return .5;
    } else {
      return .6;
    }
  }
}
