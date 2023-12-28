// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import 'package:intl/intl.dart';

import '../../../cubit/locale_cubit.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .2,
          child: FittedBox(
            alignment: isArabic() ? Alignment.topRight : Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  S.of(context).developerName,
                  style: AppStyles.s28,
                ),
                SizedBox(
                  width: 10,
                ),
                BlocBuilder<LocaleCubit, LocaleState>(
                  builder: (context, state) {
                    if (state is ChangeLocalState) {
                      return DropdownButton<String>(
                        dropdownColor: Colors.grey,
                        alignment: AlignmentDirectional.topEnd,
                        value: state.locale.languageCode,
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: const Icon(
                            Icons.language,
                            color: Colors.white,
                          ),
                        ),
                        items: ['ar', 'en'].map((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(
                              items.toUpperCase(),
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            BlocProvider.of<LocaleCubit>(context).changeLanguage(newValue);
                            Phoenix.rebirth(context);
                          }
                        },
                      );
                    }
                    return SizedBox();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

_showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Dialog with Two Buttons'),
        content: Text('Choose an action:'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              // TODO: Add action for the first button
              print('First Button Pressed');
            },
            child: Text('Button 1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              // TODO: Add action for the second button
              print('Second Button Pressed');
            },
            child: Text('Button 2'),
          ),
        ],
      );
    },
  );
}
