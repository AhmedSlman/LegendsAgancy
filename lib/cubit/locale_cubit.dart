import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/lang_cached_helper.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(LocaleInitial());
  Future<void> getSavedLangauge() async {
    final String cachedLangaugeCode = await LangaugeCachedHelper().getCachedLangaugeCode();
    emit(ChangeLocalState(locale: Locale(cachedLangaugeCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await LangaugeCachedHelper().cachedLangaugeCode(languageCode);
    emit(ChangeLocalState(locale: Locale(languageCode)));
  }
}
