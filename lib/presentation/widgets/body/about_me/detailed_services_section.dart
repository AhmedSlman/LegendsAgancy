import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';
import 'package:portfolio/presentation/widgets/body/about_me/our_agents_item.dart';

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
            isArabic() ? "الخدمات التي نقدمها" : "The Services We Offer",
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        const DetailedServicesGrid(),
        const SizedBox(height: 32),
        const OurAgentsItem(),
      ],
    );
  }
}
