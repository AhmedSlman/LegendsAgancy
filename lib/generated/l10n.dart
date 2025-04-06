// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Legends Agency`
  String get developerName {
    return Intl.message(
      'Legends Agency',
      name: 'developerName',
      desc: '',
      args: [],
    );
  }

  /// `Welcome,`
  String get helloIM {
    return Intl.message('Welcome,', name: 'helloIM', desc: '', args: []);
  }

  /// ` We are a sports agency that specializes in creating effective and unforgettable identities for clubs. We care about the details and provide high-quality content in digital, administrative, and marketing aspects. We innovate impactful and unforgettable work for our partners and fans, always striving to meet the needs and desires of our clients.`
  String get introMsg {
    return Intl.message(
      ' We are a sports agency that specializes in creating effective and unforgettable identities for clubs. We care about the details and provide high-quality content in digital, administrative, and marketing aspects. We innovate impactful and unforgettable work for our partners and fans, always striving to meet the needs and desires of our clients.',
      name: 'introMsg',
      desc: '',
      args: [],
    );
  }

  /// `The Legends Agency team is renowned for our expertise in creating dynamic sports designs for a wide range of games. We understand the importance of delivering results promptly, which is why our highly skilled team is equipped to handle projects efficiently and with meticulous attention to detail. Our commitment to excellence ensures that our clients receive top-quality designs that exceed their expectations.`
  String get aboutMeMsg {
    return Intl.message(
      'The Legends Agency team is renowned for our expertise in creating dynamic sports designs for a wide range of games. We understand the importance of delivering results promptly, which is why our highly skilled team is equipped to handle projects efficiently and with meticulous attention to detail. Our commitment to excellence ensures that our clients receive top-quality designs that exceed their expectations.',
      name: 'aboutMeMsg',
      desc: '',
      args: [],
    );
  }

  /// `Our Vision`
  String get numOfExperience {
    return Intl.message(
      'Our Vision',
      name: 'numOfExperience',
      desc: '',
      args: [],
    );
  }

  /// `Our agency aspires to be the most distinguished and radiant among all. We strive relentlessly to be capable of partnering with the finest clubs from the largest championships in the world.`
  String get experienceMsg {
    return Intl.message(
      'Our agency aspires to be the most distinguished and radiant among all. We strive relentlessly to be capable of partnering with the finest clubs from the largest championships in the world.',
      name: 'experienceMsg',
      desc: '',
      args: [],
    );
  }

  /// `Clubs We Worked For:`
  String get servicesIOffer {
    return Intl.message(
      'Clubs We Worked For:',
      name: 'servicesIOffer',
      desc: '',
      args: [],
    );
  }

  /// `Featured projects`
  String get featuredProjects {
    return Intl.message(
      'Featured projects',
      name: 'featuredProjects',
      desc: '',
      args: [],
    );
  }

  /// `We are Legned Agnecy`
  String get projectsMsg {
    return Intl.message(
      'We are Legned Agnecy',
      name: 'projectsMsg',
      desc: '',
      args: [],
    );
  }

  /// `For any service and work you can contact with US by send an email or by our social media accounts.`
  String get contactMsg {
    return Intl.message(
      'For any service and work you can contact with US by send an email or by our social media accounts.',
      name: 'contactMsg',
      desc: '',
      args: [],
    );
  }

  /// `Contact with Us`
  String get contactWithMe {
    return Intl.message(
      'Contact with Us',
      name: 'contactWithMe',
      desc: '',
      args: [],
    );
  }

  /// `Our agency aspires to be the most distinguished and radiant among all. We strive relentlessly to be capable of partnering with the finest clubs from the largest championships in the world`
  String get ourVision {
    return Intl.message(
      'Our agency aspires to be the most distinguished and radiant among all. We strive relentlessly to be capable of partnering with the finest clubs from the largest championships in the world',
      name: 'ourVision',
      desc: '',
      args: [],
    );
  }

  /// `SOCIAL MEDIA - ART WORK`
  String get social {
    return Intl.message(
      'SOCIAL MEDIA - ART WORK',
      name: 'social',
      desc: '',
      args: [],
    );
  }

  /// `Discover a visual masterpiece on our social media, where art and creativity collide to celebrate our passion for all things football.`
  String get socialDescription {
    return Intl.message(
      'Discover a visual masterpiece on our social media, where art and creativity collide to celebrate our passion for all things football.',
      name: 'socialDescription',
      desc: '',
      args: [],
    );
  }

  /// `Al Markhiya`
  String get elmarkhya {
    return Intl.message('Al Markhiya', name: 'elmarkhya', desc: '', args: []);
  }

  /// `Vibrant social media design for Al-Markhiya Qatari Club, uniting fans with dynamic visuals of team accomplishments, matches, and community engagement.`
  String get elmarkhyaDescriton {
    return Intl.message(
      'Vibrant social media design for Al-Markhiya Qatari Club, uniting fans with dynamic visuals of team accomplishments, matches, and community engagement.',
      name: 'elmarkhyaDescriton',
      desc: '',
      args: [],
    );
  }

  /// `PARIS SANT GERMAIN(PSG)`
  String get psg {
    return Intl.message(
      'PARIS SANT GERMAIN(PSG)',
      name: 'psg',
      desc: '',
      args: [],
    );
  }

  /// `Dive into the heart of PSG's passion and excitement through our captivating and interactive social media design.`
  String get psgDescription {
    return Intl.message(
      'Dive into the heart of PSG\'s passion and excitement through our captivating and interactive social media design.',
      name: 'psgDescription',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message('About Us', name: 'aboutUs', desc: '', args: []);
  }

  /// `Projects`
  String get projects {
    return Intl.message('Projects', name: 'projects', desc: '', args: []);
  }

  /// `Contact`
  String get contact {
    return Intl.message('Contact', name: 'contact', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
