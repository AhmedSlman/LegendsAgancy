// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/about_me/our_agents_item.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'detailed_services_grid.dart';

class DetailedServicesSection extends StatelessWidget {
  const DetailedServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.servicesIOffer,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 10),
        OurAgentsItem()
      ],
    );
  }
}
