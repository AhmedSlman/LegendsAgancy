import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/utils/app_styles.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            S.of(context).featuredProjects,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).projectsMsg,
          style: AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
