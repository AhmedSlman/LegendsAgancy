// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:universal_html/html.dart' as html;
import 'dart:html' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_styles.dart';
import 'package:intl/intl.dart';

import '../../../local_cubit/locale_cubit.dart';
import '../../views/home_view.dart';

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
                            // Phoenix.rebirth(context);
                            html.window.location.reload();
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
