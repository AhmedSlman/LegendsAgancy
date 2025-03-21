import 'package:portfolio/presentation/widgets/app_bar/developer_name_btn.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static List<CustomService> services = [
    CustomService(
      service: isArabic() ? "إدارة المحتوي الرقمي " : 'DIGITAL MANAGEMENT',
      logo: AppAssets.administrator,
      description: '',
    ),
    CustomService(
      service: isArabic() ? "الإنتاج" : 'PRODUCTION',
      logo: AppAssets.settings,
      description: '',
    ),
    CustomService(
      service: isArabic() ? "الاستراتيجيات الناجحة" : 'SUCCESSFUL STRATEGY',
      logo: AppAssets.target,
      description: '',
    ),
    CustomService(
      service: isArabic() ? "الخدمات الابداعية" : 'CREATIVE SERVICES',
      logo: AppAssets.graphicDesign,
      description: '',
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
      name: isArabic() ? "نادي أبها " : 'ABHA CLUB',
      imageUrl: 'https://i.postimg.cc/2ymw1YKc/BE-cover.png',
      description: isArabic()
          ? "انغمس في قلب شغف وإثارة نادي أبها من خلال تصميماتنا الرائعة والتفاعلية على وسائل التواصل الاجتماعي."
          : "Dive into the heart of Abha Club's passion and excitement through our captivating and interactive social media design.",
      previewLink: 'https://www.behance.net/gallery/188735461/Abha-FC-Official-Identity',
    ),
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
    Project(
      name: isArabic() ? " نادي الوكره " : 'AL WAKRAH SC',
      imageUrl:
          'https://i.postimg.cc/dQr7FnH9/legendsagency7-1739820260-3570193567806802640-49858051289.jpg',
      description: isArabic()
          ? "انغمس في قلب شغف وإثارة نادي الوكرة من خلال تصميمات وسائل التواصل الاجتماعي الرائعة والتفاعلية لدينا."
          : "Dive into the heart of Al Wakrah's passion and excitement through our captivating and interactive social media design.",
      previewLink: 'https://www.behance.net/gallery/209693525/Al-Wakrah-SC-Official-Identity',
    ),
  ];
}
