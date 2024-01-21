part of 'locale_cubit.dart';

abstract class LocaleState extends Equatable {
  const LocaleState();

  @override
  List<Object> get props => [];
}

class LocaleInitial extends LocaleState {}

class ChangeLocalState extends LocaleState {
  final Locale locale;

  const ChangeLocalState({required this.locale});
}
