import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localizationProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

// theme provider to change theme from anywhere from app
class ThemeNotifier extends ChangeNotifier {
  Locale _appLocale = Locale('en');
  Locale get appLocal => _appLocale ?? Locale("en");
  void changeDirection(Locale locale) {
    _appLocale = locale;
    notifyListeners();
  }
}
