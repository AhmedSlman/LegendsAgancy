// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, must_be_immutable, non_constant_identifier_names, prefer_const_constructors, implementation_imports, unnecessary_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_constants.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';

class OurAgentsItem extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  OurAgentsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            S.of(context).servicesIOffer,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 10),
        CarouselSlider(
          items: [
            AgentColumn(
              AgentName: isArabic() ? "نادي المرخية" : 'AL MARKHIYA CLUB',
              AgnetImagePath: 'https://i.postimg.cc/FF2g9KhX/svg.png',
            ),
            AgentColumn(
              AgentName: isArabic() ? "نادي أبها" : 'ABHA CLUB',
              AgnetImagePath: 'https://i.postimg.cc/fbr1CvNv/image.png',
            ),
            AgentColumn(
              AgentName: isArabic() ? "نادي الوكرة" : 'AL WAKRAH SC',
              AgnetImagePath: 'https://i.postimg.cc/mgT71gw5/svg.png',
            ),
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: 340,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              height: 50,
              width: 100,
              label: isArabic() ? "التالي" : "Next",
              backgroundColor: AppColors.primaryColor,
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
            ),
          ],
        ),
      ],
    );
  }
}

class AgentColumn extends StatelessWidget {
  final String AgnetImagePath;
  final String AgentName;

  const AgentColumn({
    Key? key,
    required this.AgnetImagePath,
    required this.AgentName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          AgnetImagePath,
          width: 200,
          height: 200,
        ),
        Text(
          AgentName,
          style: AppStyles.s24.copyWith(color: Colors.white),
        )
      ],
    );
  }
}
