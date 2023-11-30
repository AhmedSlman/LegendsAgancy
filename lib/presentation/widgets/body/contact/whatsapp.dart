import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWhatsApp extends StatelessWidget {
  final String phoneNumber = "+201099127350";

  void _openWhatsApp() async {
    final url = "https://wa.me/$phoneNumber";
    if (await canLaunchUrl(url as Uri)) {
      await canLaunchUrl(url as Uri);
    } else {
      throw "Could not launch WhatsApp";
    }
  }

  void launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'legendsagency7@gmail.com',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _openWhatsApp,
      child: Icon(FontAwesomeIcons.whatsapp),
    );
  }
}
