// theme_provider.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

// theme provdier to manage themes
class ThemeNotifier extends ChangeNotifier {
  bool _isLightTheme = true;
  bool get isLightTheme => _isLightTheme;
  void toggleTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
}

//extention on context to direcly check is context is in light or dark theme
extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.dark;
  }
}
