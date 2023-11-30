import 'package:flutter/material.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.numOfExperience,
              style: context.width < DeviceType.mobile.getMaxWidth()
                  ? AppStyles.s32.copyWith(fontSize: 22)
                  : AppStyles.s32.copyWith(fontSize: 35),
            ),
            const SizedBox(width: 20),
            // Flexible(
            //   child: Text(
            //     AppStrings.experienceMsg,
            //     style: _getExpMsgStyle(context.width),
            //     softWrap: true,
            //   ),
            // ),
          ],
        ),
        Text(
          'Our agency aspires to be the most distinguished and radiant among all. We strive relentlessly to be capable of partnering with the finest clubs from the largest championships in the world',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  _getExpMsgStyle(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return AppStyles.s16.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return AppStyles.s18;
    } else {
      return AppStyles.s18.copyWith(fontWeight: FontWeight.w500);
    }
  }
}
