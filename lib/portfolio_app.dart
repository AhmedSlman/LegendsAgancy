// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Import the correct package
import 'package:portfolio/cubit/locale_cubit.dart';
import 'package:shimmer/shimmer.dart';

import 'config/theme_manager.dart';
import 'generated/l10n.dart';
import 'presentation/blocs/home_bloc/home_bloc.dart';
import 'presentation/views/home_view.dart';

//String currentLanguage = 'en';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit()..getSavedLangauge(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, state) {
          if (state is ChangeLocalState) {
            return MaterialApp(
              locale: state.locale,
              localeResolutionCallback: (deviceLocale, supportedLocales) {
                final languageCode = deviceLocale?.languageCode ?? 'en';
                return Locale(languageCode);
              },
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: CustomTheme.darkTheme(),
              title: 'Legends Agency',
              home: BlocProvider<HomeBloc>(
                create: (context) => HomeBloc(),
                child: const HomeView(),
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
