// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, deprecated_member_use, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/social_links.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Text(
            isArabic() ? " تواصل معنا :" : 'Contact Us ',
            style: AppStyles.s28.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          // SocialMediaIconBtn(
          //   icon: FontAwesomeIcons.whatsapp,
          //   link: SocialLinks.whatsapp,
          //   //email: '+20 1099127350',
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextButton(
              onPressed: () {
                _launchGmail('info@legendsagancy.com');
              },
              child: Text(
                'info@legendsagancy.com',
                style: AppStyles.s18.copyWith(color: AppColors.primaryColor, fontSize: 18),
              ),
              // child: Icon(
              //   Icons.mail,
              //   color: AppColors.primaryColor,
              //   size: 32,
              // ),
            ),
            // child: SocialMediaIconBtn(
            //   icon: FontAwesomeIcons.envelope,
            //   // link: SocialLinks.launchEmail(),
            //   email: 'legendsagency7@gmail.com',
            // ),
          ),
          SizedBox(height: 5),
          Text(
            isArabic() ? "او من خلال" : 'OR',
            style: AppStyles.s24,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaIconBtn(
                icon: FontAwesomeIcons.facebook,
                link: SocialLinks.facebook,
              ),
              SocialMediaIconBtn(
                icon: FontAwesomeIcons.instagram,
                link: SocialLinks.instagram,
              ),
              SocialMediaIconBtn(
                icon: FontAwesomeIcons.linkedinIn,
                link: SocialLinks.linkedin,
              ),
              SocialMediaIconBtn(
                icon: FontAwesomeIcons.twitter,
                link: SocialLinks.twitter,
              ),
              SocialMediaIconBtn(
                icon: FontAwesomeIcons.behance,
                link: SocialLinks.behance,
              ),
              // SocialMediaIconBtn(
              //   icon: FontAwesomeIcons.whatsapp,
              //   link: SocialLinks.whatsapp,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaIconBtn extends StatelessWidget {
  SocialMediaIconBtn({super.key, required this.icon, this.link, this.email});
  final IconData icon;
  final String? link;
  String? email;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        //padding: const EdgeInsets.all(6),
      ),
      onLongPress: () {
        _copyToClipboard('legendsagency7@gmail.com');
      },
      onPressed: () {
        html.window.open(link!, '_blank');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.primaryColor,
            size: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              email ?? '',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

_launchGmail(String email) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );

  final String emailLaunchUri = _emailLaunchUri.toString();
  if (await canLaunch(emailLaunchUri)) {
    await launch(emailLaunchUri);
  } else {
    throw 'Could not launch $emailLaunchUri';
  }
}

_copyToClipboard(String text) {
  Clipboard.setData(ClipboardData(text: text));
}
