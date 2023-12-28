// Import statements...

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/cubit/locale_cubit.dart';
import 'package:portfolio/portfolio_app.dart';

import '../../../core/utils/app_colors.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_menu_btn.dart';
import 'developer_name_btn.dart';
import 'horizontal_headers.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      padding: EdgeInsets.symmetric(
        horizontal: _getHorizontalPadding(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const DeveloperNameBtn(),
              // BlocBuilder<LocaleCubit, LocaleState>(
              //   builder: (context, state) {
              //     if (state is ChangeLocalState) {
              //       return DropdownButton<String>(
              //         value: state.locale.languageCode,
              //         icon: const Icon(Icons.language),
              //         items: ['ar', 'en'].map((String items) {
              //           return DropdownMenuItem<String>(
              //             value: items,
              //             child: Text(
              //               items,
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           );
              //         }).toList(),
              //         onChanged: (String? newValue) {
              //           if (newValue != null) {
              //             BlocProvider.of<LocaleCubit>(context).changeLanguage(newValue);
              //             Phoenix.rebirth(context);
              //           }
              //         },
              //       );
              //     }
              //     return SizedBox();
              //   },
              // ),
            ],
          ),
          context.width > DeviceType.ipad.getMaxWidth()
              ? const HorizontalHeaders()
              : const CustomMenuBtn(),
        ],
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .08;
    }
  }
}
