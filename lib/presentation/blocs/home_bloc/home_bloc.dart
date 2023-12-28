import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_enums.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangeAppBarHeadersIndex>(_changeAppBarHeadersIndex);
    on<ChangeAppBarHeadersAxis>(_changeAppBarHeadersAxis);
    on<ChangeAppBarHeadersColorByColor>(_changeAppBarHeadersColorByColor);
  }
  int _appBarHeaderIndex = 0;
  int get appBarHeaderIndex => _appBarHeaderIndex;
  //  String currentLanguage = 'en';

  FutureOr<void> _changeAppBarHeadersIndex(
    ChangeAppBarHeadersIndex event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderIndex = event.index;
    emit(AppBarHeadersIndexChanged(_appBarHeaderIndex));
  }

  FutureOr<void> _changeAppBarHeadersColorByColor(
    ChangeAppBarHeadersColorByColor event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderIndex = event.index;
    emit(AppBarHeadersColorChangedByIndex(_appBarHeaderIndex));
  }

  AppBarHeadersAxis _appBarHeaderAxis = AppBarHeadersAxis.horizontal;
  AppBarHeadersAxis get appBarHeaderAxis => _appBarHeaderAxis;

  FutureOr<void> _changeAppBarHeadersAxis(
    ChangeAppBarHeadersAxis event,
    Emitter<HomeState> emit,
  ) {
    _appBarHeaderAxis = event.headersAxis;
    emit(AppBarHeadersAxisChanged(_appBarHeaderAxis));
  }
}

// class LanguageBloc extends Bloc<HomeEvent, HomeState> {
//   String currentLanguage = 'en';

//   LanguageBloc(super.initialState);

//   @override
//   HomeState get initialState => LanguageChangedState(currentLanguage);

//   @override
//   Stream<HomeState> mapEventToState(HomeEvent event) async* {
//     if (event is ToggleLanguageEvent) {
//       currentLanguage = currentLanguage == 'en' ? 'ar' : 'en';
//       yield LanguageChangedState(currentLanguage);
//     }
//   }
// }
