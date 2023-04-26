import 'package:flutter/material.dart';
import '../moduls/theme.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme obj = AppTheme(isDark: false);

  changeTheme() {
    obj.isDark = !obj.isDark;
    notifyListeners();
  }
}