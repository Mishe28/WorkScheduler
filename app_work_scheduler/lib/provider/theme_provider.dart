import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkmode

  }): currentTheme = isDarkmode ? AppTheme.darkTheme : AppTheme.lightTheme;

  setLightMode(){
    currentTheme = AppTheme.lightTheme;
    notifyListeners();
  }

  setDarkMode(){
    currentTheme = AppTheme.darkTheme;
    notifyListeners();
  }
}