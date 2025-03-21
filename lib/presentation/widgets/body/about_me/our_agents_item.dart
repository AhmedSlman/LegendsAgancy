import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_styles.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';

class OurAgentsItem extends StatefulWidget {
  const OurAgentsItem({super.key});

  @override
  _OurAgentsItemState createState() => _OurAgentsItemState();
}

class _OurAgentsItemState extends State<OurAgentsItem> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;
  late Timer _timer;

  final List<AgentColumn> agents = [
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
    AgentColumn(
      AgentName: isArabic() ? "نادي الطائي" : 'AL TAI CLUB',
      AgnetImagePath: 'https://i.postimg.cc/fW63nYTN/2023-svg.png',
    ),
    AgentColumn(
      AgentName: isArabic() ? "O15 ACADEMY" : 'O15 ACADEMY',
      AgnetImagePath: 'https://i.postimg.cc/hG5D8qXB/O15-ACADEMY.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < agents.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

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
        SizedBox(
          height: 340,
          child: PageView.builder(
            controller: _pageController,
            itemCount: agents.length,
            itemBuilder: (context, index) {
              return agents[index];
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              height: 50,
              width: 100,
              label: isArabic() ? "التالي" : "Next",
              backgroundColor: AppColors.primaryColor,
              onPressed: () {
                if (_currentPage < agents.length - 1) {
                  _currentPage++;
                } else {
                  _currentPage = 0;
                }
                _pageController.animateToPage(
                  _currentPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
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
        ),
      ],
    );
  }
}
