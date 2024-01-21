// ignore_for_file: unused_import, sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = AppColors.lowPriority;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: itemColor,
      child: MouseRegion(
        // onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.network(
                widget.service.logo,
              ),
            ),
            //const SizedBox(height: 5),
            // if (context.width > DeviceType.mobile.getMinWidth())
            //   FittedBox(
            //     child: Text(
            //       widget.service.service,
            //       style: AppStyles.s28.copyWith(
            //           fontWeight: FontWeight.bold, color: Colors.white),
            //       // minFontSize: 8,
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // const SizedBox(height: 5),
            // if (context.width > DeviceType.mobile.getMinWidth())
            //   FittedBox(
            //     child: Text(
            //       widget.service.description,
            //       style: AppStyles.s24.copyWith(
            //           fontWeight: FontWeight.w500,
            //           color: Color.fromARGB(255, 255, 72, 17)),
            //       // minFontSize: 8,
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.lowPriority);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColor);
  }
}
