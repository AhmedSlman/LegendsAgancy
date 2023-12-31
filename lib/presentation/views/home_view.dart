// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/social_links.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/presentation/widgets/body/contact/social_medial_icons.dart';
import 'package:portfolio/presentation/widgets/body/contact/whatsapp.dart';
import 'package:universal_html/html.dart' as html;

import '../widgets/app_bar/home_app_bar.dart';
import '../widgets/body/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          FontAwesomeIcons.whatsapp,
          size: 30,
        ),
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          html.window.open(SocialLinks.whatsapp, '_blank');
        },
      ),
    );
  }
}
