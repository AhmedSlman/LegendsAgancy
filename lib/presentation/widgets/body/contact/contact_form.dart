// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'package:http/http.dart' as http;

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  bool isArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getFormWidth(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              style: AppStyles.s14,
              decoration: InputDecoration(labelText: isArabic() ? 'الاسم' : 'Name'),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              style: AppStyles.s14,
              decoration: InputDecoration(labelText: isArabic() ? "البريد الالكتروني" : 'E-mail'),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _subjectController,
              style: AppStyles.s14,
              decoration: InputDecoration(labelText: isArabic() ? 'الموضوع' : 'Subject'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _messageController,
              maxLines: 5,
              style: AppStyles.s14,
              decoration: InputDecoration(
                labelText: isArabic() ? 'رسالتك' : 'Message',
                hintText: isArabic() ? 'اكتب رسالتك هنا' : 'Type a message here...',
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  sendEmail(
                    name: _nameController.text,
                    email: _emailController.text,
                    subject: _subjectController.text,
                    message: _messageController.text,
                  );
                }
                _formKey.currentState?.reset();
                _emailController.clear();
                _messageController.clear();
                _nameController.clear();
                _subjectController.clear();
              },
              backgroundColor: AppColors.primaryColor,
              width: _getFormWidth(context.width),
            ),
          ],
        ),
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}

Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  const serviceId = "service_625em2b";
  const templateId = "template_9ifa14j";
  const userId = "VAw5eeZPdEX9BtvL5";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      "service_id": serviceId,
      "template_id": templateId,
      "user_id": userId,
      "template_params": {
        "from_name": name,
        "user_email": email,
        "user_subject": subject,
        "message": message,
      },
    }),
  );
  print(response.body);
}
