import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static List<CustomService> services = [
    CustomService(
      service: 'Graphic Designing',
      logo: AppAssets.androidLogo,
      description: '...........',
    ),
    CustomService(
      service: 'Video Editing',
      logo: AppAssets.uiDesignLogo,
      description: '.............',
    ),
    CustomService(
      service: 'Video Creating',
      logo: AppAssets.scrappingLogo,
      description: '............',
    ),
  ];
  static List<CustomService> imageservices = [
    CustomService(logo: AppAssets.ccover)
    // CustomService(
    //   service: ' BELAL',
    //   logo: AppAssets.firstcardlogo,
    //   description: '(CEO) & Founder',
    // CustomService(
    //   service: 'Ahmed',
    //   logo: AppAssets.thirdcardlogo,
    //   description: 'Creative Director',
    // ),
  ];
  static List<Project> projects = [
    Project(
      name: isArabic() ? "وسائل التواصل الاجتماعي - العمل الفني" : "SOCIAL MEDIA - ART WORK",
      imageUrl: 'https://i.postimg.cc/ZYXkKDrq/general.jpg',
      description: isArabic()
          ? "اكتشف تحفة بصرية على وسائل التواصل الاجتماعي الخاصة بنا، حيث يتلاقى الفن والإبداع للاحتفال بشغفنا بكل ما يتعلق بكرة القدم."
          : "Discover a visual masterpiece on our social media platforms, where art and creativity converge to celebrate our passion for everything related to football.",
      previewLink:
          'https://www.behance.net/gallery/165757069/Social-Media-Art-Work-Daily-Updated-Vol2',
    ),
    Project(
      name: isArabic() ? 'نادي المرخيةالقطري' : "Al Markhiya",
      imageUrl: 'https://i.postimg.cc/bJHDgF1H/FB-IMG-1692460798020.jpg',
      description: isArabic()
          ? "تصميم حيوي على وسائل التواصل الاجتماعي لنادي المرخية القطري، يوحد الجماهير بصور ديناميكية لإنجازات الفريق، والمباريات، والمشاركة في المجتمع"
          : "Vibrant social media design for Al-Markhiya Qatari Club, uniting fans with dynamic visuals of team accomplishments, matches, and community engagement.",
      previewLink: 'https://www.behance.net/gallery/175914671/AlMarkhiyaSC-Official-Identity',
    ),
    Project(
      name: isArabic() ? "باريس سان جيرمان " : 'PARIS SANT GERMAIN(PSG)',
      imageUrl: 'https://i.postimg.cc/1X1DtQMS/PSG.jpg',
      description: isArabic()
          ? "انغمس في قلب شغف باريس سان جيرمان من خلال تصميمات وسائل التواصل الاجتماعي الرائعة والتفاعلية لدينا."
          : "Dive into the heart of PSG's passion and excitement through our captivating and interactive social media design.",
      previewLink: 'https://www.behance.net/gallery/152964583/PSG-FC-Unofficial-Identity',
    ),
  ];
}
