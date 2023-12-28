// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_assets.dart';
import 'package:portfolio/presentation/widgets/body/about_me/our_agents_item.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'basic_services_grid.dart';
import 'detailed_services_section.dart';
import 'experience_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutMeIntro(),
          const SizedBox(height: 8),
          Center(
            child: CustomDivider(
              color: AppColors.white,
              width: context.width / 4,
              height: 2,
            ),
          ),
          const SizedBox(height: 8),
          const ExperienceInfo(),
          const SizedBox(height: 50),
          Center(
              child: Image.network(
            AppAssets.ccover,
            height: context.height / 1.3,
          )),
          const SizedBox(height: 50),
          // OurAgentsItem(),
          const DetailedServicesSection(),
        ],
      ),
    );
  }
}
