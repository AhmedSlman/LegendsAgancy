import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'bloc_observer.dart';
import 'portfolio_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(Phoenix(child: const PortfolioApp()));
}
